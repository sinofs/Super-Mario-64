glabel soundAlloc
/* 0D1020 80316020 8C820004 */  lw    $v0, 4($a0)
/* 0D1024 80316024 8C8F0008 */  lw    $t7, 8($a0)
/* 0D1028 80316028 8C980000 */  lw    $t8, ($a0)
/* 0D102C 8031602C 24A3000F */  addiu $v1, $a1, 0xf
/* 0D1030 80316030 2401FFF0 */  li    $at, -16
/* 0D1034 80316034 00617024 */  and   $t6, $v1, $at
/* 0D1038 80316038 004E4021 */  addu  $t0, $v0, $t6
/* 0D103C 8031603C 01F8C821 */  addu  $t9, $t7, $t8
/* 0D1040 80316040 0328082B */  sltu  $at, $t9, $t0
/* 0D1044 80316044 1420000E */  bnez  $at, .L80316080
/* 0D1048 80316048 00402825 */   move  $a1, $v0
/* 0D104C 8031604C 004E4821 */  addu  $t1, $v0, $t6
/* 0D1050 80316050 01223023 */  subu  $a2, $t1, $v0
/* 0D1054 80316054 24C6FFFF */  addiu $a2, $a2, -1
/* 0D1058 80316058 AC890004 */  sw    $t1, 4($a0)
/* 0D105C 8031605C 04C0000A */  bltz  $a2, .L80316088
/* 0D1060 80316060 00003825 */   move  $a3, $zero
/* 0D1064 80316064 24C30001 */  addiu $v1, $a2, 1
.L80316068:
/* 0D1068 80316068 24E70001 */  addiu $a3, $a3, 1
/* 0D106C 8031606C 24420001 */  addiu $v0, $v0, 1
/* 0D1070 80316070 1467FFFD */  bne   $v1, $a3, .L80316068
/* 0D1074 80316074 A040FFFF */   sb    $zero, -1($v0)
/* 0D1078 80316078 10000004 */  b     .L8031608C
/* 0D107C 8031607C 00A01025 */   move  $v0, $a1
.L80316080:
/* 0D1080 80316080 03E00008 */  jr    $ra
/* 0D1084 80316084 00001025 */   move  $v0, $zero
.L80316088:
/* 0D1088 80316088 00A01025 */  move  $v0, $a1
.L8031608C:
/* 0D108C 8031608C 03E00008 */  jr    $ra
/* 0D1090 80316090 00000000 */   nop   