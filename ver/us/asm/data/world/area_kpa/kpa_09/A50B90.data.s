.include "macro.inc"

.section .data

glabel D_80241B90_A50B90
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000005, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000002, func_80045900, 0x00000001, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x40000000, 0x00000014, 0x00000003, 0x42F00000, 0x42F00000, 0x00000002, 0x3F800000, 0x00000000, 0x00000000, 0x43160000, 0x43160000, 0x00000001, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x0000000A, 0x00000043, 0x00000003, SetSelfVar, 0x00000003, 0x00000002, 0x00000043, 0x00000002, func_80240F94_A4FF94, 0x80241C60, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00200018, 0x00000000, 0x00000000, 0x80241C90, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x001E0000, 0x40F00000, 0x00000000, 0x00000000, 0x3F8CCCCD, 0x3E3851EC, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000003, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x0000000F, 0x00000043, 0x00000003, SetSelfVar, 0x00000003, 0x0000000F, 0x00000043, 0x00000002, func_802405FC_A4F5FC, 0x80241D2C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, kpa_09_GetEncounterEnemyIsOwner, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x80241DCC, 0x00000043, 0x00000002, GetOwnerEncounterTrigger, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x0000001D, 0x00000001, 0x00000004, 0x0000001D, 0x00000001, 0x00000003, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000003, 0x00000043, 0x00000001, func_80240B38_A4FB38, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000020, 0x00000000, 0x0000001D, 0x00000001, 0x00000002, 0x0000001D, 0x00000001, 0x00000006, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000004, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x0000000F, PlayEffect, 0x00000007, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000020, 0x00000000, 0x0000001C, 0x00000000, 0x00000043, 0x00000001, func_800457F8, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x80241D5C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x000C000C, 0x00000000, 0x00000000, 0x80241D5C, 0x80241DDC, 0x00000000, D_80241B90_A50B90, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x80241D00, 0xC2920000, 0x00000000, 0x00000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, 0x8005008C, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0004, 0x33322666, 0x33320004, 0x33323FFF, 0x33320004, 0x33326665, 0x33320004, 0x33327FFF, 0x26660004, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0xFFFFFFB7, 0x00000000, 0x00000000, 0x0000001E, 0x00000000, 0xFFFF8001, 0x00000000, 0xFFFFFFB7, 0x00000000, 0x00000000, 0x000000C8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00530002, 0x00530003, 0x00530004, 0x00530004, 0x00530002, 0x00530002, 0x00530007, 0x00530007, 0x00530005, 0x00530006, 0x00530002, 0x00530002, 0x00530002, 0x00530002, 0x00530002, 0x00530002, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x80241FA4, 0x00000000, 0xC47A0000, 0x00000000, 0x00800D00, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000000, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x80241FA4, 0x00000000, 0xC47A0000, 0x00000000, 0x00800D00, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000000, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003, 0x80241FA4, 0x00000000, 0xC47A0000, 0x00000000, 0x00800D00, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000000, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00540000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x80241FD0, 0x220B0002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000