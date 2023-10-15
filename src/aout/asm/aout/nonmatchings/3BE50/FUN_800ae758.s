.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae758
/* 9EF58 800AE758 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9EF5C 800AE75C 1000BFAF */  sw         $ra, 0x10($sp)
/* 9EF60 800AE760 0000848C */  lw         $a0, ($a0)
/* 9EF64 800AE764 7A19030C */  jal        FUN_800c65e8
/* 9EF68 800AE768 00000000 */   nop
/* 9EF6C 800AE76C 21184000 */  addu       $v1, $v0, $zero
/* 9EF70 800AE770 FFFF0224 */  addiu      $v0, $zero, -1
/* 9EF74 800AE774 03006210 */  beq        $v1, $v0, .L800AE784
/* 9EF78 800AE778 00000000 */   nop
/* 9EF7C 800AE77C 27100300 */  nor        $v0, $zero, $v1
/* 9EF80 800AE780 C2170200 */  srl        $v0, $v0, 0x1f
.L800AE784:
/* 9EF84 800AE784 1000BF8F */  lw         $ra, 0x10($sp)
/* 9EF88 800AE788 00000000 */  nop
/* 9EF8C 800AE78C 0800E003 */  jr         $ra
/* 9EF90 800AE790 1800BD27 */   addiu     $sp, $sp, 0x18
