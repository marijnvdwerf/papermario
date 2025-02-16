EvtScript N(EVS_NpcInit_Mamar) = {
    EVT_CALL(SetNpcAnimation, NPC_SELF, ANIM_WorldMamar_Still)
    EVT_CALL(func_802CFD30, -1, 8, 0, 0, 0, 128)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_Tutankoopa) = {
    EVT_CALL(SetNpcAnimation, NPC_SELF, ANIM_Tutankoopa_Anim08)
    EVT_CALL(func_802CFD30, -1, 14, 80, 80, 80, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_ChainChomp) = {
    EVT_CALL(SetNpcAnimation, NPC_SELF, ANIM_ChainChomp_Anim03)
    EVT_CALL(func_802CFD30, -1, 14, 80, 80, 80, 0)
    EVT_CALL(SetNpcPos, NPC_SELF, 5, -25, -180)
    EVT_CALL(SetNpcAnimation, NPC_ChainChomp_02, ANIM_ChainChomp_Anim02)
    EVT_CALL(func_802CFD30, 13, 14, 80, 80, 80, 0)
    EVT_CALL(SetNpcPos, NPC_ChainChomp_02, 35, -14, -180)
    EVT_CALL(SetNpcAnimation, NPC_ChainChomp_03, ANIM_ChainChomp_Anim02)
    EVT_CALL(func_802CFD30, 14, 14, 80, 80, 80, 0)
    EVT_CALL(SetNpcPos, NPC_ChainChomp_03, 52, -18, -180)
    EVT_CALL(SetNpcAnimation, NPC_ChainChomp_04, ANIM_ChainChomp_Anim02)
    EVT_CALL(func_802CFD30, 15, 14, 80, 80, 80, 0)
    EVT_CALL(SetNpcPos, NPC_ChainChomp_04, 69, -19, -180)
    EVT_CALL(SetNpcAnimation, NPC_ChainChomp_05, ANIM_ChainChomp_Anim02)
    EVT_CALL(func_802CFD30, 16, 14, 80, 80, 80, 0)
    EVT_CALL(SetNpcPos, NPC_ChainChomp_05, 86, -19, -180)
    EVT_RETURN
    EVT_END
};
