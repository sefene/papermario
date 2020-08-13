.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80132E54
/* 0C9554 80132E54 27BDFEB0 */  addiu $sp, $sp, -0x150
/* 0C9558 80132E58 AFB60138 */  sw    $s6, 0x138($sp)
/* 0C955C 80132E5C 0000B02D */  daddu $s6, $zero, $zero
/* 0C9560 80132E60 AFB40130 */  sw    $s4, 0x130($sp)
/* 0C9564 80132E64 27B40058 */  addiu $s4, $sp, 0x58
/* 0C9568 80132E68 AFB50134 */  sw    $s5, 0x134($sp)
/* 0C956C 80132E6C 27B50098 */  addiu $s5, $sp, 0x98
/* 0C9570 80132E70 AFB10124 */  sw    $s1, 0x124($sp)
/* 0C9574 80132E74 3C11800A */  lui   $s1, 0x800a
/* 0C9578 80132E78 2631A66C */  addiu $s1, $s1, -0x5994
/* 0C957C 80132E7C AFBE0140 */  sw    $fp, 0x140($sp)
/* 0C9580 80132E80 3C1EE600 */  lui   $fp, 0xe600
/* 0C9584 80132E84 AFB7013C */  sw    $s7, 0x13c($sp)
/* 0C9588 80132E88 3C17E700 */  lui   $s7, 0xe700
/* 0C958C 80132E8C AFB3012C */  sw    $s3, 0x12c($sp)
/* 0C9590 80132E90 3C13F540 */  lui   $s3, 0xf540
/* 0C9594 80132E94 36730400 */  ori   $s3, $s3, 0x400
/* 0C9598 80132E98 AFBF0144 */  sw    $ra, 0x144($sp)
/* 0C959C 80132E9C AFB20128 */  sw    $s2, 0x128($sp)
/* 0C95A0 80132EA0 AFB00120 */  sw    $s0, 0x120($sp)
/* 0C95A4 80132EA4 F7B40148 */  sdc1  $f20, 0x148($sp)
.L80132EA8:
/* 0C95A8 80132EA8 3C038015 */  lui   $v1, 0x8015
/* 0C95AC 80132EAC 8C6365A0 */  lw    $v1, 0x65a0($v1)
/* 0C95B0 80132EB0 00161080 */  sll   $v0, $s6, 2
/* 0C95B4 80132EB4 00431021 */  addu  $v0, $v0, $v1
/* 0C95B8 80132EB8 8C520000 */  lw    $s2, ($v0)
/* 0C95BC 80132EBC 5240028C */  beql  $s2, $zero, .L801338F0
/* 0C95C0 80132EC0 26D60001 */   addiu $s6, $s6, 1
/* 0C95C4 80132EC4 8E430000 */  lw    $v1, ($s2)
/* 0C95C8 80132EC8 10600288 */  beqz  $v1, .L801338EC
/* 0C95CC 80132ECC 30620040 */   andi  $v0, $v1, 0x40
/* 0C95D0 80132ED0 54400287 */  bnel  $v0, $zero, .L801338F0
/* 0C95D4 80132ED4 26D60001 */   addiu $s6, $s6, 1
/* 0C95D8 80132ED8 3C020010 */  lui   $v0, 0x10
/* 0C95DC 80132EDC 00621024 */  and   $v0, $v1, $v0
/* 0C95E0 80132EE0 10400282 */  beqz  $v0, .L801338EC
/* 0C95E4 80132EE4 3C020004 */   lui   $v0, 4
/* 0C95E8 80132EE8 00621024 */  and   $v0, $v1, $v0
/* 0C95EC 80132EEC 14400002 */  bnez  $v0, .L80132EF8
/* 0C95F0 80132EF0 0000802D */   daddu $s0, $zero, $zero
/* 0C95F4 80132EF4 2410FFFC */  addiu $s0, $zero, -4
.L80132EF8:
/* 0C95F8 80132EF8 86430018 */  lh    $v1, 0x18($s2)
/* 0C95FC 80132EFC 24020157 */  addiu $v0, $zero, 0x157
/* 0C9600 80132F00 10620005 */  beq   $v1, $v0, .L80132F18
/* 0C9604 80132F04 24020159 */   addiu $v0, $zero, 0x159
/* 0C9608 80132F08 10620003 */  beq   $v1, $v0, .L80132F18
/* 0C960C 80132F0C 24020156 */   addiu $v0, $zero, 0x156
/* 0C9610 80132F10 14620005 */  bne   $v1, $v0, .L80132F28
/* 0C9614 80132F14 00000000 */   nop   
.L80132F18:
/* 0C9618 80132F18 3C013F80 */  lui   $at, 0x3f80
/* 0C961C 80132F1C 44810000 */  mtc1  $at, $f0
/* 0C9620 80132F20 0000802D */  daddu $s0, $zero, $zero
/* 0C9624 80132F24 E6400030 */  swc1  $f0, 0x30($s2)
.L80132F28:
/* 0C9628 80132F28 3C0E800B */  lui   $t6, 0x800b
/* 0C962C 80132F2C 25CE1D80 */  addiu $t6, $t6, 0x1d80
/* 0C9630 80132F30 3C03800A */  lui   $v1, 0x800a
/* 0C9634 80132F34 8463A634 */  lh    $v1, -0x59cc($v1)
/* 0C9638 80132F38 3C014334 */  lui   $at, 0x4334
/* 0C963C 80132F3C 44816000 */  mtc1  $at, $f12
/* 0C9640 80132F40 00031080 */  sll   $v0, $v1, 2
/* 0C9644 80132F44 00431021 */  addu  $v0, $v0, $v1
/* 0C9648 80132F48 00021080 */  sll   $v0, $v0, 2
/* 0C964C 80132F4C 00431023 */  subu  $v0, $v0, $v1
/* 0C9650 80132F50 000218C0 */  sll   $v1, $v0, 3
/* 0C9654 80132F54 00431021 */  addu  $v0, $v0, $v1
/* 0C9658 80132F58 000210C0 */  sll   $v0, $v0, 3
/* 0C965C 80132F5C 004E1021 */  addu  $v0, $v0, $t6
/* 0C9660 80132F60 C440006C */  lwc1  $f0, 0x6c($v0)
/* 0C9664 80132F64 0C00A6C9 */  jal   clamp_angle
/* 0C9668 80132F68 46006301 */   sub.s $f12, $f12, $f0
/* 0C966C 80132F6C 0280202D */  daddu $a0, $s4, $zero
/* 0C9670 80132F70 C642000C */  lwc1  $f2, 0xc($s2)
/* 0C9674 80132F74 44902000 */  mtc1  $s0, $f4
/* 0C9678 80132F78 00000000 */  nop   
/* 0C967C 80132F7C 46802120 */  cvt.s.w $f4, $f4
/* 0C9680 80132F80 46001087 */  neg.s $f2, $f2
/* 0C9684 80132F84 46041081 */  sub.s $f2, $f2, $f4
/* 0C9688 80132F88 8E450008 */  lw    $a1, 8($s2)
/* 0C968C 80132F8C 8E470010 */  lw    $a3, 0x10($s2)
/* 0C9690 80132F90 44061000 */  mfc1  $a2, $f2
/* 0C9694 80132F94 0C019E40 */  jal   guTranslateF
/* 0C9698 80132F98 46000506 */   mov.s $f20, $f0
/* 0C969C 80132F9C 4405A000 */  mfc1  $a1, $f20
/* 0C96A0 80132FA0 44800000 */  mtc1  $zero, $f0
/* 0C96A4 80132FA4 3C073F80 */  lui   $a3, 0x3f80
/* 0C96A8 80132FA8 44060000 */  mfc1  $a2, $f0
/* 0C96AC 80132FAC 02A0202D */  daddu $a0, $s5, $zero
/* 0C96B0 80132FB0 0C019EC8 */  jal   guRotateF
/* 0C96B4 80132FB4 AFA60010 */   sw    $a2, 0x10($sp)
/* 0C96B8 80132FB8 8E420000 */  lw    $v0, ($s2)
/* 0C96BC 80132FBC 30424000 */  andi  $v0, $v0, 0x4000
/* 0C96C0 80132FC0 1040000A */  beqz  $v0, .L80132FEC
/* 0C96C4 80132FC4 27B000D8 */   addiu $s0, $sp, 0xd8
/* 0C96C8 80132FC8 8E450030 */  lw    $a1, 0x30($s2)
/* 0C96CC 80132FCC 0200202D */  daddu $a0, $s0, $zero
/* 0C96D0 80132FD0 00A0302D */  daddu $a2, $a1, $zero
/* 0C96D4 80132FD4 0C019DF0 */  jal   guScaleF
/* 0C96D8 80132FD8 00A0382D */   daddu $a3, $a1, $zero
/* 0C96DC 80132FDC 02A0202D */  daddu $a0, $s5, $zero
/* 0C96E0 80132FE0 0200282D */  daddu $a1, $s0, $zero
/* 0C96E4 80132FE4 0C019D80 */  jal   guMtxCatF
/* 0C96E8 80132FE8 02A0302D */   daddu $a2, $s5, $zero
.L80132FEC:
/* 0C96EC 80132FEC 02A0202D */  daddu $a0, $s5, $zero
/* 0C96F0 80132FF0 0280282D */  daddu $a1, $s4, $zero
/* 0C96F4 80132FF4 0C019D80 */  jal   guMtxCatF
/* 0C96F8 80132FF8 0280302D */   daddu $a2, $s4, $zero
/* 0C96FC 80132FFC 0280202D */  daddu $a0, $s4, $zero
/* 0C9700 80133000 0C019D40 */  jal   guMtxF2L
/* 0C9704 80133004 27A50018 */   addiu $a1, $sp, 0x18
/* 0C9708 80133008 3C020001 */  lui   $v0, 1
/* 0C970C 8013300C 34421630 */  ori   $v0, $v0, 0x1630
/* 0C9710 80133010 27A50018 */  addiu $a1, $sp, 0x18
/* 0C9714 80133014 3C038007 */  lui   $v1, 0x8007
/* 0C9718 80133018 946341F0 */  lhu   $v1, 0x41f0($v1)
/* 0C971C 8013301C 3C04800A */  lui   $a0, 0x800a
/* 0C9720 80133020 8C84A674 */  lw    $a0, -0x598c($a0)
/* 0C9724 80133024 00031980 */  sll   $v1, $v1, 6
/* 0C9728 80133028 00832021 */  addu  $a0, $a0, $v1
/* 0C972C 8013302C 00822021 */  addu  $a0, $a0, $v0
.L80133030:
/* 0C9730 80133030 8CAF0000 */  lw    $t7, ($a1)
/* 0C9734 80133034 8CB80004 */  lw    $t8, 4($a1)
/* 0C9738 80133038 8CB90008 */  lw    $t9, 8($a1)
/* 0C973C 8013303C 8CAE000C */  lw    $t6, 0xc($a1)
/* 0C9740 80133040 AC8F0000 */  sw    $t7, ($a0)
/* 0C9744 80133044 AC980004 */  sw    $t8, 4($a0)
/* 0C9748 80133048 AC990008 */  sw    $t9, 8($a0)
/* 0C974C 8013304C AC8E000C */  sw    $t6, 0xc($a0)
/* 0C9750 80133050 24A50010 */  addiu $a1, $a1, 0x10
/* 0C9754 80133054 14B4FFF6 */  bne   $a1, $s4, .L80133030
/* 0C9758 80133058 24840010 */   addiu $a0, $a0, 0x10
/* 0C975C 8013305C 3C02DA38 */  lui   $v0, 0xda38
/* 0C9760 80133060 34420002 */  ori   $v0, $v0, 2
/* 0C9764 80133064 3C040001 */  lui   $a0, 1
/* 0C9768 80133068 34841630 */  ori   $a0, $a0, 0x1630
/* 0C976C 8013306C 3C078007 */  lui   $a3, 0x8007
/* 0C9770 80133070 24E741F0 */  addiu $a3, $a3, 0x41f0
/* 0C9774 80133074 8E280000 */  lw    $t0, ($s1)
/* 0C9778 80133078 94E50000 */  lhu   $a1, ($a3)
/* 0C977C 8013307C 0100302D */  daddu $a2, $t0, $zero
/* 0C9780 80133080 25080008 */  addiu $t0, $t0, 8
/* 0C9784 80133084 30A3FFFF */  andi  $v1, $a1, 0xffff
/* 0C9788 80133088 00031980 */  sll   $v1, $v1, 6
/* 0C978C 8013308C 00641821 */  addu  $v1, $v1, $a0
/* 0C9790 80133090 AE280000 */  sw    $t0, ($s1)
/* 0C9794 80133094 ACC20000 */  sw    $v0, ($a2)
/* 0C9798 80133098 3C02800A */  lui   $v0, 0x800a
/* 0C979C 8013309C 8C42A674 */  lw    $v0, -0x598c($v0)
/* 0C97A0 801330A0 3C048015 */  lui   $a0, 0x8015
/* 0C97A4 801330A4 8C841328 */  lw    $a0, 0x1328($a0)
/* 0C97A8 801330A8 00431021 */  addu  $v0, $v0, $v1
/* 0C97AC 801330AC ACC20004 */  sw    $v0, 4($a2)
/* 0C97B0 801330B0 94820000 */  lhu   $v0, ($a0)
/* 0C97B4 801330B4 24A50001 */  addiu $a1, $a1, 1
/* 0C97B8 801330B8 10400008 */  beqz  $v0, .L801330DC
/* 0C97BC 801330BC A4E50000 */   sh    $a1, ($a3)
/* 0C97C0 801330C0 25020008 */  addiu $v0, $t0, 8
/* 0C97C4 801330C4 3C0FDE00 */  lui   $t7, 0xde00
/* 0C97C8 801330C8 AE220000 */  sw    $v0, ($s1)
/* 0C97CC 801330CC 3C028015 */  lui   $v0, 0x8015
/* 0C97D0 801330D0 2442BBD8 */  addiu $v0, $v0, -0x4428
/* 0C97D4 801330D4 0804CC3D */  j     .L801330F4
/* 0C97D8 801330D8 AD0F0000 */   sw    $t7, ($t0)

.L801330DC:
/* 0C97DC 801330DC 25020008 */  addiu $v0, $t0, 8
/* 0C97E0 801330E0 3C18DE00 */  lui   $t8, 0xde00
/* 0C97E4 801330E4 AE220000 */  sw    $v0, ($s1)
/* 0C97E8 801330E8 3C028015 */  lui   $v0, 0x8015
/* 0C97EC 801330EC 2442B870 */  addiu $v0, $v0, -0x4790
/* 0C97F0 801330F0 AD180000 */  sw    $t8, ($t0)
.L801330F4:
/* 0C97F4 801330F4 AD020004 */  sw    $v0, 4($t0)
/* 0C97F8 801330F8 3C04D9FD */  lui   $a0, 0xd9fd
/* 0C97FC 801330FC 3484FFFF */  ori   $a0, $a0, 0xffff
/* 0C9800 80133100 241000FF */  addiu $s0, $zero, 0xff
/* 0C9804 80133104 8E230000 */  lw    $v1, ($s1)
/* 0C9808 80133108 3C0E0808 */  lui   $t6, 0x808
/* 0C980C 8013310C 0060102D */  daddu $v0, $v1, $zero
/* 0C9810 80133110 24630008 */  addiu $v1, $v1, 8
/* 0C9814 80133114 AE230000 */  sw    $v1, ($s1)
/* 0C9818 80133118 AC440000 */  sw    $a0, ($v0)
/* 0C981C 8013311C AC400004 */  sw    $zero, 4($v0)
/* 0C9820 80133120 3C19DE00 */  lui   $t9, 0xde00
/* 0C9824 80133124 3C028015 */  lui   $v0, 0x8015
/* 0C9828 80133128 2442C620 */  addiu $v0, $v0, -0x39e0
/* 0C982C 8013312C AC790000 */  sw    $t9, ($v1)
/* 0C9830 80133130 AC620004 */  sw    $v0, 4($v1)
/* 0C9834 80133134 8E440000 */  lw    $a0, ($s2)
/* 0C9838 80133138 24630008 */  addiu $v1, $v1, 8
/* 0C983C 8013313C 008E1024 */  and   $v0, $a0, $t6
/* 0C9840 80133140 10400052 */  beqz  $v0, .L8013328C
/* 0C9844 80133144 AE230000 */   sw    $v1, ($s1)
/* 0C9848 80133148 3C020008 */  lui   $v0, 8
/* 0C984C 8013314C 00821024 */  and   $v0, $a0, $v0
/* 0C9850 80133150 1040000C */  beqz  $v0, .L80133184
/* 0C9854 80133154 3C038080 */   lui   $v1, 0x8080
/* 0C9858 80133158 9242002F */  lbu   $v0, 0x2f($s2)
/* 0C985C 8013315C 00500018 */  mult  $v0, $s0
/* 0C9860 80133160 00001012 */  mflo  $v0
/* 0C9864 80133164 34638081 */  ori   $v1, $v1, 0x8081
/* 0C9868 80133168 00000000 */  nop   
/* 0C986C 8013316C 00430018 */  mult  $v0, $v1
/* 0C9870 80133170 00001810 */  mfhi  $v1
/* 0C9874 80133174 00621821 */  addu  $v1, $v1, $v0
/* 0C9878 80133178 000319C3 */  sra   $v1, $v1, 7
/* 0C987C 8013317C 000217C3 */  sra   $v0, $v0, 0x1f
/* 0C9880 80133180 00628023 */  subu  $s0, $v1, $v0
.L80133184:
/* 0C9884 80133184 3C020800 */  lui   $v0, 0x800
/* 0C9888 80133188 00821024 */  and   $v0, $a0, $v0
/* 0C988C 8013318C 10400012 */  beqz  $v0, .L801331D8
/* 0C9890 80133190 27A40118 */   addiu $a0, $sp, 0x118
/* 0C9894 80133194 27A50119 */  addiu $a1, $sp, 0x119
/* 0C9898 80133198 27A6011A */  addiu $a2, $sp, 0x11a
/* 0C989C 8013319C 0C046FA0 */  jal   func_8011BE80
/* 0C98A0 801331A0 27A7011B */   addiu $a3, $sp, 0x11b
/* 0C98A4 801331A4 93A3011B */  lbu   $v1, 0x11b($sp)
/* 0C98A8 801331A8 240200FF */  addiu $v0, $zero, 0xff
/* 0C98AC 801331AC 00431023 */  subu  $v0, $v0, $v1
/* 0C98B0 801331B0 02020018 */  mult  $s0, $v0
/* 0C98B4 801331B4 00001012 */  mflo  $v0
/* 0C98B8 801331B8 3C038080 */  lui   $v1, 0x8080
/* 0C98BC 801331BC 34638081 */  ori   $v1, $v1, 0x8081
/* 0C98C0 801331C0 00430018 */  mult  $v0, $v1
/* 0C98C4 801331C4 00001810 */  mfhi  $v1
/* 0C98C8 801331C8 00621821 */  addu  $v1, $v1, $v0
/* 0C98CC 801331CC 000319C3 */  sra   $v1, $v1, 7
/* 0C98D0 801331D0 000217C3 */  sra   $v0, $v0, 0x1f
/* 0C98D4 801331D4 00628023 */  subu  $s0, $v1, $v0
.L801331D8:
/* 0C98D8 801331D8 8E420000 */  lw    $v0, ($s2)
/* 0C98DC 801331DC 3C0E0808 */  lui   $t6, 0x808
/* 0C98E0 801331E0 004E1024 */  and   $v0, $v0, $t6
/* 0C98E4 801331E4 10400029 */  beqz  $v0, .L8013328C
/* 0C98E8 801331E8 00000000 */   nop   
/* 0C98EC 801331EC 3C028015 */  lui   $v0, 0x8015
/* 0C98F0 801331F0 8C421328 */  lw    $v0, 0x1328($v0)
/* 0C98F4 801331F4 94420000 */  lhu   $v0, ($v0)
/* 0C98F8 801331F8 1040000B */  beqz  $v0, .L80133228
/* 0C98FC 801331FC 3C05E200 */   lui   $a1, 0xe200
/* 0C9900 80133200 34A5001C */  ori   $a1, $a1, 0x1c
/* 0C9904 80133204 3C040C18 */  lui   $a0, 0xc18
/* 0C9908 80133208 8E220000 */  lw    $v0, ($s1)
/* 0C990C 8013320C 34844348 */  ori   $a0, $a0, 0x4348
/* 0C9910 80133210 0040182D */  daddu $v1, $v0, $zero
/* 0C9914 80133214 24420008 */  addiu $v0, $v0, 8
/* 0C9918 80133218 AE220000 */  sw    $v0, ($s1)
/* 0C991C 8013321C AC650000 */  sw    $a1, ($v1)
/* 0C9920 80133220 0804CCA3 */  j     .L8013328C
/* 0C9924 80133224 AC640004 */   sw    $a0, 4($v1)

.L80133228:
/* 0C9928 80133228 3C06E200 */  lui   $a2, 0xe200
/* 0C992C 8013322C 34C6001C */  ori   $a2, $a2, 0x1c
/* 0C9930 80133230 3C040050 */  lui   $a0, 0x50
/* 0C9934 80133234 34844348 */  ori   $a0, $a0, 0x4348
/* 0C9938 80133238 3C07FC30 */  lui   $a3, 0xfc30
/* 0C993C 8013323C 34E7B261 */  ori   $a3, $a3, 0xb261
/* 0C9940 80133240 3C05FF2F */  lui   $a1, 0xff2f
/* 0C9944 80133244 8E230000 */  lw    $v1, ($s1)
/* 0C9948 80133248 34A5FFFF */  ori   $a1, $a1, 0xffff
/* 0C994C 8013324C 0060102D */  daddu $v0, $v1, $zero
/* 0C9950 80133250 24630008 */  addiu $v1, $v1, 8
/* 0C9954 80133254 AE230000 */  sw    $v1, ($s1)
/* 0C9958 80133258 AC460000 */  sw    $a2, ($v0)
/* 0C995C 8013325C AC440004 */  sw    $a0, 4($v0)
/* 0C9960 80133260 24620008 */  addiu $v0, $v1, 8
/* 0C9964 80133264 AE220000 */  sw    $v0, ($s1)
/* 0C9968 80133268 24620010 */  addiu $v0, $v1, 0x10
/* 0C996C 8013326C AC670000 */  sw    $a3, ($v1)
/* 0C9970 80133270 AC650004 */  sw    $a1, 4($v1)
/* 0C9974 80133274 AE220000 */  sw    $v0, ($s1)
/* 0C9978 80133278 3C02FA00 */  lui   $v0, 0xfa00
/* 0C997C 8013327C AC620008 */  sw    $v0, 8($v1)
/* 0C9980 80133280 2402FF00 */  addiu $v0, $zero, -0x100
/* 0C9984 80133284 02021025 */  or    $v0, $s0, $v0
/* 0C9988 80133288 AC62000C */  sw    $v0, 0xc($v1)
.L8013328C:
/* 0C998C 8013328C 8E420000 */  lw    $v0, ($s2)
/* 0C9990 80133290 3C030004 */  lui   $v1, 4
/* 0C9994 80133294 00431024 */  and   $v0, $v0, $v1
/* 0C9998 80133298 144000C4 */  bnez  $v0, .L801335AC
/* 0C999C 8013329C 3C05F500 */   lui   $a1, 0xf500
/* 0C99A0 801332A0 34A50100 */  ori   $a1, $a1, 0x100
/* 0C99A4 801332A4 3C060703 */  lui   $a2, 0x703
/* 0C99A8 801332A8 34C6C000 */  ori   $a2, $a2, 0xc000
/* 0C99AC 801332AC 8E2D0000 */  lw    $t5, ($s1)
/* 0C99B0 801332B0 3C02FD10 */  lui   $v0, 0xfd10
/* 0C99B4 801332B4 01A0202D */  daddu $a0, $t5, $zero
/* 0C99B8 801332B8 25AD0008 */  addiu $t5, $t5, 8
/* 0C99BC 801332BC AE2D0000 */  sw    $t5, ($s1)
/* 0C99C0 801332C0 AC820000 */  sw    $v0, ($a0)
/* 0C99C4 801332C4 9243002D */  lbu   $v1, 0x2d($s2)
/* 0C99C8 801332C8 25A20008 */  addiu $v0, $t5, 8
/* 0C99CC 801332CC AE220000 */  sw    $v0, ($s1)
/* 0C99D0 801332D0 25A20010 */  addiu $v0, $t5, 0x10
/* 0C99D4 801332D4 AE220000 */  sw    $v0, ($s1)
/* 0C99D8 801332D8 25A20018 */  addiu $v0, $t5, 0x18
/* 0C99DC 801332DC AE220000 */  sw    $v0, ($s1)
/* 0C99E0 801332E0 3C028015 */  lui   $v0, 0x8015
/* 0C99E4 801332E4 8C4212D0 */  lw    $v0, 0x12d0($v0)
/* 0C99E8 801332E8 000318C0 */  sll   $v1, $v1, 3
/* 0C99EC 801332EC 00621821 */  addu  $v1, $v1, $v0
/* 0C99F0 801332F0 8C630004 */  lw    $v1, 4($v1)
/* 0C99F4 801332F4 25A20020 */  addiu $v0, $t5, 0x20
/* 0C99F8 801332F8 AE220000 */  sw    $v0, ($s1)
/* 0C99FC 801332FC AC830004 */  sw    $v1, 4($a0)
/* 0C9A00 80133300 3C038015 */  lui   $v1, 0x8015
/* 0C9A04 80133304 8C631328 */  lw    $v1, 0x1328($v1)
/* 0C9A08 80133308 3C02E800 */  lui   $v0, 0xe800
/* 0C9A0C 8013330C ADA20000 */  sw    $v0, ($t5)
/* 0C9A10 80133310 3C020700 */  lui   $v0, 0x700
/* 0C9A14 80133314 ADA2000C */  sw    $v0, 0xc($t5)
/* 0C9A18 80133318 3C02F000 */  lui   $v0, 0xf000
/* 0C9A1C 8013331C ADA00004 */  sw    $zero, 4($t5)
/* 0C9A20 80133320 ADA50008 */  sw    $a1, 8($t5)
/* 0C9A24 80133324 ADBE0010 */  sw    $fp, 0x10($t5)
/* 0C9A28 80133328 ADA00014 */  sw    $zero, 0x14($t5)
/* 0C9A2C 8013332C ADA20018 */  sw    $v0, 0x18($t5)
/* 0C9A30 80133330 ADA6001C */  sw    $a2, 0x1c($t5)
/* 0C9A34 80133334 ADB70020 */  sw    $s7, 0x20($t5)
/* 0C9A38 80133338 ADA00024 */  sw    $zero, 0x24($t5)
/* 0C9A3C 8013333C 94630000 */  lhu   $v1, ($v1)
/* 0C9A40 80133340 25A20028 */  addiu $v0, $t5, 0x28
/* 0C9A44 80133344 1060005F */  beqz  $v1, .L801334C4
/* 0C9A48 80133348 AE220000 */   sw    $v0, ($s1)
/* 0C9A4C 8013334C 3C03FD48 */  lui   $v1, 0xfd48
/* 0C9A50 80133350 3463000B */  ori   $v1, $v1, 0xb
/* 0C9A54 80133354 3C05F548 */  lui   $a1, 0xf548
/* 0C9A58 80133358 34A50400 */  ori   $a1, $a1, 0x400
/* 0C9A5C 8013335C 3C04070A */  lui   $a0, 0x70a
/* 0C9A60 80133360 34840280 */  ori   $a0, $a0, 0x280
/* 0C9A64 80133364 3C070702 */  lui   $a3, 0x702
/* 0C9A68 80133368 34E7E05C */  ori   $a3, $a3, 0xe05c
/* 0C9A6C 8013336C 3C0B010A */  lui   $t3, 0x10a
/* 0C9A70 80133370 356B0280 */  ori   $t3, $t3, 0x280
/* 0C9A74 80133374 3C0AF240 */  lui   $t2, 0xf240
/* 0C9A78 80133378 354A0400 */  ori   $t2, $t2, 0x400
/* 0C9A7C 8013337C 3C080145 */  lui   $t0, 0x145
/* 0C9A80 80133380 3508C45C */  ori   $t0, $t0, 0xc45c
/* 0C9A84 80133384 3C09001A */  lui   $t1, 0x1a
/* 0C9A88 80133388 35290280 */  ori   $t1, $t1, 0x280
/* 0C9A8C 8013338C 3C06F510 */  lui   $a2, 0xf510
/* 0C9A90 80133390 34C60900 */  ori   $a2, $a2, 0x900
/* 0C9A94 80133394 3C0C020F */  lui   $t4, 0x20f
/* 0C9A98 80133398 358CC000 */  ori   $t4, $t4, 0xc000
/* 0C9A9C 8013339C 25A20030 */  addiu $v0, $t5, 0x30
/* 0C9AA0 801333A0 AE220000 */  sw    $v0, ($s1)
/* 0C9AA4 801333A4 ADA30028 */  sw    $v1, 0x28($t5)
/* 0C9AA8 801333A8 9243002C */  lbu   $v1, 0x2c($s2)
/* 0C9AAC 801333AC 25A20038 */  addiu $v0, $t5, 0x38
/* 0C9AB0 801333B0 AE220000 */  sw    $v0, ($s1)
/* 0C9AB4 801333B4 25A20040 */  addiu $v0, $t5, 0x40
/* 0C9AB8 801333B8 AE220000 */  sw    $v0, ($s1)
/* 0C9ABC 801333BC 25A20048 */  addiu $v0, $t5, 0x48
/* 0C9AC0 801333C0 AE220000 */  sw    $v0, ($s1)
/* 0C9AC4 801333C4 25A20050 */  addiu $v0, $t5, 0x50
/* 0C9AC8 801333C8 AE220000 */  sw    $v0, ($s1)
/* 0C9ACC 801333CC 25A20058 */  addiu $v0, $t5, 0x58
/* 0C9AD0 801333D0 AE220000 */  sw    $v0, ($s1)
/* 0C9AD4 801333D4 25A20060 */  addiu $v0, $t5, 0x60
/* 0C9AD8 801333D8 AE220000 */  sw    $v0, ($s1)
/* 0C9ADC 801333DC 25A20068 */  addiu $v0, $t5, 0x68
/* 0C9AE0 801333E0 3C0F0808 */  lui   $t7, 0x808
/* 0C9AE4 801333E4 AE220000 */  sw    $v0, ($s1)
/* 0C9AE8 801333E8 3C028015 */  lui   $v0, 0x8015
/* 0C9AEC 801333EC 8C4212C8 */  lw    $v0, 0x12c8($v0)
/* 0C9AF0 801333F0 000318C0 */  sll   $v1, $v1, 3
/* 0C9AF4 801333F4 00621821 */  addu  $v1, $v1, $v0
/* 0C9AF8 801333F8 8C630004 */  lw    $v1, 4($v1)
/* 0C9AFC 801333FC 25A20070 */  addiu $v0, $t5, 0x70
/* 0C9B00 80133400 AE220000 */  sw    $v0, ($s1)
/* 0C9B04 80133404 3C02F400 */  lui   $v0, 0xf400
/* 0C9B08 80133408 ADA20040 */  sw    $v0, 0x40($t5)
/* 0C9B0C 8013340C 3C020200 */  lui   $v0, 0x200
/* 0C9B10 80133410 ADA2006C */  sw    $v0, 0x6c($t5)
/* 0C9B14 80133414 3C02F200 */  lui   $v0, 0xf200
/* 0C9B18 80133418 ADA50030 */  sw    $a1, 0x30($t5)
/* 0C9B1C 8013341C ADA40034 */  sw    $a0, 0x34($t5)
/* 0C9B20 80133420 ADBE0038 */  sw    $fp, 0x38($t5)
/* 0C9B24 80133424 ADA0003C */  sw    $zero, 0x3c($t5)
/* 0C9B28 80133428 ADA70044 */  sw    $a3, 0x44($t5)
/* 0C9B2C 8013342C ADB70048 */  sw    $s7, 0x48($t5)
/* 0C9B30 80133430 ADA0004C */  sw    $zero, 0x4c($t5)
/* 0C9B34 80133434 ADB30050 */  sw    $s3, 0x50($t5)
/* 0C9B38 80133438 ADAB0054 */  sw    $t3, 0x54($t5)
/* 0C9B3C 8013343C ADAA0058 */  sw    $t2, 0x58($t5)
/* 0C9B40 80133440 ADA8005C */  sw    $t0, 0x5c($t5)
/* 0C9B44 80133444 ADB30060 */  sw    $s3, 0x60($t5)
/* 0C9B48 80133448 ADA90064 */  sw    $t1, 0x64($t5)
/* 0C9B4C 8013344C ADA60068 */  sw    $a2, 0x68($t5)
/* 0C9B50 80133450 ADA20070 */  sw    $v0, 0x70($t5)
/* 0C9B54 80133454 ADAC0074 */  sw    $t4, 0x74($t5)
/* 0C9B58 80133458 ADA3002C */  sw    $v1, 0x2c($t5)
/* 0C9B5C 8013345C 8E430000 */  lw    $v1, ($s2)
/* 0C9B60 80133460 25A20078 */  addiu $v0, $t5, 0x78
/* 0C9B64 80133464 006F1824 */  and   $v1, $v1, $t7
/* 0C9B68 80133468 1060000B */  beqz  $v1, .L80133498
/* 0C9B6C 8013346C AE220000 */   sw    $v0, ($s1)
/* 0C9B70 80133470 27A40058 */  addiu $a0, $sp, 0x58
/* 0C9B74 80133474 0000282D */  daddu $a1, $zero, $zero
/* 0C9B78 80133478 00A0302D */  daddu $a2, $a1, $zero
/* 0C9B7C 8013347C 24070018 */  addiu $a3, $zero, 0x18
/* 0C9B80 80133480 00E0102D */  daddu $v0, $a3, $zero
/* 0C9B84 80133484 AFA20010 */  sw    $v0, 0x10($sp)
/* 0C9B88 80133488 0C052479 */  jal   func_801491E4
/* 0C9B8C 8013348C AFB00014 */   sw    $s0, 0x14($sp)
/* 0C9B90 80133490 0804CD62 */  j     .L80133588
/* 0C9B94 80133494 00000000 */   nop   

.L80133498:
/* 0C9B98 80133498 27A40058 */  addiu $a0, $sp, 0x58
/* 0C9B9C 8013349C 0000282D */  daddu $a1, $zero, $zero
/* 0C9BA0 801334A0 00A0302D */  daddu $a2, $a1, $zero
/* 0C9BA4 801334A4 24070018 */  addiu $a3, $zero, 0x18
/* 0C9BA8 801334A8 00E0102D */  daddu $v0, $a3, $zero
/* 0C9BAC 801334AC AFA20010 */  sw    $v0, 0x10($sp)
/* 0C9BB0 801334B0 240200FF */  addiu $v0, $zero, 0xff
/* 0C9BB4 801334B4 0C052479 */  jal   func_801491E4
/* 0C9BB8 801334B8 AFA20014 */   sw    $v0, 0x14($sp)
/* 0C9BBC 801334BC 0804CD62 */  j     .L80133588
/* 0C9BC0 801334C0 00000000 */   nop   

.L801334C4:
/* 0C9BC4 801334C4 3C03FD48 */  lui   $v1, 0xfd48
/* 0C9BC8 801334C8 3463000B */  ori   $v1, $v1, 0xb
/* 0C9BCC 801334CC 3C05F548 */  lui   $a1, 0xf548
/* 0C9BD0 801334D0 34A50400 */  ori   $a1, $a1, 0x400
/* 0C9BD4 801334D4 3C04070A */  lui   $a0, 0x70a
/* 0C9BD8 801334D8 34840280 */  ori   $a0, $a0, 0x280
/* 0C9BDC 801334DC 3C060702 */  lui   $a2, 0x702
/* 0C9BE0 801334E0 34C6E05C */  ori   $a2, $a2, 0xe05c
/* 0C9BE4 801334E4 3C09000A */  lui   $t1, 0xa
/* 0C9BE8 801334E8 35290280 */  ori   $t1, $t1, 0x280
/* 0C9BEC 801334EC 3C08F240 */  lui   $t0, 0xf240
/* 0C9BF0 801334F0 35080400 */  ori   $t0, $t0, 0x400
/* 0C9BF4 801334F4 3C070045 */  lui   $a3, 0x45
/* 0C9BF8 801334F8 34E7C45C */  ori   $a3, $a3, 0xc45c
/* 0C9BFC 801334FC 25A20030 */  addiu $v0, $t5, 0x30
/* 0C9C00 80133500 AE220000 */  sw    $v0, ($s1)
/* 0C9C04 80133504 ADA30028 */  sw    $v1, 0x28($t5)
/* 0C9C08 80133508 9243002C */  lbu   $v1, 0x2c($s2)
/* 0C9C0C 8013350C 25A20038 */  addiu $v0, $t5, 0x38
/* 0C9C10 80133510 AE220000 */  sw    $v0, ($s1)
/* 0C9C14 80133514 25A20040 */  addiu $v0, $t5, 0x40
/* 0C9C18 80133518 AE220000 */  sw    $v0, ($s1)
/* 0C9C1C 8013351C 25A20048 */  addiu $v0, $t5, 0x48
/* 0C9C20 80133520 AE220000 */  sw    $v0, ($s1)
/* 0C9C24 80133524 25A20050 */  addiu $v0, $t5, 0x50
/* 0C9C28 80133528 AE220000 */  sw    $v0, ($s1)
/* 0C9C2C 8013352C 25A20058 */  addiu $v0, $t5, 0x58
/* 0C9C30 80133530 AE220000 */  sw    $v0, ($s1)
/* 0C9C34 80133534 3C028015 */  lui   $v0, 0x8015
/* 0C9C38 80133538 8C4212C8 */  lw    $v0, 0x12c8($v0)
/* 0C9C3C 8013353C 000318C0 */  sll   $v1, $v1, 3
/* 0C9C40 80133540 00621821 */  addu  $v1, $v1, $v0
/* 0C9C44 80133544 8C630004 */  lw    $v1, 4($v1)
/* 0C9C48 80133548 25A20060 */  addiu $v0, $t5, 0x60
/* 0C9C4C 8013354C AE220000 */  sw    $v0, ($s1)
/* 0C9C50 80133550 3C02F400 */  lui   $v0, 0xf400
/* 0C9C54 80133554 ADA50030 */  sw    $a1, 0x30($t5)
/* 0C9C58 80133558 ADA40034 */  sw    $a0, 0x34($t5)
/* 0C9C5C 8013355C ADBE0038 */  sw    $fp, 0x38($t5)
/* 0C9C60 80133560 ADA0003C */  sw    $zero, 0x3c($t5)
/* 0C9C64 80133564 ADA20040 */  sw    $v0, 0x40($t5)
/* 0C9C68 80133568 ADA60044 */  sw    $a2, 0x44($t5)
/* 0C9C6C 8013356C ADB70048 */  sw    $s7, 0x48($t5)
/* 0C9C70 80133570 ADA0004C */  sw    $zero, 0x4c($t5)
/* 0C9C74 80133574 ADB30050 */  sw    $s3, 0x50($t5)
/* 0C9C78 80133578 ADA90054 */  sw    $t1, 0x54($t5)
/* 0C9C7C 8013357C ADA80058 */  sw    $t0, 0x58($t5)
/* 0C9C80 80133580 ADA7005C */  sw    $a3, 0x5c($t5)
/* 0C9C84 80133584 ADA3002C */  sw    $v1, 0x2c($t5)
.L80133588:
/* 0C9C88 80133588 8E220000 */  lw    $v0, ($s1)
/* 0C9C8C 8013358C 0040182D */  daddu $v1, $v0, $zero
/* 0C9C90 80133590 24420008 */  addiu $v0, $v0, 8
/* 0C9C94 80133594 3C18DE00 */  lui   $t8, 0xde00
/* 0C9C98 80133598 AE220000 */  sw    $v0, ($s1)
/* 0C9C9C 8013359C 3C028015 */  lui   $v0, 0x8015
/* 0C9CA0 801335A0 2442C678 */  addiu $v0, $v0, -0x3988
/* 0C9CA4 801335A4 0804CE2D */  j     .L801338B4
/* 0C9CA8 801335A8 AC780000 */   sw    $t8, ($v1)

.L801335AC:
/* 0C9CAC 801335AC 34A50100 */  ori   $a1, $a1, 0x100
/* 0C9CB0 801335B0 3C060703 */  lui   $a2, 0x703
/* 0C9CB4 801335B4 34C6C000 */  ori   $a2, $a2, 0xc000
/* 0C9CB8 801335B8 8E2D0000 */  lw    $t5, ($s1)
/* 0C9CBC 801335BC 3C02FD10 */  lui   $v0, 0xfd10
/* 0C9CC0 801335C0 01A0202D */  daddu $a0, $t5, $zero
/* 0C9CC4 801335C4 25AD0008 */  addiu $t5, $t5, 8
/* 0C9CC8 801335C8 AE2D0000 */  sw    $t5, ($s1)
/* 0C9CCC 801335CC AC820000 */  sw    $v0, ($a0)
/* 0C9CD0 801335D0 9243002D */  lbu   $v1, 0x2d($s2)
/* 0C9CD4 801335D4 25A20008 */  addiu $v0, $t5, 8
/* 0C9CD8 801335D8 AE220000 */  sw    $v0, ($s1)
/* 0C9CDC 801335DC 25A20010 */  addiu $v0, $t5, 0x10
/* 0C9CE0 801335E0 AE220000 */  sw    $v0, ($s1)
/* 0C9CE4 801335E4 25A20018 */  addiu $v0, $t5, 0x18
/* 0C9CE8 801335E8 AE220000 */  sw    $v0, ($s1)
/* 0C9CEC 801335EC 3C028015 */  lui   $v0, 0x8015
/* 0C9CF0 801335F0 8C4212D0 */  lw    $v0, 0x12d0($v0)
/* 0C9CF4 801335F4 000318C0 */  sll   $v1, $v1, 3
/* 0C9CF8 801335F8 00621821 */  addu  $v1, $v1, $v0
/* 0C9CFC 801335FC 8C630004 */  lw    $v1, 4($v1)
/* 0C9D00 80133600 25A20020 */  addiu $v0, $t5, 0x20
/* 0C9D04 80133604 AE220000 */  sw    $v0, ($s1)
/* 0C9D08 80133608 AC830004 */  sw    $v1, 4($a0)
/* 0C9D0C 8013360C 3C038015 */  lui   $v1, 0x8015
/* 0C9D10 80133610 8C631328 */  lw    $v1, 0x1328($v1)
/* 0C9D14 80133614 3C02E800 */  lui   $v0, 0xe800
/* 0C9D18 80133618 ADA20000 */  sw    $v0, ($t5)
/* 0C9D1C 8013361C 3C020700 */  lui   $v0, 0x700
/* 0C9D20 80133620 ADA2000C */  sw    $v0, 0xc($t5)
/* 0C9D24 80133624 3C02F000 */  lui   $v0, 0xf000
/* 0C9D28 80133628 ADA00004 */  sw    $zero, 4($t5)
/* 0C9D2C 8013362C ADA50008 */  sw    $a1, 8($t5)
/* 0C9D30 80133630 ADBE0010 */  sw    $fp, 0x10($t5)
/* 0C9D34 80133634 ADA00014 */  sw    $zero, 0x14($t5)
/* 0C9D38 80133638 ADA20018 */  sw    $v0, 0x18($t5)
/* 0C9D3C 8013363C ADA6001C */  sw    $a2, 0x1c($t5)
/* 0C9D40 80133640 ADB70020 */  sw    $s7, 0x20($t5)
/* 0C9D44 80133644 ADA00024 */  sw    $zero, 0x24($t5)
/* 0C9D48 80133648 94630000 */  lhu   $v1, ($v1)
/* 0C9D4C 8013364C 25A20028 */  addiu $v0, $t5, 0x28
/* 0C9D50 80133650 1060005F */  beqz  $v1, .L801337D0
/* 0C9D54 80133654 AE220000 */   sw    $v0, ($s1)
/* 0C9D58 80133658 3C03FD48 */  lui   $v1, 0xfd48
/* 0C9D5C 8013365C 3463000F */  ori   $v1, $v1, 0xf
/* 0C9D60 80133660 3C05F548 */  lui   $a1, 0xf548
/* 0C9D64 80133664 34A50400 */  ori   $a1, $a1, 0x400
/* 0C9D68 80133668 3C04070A */  lui   $a0, 0x70a
/* 0C9D6C 8013366C 34840280 */  ori   $a0, $a0, 0x280
/* 0C9D70 80133670 3C070703 */  lui   $a3, 0x703
/* 0C9D74 80133674 34E7E07C */  ori   $a3, $a3, 0xe07c
/* 0C9D78 80133678 3C0B010A */  lui   $t3, 0x10a
/* 0C9D7C 8013367C 356B0280 */  ori   $t3, $t3, 0x280
/* 0C9D80 80133680 3C0AF240 */  lui   $t2, 0xf240
/* 0C9D84 80133684 354A0400 */  ori   $t2, $t2, 0x400
/* 0C9D88 80133688 3C080147 */  lui   $t0, 0x147
/* 0C9D8C 8013368C 3508C47C */  ori   $t0, $t0, 0xc47c
/* 0C9D90 80133690 3C09001A */  lui   $t1, 0x1a
/* 0C9D94 80133694 35290280 */  ori   $t1, $t1, 0x280
/* 0C9D98 80133698 3C06F510 */  lui   $a2, 0xf510
/* 0C9D9C 8013369C 34C60900 */  ori   $a2, $a2, 0x900
/* 0C9DA0 801336A0 3C0C020F */  lui   $t4, 0x20f
/* 0C9DA4 801336A4 358CC000 */  ori   $t4, $t4, 0xc000
/* 0C9DA8 801336A8 25A20030 */  addiu $v0, $t5, 0x30
/* 0C9DAC 801336AC AE220000 */  sw    $v0, ($s1)
/* 0C9DB0 801336B0 ADA30028 */  sw    $v1, 0x28($t5)
/* 0C9DB4 801336B4 9243002C */  lbu   $v1, 0x2c($s2)
/* 0C9DB8 801336B8 25A20038 */  addiu $v0, $t5, 0x38
/* 0C9DBC 801336BC AE220000 */  sw    $v0, ($s1)
/* 0C9DC0 801336C0 25A20040 */  addiu $v0, $t5, 0x40
/* 0C9DC4 801336C4 AE220000 */  sw    $v0, ($s1)
/* 0C9DC8 801336C8 25A20048 */  addiu $v0, $t5, 0x48
/* 0C9DCC 801336CC AE220000 */  sw    $v0, ($s1)
/* 0C9DD0 801336D0 25A20050 */  addiu $v0, $t5, 0x50
/* 0C9DD4 801336D4 AE220000 */  sw    $v0, ($s1)
/* 0C9DD8 801336D8 25A20058 */  addiu $v0, $t5, 0x58
/* 0C9DDC 801336DC AE220000 */  sw    $v0, ($s1)
/* 0C9DE0 801336E0 25A20060 */  addiu $v0, $t5, 0x60
/* 0C9DE4 801336E4 AE220000 */  sw    $v0, ($s1)
/* 0C9DE8 801336E8 25A20068 */  addiu $v0, $t5, 0x68
/* 0C9DEC 801336EC 3C190808 */  lui   $t9, 0x808
/* 0C9DF0 801336F0 AE220000 */  sw    $v0, ($s1)
/* 0C9DF4 801336F4 3C028015 */  lui   $v0, 0x8015
/* 0C9DF8 801336F8 8C4212C8 */  lw    $v0, 0x12c8($v0)
/* 0C9DFC 801336FC 000318C0 */  sll   $v1, $v1, 3
/* 0C9E00 80133700 00621821 */  addu  $v1, $v1, $v0
/* 0C9E04 80133704 8C630004 */  lw    $v1, 4($v1)
/* 0C9E08 80133708 25A20070 */  addiu $v0, $t5, 0x70
/* 0C9E0C 8013370C AE220000 */  sw    $v0, ($s1)
/* 0C9E10 80133710 3C02F400 */  lui   $v0, 0xf400
/* 0C9E14 80133714 ADA20040 */  sw    $v0, 0x40($t5)
/* 0C9E18 80133718 3C020200 */  lui   $v0, 0x200
/* 0C9E1C 8013371C ADA2006C */  sw    $v0, 0x6c($t5)
/* 0C9E20 80133720 3C02F200 */  lui   $v0, 0xf200
/* 0C9E24 80133724 ADA50030 */  sw    $a1, 0x30($t5)
/* 0C9E28 80133728 ADA40034 */  sw    $a0, 0x34($t5)
/* 0C9E2C 8013372C ADBE0038 */  sw    $fp, 0x38($t5)
/* 0C9E30 80133730 ADA0003C */  sw    $zero, 0x3c($t5)
/* 0C9E34 80133734 ADA70044 */  sw    $a3, 0x44($t5)
/* 0C9E38 80133738 ADB70048 */  sw    $s7, 0x48($t5)
/* 0C9E3C 8013373C ADA0004C */  sw    $zero, 0x4c($t5)
/* 0C9E40 80133740 ADB30050 */  sw    $s3, 0x50($t5)
/* 0C9E44 80133744 ADAB0054 */  sw    $t3, 0x54($t5)
/* 0C9E48 80133748 ADAA0058 */  sw    $t2, 0x58($t5)
/* 0C9E4C 8013374C ADA8005C */  sw    $t0, 0x5c($t5)
/* 0C9E50 80133750 ADB30060 */  sw    $s3, 0x60($t5)
/* 0C9E54 80133754 ADA90064 */  sw    $t1, 0x64($t5)
/* 0C9E58 80133758 ADA60068 */  sw    $a2, 0x68($t5)
/* 0C9E5C 8013375C ADA20070 */  sw    $v0, 0x70($t5)
/* 0C9E60 80133760 ADAC0074 */  sw    $t4, 0x74($t5)
/* 0C9E64 80133764 ADA3002C */  sw    $v1, 0x2c($t5)
/* 0C9E68 80133768 8E430000 */  lw    $v1, ($s2)
/* 0C9E6C 8013376C 25A20078 */  addiu $v0, $t5, 0x78
/* 0C9E70 80133770 00791824 */  and   $v1, $v1, $t9
/* 0C9E74 80133774 1060000B */  beqz  $v1, .L801337A4
/* 0C9E78 80133778 AE220000 */   sw    $v0, ($s1)
/* 0C9E7C 8013377C 27A40058 */  addiu $a0, $sp, 0x58
/* 0C9E80 80133780 0000282D */  daddu $a1, $zero, $zero
/* 0C9E84 80133784 00A0302D */  daddu $a2, $a1, $zero
/* 0C9E88 80133788 24070020 */  addiu $a3, $zero, 0x20
/* 0C9E8C 8013378C 00E0102D */  daddu $v0, $a3, $zero
/* 0C9E90 80133790 AFA20010 */  sw    $v0, 0x10($sp)
/* 0C9E94 80133794 0C052479 */  jal   func_801491E4
/* 0C9E98 80133798 AFB00014 */   sw    $s0, 0x14($sp)
/* 0C9E9C 8013379C 0804CE25 */  j     .L80133894
/* 0C9EA0 801337A0 00000000 */   nop   

.L801337A4:
/* 0C9EA4 801337A4 27A40058 */  addiu $a0, $sp, 0x58
/* 0C9EA8 801337A8 0000282D */  daddu $a1, $zero, $zero
/* 0C9EAC 801337AC 00A0302D */  daddu $a2, $a1, $zero
/* 0C9EB0 801337B0 24070020 */  addiu $a3, $zero, 0x20
/* 0C9EB4 801337B4 00E0102D */  daddu $v0, $a3, $zero
/* 0C9EB8 801337B8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0C9EBC 801337BC 240200FF */  addiu $v0, $zero, 0xff
/* 0C9EC0 801337C0 0C052479 */  jal   func_801491E4
/* 0C9EC4 801337C4 AFA20014 */   sw    $v0, 0x14($sp)
/* 0C9EC8 801337C8 0804CE25 */  j     .L80133894
/* 0C9ECC 801337CC 00000000 */   nop   

.L801337D0:
/* 0C9ED0 801337D0 3C03FD48 */  lui   $v1, 0xfd48
/* 0C9ED4 801337D4 3463000F */  ori   $v1, $v1, 0xf
/* 0C9ED8 801337D8 3C05F548 */  lui   $a1, 0xf548
/* 0C9EDC 801337DC 34A50400 */  ori   $a1, $a1, 0x400
/* 0C9EE0 801337E0 3C04070A */  lui   $a0, 0x70a
/* 0C9EE4 801337E4 34840280 */  ori   $a0, $a0, 0x280
/* 0C9EE8 801337E8 3C060703 */  lui   $a2, 0x703
/* 0C9EEC 801337EC 34C6E07C */  ori   $a2, $a2, 0xe07c
/* 0C9EF0 801337F0 3C09000A */  lui   $t1, 0xa
/* 0C9EF4 801337F4 35290280 */  ori   $t1, $t1, 0x280
/* 0C9EF8 801337F8 3C08F240 */  lui   $t0, 0xf240
/* 0C9EFC 801337FC 35080400 */  ori   $t0, $t0, 0x400
/* 0C9F00 80133800 3C070047 */  lui   $a3, 0x47
/* 0C9F04 80133804 34E7C47C */  ori   $a3, $a3, 0xc47c
/* 0C9F08 80133808 25A20030 */  addiu $v0, $t5, 0x30
/* 0C9F0C 8013380C AE220000 */  sw    $v0, ($s1)
/* 0C9F10 80133810 ADA30028 */  sw    $v1, 0x28($t5)
/* 0C9F14 80133814 9243002C */  lbu   $v1, 0x2c($s2)
/* 0C9F18 80133818 25A20038 */  addiu $v0, $t5, 0x38
/* 0C9F1C 8013381C AE220000 */  sw    $v0, ($s1)
/* 0C9F20 80133820 25A20040 */  addiu $v0, $t5, 0x40
/* 0C9F24 80133824 AE220000 */  sw    $v0, ($s1)
/* 0C9F28 80133828 25A20048 */  addiu $v0, $t5, 0x48
/* 0C9F2C 8013382C AE220000 */  sw    $v0, ($s1)
/* 0C9F30 80133830 25A20050 */  addiu $v0, $t5, 0x50
/* 0C9F34 80133834 AE220000 */  sw    $v0, ($s1)
/* 0C9F38 80133838 25A20058 */  addiu $v0, $t5, 0x58
/* 0C9F3C 8013383C AE220000 */  sw    $v0, ($s1)
/* 0C9F40 80133840 3C028015 */  lui   $v0, 0x8015
/* 0C9F44 80133844 8C4212C8 */  lw    $v0, 0x12c8($v0)
/* 0C9F48 80133848 000318C0 */  sll   $v1, $v1, 3
/* 0C9F4C 8013384C 00621821 */  addu  $v1, $v1, $v0
/* 0C9F50 80133850 8C630004 */  lw    $v1, 4($v1)
/* 0C9F54 80133854 25A20060 */  addiu $v0, $t5, 0x60
/* 0C9F58 80133858 AE220000 */  sw    $v0, ($s1)
/* 0C9F5C 8013385C 3C02F400 */  lui   $v0, 0xf400
/* 0C9F60 80133860 ADA50030 */  sw    $a1, 0x30($t5)
/* 0C9F64 80133864 ADA40034 */  sw    $a0, 0x34($t5)
/* 0C9F68 80133868 ADBE0038 */  sw    $fp, 0x38($t5)
/* 0C9F6C 8013386C ADA0003C */  sw    $zero, 0x3c($t5)
/* 0C9F70 80133870 ADA20040 */  sw    $v0, 0x40($t5)
/* 0C9F74 80133874 ADA60044 */  sw    $a2, 0x44($t5)
/* 0C9F78 80133878 ADB70048 */  sw    $s7, 0x48($t5)
/* 0C9F7C 8013387C ADA0004C */  sw    $zero, 0x4c($t5)
/* 0C9F80 80133880 ADB30050 */  sw    $s3, 0x50($t5)
/* 0C9F84 80133884 ADA90054 */  sw    $t1, 0x54($t5)
/* 0C9F88 80133888 ADA80058 */  sw    $t0, 0x58($t5)
/* 0C9F8C 8013388C ADA7005C */  sw    $a3, 0x5c($t5)
/* 0C9F90 80133890 ADA3002C */  sw    $v1, 0x2c($t5)
.L80133894:
/* 0C9F94 80133894 8E220000 */  lw    $v0, ($s1)
/* 0C9F98 80133898 0040182D */  daddu $v1, $v0, $zero
/* 0C9F9C 8013389C 24420008 */  addiu $v0, $v0, 8
/* 0C9FA0 801338A0 3C0EDE00 */  lui   $t6, 0xde00
/* 0C9FA4 801338A4 AE220000 */  sw    $v0, ($s1)
/* 0C9FA8 801338A8 3C028015 */  lui   $v0, 0x8015
/* 0C9FAC 801338AC 2442C6A0 */  addiu $v0, $v0, -0x3960
/* 0C9FB0 801338B0 AC6E0000 */  sw    $t6, ($v1)
.L801338B4:
/* 0C9FB4 801338B4 AC620004 */  sw    $v0, 4($v1)
/* 0C9FB8 801338B8 3C02D838 */  lui   $v0, 0xd838
/* 0C9FBC 801338BC 8E230000 */  lw    $v1, ($s1)
/* 0C9FC0 801338C0 34420002 */  ori   $v0, $v0, 2
/* 0C9FC4 801338C4 0060202D */  daddu $a0, $v1, $zero
/* 0C9FC8 801338C8 24630008 */  addiu $v1, $v1, 8
/* 0C9FCC 801338CC AE230000 */  sw    $v1, ($s1)
/* 0C9FD0 801338D0 AC820000 */  sw    $v0, ($a0)
/* 0C9FD4 801338D4 24020040 */  addiu $v0, $zero, 0x40
/* 0C9FD8 801338D8 AC820004 */  sw    $v0, 4($a0)
/* 0C9FDC 801338DC 24620008 */  addiu $v0, $v1, 8
/* 0C9FE0 801338E0 AE220000 */  sw    $v0, ($s1)
/* 0C9FE4 801338E4 AC770000 */  sw    $s7, ($v1)
/* 0C9FE8 801338E8 AC600004 */  sw    $zero, 4($v1)
.L801338EC:
/* 0C9FEC 801338EC 26D60001 */  addiu $s6, $s6, 1
.L801338F0:
/* 0C9FF0 801338F0 2AC20100 */  slti  $v0, $s6, 0x100
/* 0C9FF4 801338F4 1440FD6C */  bnez  $v0, .L80132EA8
/* 0C9FF8 801338F8 00000000 */   nop   
/* 0C9FFC 801338FC 8FBF0144 */  lw    $ra, 0x144($sp)
/* 0CA000 80133900 8FBE0140 */  lw    $fp, 0x140($sp)
/* 0CA004 80133904 8FB7013C */  lw    $s7, 0x13c($sp)
/* 0CA008 80133908 8FB60138 */  lw    $s6, 0x138($sp)
/* 0CA00C 8013390C 8FB50134 */  lw    $s5, 0x134($sp)
/* 0CA010 80133910 8FB40130 */  lw    $s4, 0x130($sp)
/* 0CA014 80133914 8FB3012C */  lw    $s3, 0x12c($sp)
/* 0CA018 80133918 8FB20128 */  lw    $s2, 0x128($sp)
/* 0CA01C 8013391C 8FB10124 */  lw    $s1, 0x124($sp)
/* 0CA020 80133920 8FB00120 */  lw    $s0, 0x120($sp)
/* 0CA024 80133924 D7B40148 */  ldc1  $f20, 0x148($sp)
/* 0CA028 80133928 03E00008 */  jr    $ra
/* 0CA02C 8013392C 27BD0150 */   addiu $sp, $sp, 0x150
