.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel longjmp
/* C0D0 8001B8D0 00009F8C */  lw         $ra, ($a0)
/* C0D4 8001B8D4 2C009C8C */  lw         $gp, 0x2c($a0)
/* C0D8 8001B8D8 04009D8C */  lw         $sp, 4($a0)
/* C0DC 8001B8DC 08009E8C */  lw         $fp, 8($a0)
/* C0E0 8001B8E0 0C00908C */  lw         $s0, 0xc($a0)
/* C0E4 8001B8E4 1000918C */  lw         $s1, 0x10($a0)
/* C0E8 8001B8E8 1400928C */  lw         $s2, 0x14($a0)
/* C0EC 8001B8EC 1800938C */  lw         $s3, 0x18($a0)
/* C0F0 8001B8F0 1C00948C */  lw         $s4, 0x1c($a0)
/* C0F4 8001B8F4 2000958C */  lw         $s5, 0x20($a0)
/* C0F8 8001B8F8 2400968C */  lw         $s6, 0x24($a0)
/* C0FC 8001B8FC 2800978C */  lw         $s7, 0x28($a0)
/* C100 8001B900 2110A000 */  addu       $v0, $a1, $zero
/* C104 8001B904 0800E003 */  jr         $ra
/* C108 8001B908 00000000 */   nop
/* C10C 8001B90C 00000000 */  nop
/* C110 8001B910 00000000 */  nop
