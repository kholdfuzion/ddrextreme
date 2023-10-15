.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B13D0
/* A1BD0 800B13D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1BD4 800B13D4 1800BFAF */  sw         $ra, 0x18($sp)
/* A1BD8 800B13D8 21200000 */  addu       $a0, $zero, $zero
/* A1BDC 800B13DC 04000524 */  addiu      $a1, $zero, 4
/* A1BE0 800B13E0 1000A627 */  addiu      $a2, $sp, 0x10
/* A1BE4 800B13E4 21FD020C */  jal        FUN_800bf484
/* A1BE8 800B13E8 21380000 */   addu      $a3, $zero, $zero
/* A1BEC 800B13EC 02004014 */  bnez       $v0, .L800B13F8
/* A1BF0 800B13F0 FFFF0224 */   addiu     $v0, $zero, -1
/* A1BF4 800B13F4 1400A297 */  lhu        $v0, 0x14($sp)
.L800B13F8:
/* A1BF8 800B13F8 1800BF8F */  lw         $ra, 0x18($sp)
/* A1BFC 800B13FC 00000000 */  nop
/* A1C00 800B1400 0800E003 */  jr         $ra
/* A1C04 800B1404 2000BD27 */   addiu     $sp, $sp, 0x20
