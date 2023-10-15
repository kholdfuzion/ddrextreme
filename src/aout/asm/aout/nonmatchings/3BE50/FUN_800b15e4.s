.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b15e4
/* A1DE4 800B15E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1DE8 800B15E8 1800BFAF */  sw         $ra, 0x18($sp)
/* A1DEC 800B15EC 21200000 */  addu       $a0, $zero, $zero
/* A1DF0 800B15F0 12000524 */  addiu      $a1, $zero, 0x12
/* A1DF4 800B15F4 1000A627 */  addiu      $a2, $sp, 0x10
/* A1DF8 800B15F8 21FD020C */  jal        FUN_800bf484
/* A1DFC 800B15FC 21380000 */   addu      $a3, $zero, $zero
/* A1E00 800B1600 02004014 */  bnez       $v0, .L800B160C
/* A1E04 800B1604 21100000 */   addu      $v0, $zero, $zero
/* A1E08 800B1608 1400A28F */  lw         $v0, 0x14($sp)
.L800B160C:
/* A1E0C 800B160C 1800BF8F */  lw         $ra, 0x18($sp)
/* A1E10 800B1610 00000000 */  nop
/* A1E14 800B1614 0800E003 */  jr         $ra
/* A1E18 800B1618 2000BD27 */   addiu     $sp, $sp, 0x20
