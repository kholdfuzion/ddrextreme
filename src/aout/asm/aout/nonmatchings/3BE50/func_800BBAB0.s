.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BBAB0
/* AC2B0 800BBAB0 0000828C */  lw         $v0, ($a0)
/* AC2B4 800BBAB4 F8FFBD27 */  addiu      $sp, $sp, -8
/* AC2B8 800BBAB8 0000A2AF */  sw         $v0, ($sp)
/* AC2BC 800BBABC 0300A293 */  lbu        $v0, 3($sp)
/* AC2C0 800BBAC0 00000000 */  nop
/* AC2C4 800BBAC4 000082A0 */  sb         $v0, ($a0)
/* AC2C8 800BBAC8 0200A293 */  lbu        $v0, 2($sp)
/* AC2CC 800BBACC 00000000 */  nop
/* AC2D0 800BBAD0 010082A0 */  sb         $v0, 1($a0)
/* AC2D4 800BBAD4 0100A293 */  lbu        $v0, 1($sp)
/* AC2D8 800BBAD8 00000000 */  nop
/* AC2DC 800BBADC 020082A0 */  sb         $v0, 2($a0)
/* AC2E0 800BBAE0 0000A293 */  lbu        $v0, ($sp)
/* AC2E4 800BBAE4 00000000 */  nop
/* AC2E8 800BBAE8 030082A0 */  sb         $v0, 3($a0)
/* AC2EC 800BBAEC 0800E003 */  jr         $ra
/* AC2F0 800BBAF0 0800BD27 */   addiu     $sp, $sp, 8
