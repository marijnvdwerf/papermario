#include "common.h"
#include "hud_element.h"
#include "entity.h"

Lights1 level_up_lights = gdSPDefLights1(0, 0, 0, 0, 0, 0, 0, 0, 0);

#include "level_up/draw_second_E.vtx.inc.c"
#include "level_up/draw_V.vtx.inc.c"
#include "level_up/draw_E.vtx.inc.c"
#include "level_up/draw_second_L.vtx.inc.c"
#include "level_up/draw_L.vtx.inc.c"
#include "level_up/draw_P.vtx.inc.c"
#include "level_up/draw_U.vtx.inc.c"
#include "level_up/draw_exclamation_mark.vtx.inc.c"

#include "level_up/big_V.png.inc.c"
#include "level_up/big_V.gfx.inc.c"
#include "level_up/big_P.png.inc.c"
#include "level_up/big_P.gfx.inc.c"
#include "level_up/big_exclamation_mark.png.inc.c"
#include "level_up/big_exclamation_mark.gfx.inc.c"
#include "level_up/big_U.png.inc.c"
#include "level_up/big_U.gfx.inc.c"
#include "level_up/big_L.png.inc.c"
#include "level_up/big_L.gfx.inc.c"
#include "level_up/big_E.png.inc.c"
#include "level_up/big_E.gfx.inc.c"

Gfx D_802A76E8_7A5628[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A4508_7A2448),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1398_79F2D8[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A7750_7A5690[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A5580_7A34C0),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1318_79F258[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A77B8_7A56F8[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A3490_7A13D0),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1298_79F1D8[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A7820_7A5760[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A65F8_7A4538),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1218_79F158[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A7888_7A57C8[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A65F8_7A4538),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1198_79F0D8[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A78F0_7A5830[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A7670_7A55B0),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1118_79F058[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A7958_7A5898[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A2418_7A0358),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1098_79EFD8[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A79C0_7A5900[] = {
        gsSPSetLights1(level_up_lights),
        gsDPPipeSync(),
        gsDPSetCycleType(G_CYC_1CYCLE),
        gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
        gsSPDisplayList(D_802A7670_7A55B0),
        gsSPClearGeometryMode(G_LIGHTING),
        gsSPSetGeometryMode(G_CULL_BACK | G_SHADING_SMOOTH),
        gsSPVertex(&D_802A1018_79EF58[0], 8, 0),
        gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
        gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
        gsSPEndDisplayList(),
};

Gfx D_802A7A28_7A5968[] = {
        gsSPSetLights1(level_up_lights),
        gsSPDisplayList(D_802A79C0_7A5900),
        gsSPDisplayList(D_802A7958_7A5898),
        gsSPDisplayList(D_802A78F0_7A5830),
        gsSPDisplayList(D_802A7888_7A57C8),
        gsSPDisplayList(D_802A7820_7A5760),
        gsSPDisplayList(D_802A77B8_7A56F8),
        gsSPDisplayList(D_802A7750_7A5690),
        gsSPDisplayList(D_802A76E8_7A5628),
        gsSPEndDisplayList(),
};

Gfx D_802A7A88_7A59C8[] = {
        gsSPSetLights1(level_up_lights),
        gsSPDisplayList(D_802A7A28_7A5968),
        gsSPEndDisplayList(),
};


EntityModelScript EMS_level_up = STANDARD_ENTITY_MODEL_SCRIPT(D_802A7A88_7A59C8, RENDER_MODE_2D);
