#include "common.h"
#include "nu/nusys.h"

s32 contRetrace(NUSiCommonMesg* mesg);
s32 contRead(NUSiCommonMesg* mesg);
s32 contReadNW(NUSiCommonMesg* mesg);
s32 contReadData(OSContPad* pad, u32 lockflag);
s32 contQuery(NUSiCommonMesg* mesg);

NUContReadFunc nuContReadFunc = NULL;

static s32 (*funcList[])(NUSiCommonMesg*) = {
    contRetrace,
    contRead,
    contReadNW,
    contQuery,
    NULL,
};

NUCallBackList nuContCallBack = { NULL, funcList, NU_SI_MAJOR_NO_CONT };

extern OSMesg nuContWaitMesgBuf;
extern OSMesg nuContDataMutexBuf;
extern OSMesgQueue nuContDataMutexQ;

u8 nuContMgrInit(void) {
    s32 i;
    u8 pattern;
    u8 bitmask;

    nuContDataUnLock();
    osCreateMesgQueue(&nuContWaitMesgQ, &nuContWaitMesgBuf, 1);
    osCreateMesgQueue(&nuContDataMutexQ, &nuContDataMutexBuf, 1);
    nuSiCallBackAdd(&nuContCallBack);
    nuContQueryRead();

    nuContNum = 0;
    bitmask = 1;
    pattern = 0;

    for (i = 0; i < NU_CONT_MAXCONTROLLERS; i++) {
        if (nuContStatus[i].errno != 0) {
            continue;
        }

        if ((nuContStatus[i].type & CONT_TYPE_MASK) == CONT_TYPE_NORMAL) {
            nuContNum++;
            pattern |= bitmask;
        }
        bitmask <<= 1;
    }

    return pattern;
}

void nuContMgrRemove(void) {
    nuSiCallBackRemove(&nuContCallBack);
}

void nuContDataClose(void) {
    osSendMesg(&nuContDataMutexQ, NULL, OS_MESG_BLOCK);
}

void nuContDataOpen(void) {
    osRecvMesg(&nuContDataMutexQ, NULL, OS_MESG_BLOCK);
}

s32 contReadData(OSContPad* pad, u32 lockflag) {
    s32 rtn;

    rtn = osContStartReadData(&nuSiMesgQ);
    if (rtn) {
        return rtn;
    }

    osRecvMesg(&nuSiMesgQ, NULL, OS_MESG_BLOCK);

    if(lockflag & nuContDataLockKey) {
        return rtn;
    }

    nuContDataClose();
    osContGetReadData(pad);
    nuContDataOpen();

    return rtn;
}

s32 contQuery(NUSiCommonMesg* mesg) {
    s32 ret = osContStartQuery(&nuSiMesgQ);

    if (ret != 0) {
        return ret;
    }

    osRecvMesg(&nuSiMesgQ, NULL, OS_MESG_BLOCK);
    osContGetQuery(nuContStatus);

    return ret;
}

s32 contRetrace(NUSiCommonMesg* mesg) {
    if(nuContDataLockKey) {
        return NU_SI_CALLBACK_CONTINUE;
    }

    osRecvMesg(&nuContWaitMesgQ, NULL, OS_MESG_NOBLOCK);

    contReadData(nuContData, 1);

    if(nuContReadFunc != NULL) {
        (*nuContReadFunc)(mesg->mesg);
    }

    osSendMesg(&nuContWaitMesgQ, NULL, OS_MESG_NOBLOCK);

    return NU_SI_CALLBACK_CONTINUE;
}

s32 contRead(NUSiCommonMesg* mesg) {
    return contReadData((OSContPad*)mesg->dataPtr, 0);
}

s32 contReadNW(NUSiCommonMesg* mesg) {
    s32 rtn;

    osRecvMesg(&nuContWaitMesgQ, NULL, OS_MESG_NOBLOCK);

    rtn = contReadData(nuContData, 0);
    if (rtn) {
        return rtn;
    }

    if(nuContReadFunc != NULL) {
	    (*nuContReadFunc)(mesg->mesg);
    }

    return rtn;
}

