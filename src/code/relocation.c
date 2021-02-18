#include "global.h"

void Overlay_Relocate_Old(void* allocatedVRamAddress, OverlayRelocationSection* overlayInfo, void* vRamAddress) {
    u32 sections[4];
    u32 relocatedValue;
    u32 dbg;
    u32 relocOffset;
    u32 relocData;
    u32 unrelocatedAddress;
    u32 i;
    u32* relocDataP;
    u32* luiRefs[32];
    u32 luiVals[32];
    u32 relocatedAddress;
    u32 reloc;
    u32 vaddr;
    u32* luiInstRef;
    u32 allocu32 = (u32)allocatedVRamAddress;
    u32* regValP;
    u32 isLoNeg;
    int isIn45Chain = 0;

    relocOffset = 0;
    relocatedValue = 0;
    unrelocatedAddress = 0;
    relocatedAddress = 0;

    if (gOverlayLogSeverity >= 3) {
        osSyncPrintf("DoRelocation(%08x, %08x, %08x)\n", allocatedVRamAddress, overlayInfo, vRamAddress);
        osSyncPrintf("text=%08x, data=%08x, rodata=%08x, bss=%08x\n", overlayInfo->textSize, overlayInfo->dataSize,
                     overlayInfo->rodataSize, overlayInfo->bssSize);
    }

    sections[0] = 0;
    sections[1] = allocu32;
    sections[2] = allocu32 + overlayInfo->textSize;
    sections[3] = sections[2] + overlayInfo->dataSize;

    for (i = 0; i < overlayInfo->nRelocations; i++) {
        reloc = overlayInfo->relocations[i];
        relocDataP = (u32*)(sections[reloc >> 0x1E] + (reloc & 0xFFFFFF));
        relocData = *relocDataP;
        switch (reloc & 0x3F000000) {
            case 0x2000000:
                /* R_MIPS_32
                 * Handles 32-bit address relocation.  Used in things such as
                 * jump tables.
                 */
                isIn45Chain = 0;
                if ((*relocDataP & 0xF000000) == 0) {
                    luiInstRef = vRamAddress;
                    relocOffset = *relocDataP - (u32)luiInstRef;
                    relocatedValue = relocOffset + allocu32;
                    relocatedAddress = relocatedValue;
                    unrelocatedAddress = relocData;
                    *relocDataP = relocatedAddress;
                }
                break;
            case 0x4000000:
                /* R_MIPS_26
                 * Handles 26-bit address relocation, used for jumps and jals
                 */
                isIn45Chain = 0;
                unrelocatedAddress = ((*relocDataP & 0x3FFFFFF) << 2) | 0x80000000;
                relocOffset = unrelocatedAddress - (u32)vRamAddress;
                relocatedValue = (*relocDataP & 0xFC000000) | (((allocu32 + relocOffset) & 0xFFFFFFF) >> 2);
                relocatedAddress = ((relocatedValue & 0x3FFFFFF) << 2) | 0x80000000;
                *relocDataP = relocatedValue;
                break;
            case 0x5000000:
                /* R_MIPS_HI16
                 * Handles relocation for a lui instruciton, store the reference to
                 * the instruction, and will update it in the R_MIPS_LO16 section.
                 */
                isIn45Chain = 1;
                luiRefs[(*relocDataP >> 0x10) & 0x1F] = relocDataP;
                luiVals[(*relocDataP >> 0x10) & 0x1F] = *relocDataP;
                if(reloc == 0x45000194) // this is cheesy as hell but w/e
                {
                    osSyncPrintf("ID1: %d\n", (*relocDataP >> 0x10) & 0x1F);
                    osSyncPrintf("REL DEBUG: %08x, %08x, %08x\n", reloc, relocDataP, relocData);
                }
                break;
            case 0x6000000:
                /* R_MIPS_LO16
                 * Updates the LUI instruction to reflect the relocated address.
                 * The full address is calculated from the LUI and lo parts, and then updated.
                 * if the lo part is negative, add 1 to the lui.
                 */
                if(isIn45Chain == 0) __assert("0", "../relocation.c", __LINE__);
                regValP = &luiVals[((*relocDataP >> 0x15) & 0x1F)];
                vaddr = (*regValP << 0x10) + (s16)*relocDataP;
                luiInstRef = luiRefs[((*relocDataP >> 0x15) & 0x1F)];
                if(reloc == 0x460001A4 || reloc == 0x460001F4) {
                    osSyncPrintf("ID2: %d\n", (*relocDataP >> 0x10) & 0x1F);
                    osSyncPrintf("REG1: (%08x) = (*%08x [%08x] << 0x10) + (s16)*%08x [%08x]\n", vaddr, regValP, *regValP, relocDataP, *relocDataP);
                }
                if ((vaddr & 0xF000000) == 0) {
                    relocOffset = vaddr - (u32)vRamAddress;
                    if(reloc == 0x460001A4 || reloc == 0x460001F4) {
                        osSyncPrintf("REG2: %08x - %08x = %08x\n", vaddr, (u32)vRamAddress, relocOffset);
                    }
                    vaddr = (s16)relocData;
                    isLoNeg = (((relocOffset + allocu32) & 0x8000) ? 1 : 0);
                    unrelocatedAddress = (*luiInstRef << 0x10) + vaddr;
                    *luiInstRef =
                        (*luiInstRef & 0xFFFF0000) | ((((relocOffset + allocu32) >> 0x10) & 0xFFFF) + isLoNeg);
                    relocatedValue = (*relocDataP & 0xFFFF0000) | ((relocOffset + allocu32) & 0xFFFF);

                    relocatedAddress = (*luiInstRef << 0x10) + (s16)relocatedValue;
                    *relocDataP = relocatedValue;
                    if(reloc == 0x460001A4 || reloc == 0x460001F4) {
                        osSyncPrintf("REG3: %08x, %08x, %08x, %08x\n", unrelocatedAddress, *luiInstRef, relocatedValue, relocatedAddress);
                    }
                }
                break;
        }

        dbg = 0x10;
        switch (reloc & 0x3F000000) {
            case 0x2000000:
                dbg = 0x16;
            case 0x4000000:
                dbg += 0xA;
            case 0x6000000:
                if (gOverlayLogSeverity >= 3) {
                    osSyncPrintf("%02d %08x %08x %08x ", dbg, relocDataP, relocatedValue, relocatedAddress);
                    osSyncPrintf(" %08x %08x %08x %08x\n", ((u32)relocDataP + (u32)vRamAddress) - allocu32, relocData,
                                 unrelocatedAddress, relocOffset);
                }
        }
    }
}

// This needs lots of work. Mostly regalloc and getting the address of D_80096C30 placed in s5 at the beginning of the function
void Overlay_Relocate(u32 allocatedVRamAddr, OverlayRelocationSection* overlayInfo, u32 vRamStart) {
    s32 sectionLocations [4];
    u32 lastHiAddr;
    u32 lastHiAddend;
    u32 i;
    u32 relocatedAddress;
    s32 signedOffset;
    u32* lastInst;
    u32* inst;
    u32 relocation;
    u32 relocationIndex;

    sectionLocations[1] = allocatedVRamAddr;
    sectionLocations[2] = overlayInfo->textSize + allocatedVRamAddr;
    sectionLocations[3] = sectionLocations[2] + overlayInfo->dataSize;
    for (i = 0, relocationIndex = 0; i < overlayInfo->nRelocations; relocationIndex++) {
        relocation = overlayInfo->relocations[relocationIndex];
        i++;
        inst = (u32 *)(sectionLocations[relocation >> 0x1e] + (relocation & 0xffffff));

        switch (relocation & 0x3f000000) {
        case 0x2000000:
            if ((*inst & 0xf000000) == 0) {
                *inst = (*inst - vRamStart) + allocatedVRamAddr;
            }
            break;
        case 0x4000000:
            *inst = (*inst & 0xfc000000) | (((((*inst & 0x3ffffff) << 2 | 0x80000000) - vRamStart) + allocatedVRamAddr & 0xfffffff) >> 2);
            break;
        case 0x5000000:
            lastHiAddr = (u32)inst;
            lastHiAddend = *inst;
            break;
        case 0x6000000:
            signedOffset = (s16)*inst;
            relocatedAddress = ((signedOffset + lastHiAddend * 0x10000) - vRamStart) + allocatedVRamAddr;
            
            if(lastHiAddr)
            {
                lastInst = (u32*)lastHiAddr;
                *lastInst = (((relocatedAddress >> 0x10) & 0xFFFF) + ((relocatedAddress & 0x8000)? 1 : 0)) | (*lastInst & 0xffff0000);
                lastHiAddr = 0;
            }
            *inst = *inst & 0xffff0000 | relocatedAddress & 0xffff;
            break;
        }
    }
}
