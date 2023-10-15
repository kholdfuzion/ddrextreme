.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca430
/* BAC30 800CA430 0000838C */  lw         $v1, ($a0)
/* BAC34 800CA434 00000000 */  nop
/* BAC38 800CA438 0A006010 */  beqz       $v1, .L800CA464
/* BAC3C 800CA43C 00000000 */   nop
/* BAC40 800CA440 0000628C */  lw         $v0, ($v1)
/* BAC44 800CA444 00000000 */  nop
/* BAC48 800CA448 000082AC */  sw         $v0, ($a0)
/* BAC4C 800CA44C 000060AC */  sw         $zero, ($v1)
/* BAC50 800CA450 0000828C */  lw         $v0, ($a0)
/* BAC54 800CA454 00000000 */  nop
/* BAC58 800CA458 02004014 */  bnez       $v0, .L800CA464
/* BAC5C 800CA45C 00000000 */   nop
/* BAC60 800CA460 040080AC */  sw         $zero, 4($a0)
.L800CA464:
/* BAC64 800CA464 0800E003 */  jr         $ra
/* BAC68 800CA468 21106000 */   addu      $v0, $v1, $zero
