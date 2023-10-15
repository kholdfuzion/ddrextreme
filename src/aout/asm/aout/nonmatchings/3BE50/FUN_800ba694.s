.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba694
/* AAE94 800BA694 1E00822C */  sltiu      $v0, $a0, 0x1e
/* AAE98 800BA698 02004014 */  bnez       $v0, .L800BA6A4
/* AAE9C 800BA69C 0180023C */   lui       $v0, %hi(D_800173E0)
/* AAEA0 800BA6A0 21200000 */  addu       $a0, $zero, $zero
.L800BA6A4:
/* AAEA4 800BA6A4 E0734224 */  addiu      $v0, $v0, %lo(D_800173E0)
/* AAEA8 800BA6A8 80180400 */  sll        $v1, $a0, 2
/* AAEAC 800BA6AC 21186200 */  addu       $v1, $v1, $v0
/* AAEB0 800BA6B0 0000628C */  lw         $v0, ($v1)
/* AAEB4 800BA6B4 0800E003 */  jr         $ra
/* AAEB8 800BA6B8 00000000 */   nop
