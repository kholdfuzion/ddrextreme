.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cc3dc
/* BCBDC 800CC3DC 21180000 */  addu       $v1, $zero, $zero
/* BCBE0 800CC3E0 401F043C */  lui        $a0, 0x1f40
.L800CC3E4:
/* BCBE4 800CC3E4 06008294 */  lhu        $v0, 6($a0)
/* BCBE8 800CC3E8 01006324 */  addiu      $v1, $v1, 1
/* BCBEC 800CC3EC 32006228 */  slti       $v0, $v1, 0x32
/* BCBF0 800CC3F0 FCFF4014 */  bnez       $v0, .L800CC3E4
/* BCBF4 800CC3F4 00000000 */   nop
/* BCBF8 800CC3F8 0800E003 */  jr         $ra
/* BCBFC 800CC3FC 00000000 */   nop
