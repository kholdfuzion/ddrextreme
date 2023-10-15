.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab9b0
/* 9C1B0 800AB9B0 1C80033C */  lui        $v1, %hi(D_801BFBB8)
/* 9C1B4 800AB9B4 B8FB6324 */  addiu      $v1, $v1, %lo(D_801BFBB8)
/* 9C1B8 800AB9B8 40100400 */  sll        $v0, $a0, 1
/* 9C1BC 800AB9BC 21104400 */  addu       $v0, $v0, $a0
/* 9C1C0 800AB9C0 C0100200 */  sll        $v0, $v0, 3
/* 9C1C4 800AB9C4 21186200 */  addu       $v1, $v1, $v0
/* 9C1C8 800AB9C8 1400628C */  lw         $v0, 0x14($v1)
/* 9C1CC 800AB9CC 0800E003 */  jr         $ra
/* 9C1D0 800AB9D0 00000000 */   nop
