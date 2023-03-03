#include "common.h"
#include "hud_element.h"
#include "entity.h"

#include "level_up/heart.png.inc.c"
#include "level_up/heart.pal.inc.c"
#include "level_up/flower.png.inc.c"
#include "level_up/flower.pal.inc.c"
#include "level_up/leaves.png.inc.c"
#include "level_up/leaves.pal.inc.c"
#include "level_up/badge.png.inc.c"
#include "level_up/badge.pal.inc.c"

#include "level_up/FP.png.inc.c"
#include "level_up/FP.pal.inc.c"
#include "level_up/BP.png.inc.c"
#include "level_up/BP.pal.inc.c"
#include "level_up/HP.png.inc.c"
#include "level_up/HP.pal.inc.c"

#define level_up_FP_png level_up_FP_de_png
#define level_up_FP_pal level_up_FP_de_pal
#define level_up_BP_png level_up_BP_de_png
#define level_up_BP_pal level_up_BP_de_pal
#define level_up_HP_png level_up_HP_de_png
#define level_up_HP_pal level_up_HP_de_pal
#include "level_up/FP.png.inc.c"
#include "level_up/FP.pal.inc.c"
#include "level_up/BP.png.inc.c"
#include "level_up/BP.pal.inc.c"
#include "level_up/HP.png.inc.c"
#include "level_up/HP.pal.inc.c"

#define level_up_FP_png level_up_FP_fr_png
#define level_up_FP_pal level_up_FP_fr_pal
#define level_up_BP_png level_up_BP_fr_png
#define level_up_BP_pal level_up_BP_fr_pal
#define level_up_HP_png level_up_HP_fr_png
#define level_up_HP_pal level_up_HP_fr_pal
#include "level_up/FP.png.inc.c"
#include "level_up/FP.pal.inc.c"
#include "level_up/BP.png.inc.c"
#include "level_up/BP.pal.inc.c"
#include "level_up/HP.png.inc.c"
#include "level_up/HP.pal.inc.c"

#define level_up_FP_png level_up_FP_es_png
#define level_up_FP_pal level_up_FP_es_pal
#define level_up_BP_png level_up_BP_es_png
#define level_up_BP_pal level_up_BP_es_pal
#define level_up_HP_png level_up_HP_es_png
#define level_up_HP_pal level_up_HP_es_pal
#include "level_up/FP.png.inc.c"
#include "level_up/FP.pal.inc.c"
#include "level_up/BP.png.inc.c"
#include "level_up/BP.pal.inc.c"
#include "level_up/HP.png.inc.c"
#include "level_up/HP.pal.inc.c"

#undef level_up_FP_png
#undef level_up_FP_pal
#undef level_up_BP_png
#undef level_up_BP_pal
#undef level_up_HP_png
#undef level_up_HP_pal


#include "level_up/digit_0.png.inc.c"
#include "level_up/digit_0.pal.inc.c"
#include "level_up/digit_1.png.inc.c"
#include "level_up/digit_1.pal.inc.c"
#include "level_up/digit_2.png.inc.c"
#include "level_up/digit_2.pal.inc.c"
#include "level_up/digit_3.png.inc.c"
#include "level_up/digit_3.pal.inc.c"
#include "level_up/digit_4.png.inc.c"
#include "level_up/digit_4.pal.inc.c"
#include "level_up/digit_5.png.inc.c"
#include "level_up/digit_5.pal.inc.c"
#include "level_up/digit_6.png.inc.c"
#include "level_up/digit_6.pal.inc.c"
#include "level_up/digit_7.png.inc.c"
#include "level_up/digit_7.pal.inc.c"
#include "level_up/digit_8.png.inc.c"
#include "level_up/digit_8.pal.inc.c"
#include "level_up/digit_9.png.inc.c"
#include "level_up/digit_9.pal.inc.c"

#include "level_up/small_digit_0.png.inc.c"
#include "level_up/small_digit_0.pal.inc.c"
#include "level_up/small_digit_1.png.inc.c"
#include "level_up/small_digit_1.pal.inc.c"
#include "level_up/small_digit_2.png.inc.c"
#include "level_up/small_digit_2.pal.inc.c"
#include "level_up/small_digit_3.png.inc.c"
#include "level_up/small_digit_3.pal.inc.c"
#include "level_up/small_digit_4.png.inc.c"
#include "level_up/small_digit_4.pal.inc.c"
#include "level_up/small_digit_5.png.inc.c"
#include "level_up/small_digit_5.pal.inc.c"
#include "level_up/small_digit_6.png.inc.c"
#include "level_up/small_digit_6.pal.inc.c"
#include "level_up/small_digit_7.png.inc.c"
#include "level_up/small_digit_7.pal.inc.c"
#include "level_up/small_digit_8.png.inc.c"
#include "level_up/small_digit_8.pal.inc.c"
#include "level_up/small_digit_9.png.inc.c"
#include "level_up/small_digit_9.pal.inc.c"
#include "level_up/small_arrow.png.inc.c"
#include "level_up/small_arrow.pal.inc.c"

#define level_up_digit_0_red_png level_up_digit_0_png
#include "level_up/digit_0.red.pal.inc.c"
#define level_up_digit_1_red_png level_up_digit_1_png
#include "level_up/digit_1.red.pal.inc.c"
#define level_up_digit_2_red_png level_up_digit_2_png
#include "level_up/digit_2.red.pal.inc.c"
#define level_up_digit_3_red_png level_up_digit_3_png
#include "level_up/digit_3.red.pal.inc.c"
#define level_up_digit_4_red_png level_up_digit_4_png
#include "level_up/digit_4.red.pal.inc.c"
#define level_up_digit_5_red_png level_up_digit_5_png
#include "level_up/digit_5.red.pal.inc.c"
#define level_up_digit_6_red_png level_up_digit_6_png
#include "level_up/digit_6.red.pal.inc.c"
#define level_up_digit_7_red_png level_up_digit_7_png
#include "level_up/digit_7.red.pal.inc.c"
#define level_up_digit_8_red_png level_up_digit_8_png
#include "level_up/digit_8.red.pal.inc.c"
#define level_up_digit_9_red_png level_up_digit_9_png
#include "level_up/digit_9.red.pal.inc.c"

#define level_up_small_digit_0_red_png level_up_small_digit_0_png
#include "level_up/small_digit_0.red.pal.inc.c"
#define level_up_small_digit_1_red_png level_up_small_digit_1_png
#include "level_up/small_digit_1.red.pal.inc.c"
#define level_up_small_digit_2_red_png level_up_small_digit_2_png
#include "level_up/small_digit_2.red.pal.inc.c"
#define level_up_small_digit_3_red_png level_up_small_digit_3_png
#include "level_up/small_digit_3.red.pal.inc.c"
#define level_up_small_digit_4_red_png level_up_small_digit_4_png
#include "level_up/small_digit_4.red.pal.inc.c"
#define level_up_small_digit_5_red_png level_up_small_digit_5_png
#include "level_up/small_digit_5.red.pal.inc.c"
#define level_up_small_digit_6_red_png level_up_small_digit_6_png
#include "level_up/small_digit_6.red.pal.inc.c"
#define level_up_small_digit_7_red_png level_up_small_digit_7_png
#include "level_up/small_digit_7.red.pal.inc.c"
#define level_up_small_digit_8_red_png level_up_small_digit_8_png
#include "level_up/small_digit_8.red.pal.inc.c"
#define level_up_small_digit_9_red_png level_up_small_digit_9_png
#include "level_up/small_digit_9.red.pal.inc.c"
#define level_up_small_arrow_red_png level_up_small_arrow_png
#include "level_up/small_arrow.red.pal.inc.c"

#define level_up_digit_0_blue_png level_up_digit_0_png
#include "level_up/digit_0.blue.pal.inc.c"
#define level_up_digit_1_blue_png level_up_digit_1_png
#include "level_up/digit_1.blue.pal.inc.c"
#define level_up_digit_2_blue_png level_up_digit_2_png
#include "level_up/digit_2.blue.pal.inc.c"
#define level_up_digit_3_blue_png level_up_digit_3_png
#include "level_up/digit_3.blue.pal.inc.c"
#define level_up_digit_4_blue_png level_up_digit_4_png
#include "level_up/digit_4.blue.pal.inc.c"
#define level_up_digit_5_blue_png level_up_digit_5_png
#include "level_up/digit_5.blue.pal.inc.c"
#define level_up_digit_6_blue_png level_up_digit_6_png
#include "level_up/digit_6.blue.pal.inc.c"
#define level_up_digit_7_blue_png level_up_digit_7_png
#include "level_up/digit_7.blue.pal.inc.c"
#define level_up_digit_8_blue_png level_up_digit_8_png
#include "level_up/digit_8.blue.pal.inc.c"
#define level_up_digit_9_blue_png level_up_digit_9_png
#include "level_up/digit_9.blue.pal.inc.c"

#define level_up_small_digit_0_blue_png level_up_small_digit_0_png
#include "level_up/small_digit_0.blue.pal.inc.c"
#define level_up_small_digit_1_blue_png level_up_small_digit_1_png
#include "level_up/small_digit_1.blue.pal.inc.c"
#define level_up_small_digit_2_blue_png level_up_small_digit_2_png
#include "level_up/small_digit_2.blue.pal.inc.c"
#define level_up_small_digit_3_blue_png level_up_small_digit_3_png
#include "level_up/small_digit_3.blue.pal.inc.c"
#define level_up_small_digit_4_blue_png level_up_small_digit_4_png
#include "level_up/small_digit_4.blue.pal.inc.c"
#define level_up_small_digit_5_blue_png level_up_small_digit_5_png
#include "level_up/small_digit_5.blue.pal.inc.c"
#define level_up_small_digit_6_blue_png level_up_small_digit_6_png
#include "level_up/small_digit_6.blue.pal.inc.c"
#define level_up_small_digit_7_blue_png level_up_small_digit_7_png
#include "level_up/small_digit_7.blue.pal.inc.c"
#define level_up_small_digit_8_blue_png level_up_small_digit_8_png
#include "level_up/small_digit_8.blue.pal.inc.c"
#define level_up_small_digit_9_blue_png level_up_small_digit_9_png
#include "level_up/small_digit_9.blue.pal.inc.c"
#define level_up_small_arrow_blue_png level_up_small_arrow_png
#include "level_up/small_arrow.blue.pal.inc.c"

#include "level_up/select_one_to_upgrade.png.inc.c"
#include "level_up/select_one_to_upgrade.pal.inc.c"

#define level_up_select_one_to_upgrade_png level_up_select_one_to_upgrade_de_png
#define level_up_select_one_to_upgrade_pal level_up_select_one_to_upgrade_de_pal
#include "level_up/select_one_to_upgrade.png.inc.c"
#include "level_up/select_one_to_upgrade.pal.inc.c"

#define level_up_select_one_to_upgrade_png level_up_select_one_to_upgrade_fr_png
#define level_up_select_one_to_upgrade_pal level_up_select_one_to_upgrade_fr_pal
#include "level_up/select_one_to_upgrade.png.inc.c"
#include "level_up/select_one_to_upgrade.pal.inc.c"

#define level_up_select_one_to_upgrade_png level_up_select_one_to_upgrade_es_png
#define level_up_select_one_to_upgrade_pal level_up_select_one_to_upgrade_es_pal
#include "level_up/select_one_to_upgrade.png.inc.c"
#include "level_up/select_one_to_upgrade.pal.inc.c"

#undef level_up_select_one_to_upgrade_png level_up_select_one_to_upgrade_de_png
#undef level_up_select_one_to_upgrade_pal

HudScript HES_level_up_heart = HES_TEMPLATE_CI_ENUM_SIZE(level_up_heart, 40, 40);
HudScript HES_level_up_heart_copy = HES_TEMPLATE_CI_ENUM_SIZE(level_up_heart, 40, 40);
HudScript HES_level_up_flower = HES_TEMPLATE_CI_ENUM_SIZE(level_up_flower, 40, 40);
HudScript HES_level_up_leaves = HES_TEMPLATE_CI_ENUM_SIZE(level_up_leaves, 40, 40);
HudScript HES_level_up_badge = HES_TEMPLATE_CI_ENUM_SIZE(level_up_badge, 40, 40);

HudScript HES_level_up_FP = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_FP, 32, 24);
HudScript HES_level_up_FP_de = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_FP_de, 32, 24);
HudScript HES_level_up_FP_fr = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_FP_fr, 32, 24);
HudScript HES_level_up_FP_es = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_FP_es, 32, 24);
HudScript HES_level_up_green_digit_0 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_0, 8, 16);
HudScript HES_level_up_green_digit_1 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_1, 8, 16);
HudScript HES_level_up_green_digit_2 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_2, 8, 16);
HudScript HES_level_up_green_digit_3 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_3, 8, 16);
HudScript HES_level_up_green_digit_4 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_4, 8, 16);
HudScript HES_level_up_green_digit_5 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_5, 8, 16);
HudScript HES_level_up_green_digit_6 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_6, 8, 16);
HudScript HES_level_up_green_digit_7 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_7, 8, 16);
HudScript HES_level_up_green_digit_8 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_8, 8, 16);
HudScript HES_level_up_green_digit_9 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_9, 8, 16);
HudScript HES_level_up_small_green_digit_0 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_0, 8, 8);
HudScript HES_level_up_small_green_digit_1 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_1, 8, 8);
HudScript HES_level_up_small_green_digit_2 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_2, 8, 8);
HudScript HES_level_up_small_green_digit_3 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_3, 8, 8);
HudScript HES_level_up_small_green_digit_4 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_4, 8, 8);
HudScript HES_level_up_small_green_digit_5 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_5, 8, 8);
HudScript HES_level_up_small_green_digit_6 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_6, 8, 8);
HudScript HES_level_up_small_green_digit_7 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_7, 8, 8);
HudScript HES_level_up_small_green_digit_8 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_8, 8, 8);
HudScript HES_level_up_small_green_digit_9 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_9, 8, 8);
HudScript HES_level_up_small_green_arrow = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_arrow, 8, 8);

HudScript HES_level_up_HP = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_HP, 32, 24);
HudScript HES_level_up_HP_de = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_HP_de, 32, 24);
HudScript HES_level_up_HP_fr = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_HP_fr, 32, 24);
HudScript HES_level_up_HP_es = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_HP_es, 32, 24);
HudScript HES_level_up_red_digit_0 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_0_red, 8, 16);
HudScript HES_level_up_red_digit_1 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_1_red, 8, 16);
HudScript HES_level_up_red_digit_2 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_2_red, 8, 16);
HudScript HES_level_up_red_digit_3 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_3_red, 8, 16);
HudScript HES_level_up_red_digit_4 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_4_red, 8, 16);
HudScript HES_level_up_red_digit_5 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_5_red, 8, 16);
HudScript HES_level_up_red_digit_6 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_6_red, 8, 16);
HudScript HES_level_up_red_digit_7 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_7_red, 8, 16);
HudScript HES_level_up_red_digit_8 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_8_red, 8, 16);
HudScript HES_level_up_red_digit_9 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_9_red, 8, 16);
HudScript HES_level_up_small_red_digit_0 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_0_red, 8, 8);
HudScript HES_level_up_small_red_digit_1 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_1_red, 8, 8);
HudScript HES_level_up_small_red_digit_2 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_2_red, 8, 8);
HudScript HES_level_up_small_red_digit_3 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_3_red, 8, 8);
HudScript HES_level_up_small_red_digit_4 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_4_red, 8, 8);
HudScript HES_level_up_small_red_digit_5 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_5_red, 8, 8);
HudScript HES_level_up_small_red_digit_6 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_6_red, 8, 8);
HudScript HES_level_up_small_red_digit_7 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_7_red, 8, 8);
HudScript HES_level_up_small_red_digit_8 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_8_red, 8, 8);
HudScript HES_level_up_small_red_digit_9 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_9_red, 8, 8);
HudScript HES_level_up_small_red_arrow = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_arrow_red, 8, 8);

HudScript HES_level_up_BP = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_BP, 32, 24);
HudScript HES_level_up_BP_de = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_BP_de, 32, 24);
HudScript HES_level_up_BP_fr = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_BP_fr, 32, 24);
HudScript HES_level_up_BP_es = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_BP_es, 32, 24);
HudScript HES_level_up_blue_digit_0 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_0_blue, 8, 16);
HudScript HES_level_up_blue_digit_1 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_1_blue, 8, 16);
HudScript HES_level_up_blue_digit_2 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_2_blue, 8, 16);
HudScript HES_level_up_blue_digit_3 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_3_blue, 8, 16);
HudScript HES_level_up_blue_digit_4 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_4_blue, 8, 16);
HudScript HES_level_up_blue_digit_5 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_5_blue, 8, 16);
HudScript HES_level_up_blue_digit_6 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_6_blue, 8, 16);
HudScript HES_level_up_blue_digit_7 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_7_blue, 8, 16);
HudScript HES_level_up_blue_digit_8 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_8_blue, 8, 16);
HudScript HES_level_up_blue_digit_9 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_digit_9_blue, 8, 16);
HudScript HES_level_up_small_blue_digit_0 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_0_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_1 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_1_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_2 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_2_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_3 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_3_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_4 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_4_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_5 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_5_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_6 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_6_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_7 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_7_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_8 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_8_blue, 8, 8);
HudScript HES_level_up_small_blue_digit_9 = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_digit_9_blue, 8, 8);
HudScript HES_level_up_small_blue_arrow = HES_TEMPLATE_CI_ENUM_SIZE(level_up_small_arrow_blue, 8, 8);

HudScript HES_level_up_select_one_to_upgrade = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_select_one_to_upgrade, 208, 16);
HudScript HES_level_up_select_one_to_upgrade_de = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_select_one_to_upgrade_de, 208, 16);
HudScript HES_level_up_select_one_to_upgrade_fr = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_select_one_to_upgrade_fr, 208, 16);
HudScript HES_level_up_select_one_to_upgrade_es = HES_TEMPLATE_CI_CUSTOM_SIZE(level_up_select_one_to_upgrade_es, 208, 16);
