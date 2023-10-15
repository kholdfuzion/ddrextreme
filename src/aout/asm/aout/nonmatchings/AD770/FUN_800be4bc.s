.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be4bc
/* AECBC 800BE4BC 00008294 */  lhu        $v0, ($a0)
/* AECC0 800BE4C0 00000000 */  nop
/* AECC4 800BE4C4 80004230 */  andi       $v0, $v0, 0x80
/* AECC8 800BE4C8 07004010 */  beqz       $v0, .L800BE4E8
/* AECCC 800BE4CC FEFF0324 */   addiu     $v1, $zero, -2
/* AECD0 800BE4D0 00008294 */  lhu        $v0, ($a0)
/* AECD4 800BE4D4 00000000 */  nop
/* AECD8 800BE4D8 10004230 */  andi       $v0, $v0, 0x10
/* AECDC 800BE4DC 02004014 */  bnez       $v0, .L800BE4E8
/* AECE0 800BE4E0 00000000 */   nop
/* AECE4 800BE4E4 21180000 */  addu       $v1, $zero, $zero
.L800BE4E8:
/* AECE8 800BE4E8 0800E003 */  jr         $ra
/* AECEC 800BE4EC 21106000 */   addu      $v0, $v1, $zero
