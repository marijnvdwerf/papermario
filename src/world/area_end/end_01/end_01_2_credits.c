#include "end_01.h"

#include "../common/Credits.inc.c"

#include "credits_jobs.inc.c"
#include "credits_names.inc.c"

EvtScript N(EVS_InitCredits) = {
    EVT_CALL(N(InitCredits))
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_ShowCredits_Jobs) = {
    EVT_CALL(N(ShowCreditList), EVT_PTR(N(Credits_Jobs)))
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_ShowCredits_Names) = {
    EVT_CALL(N(ShowCreditList), EVT_PTR(N(Credits_Names)))
    EVT_RETURN
    EVT_END
};
