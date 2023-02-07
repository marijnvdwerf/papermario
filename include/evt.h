#ifndef _EVT_H_
#define _EVT_H_

#include "ultra64.h"

// Should be at least the width of a pointer i.e. intptr_t
typedef s32 Bytecode;

enum {
    /*  0 */ EVT_OP_INTERNAL_FETCH,
    /*  1 */ EVT_OP_END,
    /*  2 */ EVT_OP_RETURN,
    /*  3 */ EVT_OP_LABEL, ///< Args: index
    /*  4 */ EVT_OP_GOTO, ///< Args: index
    /*  5 */ EVT_OP_LOOP, ///< Args: number of repeats (0 = infinite)
    /*  6 */ EVT_OP_END_LOOP,
    /*  7 */ EVT_OP_BREAK_LOOP,
    /*  8 */ EVT_OP_WAIT_FRAMES,
    /*  9 */ EVT_OP_WAIT_SECS,
    /*  A */ EVT_OP_IF_EQ, ///< Args: a, b
    /*  B */ EVT_OP_IF_NE, ///< Args: a, b
    /*  C */ EVT_OP_IF_LT, ///< Args: a, b
    /*  D */ EVT_OP_IF_GT, ///< Args: a, b
    /*  E */ EVT_OP_IF_LE, ///< Args: a, b
    /*  F */ EVT_OP_IF_GE, ///< Args: a, b
    /* 10 */ EVT_OP_IF_FLAG, ///< Args: a, b
    /* 11 */ EVT_OP_IF_NOT_FLAG, ///< Args: a, b
    /* 12 */ EVT_OP_ELSE,
    /* 13 */ EVT_OP_END_IF,
    /* 14 */ EVT_OP_SWITCH, ///< Args: expression to test against
    /* 15 */ EVT_OP_SWITCH_CONST, ///< Args: value to test against
    /* 16 */ EVT_OP_CASE_EQ, ///< Args: expression to test for
    /* 17 */ EVT_OP_CASE_NE, ///< Args: expression to test for
    /* 18 */ EVT_OP_CASE_LT, ///< Args: expression to test for
    /* 19 */ EVT_OP_CASE_GT, ///< Args: expression to test for
    /* 1A */ EVT_OP_CASE_LE, ///< Args: expression to test for
    /* 1B */ EVT_OP_CASE_GE, ///< Args: expression to test for
    /* 1C */ EVT_OP_CASE_DEFAULT,
    /* 1D */ EVT_OP_CASE_OR_EQ, ///< Args: expression to test for
    /* 1E */ EVT_OP_CASE_AND_EQ, ///< Args: expression to test for
    /* 1F */ EVT_OP_CASE_FLAG, ///< Args: expression to test for
    /* 20 */ EVT_OP_END_CASE_GROUP, ///< Ends the case block of EVT_OP_CASE_OR_EQ condition(s).
    /* 21 */ EVT_OP_CASE_RANGE, ///< Args: from, to
    /* 22 */ EVT_OP_BREAK_SWITCH,
    /* 23 */ EVT_OP_END_SWITCH,
    /* 24 */ EVT_OP_SET, ///< Args: container, expression
    /* 25 */ EVT_OP_SET_CONST, ///< Args: container, value
    /* 26 */ EVT_OP_SETF, ///< Args: container, expression
    /* 27 */ EVT_OP_ADD, ///< Args: container, expression to increment by
    /* 28 */ EVT_OP_SUB, ///< Args: container, expression to decrement by
    /* 29 */ EVT_OP_MUL, ///< Args: container, expression to multiply by
    /* 2A */ EVT_OP_DIV, ///< Integer division. Args: container, expression to divide by
    /* 2B */ EVT_OP_MOD, ///< Args: container, expression to divide by
    /* 2C */ EVT_OP_ADDF, ///< Args: container, expression to increment by
    /* 2D */ EVT_OP_SUBF, ///< Args: container, expression to decrement by
    /* 2E */ EVT_OP_MULF, ///< Args: container, expression to multiply by
    /* 2F */ EVT_OP_DIVF, ///< Args: container, expression to divide by
    /* 30 */ EVT_OP_USE_BUF, ///< Args: s32*
    /* 31 */ EVT_OP_BUF_READ1, /// Args: container
    /* 32 */ EVT_OP_BUF_READ2, /// Args: container, container
    /* 33 */ EVT_OP_BUF_READ3, /// Args: container, container, container
    /* 34 */ EVT_OP_BUF_READ4, /// Args: container, container, container, container
    /* 35 */ EVT_OP_BUF_PEEK, ///< Args: index, container
    /* 36 */ EVT_OP_USE_FBUF, ///< Identical to USE_BUFFER. Args: f32*
    /* 37 */ EVT_OP_FBUF_READ1, /// Args: container
    /* 38 */ EVT_OP_FBUF_READ2, /// Args: container, container
    /* 39 */ EVT_OP_FBUF_READ3, /// Args: container, container, container
    /* 3A */ EVT_OP_FBUF_READ4, /// Args: container, container, container, container
    /* 3B */ EVT_OP_FBUF_PEEK, ///< Args: index, container
    /* 3C */ EVT_OP_USE_ARRAY, ///< Args: *s32
    /* 3D */ EVT_OP_USE_FLAGS, ///< Args: *s32
    /* 3E */ EVT_OP_MALLOC_ARRAY, ///< Allocates a new array. Args: length, s32*
    /* 3F */ EVT_OP_BITWISE_AND, ///< Args: container, expression to bitwise AND with
    /* 40 */ EVT_OP_BITWISE_AND_CONST, ///< Args: container, value to bitwise AND with
    /* 41 */ EVT_OP_BITWISE_OR, ///< Args: container, expression to bitwise OR with
    /* 42 */ EVT_OP_BITWISE_OR_CONST, ///< Args: container, value to bitwise OR with
    /* 43 */ EVT_OP_CALL, ///< Args: *function, ...
    /* 44 */ EVT_OP_EXEC, ///< Args: EvtScript*
    /* 45 */ EVT_OP_EXEC_GET_TID, ///< Args: EvtScript*, container
    /* 46 */ EVT_OP_EXEC_WAIT, ///< Spawns a script and waits for it to return before continuing. Args: EvtScript*
    /* 47 */ EVT_OP_BIND_TRIGGER, ///< Args: EvtScript*, trigger flags, s32 target, 1, Trigger*
    /* 48 */ EVT_OP_UNBIND, ///< Unbinds any triggers bound to this script.
    /* 49 */ EVT_OP_KILL_THREAD, ///< Args: ScriptID
    /* 4A */ EVT_OP_JUMP, ///< Args: EvtScript*
    /* 4B */ EVT_OP_SET_PRIORITY, ///< Args: priority
    /* 4C */ EVT_OP_SET_TIMESCALE, ///< Args: timescale
    /* 4D */ EVT_OP_SET_GROUP, ///< Args: group
    /* 4E */ EVT_OP_BIND_PADLOCK, ///< Args: EvtScript*, trigger flags, s32 target, ItemList*, 0, 1
    /* 4F */ EVT_OP_SUSPEND_GROUP, ///< Args: group
    /* 50 */ EVT_OP_RESUME_GROUP, ///< Args: group
    /* 51 */ EVT_OP_SUSPEND_OTHERS, ///< Args: group
    /* 52 */ EVT_OP_RESUME_OTHERS, ///< Args: group
    /* 53 */ EVT_OP_SUSPEND_THREAD, ///< Args: ScriptID
    /* 54 */ EVT_OP_RESUME_THREAD, ///< Args: ScriptID
    /* 55 */ EVT_OP_IS_THREAD_RUNNING, ///< Args: ScriptID, container
    /* 56 */ EVT_OP_THREAD,
    /* 57 */ EVT_OP_END_THREAD,
    /* 58 */ EVT_OP_CHILD_THREAD, ///< Parallel threads are killed as soon as the parent script returns.
    /* 59 */ EVT_OP_END_CHILD_THREAD,
    /* 5A */ EVT_OP_DEBUG_LOG,
    /* 5B */ EVT_OP_DEBUG_PRINT_VAR, ///< Args: expression
    /* 5C */ EVT_OP_92,
    /* 5D */ EVT_OP_93,
    /* 5E */ EVT_OP_94,
};

#define MAKE_ENTITY_END      0x80000000

/* Return type of evt_execute_next_command */
#define EVT_CONTINUE 0   /* Continue to next command */
#define EVT_ABORT    1   /* Quit execution */
#define EVT_FINISH   255 /* Return from script */

/* Return type of script API functions */
typedef s32 ApiStatus;
#define ApiStatus_BLOCK  0   /* Call again next frame */
#define ApiStatus_DONE1  1   /* Unconditional. Probably only exists to return a bool from functions */
#define ApiStatus_DONE2  2   /* Conditional on Evt->disableScripts */
#define ApiStatus_REPEAT 3   /* Call again immediately */
#define ApiStatus_FINISH 255 /* Corresponds to EVT_FINISH */

enum EventCommandResults {
    EVT_CMD_RESULT_YIELD        = -1,
    EVT_CMD_RESULT_CONTINUE     = 0,
    EVT_CMD_RESULT_ERROR        = 1,
};

enum EventGroupFlags {
    EVT_GROUP_00    = 0x00,
    EVT_GROUP_0A    = 0x0A, // 8 | 2
    EVT_GROUP_0B    = 0x0B, // 8 | 4 | 1
    EVT_GROUP_1B    = 0x1B, // 10 | 8 | 4 | 1
    EVT_GROUP_EF    = 0xEF, // ~10
    EVT_GROUP_01    = 0x01,
    EVT_GROUP_02    = 0x02,
    EVT_GROUP_04    = 0x04,
    EVT_GROUP_08    = 0x08,
    EVT_GROUP_10    = 0x10,
};

enum EventPriority {
    EVT_PRIORITY_0  = 0x00, // map main script
    EVT_PRIORITY_1  = 0x01,
    EVT_PRIORITY_A  = 0x0A,
    EVT_PRIORITY_14 = 0x14,
};

enum EventStateFlags {
    EVT_FLAG_ACTIVE             = 0x01,
    EVT_FLAG_SUSPENDED_IN_GROUP = 0x02,
    EVT_FLAG_BLOCKED_BY_CHILD   = 0x10,
    EVT_FLAG_RUN_IMMEDIATELY    = 0x20, ///< don't wait for next `update_scripts` call
    EVT_FLAG_THREAD             = 0x40,
    EVT_FLAG_SUSPENDED          = 0x80, ///< doesn't affect child
};

#endif
