#include "dgb_10.h"

// unused
#include "world/common/atomic/BetaFloorPanels.inc.c"

API_CALLABLE(N(AwaitFallInHole)) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32 entry;

    if (playerStatus->position.y >= 0.0f) {
        return ApiStatus_BLOCK;
    }

    if (playerStatus->position.x < 440.0f) {
        entry = dgb_11_ENTRY_3;
    } else if (playerStatus->position.z < -170.0f) {
        entry = dgb_11_ENTRY_2;
    } else {
        entry = dgb_11_ENTRY_1;
    }
    script->varTable[0] = entry;

    return ApiStatus_DONE2;
}

API_CALLABLE(N(AwaitFallDownHole)) {
    if (gPlayerStatus.position.y > -60.0f) {
        return ApiStatus_BLOCK;
    }
    return ApiStatus_DONE2;
}

EvtScript N(EVS_SetupHoles) = {
    EVT_CALL(N(AwaitFallInHole))
    EVT_CALL(func_802CA988, 0, LVar2, LVar3, LVar4, LVar5)
    EVT_CALL(N(AwaitFallDownHole))
    EVT_CALL(SetPlayerActionState, 0)
    EVT_CALL(DisablePlayerPhysics, TRUE)
    EVT_CALL(InterruptUsePartner)
    EVT_CALL(GotoMap, EVT_PTR("dgb_11"), LVar0)
    EVT_WAIT(100)
    EVT_RETURN
    EVT_END
};
