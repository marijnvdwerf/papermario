#include "mim_08.h"

#include "../common/SetForeverForestFog.inc.c"

API_CALLABLE(N(GetPlayerDistFromMapCenter)) {
    script->varTable[0] = get_xz_dist_to_player(0.0f, 0.0f);
    return ApiStatus_DONE2;
}

EvtScript N(EVS_ExitWalk_n) = EVT_EXIT_WALK(60, mim_08_ENTRY_0, "mim_01", mim_01_ENTRY_1);
EvtScript N(EVS_ExitWalk_w) = EVT_EXIT_WALK(60, mim_08_ENTRY_1, "mim_05", mim_05_ENTRY_3);
EvtScript N(EVS_ExitWalk_s) = EVT_EXIT_WALK(60, mim_08_ENTRY_2, "mim_01", mim_01_ENTRY_1);
EvtScript N(EVS_ExitWalk_e) = EVT_EXIT_WALK(60, mim_08_ENTRY_3, "mim_01", mim_01_ENTRY_1);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_n)), TRIGGER_FLOOR_ABOVE, COLLIDER_deilin, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_w)), TRIGGER_FLOOR_ABOVE, COLLIDER_deiliw, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_s)), TRIGGER_FLOOR_ABOVE, COLLIDER_deilis, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_e)), TRIGGER_FLOOR_ABOVE, COLLIDER_deilie, 1, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(D_802431F0_BB0B30) = {
    EVT_LOOP(6)
        EVT_SET(LVar0, 2)
        EVT_CALL(TranslateModel, MODEL_o507, LVar0, 0, LVar0)
        EVT_CALL(TranslateModel, MODEL_o508, LVar0, 0, LVar0)
        EVT_WAIT(1)
        EVT_SET(LVar0, -2)
        EVT_CALL(TranslateModel, MODEL_o507, LVar0, 0, LVar0)
        EVT_CALL(TranslateModel, MODEL_o508, LVar0, 0, LVar0)
        EVT_WAIT(1)
    EVT_END_LOOP
    EVT_SET(LVar0, 0)
    EVT_CALL(TranslateModel, MODEL_o507, LVar0, 0, LVar0)
    EVT_CALL(TranslateModel, MODEL_o508, LVar0, 0, LVar0)
    EVT_WAIT(1)
    EVT_SET(MV_Unk_00, 1)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_FOREVER_FOREST)
    EVT_CALL(SetSpriteShading, SHADING_MIM_08)
    EVT_CALL(SetCamPerspective, CAM_DEFAULT, 3, 25, 16, 650)
    EVT_CALL(SetCamBGColor, CAM_DEFAULT, 0, 0, 0)
    EVT_CALL(SetCamEnabled, CAM_DEFAULT, TRUE)
    EVT_CALL(SetCamLeadPlayer, CAM_DEFAULT, FALSE)
    EVT_SET(AB_MIM_2, GB_MIM_CurrentMapID)
    EVT_CALL(GetMapID, GB_MIM_CurrentMapID)
    EVT_EXEC_WAIT(N(EVS_SetupGates))
    EVT_CALL(MakeNpcs, TRUE, EVT_PTR(N(DefaultNPCs)))
    EVT_EXEC_WAIT(N(EVS_MakeEntities))
    EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    EVT_EXEC(EnterWalk)
    EVT_WAIT(1)
    EVT_EXEC(N(EVS_SetupMusic))
    EVT_BIND_TRIGGER(EVT_PTR(N(D_802431F0_BB0B30)), TRIGGER_WALL_HAMMER, COLLIDER_o473, 1, 0)
    EVT_CALL(N(SetForeverForestFog))
    EVT_THREAD
        EVT_LABEL(0)
        EVT_CALL(WaitForCam, CAM_DEFAULT, EVT_FLOAT(1.0))
        EVT_CALL(N(GetPlayerDistFromMapCenter))
        EVT_IF_LT(LVar0, 350)
            EVT_CALL(SetCamSpeed, CAM_DEFAULT, EVT_FLOAT(1.0))
        EVT_ELSE
            EVT_CALL(SetCamSpeed, CAM_DEFAULT, EVT_FLOAT(3.0))
        EVT_END_IF
        EVT_GOTO(0)
    EVT_END_THREAD
    EVT_RETURN
    EVT_END
};
