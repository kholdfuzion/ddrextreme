.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1070
/* A1870 800B1070 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A1874 800B1074 1000BFAF */  sw         $ra, 0x10($sp)
/* A1878 800B1078 3AFB020C */  jal        FUN_800bece8
/* A187C 800B107C 00000000 */   nop
/* A1880 800B1080 0D004014 */  bnez       $v0, .L800B10B8
/* A1884 800B1084 FDFF0224 */   addiu     $v0, $zero, -3
/* A1888 800B1088 78FC020C */  jal        FUN_800bf1e0
/* A188C 800B108C 21200000 */   addu      $a0, $zero, $zero
/* A1890 800B1090 08004014 */  bnez       $v0, .L800B10B4
/* A1894 800B1094 21200000 */   addu      $a0, $zero, $zero
/* A1898 800B1098 9FFC020C */  jal        FUN_800bf27c
/* A189C 800B109C 21280000 */   addu      $a1, $zero, $zero
/* A18A0 800B10A0 21184000 */  addu       $v1, $v0, $zero
/* A18A4 800B10A4 04006014 */  bnez       $v1, .L800B10B8
/* A18A8 800B10A8 FFFF0224 */   addiu     $v0, $zero, -1
/* A18AC 800B10AC 2EC40208 */  j          .L800B10B8
/* A18B0 800B10B0 21100000 */   addu      $v0, $zero, $zero
.L800B10B4:
/* A18B4 800B10B4 FEFF0224 */  addiu      $v0, $zero, -2
.L800B10B8:
/* A18B8 800B10B8 1000BF8F */  lw         $ra, 0x10($sp)
/* A18BC 800B10BC 00000000 */  nop
/* A18C0 800B10C0 0800E003 */  jr         $ra
/* A18C4 800B10C4 1800BD27 */   addiu     $sp, $sp, 0x18
