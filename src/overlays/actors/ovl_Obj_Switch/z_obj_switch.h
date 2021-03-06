#ifndef _Z_OBJ_SWITCH_H_
#define _Z_OBJ_SWITCH_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x10C];
} ObjSwitch; // size = 0x0258

extern const ActorInit Obj_Switch_InitVars;

#endif
