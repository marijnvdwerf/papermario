EvtScript N(EVS_NpcInit_Eldstar) = {
    EVT_CALL(SetNpcAnimation, NPC_SELF, ANIM_WorldEldstar_Still)
    EVT_CALL(func_802CFD30, -1, 8, 0, 0, 0, 128)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_KoopaBros) = {
    EVT_CALL(SetNpcAnimation, NPC_SELF, ANIM_KoopaBros_Black_Anim1B)
    EVT_CALL(func_802CFD30, -1, 14, 80, 80, 80, 0)
    EVT_RETURN
    EVT_END
};
