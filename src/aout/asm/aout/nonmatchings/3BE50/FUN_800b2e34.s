.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2e34
/* A3634 800B2E34 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A3638 800B2E38 1000BFAF */  sw         $ra, 0x10($sp)
/* A363C 800B2E3C 3BD5020C */  jal        FUN_800b54ec
/* A3640 800B2E40 00000000 */   nop
/* A3644 800B2E44 1000BF8F */  lw         $ra, 0x10($sp)
/* A3648 800B2E48 00000000 */  nop
/* A364C 800B2E4C 0800E003 */  jr         $ra
/* A3650 800B2E50 1800BD27 */   addiu     $sp, $sp, 0x18
