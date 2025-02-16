#include "pra_10.h"

#include "world/common/enemy/complete/Swooper.inc.c"

EvtScript N(EVS_NpcInit_Swoopula) = {
    EVT_CALL(SetNpcFlagBits, NPC_SELF, NPC_FLAG_REFLECT_FLOOR, TRUE)
    EVT_RETURN
    EVT_END
};

StaticNpc N(NpcData_Swoopula_01) = {
    .id = NPC_Swoopula_01,
    .settings = &N(NpcSettings_Swoopula),
    .pos = { 166.0f, 130.0f, 90.0f },
    .yaw = 270,
    .flags = ENEMY_FLAG_400 | ENEMY_FLAG_800 | ENEMY_FLAG_200000,
    .init = &N(EVS_NpcInit_Swoopula),
    .drops = SWOOPULA_DROPS,
    .territory = {
        .wander = {
            .isFlying = TRUE,
            .moveSpeedOverride = NO_OVERRIDE_MOVEMENT_SPEED,
            .wanderShape = SHAPE_CYLINDER,
            .centerPos  = { 166, 130, 90 },
            .wanderSize = { 0 },
            .detectShape = SHAPE_CYLINDER,
            .detectPos  = { 166, 130, 90 },
            .detectSize = { 250 },
        }
    },
    .animations = SWOOPULA_ANIMS,
};

StaticNpc N(NpcData_Swoopula_02) = {
    .id = NPC_Swoopula_02,
    .settings = &N(NpcSettings_Swoopula),
    .pos = { 358.0f, 130.0f, 75.0f },
    .yaw = 270,
    .flags = ENEMY_FLAG_400 | ENEMY_FLAG_800 | ENEMY_FLAG_200000,
    .init = &N(EVS_NpcInit_Swoopula),
    .drops = SWOOPULA_DROPS,
    .territory = {
        .wander = {
            .isFlying = TRUE,
            .moveSpeedOverride = NO_OVERRIDE_MOVEMENT_SPEED,
            .wanderShape = SHAPE_CYLINDER,
            .centerPos  = { 358, 130, 75 },
            .wanderSize = { 0 },
            .detectShape = SHAPE_CYLINDER,
            .detectPos  = { 358, 130, 75 },
            .detectSize = { 250 },
        }
    },
    .animations = SWOOPULA_ANIMS,
};

NpcGroupList N(DefaultNPCs) = {
    NPC_GROUP(N(NpcData_Swoopula_01), BTL_PRA_FORMATION_01, BTL_PRA_STAGE_00),
    NPC_GROUP(N(NpcData_Swoopula_02), BTL_PRA_FORMATION_03, BTL_PRA_STAGE_00),
    {}
};
