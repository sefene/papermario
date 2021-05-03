.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80035DFC
/* 111FC 80035DFC 3C03800A */  lui       $v1, %hi(D_8009E754)
/* 11200 80035E00 8463E754 */  lh        $v1, %lo(D_8009E754)($v1)
/* 11204 80035E04 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 11208 80035E08 AFBF0018 */  sw        $ra, 0x18($sp)
/* 1120C 80035E0C AFB10014 */  sw        $s1, 0x14($sp)
/* 11210 80035E10 2C620005 */  sltiu     $v0, $v1, 5
/* 11214 80035E14 10400094 */  beqz      $v0, .L80036068
/* 11218 80035E18 AFB00010 */   sw       $s0, 0x10($sp)
/* 1121C 80035E1C 00031080 */  sll       $v0, $v1, 2
/* 11220 80035E20 3C01800A */  lui       $at, %hi(D_80098300)
/* 11224 80035E24 00220821 */  addu      $at, $at, $v0
/* 11228 80035E28 8C228300 */  lw        $v0, %lo(D_80098300)($at)
/* 1122C 80035E2C 00400008 */  jr        $v0
/* 11230 80035E30 00000000 */   nop
/* 11234 80035E34 0C00E57C */  jal       func_800395F0
/* 11238 80035E38 00000000 */   nop
/* 1123C 80035E3C 0C037DC8 */  jal       func_800DF720
/* 11240 80035E40 00000000 */   nop
/* 11244 80035E44 0C016680 */  jal       func_80059A00
/* 11248 80035E48 00000000 */   nop
/* 1124C 80035E4C 0C00B424 */  jal       func_8002D090
/* 11250 80035E50 00000000 */   nop
/* 11254 80035E54 3C04800A */  lui       $a0, %hi(D_8009E750)
/* 11258 80035E58 2484E750 */  addiu     $a0, $a0, %lo(D_8009E750)
/* 1125C 80035E5C 0C04F4D7 */  jal       func_8013D35C
/* 11260 80035E60 00000000 */   nop
/* 11264 80035E64 00021400 */  sll       $v0, $v0, 0x10
/* 11268 80035E68 1040007F */  beqz      $v0, .L80036068
/* 1126C 80035E6C 00000000 */   nop
/* 11270 80035E70 3C03800A */  lui       $v1, %hi(D_8009E754)
/* 11274 80035E74 2463E754 */  addiu     $v1, $v1, %lo(D_8009E754)
/* 11278 80035E78 94620000 */  lhu       $v0, ($v1)
/* 1127C 80035E7C 24420001 */  addiu     $v0, $v0, 1
/* 11280 80035E80 0800D81A */  j         .L80036068
/* 11284 80035E84 A4620000 */   sh       $v0, ($v1)
/* 11288 80035E88 3C03800A */  lui       $v1, %hi(D_8009A630)
/* 1128C 80035E8C 2463A630 */  addiu     $v1, $v1, %lo(D_8009A630)
/* 11290 80035E90 8C620000 */  lw        $v0, ($v1)
/* 11294 80035E94 34420008 */  ori       $v0, $v0, 8
/* 11298 80035E98 0C017F54 */  jal       nuContRmbForceStop
/* 1129C 80035E9C AC620000 */   sw       $v0, ($v1)
/* 112A0 80035EA0 3C04800A */  lui       $a0, %hi(D_8009E754)
/* 112A4 80035EA4 2484E754 */  addiu     $a0, $a0, %lo(D_8009E754)
/* 112A8 80035EA8 94820000 */  lhu       $v0, ($a0)
/* 112AC 80035EAC 24030004 */  addiu     $v1, $zero, 4
/* 112B0 80035EB0 3C01800A */  lui       $at, %hi(D_8009E756)
/* 112B4 80035EB4 A423E756 */  sh        $v1, %lo(D_8009E756)($at)
/* 112B8 80035EB8 24420001 */  addiu     $v0, $v0, 1
/* 112BC 80035EBC 0800D81A */  j         .L80036068
/* 112C0 80035EC0 A4820000 */   sh       $v0, ($a0)
/* 112C4 80035EC4 3C108007 */  lui       $s0, %hi(D_8007417C)
/* 112C8 80035EC8 2610417C */  addiu     $s0, $s0, %lo(D_8007417C)
/* 112CC 80035ECC 8E020000 */  lw        $v0, ($s0)
/* 112D0 80035ED0 80420071 */  lb        $v0, 0x71($v0)
/* 112D4 80035ED4 10400003 */  beqz      $v0, .L80035EE4
/* 112D8 80035ED8 00000000 */   nop
/* 112DC 80035EDC 0C00CC60 */  jal       func_80033180
/* 112E0 80035EE0 24040011 */   addiu    $a0, $zero, 0x11
.L80035EE4:
/* 112E4 80035EE4 3C11800A */  lui       $s1, %hi(D_8009E756)
/* 112E8 80035EE8 2631E756 */  addiu     $s1, $s1, %lo(D_8009E756)
/* 112EC 80035EEC 86220000 */  lh        $v0, ($s1)
/* 112F0 80035EF0 96230000 */  lhu       $v1, ($s1)
/* 112F4 80035EF4 10400003 */  beqz      $v0, .L80035F04
/* 112F8 80035EF8 2462FFFF */   addiu    $v0, $v1, -1
/* 112FC 80035EFC 0800D81A */  j         .L80036068
/* 11300 80035F00 A6220000 */   sh       $v0, ($s1)
.L80035F04:
/* 11304 80035F04 8E020000 */  lw        $v0, ($s0)
/* 11308 80035F08 A0400070 */  sb        $zero, 0x70($v0)
/* 1130C 80035F0C 8E020000 */  lw        $v0, ($s0)
/* 11310 80035F10 A0400078 */  sb        $zero, 0x78($v0)
/* 11314 80035F14 8E020000 */  lw        $v0, ($s0)
/* 11318 80035F18 84440086 */  lh        $a0, 0x86($v0)
/* 1131C 80035F1C 8445008C */  lh        $a1, 0x8c($v0)
/* 11320 80035F20 0C0168E9 */  jal       func_8005A3A4
/* 11324 80035F24 0000302D */   daddu    $a2, $zero, $zero
/* 11328 80035F28 0C009C15 */  jal       func_80027054
/* 1132C 80035F2C 0000202D */   daddu    $a0, $zero, $zero
/* 11330 80035F30 0C017F5C */  jal       func_8005FD70
/* 11334 80035F34 00000000 */   nop
/* 11338 80035F38 8E020000 */  lw        $v0, ($s0)
/* 1133C 80035F3C 80420071 */  lb        $v0, 0x71($v0)
/* 11340 80035F40 14400003 */  bnez      $v0, .L80035F50
/* 11344 80035F44 00000000 */   nop
/* 11348 80035F48 0C038056 */  jal       func_800E0158
/* 1134C 80035F4C 00000000 */   nop
.L80035F50:
/* 11350 80035F50 0C00B424 */  jal       func_8002D090
/* 11354 80035F54 00000000 */   nop
/* 11358 80035F58 3C02800A */  lui       $v0, %hi(D_8009E754)
/* 1135C 80035F5C 2442E754 */  addiu     $v0, $v0, %lo(D_8009E754)
/* 11360 80035F60 94430000 */  lhu       $v1, ($v0)
/* 11364 80035F64 24040002 */  addiu     $a0, $zero, 2
/* 11368 80035F68 A6240000 */  sh        $a0, ($s1)
/* 1136C 80035F6C 24630001 */  addiu     $v1, $v1, 1
/* 11370 80035F70 0800D81A */  j         .L80036068
/* 11374 80035F74 A4430000 */   sh       $v1, ($v0)
/* 11378 80035F78 0C00F879 */  jal       func_8003E1E4
/* 1137C 80035F7C 00000000 */   nop
/* 11380 80035F80 0C00E57C */  jal       func_800395F0
/* 11384 80035F84 00000000 */   nop
/* 11388 80035F88 0C037DC8 */  jal       func_800DF720
/* 1138C 80035F8C 00000000 */   nop
/* 11390 80035F90 0C00B424 */  jal       func_8002D090
/* 11394 80035F94 00000000 */   nop
/* 11398 80035F98 3C04800A */  lui       $a0, %hi(D_8009E756)
/* 1139C 80035F9C 2484E756 */  addiu     $a0, $a0, %lo(D_8009E756)
/* 113A0 80035FA0 84820000 */  lh        $v0, ($a0)
/* 113A4 80035FA4 94830000 */  lhu       $v1, ($a0)
/* 113A8 80035FA8 10400003 */  beqz      $v0, .L80035FB8
/* 113AC 80035FAC 2462FFFF */   addiu    $v0, $v1, -1
/* 113B0 80035FB0 0800D81A */  j         .L80036068
/* 113B4 80035FB4 A4820000 */   sh       $v0, ($a0)
.L80035FB8:
/* 113B8 80035FB8 3C028007 */  lui       $v0, %hi(D_8007417C)
/* 113BC 80035FBC 8C42417C */  lw        $v0, %lo(D_8007417C)($v0)
/* 113C0 80035FC0 0C0B1059 */  jal       func_802C4164
/* 113C4 80035FC4 8C44006C */   lw       $a0, 0x6c($v0)
/* 113C8 80035FC8 14400027 */  bnez      $v0, .L80036068
/* 113CC 80035FCC 2405FFF7 */   addiu    $a1, $zero, -9
/* 113D0 80035FD0 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 113D4 80035FD4 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 113D8 80035FD8 3C06800A */  lui       $a2, %hi(D_8009E754)
/* 113DC 80035FDC 24C6E754 */  addiu     $a2, $a2, %lo(D_8009E754)
/* 113E0 80035FE0 8C820000 */  lw        $v0, ($a0)
/* 113E4 80035FE4 94C30000 */  lhu       $v1, ($a2)
/* 113E8 80035FE8 00451024 */  and       $v0, $v0, $a1
/* 113EC 80035FEC 24630001 */  addiu     $v1, $v1, 1
/* 113F0 80035FF0 AC820000 */  sw        $v0, ($a0)
/* 113F4 80035FF4 0800D81A */  j         .L80036068
/* 113F8 80035FF8 A4C30000 */   sh       $v1, ($a2)
/* 113FC 80035FFC 0C00E57C */  jal       func_800395F0
/* 11400 80036000 00000000 */   nop
/* 11404 80036004 0C037DC8 */  jal       func_800DF720
/* 11408 80036008 00000000 */   nop
/* 1140C 8003600C 0C016680 */  jal       func_80059A00
/* 11410 80036010 00000000 */   nop
/* 11414 80036014 0C00B424 */  jal       func_8002D090
/* 11418 80036018 00000000 */   nop
/* 1141C 8003601C 3C04800A */  lui       $a0, %hi(D_8009E750)
/* 11420 80036020 2484E750 */  addiu     $a0, $a0, %lo(D_8009E750)
/* 11424 80036024 0C04F5A1 */  jal       func_8013D684
/* 11428 80036028 00000000 */   nop
/* 1142C 8003602C 00021400 */  sll       $v0, $v0, 0x10
/* 11430 80036030 1040000D */  beqz      $v0, .L80036068
/* 11434 80036034 00000000 */   nop
/* 11438 80036038 3C028007 */  lui       $v0, %hi(D_8007417C)
/* 1143C 8003603C 8C42417C */  lw        $v0, %lo(D_8007417C)($v0)
/* 11440 80036040 80420071 */  lb        $v0, 0x71($v0)
/* 11444 80036044 14400003 */  bnez      $v0, .L80036054
/* 11448 80036048 00000000 */   nop
/* 1144C 8003604C 0C038061 */  jal       func_800E0184
/* 11450 80036050 00000000 */   nop
.L80036054:
/* 11454 80036054 3C05BF80 */  lui       $a1, 0xbf80
/* 11458 80036058 0C04F38E */  jal       func_8013CE38
/* 1145C 8003605C 240400FF */   addiu    $a0, $zero, 0xff
/* 11460 80036060 0C00CC60 */  jal       func_80033180
/* 11464 80036064 24040004 */   addiu    $a0, $zero, 4
.L80036068:
/* 11468 80036068 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1146C 8003606C 8FB10014 */  lw        $s1, 0x14($sp)
/* 11470 80036070 8FB00010 */  lw        $s0, 0x10($sp)
/* 11474 80036074 03E00008 */  jr        $ra
/* 11478 80036078 27BD0020 */   addiu    $sp, $sp, 0x20