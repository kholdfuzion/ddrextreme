.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsSetFogParam
/* 3AED0 8004A6D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AED4 8004A6D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AED8 8004A6D8 21808000 */  addu       $s0, $a0, $zero
/* 3AEDC 8004A6DC 1400BFAF */  sw         $ra, 0x14($sp)
/* 3AEE0 8004A6E0 00000486 */  lh         $a0, ($s0)
/* 3AEE4 8004A6E4 8C2D010C */  jal        FUN_8004b630
/* 3AEE8 8004A6E8 00000000 */   nop
/* 3AEEC 8004A6EC 0400048E */  lw         $a0, 4($s0)
/* 3AEF0 8004A6F0 902D010C */  jal        FUN_8004b640
/* 3AEF4 8004A6F4 00000000 */   nop
/* 3AEF8 8004A6F8 08000492 */  lbu        $a0, 8($s0)
/* 3AEFC 8004A6FC 09000592 */  lbu        $a1, 9($s0)
/* 3AF00 8004A700 0A000692 */  lbu        $a2, 0xa($s0)
/* 3AF04 8004A704 2E88000C */  jal        SetFarColor
/* 3AF08 8004A708 00000000 */   nop
/* 3AF0C 8004A70C 1400BF8F */  lw         $ra, 0x14($sp)
/* 3AF10 8004A710 1000B08F */  lw         $s0, 0x10($sp)
/* 3AF14 8004A714 0800E003 */  jr         $ra
/* 3AF18 8004A718 1800BD27 */   addiu     $sp, $sp, 0x18
/* 3AF1C 8004A71C 00000000 */  nop
