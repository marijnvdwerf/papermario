#include "sbk_26.h"

#include "world/common/enemy/complete/Bandit.inc.c"
#include "world/common/enemy/complete/Pokey.inc.c"

StaticNpc N(NpcData_Bandit) = {
    .id = NPC_Bandit,
    .settings = &N(NpcSettings_Bandit),
    .pos = { -223.0f, 0.0f, 101.0f },
    .yaw = 180,
    .flags = ENEMY_FLAG_800,
    .drops = BANDIT_DROPS,
    .territory = {
        .wander = {
            .isFlying = TRUE,
            .moveSpeedOverride = NO_OVERRIDE_MOVEMENT_SPEED,
            .wanderShape = SHAPE_CYLINDER,
            .centerPos  = { -223, 0, 101 },
            .wanderSize = { 100 },
            .detectShape = SHAPE_CYLINDER,
            .detectPos  = { 0, 0, 0 },
            .detectSize = { 1000 },
        }
    },
    .animations = BANDIT_ANIMS,
    .aiDetectFlags = AI_DETECT_SIGHT,
};

StaticNpc N(NpcData_Pokey) = {
    .id = NPC_Pokey,
    .settings = &N(NpcSettings_Pokey),
    .pos = { -140.0f, 0.0f, -230.0f },
    .yaw = 90,
    .flags = ENEMY_FLAG_400 | ENEMY_FLAG_800 | ENEMY_FLAG_2000,
    .drops = POKEY_DROPS,
    .territory = {
        .wander = {
            .isFlying = TRUE,
            .moveSpeedOverride = NO_OVERRIDE_MOVEMENT_SPEED,
            .wanderShape = SHAPE_CYLINDER,
            .centerPos  = { -140, 0, -230 },
            .wanderSize = { 100 },
            .detectShape = SHAPE_CYLINDER,
            .detectPos  = { 0, 0, 0 },
            .detectSize = { 1000 },
        }
    },
    .animations = POKEY_ANIMS,
    .aiDetectFlags = AI_DETECT_SIGHT,
};

NpcGroupList N(DefaultNPCs) = {
    NPC_GROUP(N(NpcData_Bandit), BTL_SBK_FORMATION_0C, BTL_SBK_STAGE_00),
    NPC_GROUP(N(NpcData_Pokey), BTL_SBK_FORMATION_06, BTL_SBK_STAGE_00),
    {}
};
