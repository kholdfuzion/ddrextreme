.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb488
/* BBC88 800CB488 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBC8C 800CB48C 0F80033C */  lui        $v1, %hi(D_800EE680)
/* BBC90 800CB490 F4E6458C */  lw         $a1, %lo(D_800EE6F4)($v0)
/* BBC94 800CB494 80E66324 */  addiu      $v1, $v1, %lo(D_800EE680)
/* BBC98 800CB498 C0100500 */  sll        $v0, $a1, 3
/* BBC9C 800CB49C 21104500 */  addu       $v0, $v0, $a1
/* BBCA0 800CB4A0 80100200 */  sll        $v0, $v0, 2
/* BBCA4 800CB4A4 21104300 */  addu       $v0, $v0, $v1
/* BBCA8 800CB4A8 0000468C */  lw         $a2, ($v0)
/* BBCAC 800CB4AC 0400478C */  lw         $a3, 4($v0)
/* BBCB0 800CB4B0 000086AC */  sw         $a2, ($a0)
/* BBCB4 800CB4B4 0800E003 */  jr         $ra
/* BBCB8 800CB4B8 040087AC */   sw        $a3, 4($a0)
