#include "common.h"


u32 D_filemenu_8024F120 = 0x80246264;

u32 D_filemenu_8024F124 = 0x00000000;

u32 D_filemenu_8024F128 = 0x00000000;

u32 D_filemenu_8024F12C = 0x00010203;

u32 D_filemenu_8024F130[] = {
        0x001F0056,
        0x001F0057,
        0x001F0058,
        0x001F0059,
};

u32 D_filemenu_8024F140[] = {
        0xE7000000,
        0x00000000,
        0xE3000A01,
        0x00000000,
        0xE200001C,
        0x00504340,
        0xE3001201,
        0x00000000,
        0xD7000002,
        0xFFFFFFFF,
        0xE3000C00,
        0x00000000,
        0xE3001801,
        0x000000C0,
        0xE3001A01,
        0x00000030,
        0xE3000F00,
        0x00000000,
        0xE3001001,
        0x00000000,
        0xE3000D01,
        0x00000000,
        0xE3001402,
        0x00000C00,
        0xE3001700,
        0x00000000,
        0xE2001E01,
        0x00000000,
        0x00000000,
        0x00000000,
        0xED000000,
        0x005003C0,
        0xDF000000,
        0x00000000,
};

u32 D_filemenu_8024F1C8[] = {
        0x00000300,
        0x00000000,
        0x00000200,
        0x00000100,
};

extern Addr filemenu_pal_8024d6a0;
extern Addr func_filemenu_80247460;
extern Addr D_filemenu_802512B8;
extern Addr func_filemenu_8024DAA0;
extern Addr D_filemenu_80251398;
extern Addr D_filemenu_80251408;
extern Addr filemenu_pal_80247f40;
extern Addr func_filemenu_8024DA50;

extern Addr func_filemenu_8024DA00;
extern Addr D_filemenu_802513D0;
extern Addr func_filemenu_8024D9B0;
extern Addr D_filemenu_80251440;
extern Addr func_filemenu_8024DC9C;
extern Addr func_filemenu_8024DAF0;
extern Addr func_filemenu_8024E0D8;
extern Addr func_filemenu_8024DFDC;


u32 D_filemenu_8024F1D8[] = {
        0x2D000000,
        0x00000000,
        0x00000000,
        (u32) filemenu_pal_8024d6a0,
        0x00000000,
        0x2C000000,
        (u32) func_filemenu_80247460,
        0x00000000,
        (u32) D_filemenu_802512B8,
        0x3A000059,
        0x0062006E,
        0x00140000,
        (u32) func_filemenu_8024DA50,
        0x00000000,
        0x2C000000,
        (u32) filemenu_pal_80247f40,
        0x00000000,
        (u32) D_filemenu_80251408,
        0x3B000059,
        0x007C006E,
        0x00140000,
        (u32) func_filemenu_8024DAA0,
        0x00000000,
        0x2C000000,
        (u32) filemenu_pal_80247f40,
        0x00000000,
        (u32) D_filemenu_80251440,
        0x38000059,
        0x002E006E,
        0x00140000,
        (u32) func_filemenu_8024D9B0,
        0x00000000,
        0x2C000000,
        (u32) filemenu_pal_80247f40,
        0x00000000,
        (u32) D_filemenu_80251398,
};

u32 D_filemenu_8024F268[] = {
        0x39000059,
        0x0048006E,
        0x00140000,
        (u32) func_filemenu_8024DA00,
        0x00000000,
        0x2C000000,
        (u32) filemenu_pal_80247f40,
        0x00000000,
        (u32) D_filemenu_802513D0,
};

u32 D_filemenu_8024F28C[] = {
        0x00000000,
        0x00010400,
        (u32) &D_filemenu_8024F12C,
        (u32) func_filemenu_8024DAF0,
        (u32) func_filemenu_8024DC9C,
        (u32) func_filemenu_8024DFDC,
        (u32) func_filemenu_8024E0D8,
        0x00000000,
        0x00000000,
};


INCLUDE_ASM(const s32, "filemenu/filemenu_pal", filemenu_pal_8024d6a0);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024D710);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024D9B0);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024DA00);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024DA50);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024DAA0);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024DAF0);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024DC9C);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024DFDC);

INCLUDE_ASM(const s32, "filemenu/filemenu_pal", func_filemenu_8024E0D8);
