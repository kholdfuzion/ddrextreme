.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc08c
/* AC88C 800BC08C 5C1F023C */  lui        $v0, 0x1f5c
/* AC890 800BC090 000040A4 */  sh         $zero, ($v0)
/* AC894 800BC094 0800E003 */  jr         $ra
/* AC898 800BC098 00000000 */   nop
