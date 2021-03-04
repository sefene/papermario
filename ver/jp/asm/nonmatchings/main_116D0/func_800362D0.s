.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800362D0
/* 116D0 800362D0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 116D4 800362D4 AFB10014 */  sw        $s1, 0x14($sp)
/* 116D8 800362D8 3C118007 */  lui       $s1, %hi(D_8007417C)
/* 116DC 800362DC 2631417C */  addiu     $s1, $s1, %lo(D_8007417C)
/* 116E0 800362E0 AFBF0018 */  sw        $ra, 0x18($sp)
/* 116E4 800362E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 116E8 800362E8 8E220000 */  lw        $v0, ($s1)
/* 116EC 800362EC 3C013F80 */  lui       $at, 0x3f80
/* 116F0 800362F0 44816000 */  mtc1      $at, $f12
/* 116F4 800362F4 0C00AFA7 */  jal       func_8002BE9C
/* 116F8 800362F8 A04000AC */   sb       $zero, 0xac($v0)
/* 116FC 800362FC 3C013E99 */  lui       $at, 0x3e99
/* 11700 80036300 3421999A */  ori       $at, $at, 0x999a
/* 11704 80036304 44816000 */  mtc1      $at, $f12
/* 11708 80036308 0C00AFB5 */  jal       func_8002BED4
/* 1170C 8003630C 00000000 */   nop
/* 11710 80036310 8E220000 */  lw        $v0, ($s1)
/* 11714 80036314 805000A8 */  lb        $s0, 0xa8($v0)
/* 11718 80036318 12000005 */  beqz      $s0, .L80036330
/* 1171C 8003631C 24020001 */   addiu    $v0, $zero, 1
/* 11720 80036320 12020020 */  beq       $s0, $v0, .L800363A4
/* 11724 80036324 00000000 */   nop
/* 11728 80036328 0800D903 */  j         .L8003640C
/* 1172C 8003632C 00000000 */   nop
.L80036330:
/* 11730 80036330 0C00CD18 */  jal       func_80033460
/* 11734 80036334 0000202D */   daddu    $a0, $zero, $zero
/* 11738 80036338 240200FF */  addiu     $v0, $zero, 0xff
/* 1173C 8003633C 3C01800A */  lui       $at, %hi(D_8009E764)
/* 11740 80036340 A422E764 */  sh        $v0, %lo(D_8009E764)($at)
/* 11744 80036344 24020010 */  addiu     $v0, $zero, 0x10
/* 11748 80036348 3C01800A */  lui       $at, %hi(D_8009E766)
/* 1174C 8003634C A422E766 */  sh        $v0, %lo(D_8009E766)($at)
/* 11750 80036350 24020004 */  addiu     $v0, $zero, 4
/* 11754 80036354 3C01800A */  lui       $at, %hi(D_8009E768)
/* 11758 80036358 A422E768 */  sh        $v0, %lo(D_8009E768)($at)
/* 1175C 8003635C 240200D0 */  addiu     $v0, $zero, 0xd0
/* 11760 80036360 3C01800A */  lui       $at, %hi(D_8009E770)
/* 11764 80036364 AC20E770 */  sw        $zero, %lo(D_8009E770)($at)
/* 11768 80036368 3C01800A */  lui       $at, %hi(D_8009E76A)
/* 1176C 8003636C A422E76A */  sh        $v0, %lo(D_8009E76A)($at)
/* 11770 80036370 3C01800A */  lui       $at, %hi(D_8009E76C)
/* 11774 80036374 A422E76C */  sh        $v0, %lo(D_8009E76C)($at)
/* 11778 80036378 3C01800A */  lui       $at, %hi(D_8009E76E)
/* 1177C 8003637C A422E76E */  sh        $v0, %lo(D_8009E76E)($at)
/* 11780 80036380 3C01800A */  lui       $at, %hi(D_8009E774)
/* 11784 80036384 AC20E774 */  sw        $zero, %lo(D_8009E774)($at)
/* 11788 80036388 8E230000 */  lw        $v1, ($s1)
/* 1178C 8003638C 24020005 */  addiu     $v0, $zero, 5
/* 11790 80036390 A4620086 */  sh        $v0, 0x86($v1)
/* 11794 80036394 A462008C */  sh        $v0, 0x8c($v1)
/* 11798 80036398 24020003 */  addiu     $v0, $zero, 3
/* 1179C 8003639C 0800D91C */  j         .L80036470
/* 117A0 800363A0 A462008E */   sh       $v0, 0x8e($v1)
.L800363A4:
/* 117A4 800363A4 0C00CD18 */  jal       func_80033460
/* 117A8 800363A8 0000202D */   daddu    $a0, $zero, $zero
/* 117AC 800363AC 2402000C */  addiu     $v0, $zero, 0xc
/* 117B0 800363B0 24040004 */  addiu     $a0, $zero, 4
/* 117B4 800363B4 3C01800A */  lui       $at, %hi(D_8009E764)
/* 117B8 800363B8 A420E764 */  sh        $zero, %lo(D_8009E764)($at)
/* 117BC 800363BC 3C01800A */  lui       $at, %hi(D_8009E766)
/* 117C0 800363C0 A422E766 */  sh        $v0, %lo(D_8009E766)($at)
/* 117C4 800363C4 3C01800A */  lui       $at, %hi(D_8009E768)
/* 117C8 800363C8 A424E768 */  sh        $a0, %lo(D_8009E768)($at)
/* 117CC 800363CC 3C01800A */  lui       $at, %hi(D_8009E770)
/* 117D0 800363D0 AC30E770 */  sw        $s0, %lo(D_8009E770)($at)
/* 117D4 800363D4 3C01800A */  lui       $at, %hi(D_8009E76A)
/* 117D8 800363D8 A420E76A */  sh        $zero, %lo(D_8009E76A)($at)
/* 117DC 800363DC 3C01800A */  lui       $at, %hi(D_8009E76C)
/* 117E0 800363E0 A420E76C */  sh        $zero, %lo(D_8009E76C)($at)
/* 117E4 800363E4 3C01800A */  lui       $at, %hi(D_8009E76E)
/* 117E8 800363E8 A420E76E */  sh        $zero, %lo(D_8009E76E)($at)
/* 117EC 800363EC 3C01800A */  lui       $at, %hi(D_8009E774)
/* 117F0 800363F0 AC20E774 */  sw        $zero, %lo(D_8009E774)($at)
/* 117F4 800363F4 8E220000 */  lw        $v0, ($s1)
/* 117F8 800363F8 24030005 */  addiu     $v1, $zero, 5
/* 117FC 800363FC A4430086 */  sh        $v1, 0x86($v0)
/* 11800 80036400 A444008C */  sh        $a0, 0x8c($v0)
/* 11804 80036404 0800D91C */  j         .L80036470
/* 11808 80036408 A444008E */   sh       $a0, 0x8e($v0)
.L8003640C:
/* 1180C 8003640C 0C00CD18 */  jal       func_80033460
/* 11810 80036410 0000202D */   daddu    $a0, $zero, $zero
/* 11814 80036414 0C00CD1C */  jal       func_80033470
/* 11818 80036418 240400D0 */   addiu    $a0, $zero, 0xd0
/* 1181C 8003641C 2402FFFF */  addiu     $v0, $zero, -1
/* 11820 80036420 3C038007 */  lui       $v1, %hi(D_8007417C)
/* 11824 80036424 8C63417C */  lw        $v1, %lo(D_8007417C)($v1)
/* 11828 80036428 3C048007 */  lui       $a0, %hi(D_80077980)
/* 1182C 8003642C 24847980 */  addiu     $a0, $a0, %lo(D_80077980)
/* 11830 80036430 A06200A8 */  sb        $v0, 0xa8($v1)
/* 11834 80036434 90820000 */  lbu       $v0, ($a0)
/* 11838 80036438 24030006 */  addiu     $v1, $zero, 6
/* 1183C 8003643C 3C01800A */  lui       $at, %hi(D_8009E766)
/* 11840 80036440 A423E766 */  sh        $v1, %lo(D_8009E766)($at)
/* 11844 80036444 3C01800A */  lui       $at, %hi(D_8009E768)
/* 11848 80036448 A423E768 */  sh        $v1, %lo(D_8009E768)($at)
/* 1184C 8003644C 24420001 */  addiu     $v0, $v0, 1
/* 11850 80036450 A0820000 */  sb        $v0, ($a0)
/* 11854 80036454 304200FF */  andi      $v0, $v0, 0xff
/* 11858 80036458 2C420004 */  sltiu     $v0, $v0, 4
/* 1185C 8003645C 50400001 */  beql      $v0, $zero, .L80036464
/* 11860 80036460 A0800000 */   sb       $zero, ($a0)
.L80036464:
/* 11864 80036464 24020003 */  addiu     $v0, $zero, 3
/* 11868 80036468 3C01800A */  lui       $at, %hi(D_8009E774)
/* 1186C 8003646C AC22E774 */  sw        $v0, %lo(D_8009E774)($at)
.L80036470:
/* 11870 80036470 3C02800A */  lui       $v0, %hi(D_8009E764)
/* 11874 80036474 8442E764 */  lh        $v0, %lo(D_8009E764)($v0)
/* 11878 80036478 3C04800A */  lui       $a0, %hi(D_8009E773)
/* 1187C 8003647C 9084E773 */  lbu       $a0, %lo(D_8009E773)($a0)
/* 11880 80036480 44820000 */  mtc1      $v0, $f0
/* 11884 80036484 00000000 */  nop
/* 11888 80036488 46800020 */  cvt.s.w   $f0, $f0
/* 1188C 8003648C 44050000 */  mfc1      $a1, $f0
/* 11890 80036490 0C04F395 */  jal       func_8013CE54
/* 11894 80036494 00000000 */   nop
/* 11898 80036498 3C05800A */  lui       $a1, %hi(D_8009E76B)
/* 1189C 8003649C 90A5E76B */  lbu       $a1, %lo(D_8009E76B)($a1)
/* 118A0 800364A0 3C06800A */  lui       $a2, %hi(D_8009E76D)
/* 118A4 800364A4 90C6E76D */  lbu       $a2, %lo(D_8009E76D)($a2)
/* 118A8 800364A8 3C07800A */  lui       $a3, %hi(D_8009E76F)
/* 118AC 800364AC 90E7E76F */  lbu       $a3, %lo(D_8009E76F)($a3)
/* 118B0 800364B0 0C04F3B0 */  jal       func_8013CEC0
/* 118B4 800364B4 24040001 */   addiu    $a0, $zero, 1
/* 118B8 800364B8 0C00CD41 */  jal       func_80033504
/* 118BC 800364BC 00000000 */   nop
/* 118C0 800364C0 8FBF0018 */  lw        $ra, 0x18($sp)
/* 118C4 800364C4 8FB10014 */  lw        $s1, 0x14($sp)
/* 118C8 800364C8 8FB00010 */  lw        $s0, 0x10($sp)
/* 118CC 800364CC 03E00008 */  jr        $ra
/* 118D0 800364D0 27BD0020 */   addiu    $sp, $sp, 0x20