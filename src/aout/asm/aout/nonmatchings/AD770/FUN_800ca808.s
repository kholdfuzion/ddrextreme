.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca808
/* BB008 800CA808 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BB00C 800CA80C 1000BFAF */  sw         $ra, 0x10($sp)
/* BB010 800CA810 622A030C */  jal        FUN_800ca988
/* BB014 800CA814 00000000 */   nop
/* BB018 800CA818 03004010 */  beqz       $v0, .L800CA828
/* BB01C 800CA81C F4FF0224 */   addiu     $v0, $zero, -0xc
/* BB020 800CA820 132D030C */  jal        FUN_800cb44c
/* BB024 800CA824 00000000 */   nop
.L800CA828:
/* BB028 800CA828 1000BF8F */  lw         $ra, 0x10($sp)
/* BB02C 800CA82C 00000000 */  nop
/* BB030 800CA830 0800E003 */  jr         $ra
/* BB034 800CA834 1800BD27 */   addiu     $sp, $sp, 0x18
