.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80072f88
/* 63788 80072F88 1B80033C */  lui        $v1, %hi(D_801AFBF4)
/* 6378C 80072F8C F4FB688C */  lw         $t0, %lo(D_801AFBF4)($v1)
/* 63790 80072F90 00000000 */  nop
/* 63794 80072F94 C0000785 */  lh         $a3, 0xc0($t0)
/* 63798 80072F98 00000000 */  nop
/* 6379C 80072F9C 23100700 */  negu       $v0, $a3
/* 637A0 80072FA0 2A104400 */  slt        $v0, $v0, $a0
/* 637A4 80072FA4 05004010 */  beqz       $v0, .L80072FBC
/* 637A8 80072FA8 21486000 */   addu      $t1, $v1, $zero
/* 637AC 80072FAC 2A108700 */  slt        $v0, $a0, $a3
/* 637B0 80072FB0 02004010 */  beqz       $v0, .L80072FBC
/* 637B4 80072FB4 00000000 */   nop
/* 637B8 80072FB8 C40004A5 */  sh         $a0, 0xc4($t0)
.L80072FBC:
/* 637BC 80072FBC 0400A018 */  blez       $a1, .L80072FD0
/* 637C0 80072FC0 00000000 */   nop
/* 637C4 80072FC4 F4FB228D */  lw         $v0, -0x40c($t1)
/* 637C8 80072FC8 F9CB0108 */  j          .L80072FE4
/* 637CC 80072FCC C60045A4 */   sh        $a1, 0xc6($v0)
.L80072FD0:
/* 637D0 80072FD0 0700A014 */  bnez       $a1, .L80072FF0
/* 637D4 80072FD4 FFFF0224 */   addiu     $v0, $zero, -1
/* 637D8 80072FD8 F4FB228D */  lw         $v0, -0x40c($t1)
/* 637DC 80072FDC 02000324 */  addiu      $v1, $zero, 2
/* 637E0 80072FE0 C60043A4 */  sh         $v1, 0xc6($v0)
.L80072FE4:
/* 637E4 80072FE4 C80040A4 */  sh         $zero, 0xc8($v0)
/* 637E8 80072FE8 CA0040A4 */  sh         $zero, 0xca($v0)
/* 637EC 80072FEC FFFF0224 */  addiu      $v0, $zero, -1
.L80072FF0:
/* 637F0 80072FF0 0400C210 */  beq        $a2, $v0, .L80073004
/* 637F4 80072FF4 00000000 */   nop
/* 637F8 80072FF8 F4FB228D */  lw         $v0, -0x40c($t1)
/* 637FC 80072FFC 00000000 */  nop
/* 63800 80073000 CC0046A4 */  sh         $a2, 0xcc($v0)
.L80073004:
/* 63804 80073004 F4FB228D */  lw         $v0, -0x40c($t1)
/* 63808 80073008 00000000 */  nop
/* 6380C 8007300C CE0040A4 */  sh         $zero, 0xce($v0)
/* 63810 80073010 0800E003 */  jr         $ra
/* 63814 80073014 21100000 */   addu      $v0, $zero, $zero
