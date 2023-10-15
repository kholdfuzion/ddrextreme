.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsSetAmbient
/* 3AF20 8004A720 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AF24 8004A724 1000BFAF */  sw         $ra, 0x10($sp)
/* 3AF28 8004A728 03210400 */  sra        $a0, $a0, 4
/* 3AF2C 8004A72C 03290500 */  sra        $a1, $a1, 4
/* 3AF30 8004A730 702D010C */  jal        SetBackColor
/* 3AF34 8004A734 03310600 */   sra       $a2, $a2, 4
/* 3AF38 8004A738 1000BF8F */  lw         $ra, 0x10($sp)
/* 3AF3C 8004A73C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3AF40 8004A740 0800E003 */  jr         $ra
/* 3AF44 8004A744 00000000 */   nop
/* 3AF48 8004A748 00000000 */  nop
/* 3AF4C 8004A74C 00000000 */  nop
