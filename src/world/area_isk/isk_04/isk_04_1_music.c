#include "isk_04.h"

EvtScript N(EVS_SetupMusic) = {
    EVT_IF_EQ(GF_ISK04_SecondWarning, FALSE)
        EVT_THREAD
            EVT_CALL(FadeInMusic, 1, SONG_TUTANKOOPA_WARNING, 0, 2000, 0, 127)
            EVT_CALL(FadeOutMusic, 0, 2000)
            EVT_CALL(DisablePlayerInput, TRUE)
            EVT_WAIT(20)
            EVT_SET_GROUP(EVT_GROUP_00)
            EVT_CALL(SetTimeFreezeMode, TIME_FREEZE_PARTIAL)
            EVT_CALL(ShowMessageAtScreenPos, MSG_CH2_00DE, 160, 40)
            EVT_SET(GF_ISK04_SecondWarning, TRUE)
            EVT_CALL(DisablePlayerInput, FALSE)
            EVT_CALL(SetTimeFreezeMode, TIME_FREEZE_NORMAL)
            EVT_CALL(FadeInMusic, 0, SONG_DRY_DRY_RUINS, 0, 2000, 0, 127)
            EVT_CALL(FadeOutMusic, 1, 2000)
        EVT_END_THREAD
        EVT_RETURN
    EVT_END_IF
    EVT_CALL(SetMusicTrack, 0, SONG_DRY_DRY_RUINS, 0, 8)
    EVT_RETURN
    EVT_END
};
