#include "pra_06.h"

s32 N(map_init)(void) {
    gGameStatusPtr->playerSpriteSet = PLAYER_SPRITES_MARIO_REFLECT_FLOOR;
    sprintf(wMapShapeName, "pra_05_shape");
    sprintf(wMapHitName, "pra_05_hit");
    return FALSE;
}

#include "../common/Reflection.inc.c"
#include "../common/Reflection.data.inc.c"

EvtScript N(EVS_ExitDoors_pra_39_1) = {
    EVT_SET_GROUP(EVT_GROUP_1B)
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_SET(LVar0, pra_06_ENTRY_0)
    EVT_SET(LVar1, COLLIDER_deilittsw)
    EVT_SET(LVar2, MODEL_o772)
    EVT_SET(LVar3, MODEL_o768)
    EVT_SET(LVar4, MODEL_o844)
    EVT_SET(LVar5, MODEL_o846)
    EVT_EXEC(ExitSplitDoubleDoor)
    EVT_WAIT(17)
    EVT_CALL(GotoMap, EVT_PTR("pra_39"), pra_39_ENTRY_1)
    EVT_WAIT(100)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitDoors_pra_39_1)), TRIGGER_WALL_PRESS_A, COLLIDER_deilittsw, 1, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_EnterDoors_0) = {
    EVT_SET(LVar0, pra_06_ENTRY_0)
    EVT_SET(LVar2, MODEL_o772)
    EVT_SET(LVar3, MODEL_o768)
    EVT_SET(LVar4, MODEL_o844)
    EVT_SET(LVar5, MODEL_o846)
    EVT_EXEC_WAIT(EnterSplitDoubleDoor)
    EVT_EXEC(N(EVS_BindExitTriggers))
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_CRYSTAL_PALACE)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_CALL(SetCamPerspective, CAM_DEFAULT, 3, 25, 16, 4096)
    EVT_CALL(SetCamBGColor, CAM_DEFAULT, 24, 24, 40)
    EVT_CALL(SetCamLeadPlayer, CAM_DEFAULT, FALSE)
    EVT_CALL(SetCamEnabled, CAM_DEFAULT, TRUE)
    EVT_EXEC_WAIT(N(EVS_MakeEntities))
    EVT_EXEC(N(EVS_SetupMusic))
    EVT_SET(LVar0, REFLECTION_FLOOR_ONLY)
    EVT_SET(LVar1, GF_PRA_BrokeIllusion)
    EVT_EXEC(N(EVS_SetupReflections))
    EVT_EXEC(N(EVS_EnterDoors_0))
    EVT_WAIT(1)
    EVT_RETURN
    EVT_END
};
