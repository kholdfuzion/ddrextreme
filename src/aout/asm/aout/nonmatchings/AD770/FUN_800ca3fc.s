.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca3fc
/* BABFC 800CA3FC 0000A0AC */  sw         $zero, ($a1)
/* BAC00 800CA400 0000828C */  lw         $v0, ($a0)
/* BAC04 800CA404 00000000 */  nop
/* BAC08 800CA408 04004014 */  bnez       $v0, .L800CA41C
/* BAC0C 800CA40C 00000000 */   nop
/* BAC10 800CA410 040085AC */  sw         $a1, 4($a0)
/* BAC14 800CA414 0800E003 */  jr         $ra
/* BAC18 800CA418 000085AC */   sw        $a1, ($a0)
.L800CA41C:
/* BAC1C 800CA41C 0400828C */  lw         $v0, 4($a0)
/* BAC20 800CA420 00000000 */  nop
/* BAC24 800CA424 000045AC */  sw         $a1, ($v0)
/* BAC28 800CA428 0800E003 */  jr         $ra
/* BAC2C 800CA42C 040085AC */   sw        $a1, 4($a0)
