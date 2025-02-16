#include "sbk_32.h"

#include "world/common/enemy/complete/Bandit.inc.c"
#include "world/common/enemy/complete/Pokey.inc.c"

StaticNpc N(NpcData_Pokey_01) = {
    .id = NPC_Pokey_01,
    .settings = &N(NpcSettings_Pokey),
    .pos = { -140.0f, 0.0f, -270.0f },
    .yaw = 270,
    .flags = ENEMY_FLAG_400 | ENEMY_FLAG_800 | ENEMY_FLAG_2000,
    .drops = POKEY_DROPS,
    .territory = {
        .wander = {
            .isFlying = TRUE,
            .moveSpeedOverride = NO_OVERRIDE_MOVEMENT_SPEED,
            .wanderShape = SHAPE_CYLINDER,
            .centerPos  = { -140, 0, -270 },
            .wanderSize = { 100 },
            .detectShape = SHAPE_CYLINDER,
            .detectPos  = { 0, 0, 0 },
            .detectSize = { 1000 },
        }
    },
    .animations = POKEY_ANIMS,
    .aiDetectFlags = AI_DETECT_SIGHT,
};

StaticNpc N(NpcData_Pokey_02) = {
    .id = NPC_Pokey_02,
    .settings = &N(NpcSettings_Pokey),
    .pos = { -120.0f, 0.0f, 110.0f },
    .yaw = 90,
    .flags = ENEMY_FLAG_400 | ENEMY_FLAG_800 | ENEMY_FLAG_2000,
    .drops = POKEY_DROPS,
    .territory = {
        .wander = {
            .isFlying = TRUE,
            .moveSpeedOverride = NO_OVERRIDE_MOVEMENT_SPEED,
            .wanderShape = SHAPE_CYLINDER,
            .centerPos  = { -120, 0, 110 },
            .wanderSize = { 100 },
            .detectShape = SHAPE_CYLINDER,
            .detectPos  = { 0, 0, 0 },
            .detectSize = { 1000 },
        }
    },
    .animations = POKEY_ANIMS,
    .aiDetectFlags = AI_DETECT_SIGHT,
};

StaticNpc N(NpcData_Bandit) = {
    .id = NPC_Bandit,
    .settings = &N(NpcSettings_Bandit),
    .pos = { 23.0f, 0.0f, -260.0f },
    .yaw = 270,
    .flags = ENEMY_FLAG_400 | ENEMY_FLAG_800 | ENEMY_FLAG_2000,
    .drops = BANDIT_DROPS,
    .territory = {
        .wander = {
            .isFlying = TRUE,
            .moveSpeedOverride = NO_OVERRIDE_MOVEMENT_SPEED,
            .wanderShape = SHAPE_CYLINDER,
            .centerPos  = { 23, 0, -260 },
            .wanderSize = { 100 },
            .detectShape = SHAPE_CYLINDER,
            .detectPos  = { 0, 0, 0 },
            .detectSize = { 1000 },
        }
    },
    .animations = BANDIT_ANIMS,
    .aiDetectFlags = AI_DETECT_SIGHT,
};

NpcGroupList N(DefaultNPCs) = {
    NPC_GROUP(N(NpcData_Pokey_01), BTL_SBK_FORMATION_01, BTL_SBK_STAGE_00),
    NPC_GROUP(N(NpcData_Pokey_02), BTL_SBK_FORMATION_02, BTL_SBK_STAGE_00),
    NPC_GROUP(N(NpcData_Bandit), BTL_SBK_FORMATION_0B, BTL_SBK_STAGE_00),
    {}
};
