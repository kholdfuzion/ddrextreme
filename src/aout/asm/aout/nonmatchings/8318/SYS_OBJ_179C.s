.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_179C
/* 9F80 80019780 03008014 */  bnez       $a0, .L80019790
/* 9F84 80019784 F0FFBD27 */   addiu     $sp, $sp, -0x10
/* 9F88 80019788 FE650008 */  j          SYS_OBJ_1814
/* 9F8C 8001978C 21100000 */   addu      $v0, $zero, $zero
.L80019790:
/* 9F90 80019790 00008590 */  lbu        $a1, ($a0)
/* 9F94 80019794 00000000 */  nop
/* 9F98 80019798 C2280500 */  srl        $a1, $a1, 3
/* 9F9C 8001979C 0000A5AF */  sw         $a1, ($sp)
/* 9FA0 800197A0 04008684 */  lh         $a2, 4($a0)
/* 9FA4 800197A4 00000000 */  nop
/* 9FA8 800197A8 23300600 */  negu       $a2, $a2
/* 9FAC 800197AC FF00C630 */  andi       $a2, $a2, 0xff
/* 9FB0 800197B0 C3300600 */  sra        $a2, $a2, 3
/* 9FB4 800197B4 0800A6AF */  sw         $a2, 8($sp)
/* 9FB8 800197B8 02008290 */  lbu        $v0, 2($a0)
/* 9FBC 800197BC 802A0500 */  sll        $a1, $a1, 0xa
/* 9FC0 800197C0 C2100200 */  srl        $v0, $v0, 3
/* 9FC4 800197C4 0400A2AF */  sw         $v0, 4($sp)
/* 9FC8 800197C8 C0130200 */  sll        $v0, $v0, 0xf
/* 9FCC 800197CC 06008384 */  lh         $v1, 6($a0)
/* 9FD0 800197D0 00E2043C */  lui        $a0, 0xe200
/* 9FD4 800197D4 2528A400 */  or         $a1, $a1, $a0
/* 9FD8 800197D8 25104500 */  or         $v0, $v0, $a1
/* 9FDC 800197DC 23180300 */  negu       $v1, $v1
/* 9FE0 800197E0 FF006330 */  andi       $v1, $v1, 0xff
/* 9FE4 800197E4 C3180300 */  sra        $v1, $v1, 3
/* 9FE8 800197E8 40210300 */  sll        $a0, $v1, 5
/* 9FEC 800197EC 25104400 */  or         $v0, $v0, $a0
/* 9FF0 800197F0 25104600 */  or         $v0, $v0, $a2
/* 9FF4 800197F4 0C00A3AF */  sw         $v1, 0xc($sp)
