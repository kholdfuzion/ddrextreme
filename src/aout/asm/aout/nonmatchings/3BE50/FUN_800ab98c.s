.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab98c
/* 9C18C 800AB98C 1C80023C */  lui        $v0, %hi(D_801BFBB8)
/* 9C190 800AB990 B8FB4224 */  addiu      $v0, $v0, %lo(D_801BFBB8)
/* 9C194 800AB994 40180400 */  sll        $v1, $a0, 1
/* 9C198 800AB998 21186400 */  addu       $v1, $v1, $a0
/* 9C19C 800AB99C C0180300 */  sll        $v1, $v1, 3
/* 9C1A0 800AB9A0 21186200 */  addu       $v1, $v1, $v0
/* 9C1A4 800AB9A4 0F006280 */  lb         $v0, 0xf($v1)
/* 9C1A8 800AB9A8 0800E003 */  jr         $ra
/* 9C1AC 800AB9AC 00000000 */   nop
