.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

dlabel nuScPreNMIFlag
.space 4

dlabel D_8009A5B4
.space 4

dlabel D_8009A5B8
.space 4

dlabel D_8009A5BC
.space 4

dlabel gSoundGlobals
.space 4

dlabel D_8009A5C4
.space 4

dlabel __osBaseCounter
.space 4

dlabel gBGMPlayerC
.space 4

dlabel gEncounterSubState
.space 4

dlabel CurrentSefCmdHandler
.space 4

dlabel timeFreezeMode
.space 4

dlabel nuGfxZBuffer
.space 4

dlabel nuContDataLockKey
.space 4

dlabel __osViIntrCount
.space 4

dlabel BeginSoundUpdateCallback
.space 4

dlabel D_8009A5EC
.space 4

dlabel nuGfxCfbCounter
.space 4

dlabel mdl_currentModelTreeNodeInfo
.space 4

dlabel nuGfxDisplay
.space 4

dlabel gBGMPlayerB
.space 4

dlabel gEncounterState
.space 4

dlabel gNpcCount
.space 2

dlabel __osMaxControllers
.space 2

dlabel __osCurrentTime
.space 4

dlabel D_8009A60C
.space 4

dlabel nuGfxUcode
.space 4

dlabel nuContNum
.space 4

dlabel nuGfxTaskSpool
.space 4

dlabel __osContLastCmd
.space 4

dlabel __osEepromTimerMsg
.space 4

dlabel D_8009A624
.space 4

dlabel gAuAmbienceManager
.space 4

dlabel __osTimerCounter
.space 4

dlabel nuIdleFunc
.space 4

dlabel gCurrentCamID
.space 4

dlabel nuPiCartHandle
.space 4

dlabel D_8009A63C
.space 4

dlabel gSoundManager
.space 4

dlabel D_8009A644
.space 8

dlabel nuGfxCfb_ptr
.space 4

dlabel gOverrideFlags
.space 4

dlabel D_8009A654
.space 4

dlabel nuGfxCfb
.space 4

dlabel D_8009A65C
.space 4

dlabel __osFinalrom
.space 4

dlabel gBGMPlayerA
.space 4

dlabel gFirstStrikeMessagePos
.space 4

dlabel gMasterGfxPos
.space 4

dlabel D_8009A670
.space 4

dlabel gDisplayContext
.space 4

dlabel D_8009A678
.space 4

dlabel D_8009A67C
.space 4

dlabel D_8009A680
.space 4

dlabel D_8009A684
.space 0x0000000c

dlabel D_8009A690
.space 4

dlabel D_8009A694
.space 0x0000000c

dlabel D_8009A6A0
.space 2

dlabel D_8009A6A2
.space 2

dlabel D_8009A6A4
.space 2

dlabel D_8009A6A6
.space 2

dlabel D_8009A6A8
.space 8

dlabel D_8009A6B0
.space 0x00000010

dlabel D_80096A90
.space 0x00001370

dlabel logicalSaveInfo
.space 0x00000010

dlabel D_80097E10
.space 0x10

dlabel UNKNOWN
.space 0x1390

dlabel physicalSaveInfo
.space 0x00000030

dlabel nextAvailableSavePage
.space 4

dlabel D_8009BA84
.space 0x0000000c

dlabel gCurtainScale
.space 4

dlabel gCurtainScaleGoal
.space 4

dlabel gCurtainFade
.space 4

dlabel gCurtainFadeGoal
.space 4

dlabel gCurtainDrawCallback
.space 4

dlabel D_8009BAA4
.space 4

dlabel D_8009BAA8
.space 0x00000080

dlabel D_8009BA28
.space 8

dlabel gCrashScreen
.space 0x000009e0

dlabel nuGfxTask_ptr
.space 4

dlabel taskDoneMsg
.space 2

dlabel swapBufMsg
.space 2

dlabel GfxTaskMgrThread
.space 0x000001b0

.align 4
dlabel GfxTaskMgrStack
.space 0x00002000

dlabel D_8009E6D0
.space 0x00000020

dlabel nuSiMesgBuf
.space 0x00000020

dlabel siMgrThread
.space 0x1b0

dlabel siMgrStack
.space 0x2000

dlabel blendedCamSettings
.space 0x0000001c

dlabel D_800A08DC
.space 4

dlabel D_800A08E0
.space 4

dlabel D_800A08E4
.space 4

dlabel D_800A08E8
.space 4

dlabel D_800A08EC
.space 4

dlabel gameMode
.space 4

dlabel D_800A08F4
.space 0x0000000c

dlabel D_800A0900
.space 4

dlabel D_800A0904
.space 4

dlabel D_800A0908
.space 4

dlabel D_800A090C
.space 4

dlabel gLogosImages
.space 4

dlabel gLogosImage3
.space 4

dlabel gLogosImage1
.space 4

dlabel gLogosImage2
.space 4

dlabel D_800A0920
.space 1

dlabel D_800A0921
.space 1

dlabel D_800A0922
.space 2

dlabel SavedReverbMode
.space 4

dlabel D_800A0928
.space 8

dlabel D_800A0930
.space 1

dlabel D_800A0931
.space 1

dlabel D_800A0932
.space 2

dlabel D_800A0934
.space 0x0000000c

dlabel gMapTransitionAlpha
.space 2

dlabel gMapTransitionFadeRate
.space 2

dlabel gMapTransitionState
.space 2

dlabel gMapTransitionStateTime
.space 2

dlabel D_800A0948
.space 4

dlabel D_800A094C
.space 4

dlabel D_800A0950
.space 4

dlabel D_800A0954
.space 2

dlabel D_800A0956
.space 2

dlabel D_800A0958
.space 2

dlabel D_800A095A
.space 1

dlabel D_800A095B
.space 1

dlabel D_800A095C
.space 1

dlabel D_800A095D
.space 1

dlabel D_800A095E
.space 1

dlabel D_800A095F
.space 1

dlabel D_800A0960
.space 0x00000003

dlabel D_800A0963
.space 1

dlabel D_800A0964
.space 4

dlabel D_800A0968
.space 8

dlabel D_800A0970
.space 4

dlabel D_800A0974
.space 4

dlabel D_800A0978
.space 4

dlabel D_800A097C
.space 4

dlabel D_800A0980
.space 4

dlabel D_800A0984
.space 4

dlabel D_800A0988
.space 4

dlabel D_800A098C
.space 4

dlabel gWorldNpcList
.space 0x00000100

dlabel gBattleNpcList
.space 0x00000100

dlabel gCurrentNpcListPtr
.space 4

dlabel gNpcPlayerCollisionsEnabled
.space 4

dlabel D_800A0B98
.space 8

dlabel D_800A0BA0
.space 4

dlabel D_800A0BA4
.space 4

dlabel WorldMerleeOrbEffect
.space 4

dlabel WorldMerleeWaveEffect
.space 4

dlabel D_800A0BB0
.space 4

dlabel D_800A0BB4
.space 4

dlabel D_800A0BB8
.space 4

dlabel D_800A0BBC
.space 4

dlabel D_800A0BC0
.space 0x00000380

dlabel D_800A0F40
.space 4

dlabel D_800A0F44
.space 4

dlabel D_800A0F48
.space 8

dlabel AuInitialGlobalVolume
.space 4

dlabel D_800A0F54
.space 4

dlabel nuAuMgrThread
.space 0x250

dlabel AuStack
.space 0x8

dlabel AlCmdListBuffers
.space 0x0000000c

dlabel D_800A351C
.space 4

dlabel nuAuTasks
.space 0x00000108

dlabel D_800A3628
.space 0x0000000c

dlabel AlFrameSize
.space 4

dlabel AlMinFrameSize
.space 4

dlabel D_800A363C
.space 4

dlabel nuAuDmaMesgQ
.space 4

dlabel D_800A3644
.space 0x00000014

dlabel nuAuDmaMesgBuf
.space 0x000000c8

dlabel nuAuDmaIOMesgBuf
.space 0x000004b0

dlabel nuAuDmaState
.space 0x0000000c

.space 4

dlabel nuAuDmaBufList
.space 0x000003e8

dlabel D_800A3FC8
.space 8

dlabel CurrentSeqCmdHandler
.space 4

dlabel D_800A3FD4
.space 0x0000000c

dlabel AuDelayBufferMain
.space 4

dlabel AuDelayBufferAux
.space 4

dlabel AuDelayCounter
.space 4

dlabel AuDelayedVoiceGroup
.space 2

dlabel AuDelayedChannel
.space 2

dlabel AuDelayCount
.space 4

dlabel D_800A3FF4
.space 0x0000000c

dlabel gEffectGraphicsData
.space 0x000001b4

dlabel D_800A41B4
.space 0x0000000c

dlabel D_800A41C0
.space 4

dlabel D_800A41C4
.space 0x0000001c

dlabel gMapConfig
.space 4

dlabel D_800A41E4
.space 4

dlabel gMapSettings
.space 4

dlabel D_800A41EC
.space 0x00000044

dlabel gCollisionRayStartX
.space 4

dlabel gCollisionRayStartY
.space 4

dlabel gCollisionRayStartZ
.space 4

dlabel gCollisionRayDirX
.space 4

dlabel gCollisionRayDirY
.space 4

dlabel gCollisionRayDirZ
.space 4

dlabel gCollisionPointX
.space 4

dlabel gCollisionPointY
.space 4

dlabel gCollisionPointZ
.space 4

dlabel gCollisionRayLength
.space 4

dlabel gCollisionNormalX
.space 4

dlabel gCollisionNormalY
.space 4

dlabel gCollisionNormalZ
.space 4

dlabel gCollisionDataBackup
.space 4

dlabel gCollisionDataZoneBackup
.space 4

dlabel D_800A426C
.space 4

dlabel IdleThread
.space 0x000001b0

dlabel MainThread
.space 0x000001b0

dlabel IdleStack
.space 0x00002000

dlabel nuScStack
.space 0x00002000

dlabel pal_unk
.space 0x3370

dlabel nuScAudioStack
.space 0x00002000

dlabel nuScGraphicsStack
.space 0x00002000

dlabel D_800AC5D0
.space 4

dlabel D_800AC5D4
.space 0x00000014

dlabel D_800AC5E8
.space 0x000000c8

dlabel nuGfxMesgBuf
.space 0x00000020

dlabel GfxStack
.space 0x00002000

dlabel nuContWaitMesgBuf
.space 4

dlabel nuContDataMutexBuf
.space 4

dlabel D_800AC6D8
.space 8

dlabel piThread
.space 0x1B0

dlabel piThreadStack
.space 0x1000

dlabel piEventQueue
.space 4

dlabel D_800AF890
.space 0x00000014

dlabel piEventBuf
.space 4

dlabel D_800AF8AC
.space 4

dlabel piAccessBuf
.space 4

dlabel D_800AF8B4
.space 0x0000000c

dlabel tmp_task
.space 0x00000040

dlabel siAccessBuf
.space 4

dlabel D_800AF904
.space 0x0000000c

dlabel retrace
.space 4

dlabel D_800AF914
.space 4

dlabel viThread
.space 4

dlabel D_800AF91C
.space 0x1B4

dlabel viThreadStack
.space 0x1000

dlabel viEventQueue
.space 4

dlabel D_800B0AD4
.space 0x00000014

dlabel viEventBuf
.space 4

dlabel D_800B0AEC
.space 0x00000014

dlabel viRetraceMsg
.space 2

dlabel D_800B0B02
.space 2

dlabel D_800B0B04
.space 4

dlabel D_800B0B08
.space 0x00000010

dlabel viCounterMsg
.space 2

dlabel D_800B0B1A
.space 2

dlabel D_800B0B1C
.space 4

dlabel D_800B0B20
.space 0x00000010

dlabel __MotorDataBuf
.space 4

dlabel D_800B0B34
.space 0x00000038

dlabel D_800B0B6C
.space 4

dlabel D_800B0B70
.space 0x000000c0

dlabel __osFlashID
.space 4

dlabel D_800B0C34
.space 0x0000000c

dlabel __osFlashMsg
.space 4

dlabel D_800B0C44
.space 0x00000014

dlabel __osFlashMessageQ
.space 4

dlabel D_800B0C5C
.space 0x00000014

dlabel __osFlashHandler
.space 4

dlabel D_800B0C74
.space 0x00000070

dlabel __osFlashMsgBuf
.space 4

dlabel __osFlashVersion
.space 4

dlabel D_800B0CEC
.space 4

dlabel wMapTexName
.space 4

dlabel D_800B0CF4
.space 0x00000014

dlabel D_800B0D08
.space 4

dlabel D_800B0D0C
.space 0x000001ac

dlabel nuContWaitMesgQ
.space 4

dlabel D_800B0EBC
.space 0x00000014

dlabel __osContPifRam
.space 4

dlabel D_800B0ED4
.space 0x00000034

dlabel D_800B0F08
.space 4

dlabel D_800B0F0C
.space 4

dlabel gCurrentEncounter
.space 0x00000bf8

dlabel __Dom2SpeedParam
.space 4

dlabel D_800B1B0C
.space 1

dlabel D_800B1B0D
.space 1

dlabel D_800B1B0E
.space 1

dlabel D_800B1B0F
.space 1

dlabel D_800B1B10
.space 4

dlabel D_800B1B14
.space 0x00000068

dlabel nuContStatus
.space 0x00000014

dlabel D_800B1B90
.space 0x000001b0

dlabel nuContRmbCtl
.space 0x00000028

dlabel nuContData
.space 0x00000018

dlabel gCameras
.space 0x00001560

dlabel D_800B32E0
.space 0x800

dlabel D_800B3AE0
.space 0x800

dlabel gCollisionData
.space 4

dlabel D_800B42E4
.space 0x0000000c

dlabel nuGfxMesgQ
.space 4

dlabel D_800B42F4
.space 0x00000014

dlabel __CartRomHandle
.space 4

dlabel D_800B430C
.space 1

dlabel D_800B430D
.space 1

dlabel D_800B430E
.space 1

dlabel D_800B430F
.space 1

dlabel D_800B4310
.space 1

dlabel D_800B4311
.space 3

dlabel D_800B4314
.space 4

dlabel D_800B4318
.space 4

dlabel D_800B431C
.space 0x00000064

dlabel __osPiAccessQueue
.space 4

dlabel D_800B4384
.space 0x00000014

dlabel gEffectInstances
.space 0x00000180

dlabel __Dom1SpeedParam
.space 4

dlabel D_800B451C
.space 1

dlabel D_800B451D
.space 1

dlabel D_800B451E
.space 1

dlabel D_800B451F
.space 1

dlabel D_800B4520
.space 0x00000070

dlabel nuBootStack
.space 0x00002000

dlabel nuMainStack
.space 0x00002000

dlabel nuYieldBuf
.space 0x00000c10

dlabel auSynDriver
.space 0x00000030

dlabel D_800B91D0
.space 0x00020000-0x2000

dlabel gZoneCollisionData
.space 0x00000010

dlabel wMapHitName
.space 0x00000018

dlabel nuSiMgrMesgQ
.space 0x00000018

dlabel __osBaseTimer
.space 0x20

dlabel wMapShapeName
.space 0x00000018

dlabel nuAuHeap
.space 0x00000030

dlabel nuGfxTask
.space 0x00000370

dlabel D_800D95E8
.space 0x00000038

dlabel D_800D9620
.space 0x00000048

dlabel wMapBgName
.space 0x00000018

dlabel __osPfsInodeCache
.space 0x00000100

dlabel rspbootUcodeBuffer
.space 0x00000100

dlabel D_800D9880
.space 0x00000700

dlabel __osEventStateTab
.space 0x00000080

dlabel __osPfsPifRam
.space 0x0000003c

dlabel D_800DA03C
.space 4

dlabel D_800DA040
.space 0x00000400

dlabel nusched
.space 0x00000680

dlabel __osEepromTimerQ
.space 0x00000018

dlabel nuContPfs
.space 0x000001a0

dlabel nuSiMesgQ
.space 0x00000018

dlabel D_800DAC90
.space 0x00000018

dlabel __osSiAccessQueue
.space 0x00000018

dlabel gCurrentSaveFile
.space 0x00001380

dlabel nuContDataMutexQ
.space 0x00000020

dlabel D_800DC060
.space 4

dlabel gCurrentStagePtr
.space 4

dlabel gBattleState
.space 4

dlabel D_800DC06C
.space 4

dlabel gBattleStatus
.space 0x00000460

dlabel gLastDrawBattleState
.space 4

dlabel D_800DC4D4
.space 4

dlabel gDefeatedBattleSubstate
.space 4

dlabel gBattleSubState
.space 4

dlabel D_800DC4E0
.space 4

dlabel gDefeatedBattleState
.space 4

dlabel gCurrentBattleID
.space 4

dlabel gCurrentStageID
.space 4

dlabel D_800DC4F0
.space 4

dlabel gOverrideBattlePtr
.space 4

dlabel D_800DC4F8
.space 4

dlabel gCurrentBattlePtr
.space 4

dlabel D_800714AC
dlabel D_800991E0
dlabel D_80099190
dlabel D_800991B0
dlabel D_800718E0
dlabel D_80073D74
dlabel D_800D871C
dlabel D_80073D14
dlabel D_8009F0F7
dlabel D_8009F0FB
dlabel D_PAL_8009F0E4
dlabel D_PAL_8009F0E8
dlabel D_PAL_8009F0EC
dlabel D_PAL_8009F0F0
dlabel D_PAL_8009F0F4
dlabel D_PAL_8009F0F8
dlabel D_PAL_8009F6B4
dlabel D_PAL_8009F6C8
dlabel D_PAL_800A1C80
dlabel D_PAL_800A1C90
dlabel D_PAL_800A1D98
dlabel D_PAL_800A1DA4
dlabel D_PAL_800A1DA8
dlabel D_PAL_800A1DB0
dlabel D_PAL_800A1DC8
dlabel var2
dlabel var3
dlabel D_8009A204
dlabel D_33BDD0
dlabel D_80073450
dlabel D_800734F8
dlabel D_8009A204
dlabel D_8009A208
dlabel D_800733D0
dlabel D_80073388
dlabel D_80096A44
dlabel D_8009A210
dlabel D_80096A24
dlabel INT_80073714
dlabel some_buffer_start
dlabel D_8014AE4C

dlabel D_8009F091
dlabel D_80158E90
dlabel D_80096A28

dlabel nuGfxUcodeFifoSize
dlabel nuGfxUcodeFifoPtr




dlabel D_A4600000
dlabel D_80090110
dlabel D_A0000002

dlabel D_802932B8
dlabel D_802932E0
dlabel D_80293330
dlabel D_8029335C
dlabel D_80293398
dlabel D_802933D4
dlabel D_802AD244
dlabel D_802AD245
dlabel D_802AD246
dlabel D_802AD247
dlabel D_802AD248
dlabel D_802AD24A
dlabel D_802AD24C
dlabel D_802AD24E
dlabel D_802AD250
dlabel D_802AD268
dlabel D_802AD280
dlabel D_802AD284
dlabel D_802AD288
dlabel D_802AD28C
dlabel D_802AD290
dlabel D_802AD294
dlabel D_802AD298
dlabel D_802AD29C
dlabel D_802AD2A0
dlabel D_802AD2A4
dlabel D_802AD2A8
dlabel D_802AD2A9
dlabel D_802AD2AA
dlabel D_802AD2AB
dlabel D_802AD2AC
dlabel D_802AD2B0
dlabel D_802AD2B8
dlabel D_802AD2EC
dlabel D_802AD2F3
dlabel D_802AD310
dlabel D_802AD32B
dlabel D_80107174
dlabel D_802AD348
dlabel D_802AD349
dlabel D_802AD34A
dlabel D_802AD34B
dlabel D_802AD34C
dlabel D_802AD34D
dlabel D_802AD34E
dlabel D_802AD350
dlabel D_802AD352
dlabel D_802AD354
dlabel D_802AD358
dlabel D_802AD35C
dlabel D_802AD360
dlabel D_802AD368
dlabel D_802AD3C8
dlabel D_802AD3D0
dlabel D_802AD430
dlabel D_802AD432
dlabel D_802AD438
dlabel D_802AD498
dlabel D_802AD4A0
dlabel D_802AD560
dlabel D_802AD620
dlabel D_802AD680
dlabel D_802AD6E0
dlabel D_802AD6E4
dlabel D_802AD6E7
dlabel D_802AD750
dlabel D_802AD810
dlabel D_802AD828
dlabel D_802AD840
dlabel D_PAL_80106D38
dlabel func_PAL_800E6228
dlabel func_PAL_800E62EC
dlabel func_PAL_802A2784
dlabel func_PAL_802A3C98
dlabel func_PAL_802A446C
dlabel func_PAL_802A4500
dlabel func_PAL_802A454C
dlabel func_PAL_802A45EC
dlabel D_802AD340
dlabel func_PAL_8014358C
dlabel func_PAL_8024F900
dlabel func_PAL_8024FA54
dlabel D_800D58B0
dlabel D_800D58BC
dlabel D_80096990
dlabel D_800AF3A2
dlabel D_800B043C
dlabel D_800AF3AC
dlabel D_800D58B5
dlabel D_800D58B4
dlabel D_800969DC
dlabel D_800D58B6
dlabel D_800D58C0
dlabel D_800D58B9
dlabel D_800D58B7
dlabel D_800D58B8
dlabel D_800D58B8
dlabel D_800AF3B0
dlabel D_800AF3A8
dlabel D_800AF3A4
dlabel D_800D59B0
dlabel D_800B0438

dlabel ui_no_controller_png # 800991F0
dlabel D_800991F0


dlabel D_8007D364
dlabel D_80102EDC
dlabel D_80106778
dlabel D_80106958
dlabel D_80106980
dlabel D_801069A8
dlabel D_801069D0
dlabel D_801069F8
dlabel D_80106A20
dlabel D_80106A48
dlabel D_80106A70
dlabel D_80106BD8
dlabel D_80106D18
dlabel D_80106D38
dlabel D_80106D58
dlabel D_80106EAC
dlabel D_8010B810
dlabel D_8010B812
dlabel D_8010DA58
dlabel D_8010DD90
dlabel D_80102CF0
dlabel D_80102D18
dlabel D_80102F00
dlabel D_80105EA8
dlabel D_80105EF4
dlabel D_8010601C
dlabel D_80107E18
dlabel D_80108430
dlabel D_80108440
dlabel D_8010C140
dlabel D_8010C144
dlabel D_8010C148
dlabel D_8010C14C
dlabel D_8010C154
dlabel D_8010C155
dlabel D_8010C156
dlabel D_8010C158
dlabel D_8010C15A
dlabel D_8010C15C
dlabel D_8010C160
dlabel D_8010C164
dlabel D_8010C168
dlabel D_8010C16C
dlabel D_8010C170
dlabel D_8010C174
dlabel D_8010C178
dlabel D_8010C17C
dlabel D_8010C17E
dlabel D_8010C180
dlabel D_8010C182
dlabel D_8010C184
dlabel D_8010C186
dlabel D_8010C188
dlabel D_8010C18A
dlabel D_8010C18C
dlabel D_8010C18E
dlabel D_8010C18F
dlabel D_8010C190
dlabel D_8010C191
dlabel D_8010C192
dlabel D_8010C194
dlabel D_8010C198
dlabel D_8010C199
dlabel D_8010C19C
dlabel D_8010C1A0
dlabel D_8010C1A4
dlabel D_80146024
dlabel jtbl_8010AFB0
dlabel jtbl_8010B170
dlabel jtbl_8010B1A8
dlabel jtbl_8010B1E0
dlabel jtbl_8010B218
dlabel jtbl_8010B250
dlabel jtbl_8010B288
dlabel jtbl_8010B2C0
dlabel D_8010C150
dlabel D_PAL_800714AC
dlabel D_PAL_80102CF0
dlabel D_PAL_80102D18
dlabel D_PAL_80102F00
dlabel D_PAL_80105EA8
dlabel D_PAL_80105EF4
dlabel D_PAL_8010601C
dlabel D_PAL_80106D58
dlabel D_PAL_80107E18
dlabel D_PAL_80108430
dlabel D_PAL_80108440
dlabel D_110CB0
dlabel D_1DA1E0
dlabel D_8008A778
dlabel D_8008ACEC
dlabel D_8014FEEC
dlabel D_801547F8
dlabel D_80158710
dlabel D_8015B3A0
dlabel D_B290
dlabel D_D158
dlabel D_PAL_802F18A8
dlabel D_PAL_802F18C0
dlabel D_PAL_802F18F0
dlabel D_PAL_802F1920
dlabel D_PAL_802F1944
dlabel D_PAL_8014AE4C
dlabel D_PAL_8014AE50
dlabel D_8014FEB4
dlabel D_8014FEC4
dlabel D_8014FF08
dlabel D_801548E0
dlabel D_80154934
dlabel D_PAL_8014B0D0
dlabel D_PAL_802F28F0
dlabel D_PAL_802F2970
dlabel D_PAL_802F29F0
dlabel D_PAL_802F2A70
dlabel D_PAL_802F2AF0
dlabel D_PAL_802F2B70
dlabel D_PAL_802F2C70
dlabel D_PAL_802F2DB0
dlabel D_PAL_802F2EF0
dlabel D_PAL_802F2FF0
dlabel D_PAL_802F3010
dlabel D_PAL_802F3030

dlabel func_8012500C
dlabel func_801261BC
dlabel func_800EDD88
dlabel func_800EFD50
dlabel func_800F0D18
dlabel func_800F0EE0
dlabel func_800F0F30
dlabel func_800F1004
dlabel func_800F109C
dlabel func_800F1120
dlabel func_800F1158
dlabel func_801220C0
dlabel func_80124420
dlabel func_801245D8
dlabel func_80124F94
dlabel func_80124FD0
dlabel func_801433AC
dlabel func_801437D0
dlabel func_80143AAC
dlabel func_80146878
dlabel func_80146A2C
dlabel func_80148864
dlabel func_800E6010
dlabel func_800ED5AC
dlabel func_80140054
dlabel func_801435B0
dlabel func_801435DC
dlabel func_800296BC
dlabel func_80033848
dlabel func_80064D80
dlabel func_80068380
dlabel func_80068380
dlabel func_80062DA0
dlabel func_80062D00
dlabel func_802489A8
dlabel func_80146A74
dlabel func_80136E40
dlabel func_80248C54
dlabel func_80248B90
dlabel func_80033810
dlabel func_8006C3F0
dlabel func_800671C0
dlabel func_PAL_8005673C
dlabel func_PAL_80056760
dlabel func_PAL_80148864
dlabel func_PAL_8002B054
dlabel func_PAL_800E3B10
dlabel func_PAL_80143ED0
dlabel func_PAL_800EDD88
dlabel func_PAL_800EFD50
dlabel func_PAL_800F0EE0
dlabel func_PAL_800F109C
dlabel func_PAL_800F1120
dlabel func_PAL_800F1158
dlabel func_PAL_80148668
dlabel func_PAL_80029354
dlabel func_PAL_8002997C
dlabel func_PAL_8002A334
dlabel func_PAL_800F1710
dlabel func_PAL_80124914
dlabel func_PAL_8012AE80
dlabel func_PAL_8012AEC4
dlabel func_PAL_8012B548
dlabel func_PAL_8012B7A8
dlabel func_PAL_8012BF7C
dlabel func_PAL_8012C6F8
dlabel func_PAL_8012D540
dlabel func_PAL_802E4CB8
dlabel func_PAL_8002ABF8
dlabel func_PAL_80068400
dlabel func_PAL_80068480
dlabel func_PAL_800689A0
dlabel func_PAL_8010F0E8
dlabel func_PAL_80140054
dlabel func_PAL_801435B0
dlabel func_PAL_80146AE0
dlabel func_PAL_8012500C
dlabel func_PAL_801261BC
dlabel func_PAL_80143374
dlabel func_PAL_80143390
dlabel func_PAL_801433AC
dlabel func_PAL_80143534
dlabel func_pause_80246C14
dlabel func_pause_80253180
dlabel func_pause_80253194
dlabel func_PAL_8002A26C
dlabel func_PAL_80124F94
dlabel func_PAL_801435DC
dlabel func_PAL_801437D0
dlabel func_pause_80246AB0
dlabel func_pause_80246ABC
dlabel func_pause_80248704
dlabel func_pause_8024B13C
dlabel func_pause_8024B198
dlabel func_pause_8024B208
dlabel func_pause_8024B250
dlabel func_pause_8024B2A0
dlabel func_pause_8024B2C8
dlabel func_pause_8024B2D8
dlabel func_pause_8024B488
dlabel func_pause_8024B084
dlabel func_pause_8024CEE0
dlabel D_pause_80271B30
dlabel D_pause_80271B34
dlabel D_pause_80272088
dlabel D_pause_802720C0
dlabel D_pause_802727D0
dlabel D_pause_80272898
dlabel D_pause_802728A0
dlabel D_pause_802728A2
dlabel D_pause_80272990
dlabel D_pause_802729A4
dlabel D_pause_802729A8
dlabel D_pause_802729B0
dlabel D_pause_802729B4
dlabel D_pause_802729B8
dlabel D_pause_80272A04
dlabel func_pause_8024D940
dlabel func_pause_8024D998
dlabel func_pause_8024DA08
dlabel func_pause_8024DA50
dlabel func_pause_8024DAA0
dlabel func_pause_8024DAC8
dlabel func_pause_8024DAD8
dlabel func_pause_80248768
dlabel func_PAL_800E3CD4
dlabel func_PAL_80146A2C
dlabel func_PAL_802E43CC
dlabel func_pause_8024F020


dlabel D_pause_80271CA0
dlabel D_80158910
dlabel D_pause_80253AF0
dlabel D_pause_80253B80
dlabel D_pause_80253D18
dlabel D_pause_80253DA8
dlabel D_pause_80271B3C
dlabel D_pause_80271B40
dlabel D_pause_80271B48
dlabel D_pause_80271B4C
dlabel D_pause_80271B50
dlabel D_pause_80272A30
dlabel D_pause_80272A78
dlabel D_pause_80272A80

dlabel D_pause_80271B38
dlabel D_pause_80253C00
dlabel D_pause_80253C40
dlabel D_pause_80271B44
dlabel D_pause_80272A10
dlabel D_pause_80272A50
dlabel D_pause_80272A70
dlabel D_pause_80272A74
dlabel D_pause_80272A7C
dlabel D_8014FE84
dlabel D_8014FE98
dlabel D_8014FEA0
dlabel D_8014FEE4
dlabel D_8014FF0C
dlabel D_80155B30
dlabel D_80156030
dlabel D_80156530
dlabel D_80156534
dlabel D_80156538
dlabel D_80156540
dlabel D_80156B40
dlabel D_80157140
dlabel D_80157144
dlabel D_80157150
dlabel D_80157750
dlabel D_80157D50
dlabel D_80096A4C
dlabel D_A002A60
dlabel D_A002DA0
dlabel D_A002DB0
dlabel D_A002DC8
dlabel D_PAL_80071500
dlabel D_80158E7E
dlabel D_pause_80253540
dlabel D_pause_802535C0
dlabel D_pause_80253698
dlabel D_pause_80272500
dlabel D_pause_80272518
dlabel D_pause_8027251C
dlabel D_8010DD91
dlabel D_8010DD92
dlabel D_8010DD93
dlabel D_8010DD95
dlabel D_8010DD96
dlabel D_8010DD98
dlabel D_8010DD99
dlabel D_8010DD9C
dlabel D_8010DD9F
dlabel D_8010DDA0
dlabel D_8010E01E
dlabel D_8010E020
dlabel D_8010E04C
dlabel D_PAL_80106BB0
dlabel D_PAL_80106CF0
dlabel D_pause_80253740
dlabel D_pause_80253750
dlabel D_pause_80253760
dlabel D_pause_80253770
dlabel D_pause_80253790
dlabel D_pause_80253824
dlabel D_pause_80253840
dlabel D_pause_8025385C
dlabel D_pause_80253860
dlabel D_pause_80253864
dlabel D_pause_80253868
dlabel D_pause_8025386C
dlabel D_pause_80253870
dlabel D_pause_80253874
dlabel D_pause_80271B10
dlabel D_pause_80271B14
dlabel D_pause_80271B18
dlabel D_pause_80271B1C
dlabel D_pause_80271B20
dlabel D_pause_80271B24
dlabel D_pause_80271B28
dlabel D_pause_80271F00
dlabel D_pause_802724A4
dlabel D_pause_80272520
dlabel D_pause_80272524
dlabel D_pause_80272528
dlabel D_pause_8027252C
dlabel D_pause_80272530
dlabel D_pause_80272534
dlabel D_pause_80272538
dlabel D_pause_8027253C
dlabel D_pause_80272540
dlabel D_pause_80272544
dlabel D_pause_80272548
dlabel D_pause_8027254C
dlabel D_80083C80
dlabel D_80086A20
dlabel D_8008B400
dlabel D_8010DF98
dlabel D_pause_80271818
dlabel D_pause_80271B2C
dlabel D_pause_80271FA8
dlabel D_pause_80271FE0
dlabel D_pause_80272018
dlabel D_pause_8027249C
dlabel D_pause_80272550
dlabel D_pause_80272650
dlabel D_pause_80272658
dlabel D_pause_80272748
dlabel D_pause_8027275C
dlabel D_pause_80272760
dlabel D_pause_80272768
dlabel D_pause_8027276C
dlabel D_pause_80272770
dlabel D_pause_80272778
dlabel D_pause_802727CC
dlabel D_pause_802538C0
dlabel D_pause_80253A20

dlabel D_filemenu_8024E9A0


dlabel pause_prompt_check_abilities_png
dlabel pause_available_png
dlabel pause_available_pal
dlabel pause_banner_star_energy_png
dlabel pause_prompt_check_abilities_pal
dlabel pause_banner_hammer_png
dlabel pause_banner_hammer_pal
dlabel pause_banner_boots_png
dlabel pause_banner_hp_pal
dlabel pause_banner_hp_png
dlabel pause_banner_fp_pal
dlabel pause_banner_fp_png
dlabel pause_banner_bp_pal
dlabel pause_banner_bp_png
dlabel pause_banner_boots_pal
dlabel pause_banner_star_energy_pal


dlabel func_filemenu_80246CA4
dlabel func_filemenu_8024E71C
dlabel func_filemenu_8024E858
dlabel func_filemenu_80246D10
dlabel func_filemenu_8024E880
dlabel func_filemenu_80247290
dlabel func_filemenu_80247304
dlabel func_filemenu_80247378
dlabel func_filemenu_802473EC
dlabel func_filemenu_8024759C
dlabel func_filemenu_80247600
dlabel func_filemenu_80247664
dlabel func_filemenu_802476C8
dlabel func_filemenu_802477A8
dlabel func_filemenu_80247818
dlabel func_filemenu_80247BDC
dlabel func_filemenu_80247538
dlabel func_filemenu_8024772C
dlabel func_filemenu_80247A20
dlabel func_filemenu_80247DFC
dlabel func_filemenu_80246CFC

dlabel D_132E40
dlabel D_13B8F0
dlabel D_800D5D58
dlabel D_80251748
dlabel D_filemenu_8024EBF4
dlabel D_filemenu_8024EC14
dlabel func_PAL_8002AFE0
dlabel func_PAL_8002B574
dlabel func_PAL_80146920
dlabel func_pause_8024E950
dlabel func_pause_8025174C

dlabel D_PAL_80073D14
dlabel D_PAL_80073D74
dlabel D_80073D1B
dlabel D_filemenu_8024EC60
dlabel D_filemenu_8024EF98
dlabel D_filemenu_8024EDC4
dlabel D_80251744
dlabel D_802527E7
dlabel D_802527E0
dlabel D_80251754
dlabel D_filemenu_8024E984
dlabel D_80251758
dlabel D_80251750
dlabel D_802517C0
dlabel D_80158F30
dlabel D_8025174C
dlabel D_802517C8
dlabel D_filemenu_8024F0AC
dlabel func_filemenu_8024C330
dlabel func_PAL_801247A4
dlabel D_filemenu_8024E988
dlabel D_25C5A0
dlabel D_2705A0
dlabel D_802517D0
dlabel D_802517D4
dlabel D_802517E0
dlabel D_filemenu_80251558
dlabel D_PAL_8014DD20
dlabel func_PAL_801434A4
dlabel D_filemenu_80250804
dlabel D_filemenu_802512B8
dlabel D_filemenu_80251408
dlabel D_filemenu_80251440
dlabel D_filemenu_80251398
dlabel D_filemenu_802513D0
dlabel func_filemenu_80247460
dlabel D_800D87D8
dlabel D_800D87E0
dlabel D_PAL_80280DE6
dlabel func_802A5AF4
dlabel func_802A8334
dlabel func_802A9CB8
dlabel func_802AA22C
dlabel func_802AA7FC
dlabel func_802AB4A4
dlabel func_PAL_80033B10
dlabel func_PAL_80033B20
dlabel func_PAL_80136928
dlabel func_PAL_80136944
dlabel func_PAL_80136960
dlabel func_PAL_801369B0
dlabel func_PAL_8023E000
dlabel func_PAL_8023E404
dlabel func_PAL_80241130
dlabel func_PAL_802411B8
dlabel func_PAL_80241AB4
dlabel func_PAL_80241FC4
dlabel func_PAL_80242A68
dlabel func_PAL_80242B50
dlabel func_PAL_80242EA0
dlabel func_PAL_80242F80
dlabel func_PAL_802438B8
dlabel func_PAL_80243978
dlabel func_PAL_80243F7C
dlabel func_PAL_80243FA8
dlabel func_PAL_802446B0
dlabel func_PAL_802449F0
dlabel func_PAL_80244DD8
dlabel func_PAL_80244EA0
dlabel func_PAL_802453E0
dlabel func_PAL_80245698
dlabel func_PAL_80245A70
dlabel func_PAL_802463F0
dlabel func_PAL_80246AD4
dlabel func_PAL_802471BC
dlabel func_PAL_8024724C
dlabel func_PAL_80247510
dlabel func_PAL_80247AA4
dlabel func_PAL_80248130
dlabel func_PAL_80248600
dlabel func_PAL_80248AA8
dlabel func_PAL_8024EDE8
dlabel func_PAL_8024F768
dlabel func_PAL_8025E350
dlabel func_PAL_80266A7C
dlabel func_PAL_80266D70
dlabel func_PAL_80266F0C
dlabel D_8029FC90
dlabel D_8029FC92
dlabel D_8029FC94
dlabel D_8029FC96
dlabel D_PAL_802839C4
dlabel D_PAL_80283C2C
dlabel D_PAL_80283D80
dlabel func_PAL_8012465C
dlabel func_PAL_80124708
dlabel func_PAL_80124FD0
dlabel func_PAL_80142DC8
dlabel func_PAL_80143358
dlabel func_PAL_80143A60
dlabel gCurrentLanguage
dlabel D_7F2BE0
dlabel D_7F8000
dlabel D_80085964
dlabel D_80085B84
dlabel D_800D87E4
dlabel D_800D8C4C
dlabel D_8014FEC0
dlabel D_802A00D0
dlabel D_802A00D8
dlabel D_802A00E0
dlabel D_802A00F8
dlabel D_802A0114
dlabel D_802A0138
dlabel D_802A0198
dlabel D_802A019C
dlabel D_802A01A0
dlabel D_802A01A4
dlabel D_802A01A8
dlabel D_802A01B0
dlabel D_802A01B4
dlabel D_802A01B8
dlabel D_802A01BC
dlabel D_802A01C0
dlabel D_802A01C4
dlabel D_802A01C8
dlabel D_802A01CC
dlabel D_802A01D0
dlabel D_802A01D4
dlabel D_802A1000
dlabel D_802A56C0
dlabel D_802A5710
dlabel D_802A5738
dlabel D_802A5760
dlabel D_802A5B58
dlabel D_802A5F50
dlabel D_802A6348
dlabel D_80E070
dlabel D_818CF0
dlabel D_PAL_80284610
dlabel D_PAL_8028468C
dlabel D_PAL_802846EC
dlabel D_PAL_802846FC
dlabel D_PAL_8028470C
dlabel D_PAL_8028471C
dlabel D_PAL_80284744
dlabel D_PAL_8028476C
dlabel D_PAL_80284794
dlabel D_PAL_802847BC
dlabel D_PAL_802847E4
dlabel D_PAL_8028480C
dlabel D_PAL_80284EFC
dlabel D_PAL_802855BC
dlabel D_PAL_80293308
dlabel func_PAL_800E65A0
dlabel func_PAL_8011A95C
dlabel func_PAL_8011C32C
dlabel func_PAL_8014355C
dlabel func_PAL_80143AAC
dlabel func_PAL_80143B88
dlabel func_PAL_80143D84
dlabel func_PAL_80143DD4
dlabel func_PAL_80143E24
dlabel func_PAL_80146878
dlabel func_PAL_801494C8
dlabel func_PAL_8024E3AC
dlabel func_PAL_8024E424
dlabel func_PAL_8024E478
dlabel func_PAL_8024E524
dlabel func_PAL_80260BCC
dlabel func_PAL_80260CA4
dlabel func_PAL_802640F4
dlabel func_PAL_802C63E0
dlabel func_PAL_802C70AC
dlabel func_PAL_802C7164
dlabel func_PAL_802DE4C0
dlabel func_PAL_802DE640
dlabel D_802A01AC

dlabel D_PAL_802836C4
dlabel func_PAL_80263FC0
dlabel D_80083C8C
dlabel D_80107264
dlabel D_8010739C
dlabel D_801074D4
dlabel D_8010760C
dlabel D_802A01F0
dlabel D_PAL_80073730
dlabel func_PAL_8002E858
dlabel func_PAL_800E6918
dlabel func_PAL_8012FF94
dlabel func_PAL_802676A4
dlabel D_801072AC
dlabel D_801072D4
dlabel D_801073E4
dlabel D_8010740C
dlabel D_8010751C
dlabel D_80107544
dlabel D_80107654
dlabel D_8010767C
dlabel D_802A01F8
dlabel D_802A01FC
dlabel func_PAL_802CAABC
dlabel func_PAL_8026A15C
dlabel func_PAL_80264854
dlabel D_800AF5E8
dlabel D_800B0460
dlabel D_8010B46A
dlabel D_8010D6B0
dlabel D_8010DAC8
dlabel D_80159110
dlabel D_802BEC80
dlabel D_802BEC84
dlabel D_802BEC88
dlabel D_PAL_802BEB50
dlabel func_PAL_80029AA4
dlabel func_PAL_80029BA8
dlabel func_PAL_80029C00
dlabel func_PAL_80029F1C
dlabel func_PAL_8002A2D0
dlabel func_PAL_800394FC
dlabel func_PAL_80039CD8
dlabel func_PAL_8003AF44
dlabel func_PAL_8003B214
dlabel func_PAL_8003B29C
dlabel func_PAL_8003DB50
dlabel func_PAL_800D95E0
dlabel func_PAL_800DA254
dlabel func_PAL_800DC66C
dlabel func_PAL_800DC8E8
dlabel func_PAL_800DC914
dlabel func_PAL_800E27FC
dlabel func_PAL_800EBCAC
dlabel func_PAL_800EBD30
dlabel func_PAL_8012FAF8
dlabel func_PAL_80132D50
dlabel func_PAL_8014881C
dlabel func_PAL_801488B8
dlabel func_PAL_802BD100
dlabel func_PAL_802BD144
dlabel func_PAL_802BD17C
dlabel func_PAL_802BD5F4
dlabel func_PAL_802DD5C0
dlabel D_PAL_E010E81C
dlabel D_PAL_E010E8F4
dlabel D_PAL_E010E7F8
dlabel D_PAL_E010E8C4
dlabel D_PAL_E010E888
dlabel D_8009F0D0
dlabel D_PAL_80073D10
dlabel D_PAL_80073D84
dlabel D_PAL_80073D88
dlabel D_PAL_80073D8C
dlabel func_802E3BD8
dlabel func_PAL_8002D720
dlabel func_PAL_80033B38
dlabel func_PAL_80033B70
dlabel func_PAL_80033BB4
dlabel func_PAL_8010F7B8
dlabel func_PAL_8011C390
dlabel func_PAL_8011CD24
dlabel func_PAL_8011F6B0
dlabel func_PAL_8013FCA0
dlabel func_PAL_80145FA0
dlabel D_PAL_80073D78
dlabel D_PAL_80073D7C
dlabel D_PAL_80073D80
dlabel D_PAL_80073E68
dlabel D_PAL_80073E58
dlabel D_PAL_80073E48
dlabel D_PAL_80073E38
dlabel D_PAL_80073DA8
dlabel D_800969A4
dlabel D_800969D4
dlabel D_80096A2C
dlabel D_80096A50
dlabel D_800AF5E0
dlabel D_PAL_80073FE0
dlabel D_PAL_800F3F60
dlabel func_PAL_8006FFA0
dlabel func_PAL_8006FFDC
dlabel func_PAL_8006FFEC
dlabel func_PAL_800E7EA8
dlabel func_PAL_80149AA8
dlabel func_PAL_80149B3C
dlabel func_PAL_802C7420
dlabel func_PAL_802C75E8
dlabel D_2596C0
dlabel D_2EE0
dlabel D_800969AC
dlabel D_8009F0D4
dlabel D_8009F0D8
dlabel D_8009F0DC
dlabel D_8009F0E0
dlabel D_PAL_8014ADF8
dlabel func_802C61DC
dlabel func_PAL_80037680
dlabel func_PAL_8006FD90
dlabel func_PAL_80111884
dlabel func_PAL_80121BB8
dlabel func_PAL_80144920
dlabel func_PAL_801449A8
dlabel func_PAL_801449D8
dlabel func_PAL_801483AC

dlabel func_PAL_E010E000
dlabel func_PAL_E010E000
dlabel func_E0200650
dlabel func_E0200650
dlabel D_PAL_E010E7BC
dlabel D_PAL_E010E858
dlabel D_3B9190
dlabel D_3BAAF0
dlabel D_3BC450
dlabel D_3BDDB0
dlabel D_3BF710
dlabel D_4198D0
dlabel D_425E60
dlabel D_4323F0
dlabel D_43E980
dlabel D_44AF10
dlabel D_800A2770
dlabel D_80195000
dlabel jtbl_PAL_8007B5B0
dlabel D_80096A10
dlabel D_PAL_801071C4
dlabel D_PAL_80107214
dlabel D_PAL_801072FC
dlabel D_PAL_8010734C
dlabel D_PAL_80107434
dlabel D_PAL_80107484
dlabel D_PAL_8010756C
dlabel D_PAL_801075BC
dlabel D_800969B0
dlabel D_800969E8
dlabel D_800B58B0
dlabel D_8FF58
dlabel D_PAL_8008FF40
dlabel D_PAL_8008FF48
dlabel some_unaccounted_function
dlabel D_800A2350
dlabel D_800A2360
dlabel D_800B5880
dlabel D_800D59A0
dlabel D_800D7228
dlabel D_801A5000
dlabel D_PAL_800704B0
dlabel D_PAL_80074510
dlabel D_PAL_80074514
dlabel D_PAL_80074520
dlabel D_PAL_80093E70
dlabel func_PAL_8004B3E8
dlabel func_PAL_8004B804
dlabel func_PAL_8004B908
dlabel func_PAL_8004B9CC
dlabel func_PAL_8005343C
dlabel func_PAL_80056830
dlabel func_PAL_80058500
dlabel func_PAL_80058570
dlabel func_PAL_800623D0
dlabel D_802AD356
dlabel D_802AD500
dlabel D_802AD5C0
dlabel func_PAL_800E61E4
dlabel func_PAL_800E6310
dlabel D_PAL_802AB4FC
dlabel D_PAL_802AB4C0
dlabel D_802AD844
dlabel D_802AD845
dlabel D_802AD846
dlabel D_802AD847
dlabel D_802AD848
dlabel D_802AD849
dlabel D_802AD84A
dlabel D_802AD84C
dlabel D_802AD84E
dlabel D_802AD850
dlabel D_802AD852
dlabel D_802AD854
dlabel D_802AD858
dlabel D_802AD85C
dlabel D_802AD860
dlabel D_802AD868
dlabel D_802AD87C
dlabel D_802AD87E
dlabel D_802AD880
dlabel D_802AD8AC
dlabel D_802AD8AF
dlabel D_802AD8D0
dlabel D_802AD8EA
dlabel D_802AD914
dlabel func_PAL_802A47E4
dlabel func_PAL_802A53BC
dlabel func_PAL_802A5824
dlabel func_PAL_802A5864
dlabel func_PAL_802A58F4
dlabel D_PAL_802AB4C4
dlabel D_80083C88
dlabel D_8008B264
dlabel D_8008B290
dlabel D_8008B2C0
dlabel D_8008B404
dlabel D_8008BD50
dlabel D_802ACE90
dlabel D_802ACE9C
dlabel D_802ACF00
dlabel D_802AD2D0
dlabel D_802AD2E8
dlabel D_802AD2F0
dlabel D_802AD2F8
dlabel D_802AD2FB
dlabel D_802AD2FC
dlabel D_802AD300
dlabel D_802AD328
dlabel D_802AD344
dlabel D_802AD6E8
dlabel D_802AD6F0
dlabel D_802AD6F2
dlabel D_802AD6F3
dlabel D_802AD7B0
dlabel D_802AD843
dlabel D_802AD898
dlabel D_802AD8B0
dlabel D_802AD8B8
dlabel D_802AD8BB
dlabel D_802AD8E8
dlabel D_802AD900
dlabel D_PAL_802AB5C4
dlabel D_PAL_802AB5CC
dlabel D_PAL_802AB62C
dlabel D_PAL_802AB66C
dlabel D_PAL_802AB6AC
dlabel D_PAL_802AB6B4
dlabel D_PAL_802AB6D8
dlabel D_PAL_802AB6E8
dlabel D_PAL_802AB6F4
dlabel D_PAL_802AB754
dlabel D_PAL_802AB78C
dlabel D_PAL_802AB7C4
dlabel func_PAL_8002A0EC
dlabel func_PAL_800EDC00
dlabel func_PAL_800EDF1C
dlabel func_PAL_800F156C
dlabel func_PAL_800F16EC
dlabel func_PAL_8024F9A4
dlabel func_PAL_80263660
dlabel func_PAL_802636F8
dlabel func_PAL_80263D0C
dlabel func_PAL_802A1000
dlabel D_80242A50
dlabel func_PAL_802A1030
dlabel func_PAL_802A1050
dlabel func_PAL_802A1078
dlabel func_PAL_802A1098
dlabel func_PAL_802A10B8
dlabel func_PAL_802A2624
dlabel D_mgm_02_80242A28
dlabel func_PAL_8003B0EC
dlabel func_PAL_8003B0EC
dlabel D_802486E0
dlabel D_80248704
dlabel func_PAL_8003F1D8
dlabel D_mgm_02_8024276C
dlabel D_mgm_02_80242910
dlabel D_mgm_02_8024299C
dlabel func_PAL_802A2770
dlabel func_PAL_802A2A58
dlabel func_PAL_802A4690
dlabel func_PAL_802A47D0
dlabel D_PAL_80244010
dlabel D_PAL_80244348
dlabel D_PAL_80244340
dlabel D_PAL_80244030
dlabel D_PAL_80244020
dlabel func_PAL_802A4898
dlabel func_PAL_802A49B4
dlabel func_PAL_802A4AC8
dlabel func_PAL_802A5984
dlabel func_PAL_802A5A3C
dlabel func_PAL_802410E4
dlabel func_PAL_802D0AC0
dlabel D_PAL_8024AE70
dlabel D_8024F314
dlabel D_8014AE48
dlabel D_PAL_80283E90
dlabel D_PAL_80283EC0
dlabel func_PAL_8003AFDC
dlabel func_PAL_8014890C
dlabel func_PAL_802DD320
dlabel D_PAL_8024AE74
dlabel D_8024F318
dlabel D_PAL_80241E50

dlabel D_800F3F60
dlabel D_801076D0
dlabel D_80107728
dlabel D_mgm_02_80242A50
dlabel func_80068480
dlabel func_800DC8E8
dlabel func_800DC914
dlabel func_800EBE50
dlabel func_800EBE78
dlabel func_80119830
dlabel func_80119B10
dlabel func_80119BEC
dlabel func_80143A60
dlabel func_8014890C
dlabel func_802DD620




