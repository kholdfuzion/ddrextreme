.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cc3b8
/* BCBB8 800CC3B8 21180000 */  addu       $v1, $zero, $zero
/* BCBBC 800CC3BC 401F043C */  lui        $a0, 0x1f40
.L800CC3C0:
/* BCBC0 800CC3C0 06008294 */  lhu        $v0, 6($a0)
/* BCBC4 800CC3C4 01006324 */  addiu      $v1, $v1, 1
/* BCBC8 800CC3C8 FA006228 */  slti       $v0, $v1, 0xfa
/* BCBCC 800CC3CC FCFF4014 */  bnez       $v0, .L800CC3C0
/* BCBD0 800CC3D0 00000000 */   nop
/* BCBD4 800CC3D4 0800E003 */  jr         $ra
/* BCBD8 800CC3D8 00000000 */   nop
