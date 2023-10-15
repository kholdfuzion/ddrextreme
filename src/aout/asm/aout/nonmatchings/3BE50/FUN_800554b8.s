.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800554b8
/* 45CB8 800554B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45CBC 800554BC 74000424 */  addiu      $a0, $zero, 0x74
/* 45CC0 800554C0 FFFF0524 */  addiu      $a1, $zero, -1
/* 45CC4 800554C4 1000BFAF */  sw         $ra, 0x10($sp)
/* 45CC8 800554C8 8876000C */  jal        FUN_8001da20
/* 45CCC 800554CC FFFF0624 */   addiu     $a2, $zero, -1
/* 45CD0 800554D0 7D000424 */  addiu      $a0, $zero, 0x7d
/* 45CD4 800554D4 FFFF0524 */  addiu      $a1, $zero, -1
/* 45CD8 800554D8 8876000C */  jal        FUN_8001da20
/* 45CDC 800554DC FFFF0624 */   addiu     $a2, $zero, -1
/* 45CE0 800554E0 1000BF8F */  lw         $ra, 0x10($sp)
/* 45CE4 800554E4 00000000 */  nop
/* 45CE8 800554E8 0800E003 */  jr         $ra
/* 45CEC 800554EC 1800BD27 */   addiu     $sp, $sp, 0x18
