#include "common.h"
#include "battle/battle.h"
#include "message_ids.h"

s32 D_80280FC0[] = {
    0x000A005A, 0x00000032, 0x0003000B, 0x00000032, 0x0001002D, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000032, 0x00010031, 0x00000032, 0x00010031, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000032, 0x00010032, 0x00000032, 0x00010032, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000032, 0x0003000A, 0x00000032, 0x0003000A, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000050, 0x0003000A, 0x00000014, 0x0003000B, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
};

MessageID bActorNames[] = {
    0x00290081, 0x00290082, 0x0029006B, 0x0029006C, 0x0029006D, 0x0029006E, 0x0029006F, 0x00290000, 0x00290002, 0x00290001, 0x00290009, 0x00290007, 0x00290008, 0x0029000A, 0x0029000A, 0x0029000B, 0x0029000C, 0x00290015, 0x00290014, 0x00290017, 0x00290016, 0x00290018, 0x0029001A, 0x00290019, 0x0029001E, 0x0029001F, 0x00290020, 0x00290021, 0x00290022, 0x00290023, 0x00290024, 0x00290027, 0x00290028, 0x0029002B, 0x0029002C, 0x0029002A, 0x00290029, 0x0029007C, 0x00290033, 0x00290034, 0x00290080, 0x00290035, 0x00290036, 0x00290038, 0x00290039, 0x00290037, 0x0029003D, 0x0029003E, 0x00290042, 0x0029003F, 0x00290040, 0x00290041, 0x00290044, 0x00290043, 0x00290047, 0x00290048, 0x0029004B, 0x0029004A, 0x00290056, 0x0029004C, 0x0029004F, 0x0029004E, 0x00290053, 0x00290052, 0x00290054, 0x0029004D, 0x00290050, 0x00290051, 0x00290055, 0x00290059, 0x0029005B, 0x0029005A, 0x0029005A, 0x00290060, 0x0029005F, 0x0029005E, 0x0029005D, 0x0029005C, 0x0029005C, 0x0029005C, 0x0029005C, 0x00290070, 0x00290070, 0x00290071, 0x00290071, 0x00290072, 0x00290072, 0x00290073, 0x00290073, 0x00290074, 0x00290074, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x001D0011, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290068, 0x00290069, 0x0029006A, 0x001D0007, 0x001D0008, 0x001D0009, 0x001D000A, 0x001D000F, 0x001D000C, 0x001D000D, 0x001D000E, 0x00290062, 0x00290013, 0x00290013, 0x00290013, 0x00290013, 0x00290013, 0x00290013, 0x00290013, 0x00290013, 0x00290004, 0x00290003, 0x00290005, 0x00290006, 0x001D0007, 0x0029005C, 0x0029005C, 0x0029005C, 0x0029005C, 0x0029000D, 0x00290012, 0x00290011, 0x0029000E, 0x0029000F, 0x00290010, 0x001D0007, 0x0029001B, 0x0029001C, 0x0029001D, 0x00290025, 0x00290025, 0x00290026, 0x00290032, 0x00290031, 0x00290030, 0x00290079, 0x0029002F, 0x0029007A, 0x00290027, 0x0029007B, 0x00290027, 0x0029002D, 0x0029002D, 0x0029002E, 0x00290005, 0x0029003A, 0x0029003A, 0x0029003B, 0x0029003B, 0x0029003C, 0x0029003A, 0x00290063, 0x00290045, 0x00290046, 0x00290049, 0x00290057, 0x00290057, 0x00290058, 0x00290061, 0x00290061, 0x00290061, 0x00290061, 0x00290061, 0x00290061, 0x00290061, 0x00290064, 0x00290065, 0x00290065, 0x00290066, 0x00290066, 0x00290067, 0x00290051, 0x00290076, 0x00290077, 0x00290078, 0x00290076, 0x00290076, 0x00290076,
};

s32 D_80281454[] = { 0x78, 0x93, 0x99, 0xB2, -1 };

ActorSounds bActorSoundTable[ACTOR_TYPE_COUNT] = {
    /* 0x00 */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x01 */ { .walk = { 0x20DF, 0x20DF }, .fly = { 0x20DF, 0x20DF }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x02 */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x03 */ { .walk = { 0x20DF, 0x20DF }, .fly = { 0x20DF, 0x20DF }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x04 */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x05 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x06 */ { .walk = { 0x20DF, 0x20DF }, .fly = { 0x20DF, 0x20DF }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x07 */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x08 */ { .walk = { 0x20DF, 0x20DF }, .fly = { 0x20DF, 0x20DF }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x09 */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x0A */ { .walk = { 0x0331, 0x0331 }, .fly = { 0x0331, 0x0331 }, .jump = 0x0331, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x0B */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x0C */ { .walk = { 0x20DF, 0x20DF }, .fly = { 0x20DF, 0x20DF }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x0D */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x0E */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x0F */ { .walk = { 0x02C9, 0x02C9 }, .fly = { 0x02C9, 0x02C9 }, .jump = 0x02C9, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x10 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x11 */ { .walk = { 0x20D0, 0x20D0 }, .fly = { 0x20D0, 0x20D0 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x12 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x13 */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x20C1, 0x20C1 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x14 */ { .walk = { 0x0343, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x15 */ { .walk = { 0x0343, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x16 */ { .walk = { 0x0351, 0x0351 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x17 */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x18 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x19 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x1A */ { .walk = { 0x0331, 0x0331 }, .fly = { 0x0331, 0x0331 }, .jump = 0x0331, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x1B */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x1C */ { .walk = { 0x20DF, 0x20DF }, .fly = { 0x20DF, 0x20DF }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x1D */ { .walk = { 0x20D0, 0x20D0 }, .fly = { 0x20D0, 0x20D0 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x1E */ { .walk = { 0x20C4, 0x20C4 }, .fly = { 0x20C4, 0x20C4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x1F */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x20 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x21 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x22 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0380, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x23 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x24 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x25 */ { .walk = { 0x20D9, 0x20D9 }, .fly = { 0x20D9, 0x20D9 }, .jump = 0x20D9, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x26 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x27 */ { .walk = { 0x20C6, 0x20C6 }, .fly = { 0x20C6, 0x20C6 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x28 */ { .walk = { 0x0331, 0x0331 }, .fly = { 0x0331, 0x0331 }, .jump = 0x0331, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x29 */ { .walk = { 0x0331, 0x0331 }, .fly = { 0x0331, 0x0331 }, .jump = 0x0331, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x2A */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x2B */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x2C */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x2D */ { .walk = { 0x03CE, 0x03CE }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x2E */ { .walk = { 0x0295, 0x0295 }, .fly = { 0x0295, 0x0295 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { -5, -5 } },
    /* 0x2F */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x30 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x31 */ { .walk = { 0x0357, 0x0000 }, .fly = { 0x0357, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x32 */ { .walk = { 0x02D6, 0x02D6 }, .fly = { 0x02D6, 0x02D6 }, .jump = 0x02D5, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x33 */ { .walk = { 0x02D6, 0x02D6 }, .fly = { 0x02D6, 0x02D6 }, .jump = 0x02D5, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x34 */ { .walk = { 0x0295, 0x0000 }, .fly = { 0x0295, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x35 */ { .walk = { 0x0295, 0x0000 }, .fly = { 0x0295, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x36 */ { .walk = { 0x20C4, 0x20C4 }, .fly = { 0x20C4, 0x20C4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x37 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x38 */ { .walk = { 0x20C4, 0x20C4 }, .fly = { 0x20C4, 0x20C4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x39 */ { .walk = { 0x03CE, 0x03CE }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x3A */ { .walk = { 0x0351, 0x0351 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x3B */ { .walk = { 0x02CA, 0x02CA }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x3C */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x3D */ { .walk = { 0x0100, 0x0100 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x3E */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x3F */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x40 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x41 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x42 */ { .walk = { 0x029A, 0x029A }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x43 */ { .walk = { 0x0295, 0x0295 }, .fly = { 0x0295, 0x0295 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { -5, -5 } },
    /* 0x44 */ { .walk = { 0x030B, 0x02FD }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x45 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x46 */ { .walk = { 0x20CD, 0x20CD }, .fly = { 0x20CD, 0x20CD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x47 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x48 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x49 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x4A */ { .walk = { 0x02C9, 0x02C9 }, .fly = { 0x02C9, 0x02C9 }, .jump = 0x02C9, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x4B */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x4C */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x4D */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x4E */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x4F */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x50 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x51 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x52 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x53 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x54 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x55 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x56 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x57 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x58 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x59 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x5A */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x5B */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x5C */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x5D */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x5E */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x5F */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x60 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x61 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x62 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x63 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x64 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x65 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x66 */ { .walk = { 0x0295, 0x0295 }, .fly = { 0x0295, 0x0295 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { -5, -5 } },
    /* 0x67 */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x20DD, 0x20DD }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x68 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x69 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x6A */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x6B */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x6C */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x6D */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x6E */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x6F */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x70 */ { .walk = { 0x0100, 0x0100 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x71 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x72 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x73 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x74 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x75 */ { .walk = { 0x029A, 0x029A }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x76 */ { .walk = { 0x0295, 0x0295 }, .fly = { 0x0295, 0x0295 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { -5, -5 } },
    /* 0x77 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { -5, -5 } },
    /* 0x78 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x79 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x7A */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x7B */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x7C */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x7D */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x7E */ { .walk = { 0x02CA, 0x02CA }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x7F */ { .walk = { 0x20DD, 0x20DD }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x80 */ { .walk = { 0x0100, 0x0100 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x81 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x82 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x83 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x84 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x85 */ { .walk = { 0x029A, 0x029A }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x86 */ { .walk = { 0x0295, 0x0295 }, .fly = { 0x0295, 0x0295 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { -5, -5 } },
    /* 0x87 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x88 */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x89 */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x8A */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x8B */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x8C */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x8D */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x8E */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x8F */ { .walk = { 0x20C1, 0x20C1 }, .fly = { 0x0351, 0x0351 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x90 */ { .walk = { 0x03AC, 0x03AC }, .fly = { 0x0000, 0x0000 }, .jump = 0x010F, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x91 */ { .walk = { 0x03AC, 0x03AC }, .fly = { 0x0000, 0x0000 }, .jump = 0x010F, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x92 */ { .walk = { 0x20EC, 0x20EC }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 22, 30 } },
    /* 0x93 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x94 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x95 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x96 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x97 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x98 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0x99 */ { .walk = { 0x03EA, 0x03EA }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x9A */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x9B */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x9C */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x9D */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x9E */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0x9F */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xA0 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x20EF, 0x20EF }, .jump = 0x0000, .hurt = 0x0000, .delay = { -14, -14 } },
    /* 0xA1 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { -3, -3 } },
    /* 0xA2 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xA3 */ { .walk = { 0x20F6, 0x20F6 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xA4 */ { .walk = { 0x20F6, 0x20F6 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xA5 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x20C8, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xA6 */ { .walk = { 0x2066, 0x2066 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xA7 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 10, 10 } },
    /* 0xA8 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xA9 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xAA */ { .walk = { 0x037E, 0x037E }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xAB */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xAC */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xAD */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xAE */ { .walk = { 0x20BA, 0x20BA }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xAF */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xB0 */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xB1 */ { .walk = { 0x037D, 0x037D }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB2 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB3 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB4 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB5 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB6 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB7 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB8 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xB9 */ { .walk = { 0x20EC, 0x20EC }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xBA */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x03D1, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xBB */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xBC */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xBD */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xBE */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xBF */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC0 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E7, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC1 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E7, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC2 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC3 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E7, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC4 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC5 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x03E7, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC6 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xC7 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 25, 25 } },
    /* 0xC8 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 25, 25 } },
    /* 0xC9 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 25, 25 } },
    /* 0xCA */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 25, 25 } },
    /* 0xCB */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 25, 25 } },
    /* 0xCC */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xCD */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xCE */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xCF */ { .walk = { 0x20BA, 0x03B4 }, .fly = { 0x20BA, 0x03B4 }, .jump = 0x03E2, .hurt = 0x010F, .delay = { 30, 30 } },
    /* 0xD0 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xD1 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xD2 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
    /* 0xD3 */ { .walk = { 0x0000, 0x0000 }, .fly = { 0x0000, 0x0000 }, .jump = 0x0000, .hurt = 0x0000, .delay = { 30, 30 } },
};

MessageID bActorTattles[] = {
    0x00000000, 0x00000000, 0x001C0079, 0x001C007A, 0x001C007B, 0x001C007C, 0x001C007D, 0x001C0000,
    0x001C0002, 0x001C0001, 0x001C0009, 0x001C0007, 0x001C0008, 0x001C000A, 0x001C000A, 0x001C000B,
    0x001C000C, 0x001C0015, 0x001C0014, 0x001C0017, 0x001C0016, 0x001C0018, 0x001C001A, 0x001C0019,
    0x001C001E, 0x001C001F, 0x001C0020, 0x001C0021, 0x001C0022, 0x001C0023, 0x001C0024, 0x001C0029,
    0x001C002A, 0x001C002D, 0x001C002E, 0x001C002C, 0x001C002B, 0x00000000, 0x001C0035, 0x001C0036,
    0x00000000, 0x001C0037, 0x001C0038, 0x001C003A, 0x001C003B, 0x001C0039, 0x001C0042, 0x001C0043,
    0x001C0047, 0x001C0044, 0x001C0045, 0x001C0046, 0x001C0049, 0x001C0048, 0x001C004D, 0x001C004E,
    0x001C0051, 0x001C0050, 0x001C005C, 0x001C0052, 0x001C0055, 0x001C0054, 0x001C0059, 0x001C0058,
    0x001C005A, 0x001C0053, 0x001C0056, 0x001C0057, 0x001C005B, 0x001C0060, 0x001C0062, 0x001C0061,
    0x001C0061, 0x001C006A, 0x001C0069, 0x001C0068, 0x001C0067, 0x001C0063, 0x001C0065, 0x001C0064,
    0x001C0066, 0x001C007E, 0x001C007F, 0x001C0080, 0x001C0081, 0x001C0082, 0x001C0083, 0x001C0084,
    0x001C0085, 0x001C0086, 0x001C0087, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074,
    0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074,
    0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074,
    0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x001C0074, 0x00000000,
    0x001C0074, 0x001C0074, 0x001C0074, 0x001C0075, 0x001C0076, 0x001C0077, 0x001C0078, 0x001C008C,
    0x001C008B, 0x001C0090, 0x001C008F, 0x001C0091, 0x001C008A, 0x001C008D, 0x001C008E, 0x00000000,
    0x00000000, 0x001C0013, 0x001C0028, 0x001C0041, 0x001C004C, 0x001C006B, 0x001C006B, 0x001C006B,
    0x001C0004, 0x001C0003, 0x001C0005, 0x001C0006, 0x00000000, 0x001C0088, 0x001C0089, 0x001C0088,
    0x001C0089, 0x001C000D, 0x001C0012, 0x001C0011, 0x001C000E, 0x001C000F, 0x001C0010, 0x00000000,
    0x001C001B, 0x001C001C, 0x001C001D, 0x001C0027, 0x001C0025, 0x001C0026, 0x001C0034, 0x001C0033,
    0x001C0032, 0x00000000, 0x001C0031, 0x00000000, 0x001C0029, 0x00000000, 0x001C0029, 0x001C002F,
    0x001C002F, 0x001C0030, 0x001C0005, 0x001C003C, 0x001C003D, 0x001C003E, 0x001C003F, 0x001C0040,
    0x001C003C, 0x001C006F, 0x001C004A, 0x001C004B, 0x001C004F, 0x001C005D, 0x001C005E, 0x001C005F,
    0x00000000, 0x001C006C, 0x001C006C, 0x001C006D, 0x001C006D, 0x001C006E, 0x001C006E, 0x001C0070,
    0x001C0071, 0x001C0071, 0x001C0072, 0x001C0072, 0x001C0073, 0x001C0057, 0x001C0093, 0x001C0094,
    0x001C0095, 0x001C0093, 0x001C0093, 0x001C0093,
};

s32 bActorCamOffsets[] = {
    0x00000000, 0x00000000, 0x00050000, 0x00040000, 0x00040000, 0x00020000, 0x00030000, 0x00050000,
    0x00040000, 0x00040000, 0x00050000, 0x00020000, 0x00030000, 0x00050000, 0x00050000, 0x00000000,
    0x00060000, 0x00FEF100, 0x000E0000, 0x00050000, 0x00000000, 0x00000000, 0x00000000, 0x000A0000,
    0x00000000, 0x00000000, 0x00050000, 0x00050000, 0x00040000, 0x00FEF100, 0x00000000, 0x00050000,
    0x00040000, 0x000F1700, 0x00000000, 0x00000000, 0x00030000, 0x00000000, 0x00060000, 0x00070000,
    0x00050000, 0x00050000, 0x00060000, 0x00000000, 0x00060000, 0x00000000, 0x00000000, 0x00050000,
    0x000E0000, 0x00000000, 0x00020000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00060000, 0x00020000, 0x00050000, 0x00000000,
    0x00000000, 0x00000000, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00060000, 0x00030000,
    0x00030000, 0x00060000, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00050000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00040000, 0x00040000, 0x00040000, 0x000A0000, 0x00000000, 0x00060000,
    0x00020000, 0x00050000, 0x00000000, 0x00000000, 0x00000000, 0x00080000, 0x00000000, 0x00000000,
    0x00040000, 0x00040000, 0x00040000, 0x00040000, 0x00040000, 0x00040000, 0x00040000, 0x00040000,
    0x00040000, 0x00040000, 0x00060A00, 0x080C1100, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00001A1A, 0x00040000, 0x00040000, 0x00040000, 0x00040000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00050000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x19FA3C00, 0x19FA3C00, 0x00E90000, 0x00E90000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x000000F1, 0x000000F1, 0x000000F1, 0xF1132DF1, 0x000000F1, 0xF1132DF1, 0x000000F1, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00E20000, 0x00E20000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
};

s32 bMarioIdleAnims[] = {
    Debuff_NORMAL, PlayerAnim_WALKING,
    Debuff_DANGER, PlayerAnim_PANTING,
    Debuff_STONE, 0x00050001,
    Debuff_SLEEP, 0x00030004,
    Debuff_DIZZY, 0x00030006,
    Debuff_STOP, PlayerAnim_STAND_STILL,
    Debuff_HUSTLE, PlayerAnim_RUNNING,
    Debuff_BERSERK, 0x00040028,
    Debuff_PARALYZE, 0x00030004,
    Debuff_FROZEN, 0x0001000E,
    0xE, 0x00010002,
    Debuff_TURN_DONE, PlayerAnim_STAND_STILL,
    0x13, 0x00040029,
    0x14, 0x0004002A,
    0x15, 0x00030003,
    0x18, 0x00030005,
    0x16, 0x0010001,
    Debuff_THINKING, PlayerAnim_THINKING,
    Debuff_WEARY, 0x0001000D,
    Debuff_END,
};

s32 bMarioDefendAnims[] = {
    Debuff_NORMAL, PlayerAnim_CROUCH,
    Debuff_DANGER, PlayerAnim_PANTING,
    Debuff_STONE, 0x00050001,
    Debuff_SLEEP, 0x00030004,
    Debuff_DIZZY, 0x00030006,
    Debuff_STOP, PlayerAnim_STAND_STILL,
    Debuff_HUSTLE, PlayerAnim_CROUCH,
    Debuff_BERSERK, PlayerAnim_CROUCH,
    Debuff_PARALYZE, 0x00030004,
    Debuff_FROZEN, 0x0001000E,
    0xE, 0x00010002,
    Debuff_TURN_DONE, PlayerAnim_STAND_STILL,
    0x13, 0x00040029,
    0x14, 0x0004002A,
    0x15, 0x00030003,
    0x18, 0x00030005,
    0x16, 0x0010001,
    Debuff_THINKING, PlayerAnim_THINKING,
    Debuff_WEARY, 0x0001000D,
    Debuff_END,
};

s32 bMarioHideAnims[] = {
    Debuff_NORMAL, PlayerAnim_CROUCH,
    Debuff_DANGER, PlayerAnim_PANTING,
    Debuff_STONE, 0x00050001,
    Debuff_SLEEP, 0x00030004,
    Debuff_DIZZY, 0x00030006,
    Debuff_STOP, PlayerAnim_STAND_STILL,
    Debuff_HUSTLE, 0x0008000E,
    Debuff_BERSERK, 0x0008000E,
    Debuff_PARALYZE, 0x00030004,
    Debuff_FROZEN, 0x0001000E,
    0xE, 0x00010002,
    Debuff_TURN_DONE, PlayerAnim_CROUCH,
    0x13, 0x00040029,
    0x14, 0x0004002A,
    0x15, 0x00030003,
    0x18, 0x00030005,
    0x16, 0x0010001,
    Debuff_THINKING, PlayerAnim_THINKING,
    Debuff_WEARY, 0x0001000D,
    Debuff_END,
};

s32 bPeachIdleAnims[] = {
    Debuff_NORMAL, 0x000A0002,
    Debuff_TURN_DONE, 0x000C0028,
    Debuff_END,
};

s32 bMarioDefenseTable[] = {
    Element_NORMAL, 0,
    Element_END,
};

s32 bPlayerStatusTable[] = {
    Debuff_NORMAL, 100,
    Debuff_DEFAULT, 100,
    Debuff_SLEEP, 100,
    Debuff_POISON, 100,
    Debuff_FROZEN, 100,
    Debuff_DIZZY, 100,
    Debuff_FEAR, 100,
    Debuff_STATIC, 100,
    Debuff_PARALYZE, 100,
    Debuff_SHRINK, 100,
    Debuff_STOP, 100,
    Debuff_DEFAULT_TURN_MOD, 0,
    Debuff_SLEEP_TURN_MOD, 0,
    Debuff_POISON_TURN_MOD, 0,
    Debuff_FROZEN_TURN_MOD, 0,
    Debuff_DIZZY_TURN_MOD, 0,
    Debuff_FEAR_TURN_MOD, 0,
    Debuff_STATIC_TURN_MOD, 0,
    Debuff_PARALYZE_TURN_MOD, 0,
    Debuff_SHRINK_TURN_MOD, 0,
    Debuff_STOP_TURN_MOD, 0,
    Debuff_END,
};

ActorDesc bPlayerActorDesc = {
    .type = ACTOR_TYPE_player,
    .maxHP = 99,
    .statusTable = bPlayerStatusTable,

    .escapeChance = 0,
    .airLiftChance = 0,
    .spookChance = 0,
    .baseStatusChance = 0,
    .upAndAwayChance = 0,
    .spinSmashReq = 4,
    .powerBounceChance = 80,

    .size = { 33, 43 },
    .hpBarOffset = { 0, 0 },
    .statusIconOffset = { -10, 30 },
    .statusMessageOffset = { 10, 30 },
};

ActorPartDesc bMarioParts[] = {
    {
        .index = 1,
        .posOffset = { 0, 0, 0 },
        .targetOffset = { 0, 32 },
        .opacity = 0xFF,
        .idleAnimations = bMarioIdleAnims,
        .defenseTable = bMarioDefenseTable,
    },
};

s32 D_80283524[] = {
    0x00050000, 0xFFEC002D, 0x0000FFFB, 0x00550000, 0x000A007D, 0x00000019, 0x000A0032, 0xFFEC0032, 0x002DFFFB, 0x005A0032, 0x000A0082, 0x00370019, 0x000F0055, 0xFFEC0037, 0x0050FFFB, 0x005F0055, 0x000A0087, 0x005A0019, 0x000F007D, 0xFFEC0037, 0x0078FFFB, 0x005F007D, 0x000A0087, 0x00820019, 0x00690000, 0x00000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, D_8028358C, D_8028358C, D_8028358C, D_8028358C, D_8028358C, D_8028358C, D_8028358C, D_8028358C, 0x00000000,
};

s16 D_802835D0[] = { 0x1C, 0x28 };
s16 D_802835D4[] = { 0, -2 };
s16 D_802835D8[] = { 0, -12 };

f32 D_802835DC[] = {
    0.0f, 4.5, 0.0f, 1.0f, 4.0f, 0.0f, 2.0f, 3.0f, 0.0f, 3.0f, 2.0f, 0.0f, 3.5f, 1.0f, 0.0f, 4.0f, 0.0f, 0.0f, 4.5, 0.0f, 0.0f, 5.0f, 0.0f, 0.0f, 4.5, 0.0f, 0.0f, 4.0f, 0.0f, 0.0f, 3.5f, -1.0f, 0.0f, 3.0f, -2.0f, 0.0f, 2.0f, -3.0f, 0.0f, 1.0f, -4.0f, 0.0f, 0.0f, -4.5f, 0.0f,
};

f32 D_80283690[] = {
    1.0f, 1.0f, 1.0f, 0.8f, 0.8f, 0.8f, 0.9f, 0.9f, 0.9f, 1.1f, 1.1f, 1.1f, 1.0f, 1.0f, 1.0f, 0.8f, 0.8f, 0.8f, 0.9f, 0.9f, 0.9f, 1.1f, 1.1f, 1.1f, 1.0f, 1.0f, 1.0f, 0.8f, 0.8f, 0.8f, 0.9f, 0.9f, 0.9f, 1.1f, 1.1f, 1.1f, 1.0f, 1.0f, 1.0f, 0.8f, 0.8f, 0.8f, 0.9f, 0.9f, 0.9f,
};

s32 D_80283744[] = {
    0x00000000, 0x80283D98, 0x80283D98, 0x80283D98, 0x80283D98, 0x80283D98, 0x80283D98, 0x80283D98, 0x80283D98, 0x80283D98, 0x80283D98,
};

MessageID bMessages[] = {
    MSG_merlee_increase_atk, MSG_merlee_increase_dmg, MSG_merlee_increase_star_points, MSG_merlee_end,
    MSG_charge_hammer, MSG_charge_hammer_more, MSG_charge_jump, MSG_charge_jump_more, MSG_charge_max,
    MSG_enemy_missed,
    MSG_player_dazed, MSG_player_slept, MSG_player_frozen, MSG_player_poisoned, MSG_player_shrunk, MSG_player_paralyzed, MSG_player_electrified, MSG_player_transparent,
    MSG_enemy_dazed, MSG_enemy_slept, MSG_enemy_frozen, MSG_enemy_poisoned, MSG_enemy_shrunk, MSG_enemy_paralyzed, MSG_enemy_electrified, MSG_enemy_cannot_move,
    MSG_star_energy_increased, MSG_star_energy_max, MSG_star_energy_filled,
    MSG_atk_up_n, MSG_def_up_n, 0x001D0084, 0x001D0085,
    MSG_enemy_transparent, MSG_enemy_electric_charge,
    MSG_partner_dazed, MSG_charge_goombario, MSG_charge_goombario_more, MSG_water_block_active, MSG_water_block_end, MSG_cloud_nine_active, MSG_cloud_nine_end, MSG_atk_up_active, MSG_atk_up_end, MSG_enemy_atk_down, MSG_cloud_nine_active,
    MSG_action_cmd_jump, MSG_action_cmd_hammer, 0x001D00B1, 0x001D00B2, 0x001D00B3, 0x001D00B4, 0x001D00AF, 0x001D00AF, 0x001D00B5, 0x001D00B6, 0x001D00B7, 0x001D00B8, 0x001D00B9, 0x001D00AF, 0x001D00BA, 0x001D00BB, 0x001D00BC, 0x001D00AF, 0x001D00BD, 0x001D00BE, 0x001D00BF,
    MSG_no_target_jump, MSG_no_target_hammer, MSG_no_battle_items, 0x00000000, 0x00000000,
    0x001D00C3, MSG_hammer_disabled, MSG_hammer_disabled, MSG_hammer_disabled, MSG_jump_disabled, MSG_jump_disabled, MSG_jump_disabled, MSG_items_disabled,
    MSG_no_switch_used_turn, MSG_no_switch_dazed, MSG_no_switch_used_turn, MSG_no_switch_dazed, 0x001D00C3,
};

MessageID bActorMessages[] = {
    MSG_party_mario, MSG_party_goombario, MSG_party_kooper, MSG_party_bombette, MSG_party_parakarry, MSG_party_goompa, MSG_party_watt, MSG_party_sushie, MSG_party_lakilester, MSG_party_bow, MSG_party_goombaria, MSG_party_twink, MSG_party_peach
};

s32 D_802838F8 = 0;

INCLUDE_ASM(s32, "code_190B20", create_target_list);

void player_create_target_list(Actor* actor) {
    create_target_list(actor, 0);
}

void enemy_create_target_list(Actor* actor) {
    create_target_list(actor, 1);
}

INCLUDE_ASM(s32, "code_190B20", func_80263064);

INCLUDE_ASM(s32, "code_190B20", func_80263230);

INCLUDE_ASM(s32, "code_190B20", func_8026324C);

INCLUDE_ASM(s32, "code_190B20", func_80263268);

INCLUDE_ASM(s32, "code_190B20", func_80263300);

INCLUDE_ASM(s32, "code_190B20", func_802633E8);

INCLUDE_ASM(s32, "code_190B20", func_80263434);

INCLUDE_ASM(s32, "code_190B20", func_80263464);

INCLUDE_ASM(s32, "code_190B20", func_802634B8);

INCLUDE_ASM(s32, "code_190B20", func_802636E4);

INCLUDE_ASM(s32, "code_190B20", func_80263914);

INCLUDE_ASM(s32, "code_190B20", count_power_plus);

INCLUDE_ASM(s32, "code_190B20", deduct_current_move_fp);

INCLUDE_ASM(s32, "code_190B20", func_80263C60);

INCLUDE_ASM(s32, "code_190B20", func_80263CC4);

INCLUDE_ASM(s32, "code_190B20", set_animation);

INCLUDE_ASM(s32, "code_190B20", func_80263E08);

INCLUDE_ASM(void, "code_190B20", set_animation_rate, ActorID actorID, s32 partIndex, f32 rate);

void set_actor_yaw(ActorID actorID, s32 yaw) {
    get_actor(actorID)->yaw = yaw;
}

void set_part_yaw(ActorID actorID, s32 partIndex, s32 value) {
    get_actor_part(get_actor(actorID), partIndex)->yaw = value;
}

INCLUDE_ASM(s32, "code_190B20", func_80263FE8);

INCLUDE_ASM(s32, "code_190B20", func_80264084);

INCLUDE_ASM(s32, "code_190B20", add_xz_vec3f);

INCLUDE_ASM(s32, "code_190B20", add_xz_vec3f_copy1);

INCLUDE_ASM(s32, "code_190B20", add_xz_vec3f_copy2);

INCLUDE_ASM(s32, "code_190B20", play_movement_dust_effects);

ActorPart* get_actor_part(Actor* actor, s32 partIndex) {
    ActorPart* part = &actor->partsTable[0];

    if (partIndex < 0 || part->nextPart == NULL) {
        return part;
    }

    while (part != NULL) {
        if (part->staticData->index == partIndex) {
            return part;
        }
        part = part->nextPart;
    }

    return NULL;
}

INCLUDE_ASM(s32, "code_190B20", load_player_actor);

INCLUDE_ASM(s32, "code_190B20", load_partner_actor);

INCLUDE_ASM(s32, "code_190B20", create_actor);

INCLUDE_ASM(s32, "code_190B20", func_80265CE8);

INCLUDE_ASM(s32, "code_190B20", func_80265D44);

s32 lookup_defense(DefenseTableEntry* defenseTable, Element elementKey) {
    DefenseTableEntry* row;
    s32 normalDefense = 0;

    for (row = defenseTable; row->element != Element_END; row++, defenseTable++) {
        if (row->element == Element_NORMAL) {
            normalDefense = defenseTable->defense;
        }

        if (row->element == elementKey) {
            normalDefense = defenseTable->defense;
            break;
        }
    }

    // Fall back to normal defense if given element is not specified in table
    return normalDefense;
}

INCLUDE_ASM(s32, "code_190B20", lookup_status_chance); // exactly (?) the same as lookup_defense

INCLUDE_ASM(s32, "code_190B20", lookup_status_duration_mod); // exactly (?) the same as lookup_defense

INCLUDE_ASM(s32, "code_190B20", inflict_status);

s32 inflict_partner_ko(Actor* target, s32 statusTypeKey, s32 duration) {
    if (statusTypeKey == Debuff_DAZE) {
        if (statusTypeKey != target->koStatus) {
            inflict_status(target, Debuff_DAZE);
            play_sound(0x2107);
        } else {
            target->koDuration += duration;
            if (target->koDuration > 9) {
                target->koDuration = 9;
            }
        }
    }

    return TRUE;
}

s32 get_defense(Actor* actor, s32* defenseTable, s32 elementFlags) {
    s32 defense;
    s32 minDefense = 0xFF;

    if (defenseTable != NULL) {
        if (elementFlags & 2) {
            defense = lookup_defense(defenseTable, Element_FIRE);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 4) {
            defense = lookup_defense(defenseTable, Element_WATER);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 8) {
            defense = lookup_defense(defenseTable, Element_ICE);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        // Element_MYSTERY missing?
        if (elementFlags & 0x10) {
            defense = lookup_defense(defenseTable, Element_MAGIC);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 0x40) {
            defense = lookup_defense(defenseTable, Element_HAMMER);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 0x80) {
            defense = lookup_defense(defenseTable, Element_JUMP);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 0x100) {
            defense = lookup_defense(defenseTable, Element_COSMIC);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 0x200) {
            defense = lookup_defense(defenseTable, Element_BLAST);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 0x20) {
            defense = lookup_defense(defenseTable, Element_SHOCK);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 0x800) {
            defense = lookup_defense(defenseTable, Element_QUAKE);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
        if (elementFlags & 0x40000) {
            defense = lookup_defense(defenseTable, Element_THROW);
            if (defense < minDefense) {
                minDefense = defense;
            }
        }
    }

    // If no element flags were set, fall back to normal defense.
    if (minDefense == 0xFF) {
        defense = lookup_defense(defenseTable, Element_NORMAL);
        if (defense < 0xFF) {
            minDefense = defense;
        }
    }

    if (elementFlags & 0x8000000) { // "ignore defense" flag
        if (minDefense == 99) {
            // Immune
            minDefense = 999;
        } else if (minDefense > 0) {
            minDefense = 0;
        }
    }

    return minDefense;
}

INCLUDE_ASM(s32, "code_190B20", func_802664DC);

INCLUDE_ASM(s32, "code_190B20", show_damage_popup);

INCLUDE_ASM(s32, "code_190B20", func_80266684);

INCLUDE_ASM(s32, "code_190B20", func_802666E4);

INCLUDE_ASM(s32, "code_190B20", func_802667F0);

INCLUDE_ASM(s32, "code_190B20", func_80266970);

INCLUDE_ASM(s32, "code_190B20", func_80266978);

INCLUDE_ASM(s32, "code_190B20", func_80266ADC);

INCLUDE_ASM(s32, "code_190B20", func_80266AF8);

INCLUDE_ASM(s32, "code_190B20", func_80266B14);

INCLUDE_ASM(s32, "code_190B20", try_inflict_status);

INCLUDE_ASM(s32, "code_190B20", inflict_status_set_duration);

INCLUDE_ASM(s32, "code_190B20", func_80266D6C);

INCLUDE_ASM(s32, "code_190B20", func_80266DAC);

INCLUDE_ASM(s32, "code_190B20", func_80266E14);

INCLUDE_ASM(s32, "code_190B20", func_80266E40);

INCLUDE_ASM(s32, "code_190B20", func_80266EA8);

INCLUDE_ASM(s32, "code_190B20", func_80266EE8);

INCLUDE_ASM(s32, "code_190B20", func_80266F60);

INCLUDE_ASM(s32, "code_190B20", func_80266F8C);

INCLUDE_ASM(s32, "code_190B20", func_80266FD8);

INCLUDE_ASM(s32, "code_190B20", func_80267018);

INCLUDE_ASM(s32, "code_190B20", func_8026709C);

INCLUDE_ASM(s32, "code_190B20", func_802670C8);

void add_part_decoration(ActorPart* part, s32 decorationIndex, DecorationId decorationType) {
    if ((part->idleAnimations) && !(part->flags & 2)) {
        DecorationTable* decorationTable = part->decorationTable;

        _remove_part_decoration(part, decorationIndex);
        decorationTable->decorationType[decorationIndex] = decorationType;
        decorationTable->unk_8BA[decorationIndex] = 1;
        decorationTable->unk_8BC[decorationIndex] = 0;
        func_8025CEC8(part);
    }
}

void add_actor_decoration(Actor* actor, s32 decorationIndex, DecorationId decorationType) {
    ActorPart* part;
    for (part = actor->partsTable; part != NULL; part = part->nextPart) {
        if ((part->flags & 0x100001) == 0 && part->idleAnimations && (part->flags & 2) == 0) {
            add_part_decoration(part, decorationIndex, decorationType);
        }
    }
}

void remove_part_decoration(ActorPart* part, s32 decorationIndex) {
    _remove_part_decoration(part, decorationIndex);
}

void remove_actor_decoration(Actor* actor, s32 decorationIndex) {
    ActorPart* part;
    for (part = actor->partsTable; part != NULL; part = part->nextPart) {
        if ((part->flags & 0x100001) == 0 && part->idleAnimations && (part->flags & 2) == 0) {
            remove_part_decoration(part, decorationIndex);
        }
    }
}

s32 heroes_is_ability_active(Actor* actor, Ability ability) {
    s32 actorGenus = actor->actorID & 0x700;
    s32 hasAbility = FALSE;

    if (actorGenus != 0x100) {
        // Separate ifs required to match
        if (actorGenus <= 0x100) {
            if (actorGenus == 0 && (gBattleStatus.flags2 & 0x40) == 0) {
                hasAbility = is_ability_active(ability);
            }
        }
    } else {
        hasAbility = is_partner_ability_active(ability);
    }

    return hasAbility;
}

void create_part_shadow(ActorID actorID, s32 partIndex) {
    ActorPart* part = get_actor_part(get_actor(actorID), partIndex);

    part->flags &= ~4;
    part->shadow = create_shadow_type(0, part->currentPos.x, part->currentPos.y, part->currentPos.z);
    part->shadowScale = part->size[0] / 24.0;
}

void remove_part_shadow(ActorID actorID, s32 partIndex) {
    ActorPart* part = get_actor_part(get_actor(actorID), partIndex);

    part->flags |= 4;
    func_80112328(part->shadow);
}

void create_part_shadow_by_ref(UNK_TYPE arg0, ActorPart* part) {
    part->flags &= ~4;
    part->shadow = create_shadow_type(0, part->currentPos.x, part->currentPos.y, part->currentPos.z);
    part->shadowScale = part->size[0] / 24.0;
}

void func_80071A50(s32, f32 x, f32 y, f32 z, f32 scale /* maybe */, s32);
void func_80071C30(s32, f32 x, f32 y, f32 z, f32 scale /* maybe */, s32);

void remove_player_buffs(PlayerBuff buffs) {
    BattleStatus* battleStatus = BATTLE_STATUS;
    Actor* player = battleStatus->playerActor;
    Actor* partner = battleStatus->partnerActor;
    ActorPart* playerPartsTable = player->partsTable;

    if (buffs & 1) {
        battleStatus->jumpCharge = 0;
        battleStatus->flags1 &= ~0x20000000;
    }
    if (buffs & 2) {
        battleStatus->hammerCharge = 0;
        battleStatus->flags1 &= ~0x10000000;
    }
    if (buffs & 8) {
        player->stoneDuration = 0;
        player->stoneStatus = 0;
    }
    if (buffs & 0x10) {
        battleStatus->hustleTurns = 0;
        battleStatus->flags1 &= ~0x04000000;
    }
    if ((buffs & 0x20) && (player->staticStatus != 0)) {
        player->staticDuration = 0;
        player->staticStatus = 0;
        func_800479A0(player->unk_436);
    }
    if ((buffs & 0x40) && (player->transStatus != 0)) {
        player->transDuration = 0;
        player->transStatus = 0;
        playerPartsTable->flags &= ~0x100;
        func_80047AA8(player->unk_436);
    }
    if ((buffs & 0x200) && (battleStatus->waterBlockTurnsLeft != 0)) {
        battleStatus->waterBlockTurnsLeft = 0;
        battleStatus->unk_43C->unk_0C->unk_10 = 0;
        battleStatus->unk_A0[0] |= 0x10;

        func_80071A50(1, player->currentPos.x, player->currentPos.y + 18.0f, player->currentPos.z + 5.0f, 1.5f, 0xA);
        func_80071C30(0, player->currentPos.x - 10.0f, player->currentPos.y + 5.0f, player->currentPos.z + 5.0f, 1.0f, 0x18);
        func_80071C30(0, player->currentPos.x - 15.0f, player->currentPos.y + 32.0f, player->currentPos.z + 5.0f, 1.0f, 0x18);
        func_80071C30(1, player->currentPos.x + 15.0f, player->currentPos.y + 22.0f, player->currentPos.z + 5.0f, 1.0f, 0x18);

        battleStatus->unk_A0 = NULL;
        play_sound(0x299);
    }
    if ((buffs & 0x100) && (battleStatus->turboChargeTurnsLeft != 0)) {
        battleStatus->turboChargeTurnsLeft = 0;
        battleStatus->unk_43C->unk_0C->unk_24 = 0;
    }
    if ((buffs & 0x80) && (battleStatus->cloudNineTurnsLeft != 0)) {
        battleStatus->cloudNineTurnsLeft = 0;
        battleStatus->unk_43C->unk_0C->unk_1A = 0;
        remove_effect(battleStatus->cloudNineEffect);
        battleStatus->cloudNineEffect = 0;
    }

    if ((partner != NULL) && (buffs & 0x10000)) {
        BattleStatus* bs = BATTLE_STATUS;

        partner->isGlowing = FALSE;
        bs->flags1 &= ~0x40000000;
    }
}

INCLUDE_ASM(s32, "code_190B20", func_8026777C);

INCLUDE_ASM(s32, "code_190B20", func_8026787C);

INCLUDE_ASM(s32, "code_190B20", func_80267A3C);

INCLUDE_ASM(s32, "code_190B20", reset_all_actor_sounds);

void hide_foreground_models_unsafe(void) {
    FGModelData* data = gBattleStatus.foregroundModelData;

    if (data != NULL && data->idList != NULL) {
        s32* idList = data->idList;
        while (*idList != 0) {
            s32 id = *idList++;
            if (id >= 0) {
                Model* model = get_model_from_list_index(get_model_list_index_from_tree_index(id));
                model->flags |= 2;
            }
        }
    }
}

void show_foreground_models_unsafe(void) {
    FGModelData* data = gBattleStatus.foregroundModelData;

    if (data != NULL && data->idList != NULL) {
        s32* idList = data->idList;
        while (*idList != 0) {
            s32 id = *idList++;
            if (id >= 0) {
                Model* model = get_model_from_list_index(get_model_list_index_from_tree_index(id));
                model->flags &= ~2;
            }
        }
    }
}

void hide_foreground_models(void) {
    FGModelData* data = gBattleStatus.foregroundModelData;

    if (data != NULL && data->idList != NULL) {
        s32* idList = data->idList;
        while (*idList != 0) {
            s32 id = *idList++;
            if (id < 0) {
                break;
            } else {
                Model* model = get_model_from_list_index(get_model_list_index_from_tree_index(id));
                model->flags |= 2;
            }

        }
    }
}

void show_foreground_models(void) {
    FGModelData* data = gBattleStatus.foregroundModelData;

    if (data != NULL && data->idList != NULL) {
        s32* idList = data->idList;
        while (*idList != 0) {
            s32 id = *idList++;
            if (id < 0) {
                break;
            } else {
                Model* model = get_model_from_list_index(get_model_list_index_from_tree_index(id));
                model->flags &= ~2;
            }
        }
    }
}


#include "common/StartRumbleWithParams.inc.c"

INCLUDE_ASM(s32, "code_190B20", start_rumble_type);

