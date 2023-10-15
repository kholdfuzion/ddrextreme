.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb4bc
/* BBCBC 800CB4BC 801F023C */  lui        $v0, 0x1f80
/* BBCC0 800CB4C0 54104294 */  lhu        $v0, 0x1054($v0)
/* BBCC4 800CB4C4 00000000 */  nop
/* BBCC8 800CB4C8 80004230 */  andi       $v0, $v0, 0x80
/* BBCCC 800CB4CC 0800E003 */  jr         $ra
/* BBCD0 800CB4D0 2B100200 */   sltu      $v0, $zero, $v0
