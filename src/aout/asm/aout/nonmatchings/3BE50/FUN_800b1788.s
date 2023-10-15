.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1788
/* A1F88 800B1788 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1F8C 800B178C 1800BFAF */  sw         $ra, 0x18($sp)
/* A1F90 800B1790 21200000 */  addu       $a0, $zero, $zero
/* A1F94 800B1794 08000524 */  addiu      $a1, $zero, 8
/* A1F98 800B1798 1000A627 */  addiu      $a2, $sp, 0x10
/* A1F9C 800B179C 21FD020C */  jal        FUN_800bf484
/* A1FA0 800B17A0 21380000 */   addu      $a3, $zero, $zero
/* A1FA4 800B17A4 02004014 */  bnez       $v0, .L800B17B0
/* A1FA8 800B17A8 FFFF0224 */   addiu     $v0, $zero, -1
/* A1FAC 800B17AC 1400A28F */  lw         $v0, 0x14($sp)
.L800B17B0:
/* A1FB0 800B17B0 1800BF8F */  lw         $ra, 0x18($sp)
/* A1FB4 800B17B4 00000000 */  nop
/* A1FB8 800B17B8 0800E003 */  jr         $ra
/* A1FBC 800B17BC 2000BD27 */   addiu     $sp, $sp, 0x20
