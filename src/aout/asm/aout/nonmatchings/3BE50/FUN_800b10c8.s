.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b10c8
/* A18C8 800B10C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* A18CC 800B10CC 2400B1AF */  sw         $s1, 0x24($sp)
/* A18D0 800B10D0 21888000 */  addu       $s1, $a0, $zero
/* A18D4 800B10D4 21200000 */  addu       $a0, $zero, $zero
/* A18D8 800B10D8 2000B0AF */  sw         $s0, 0x20($sp)
/* A18DC 800B10DC 2180A000 */  addu       $s0, $a1, $zero
/* A18E0 800B10E0 0B000524 */  addiu      $a1, $zero, 0xb
/* A18E4 800B10E4 1000A6AF */  sw         $a2, 0x10($sp)
/* A18E8 800B10E8 1000A627 */  addiu      $a2, $sp, 0x10
/* A18EC 800B10EC 2800BFAF */  sw         $ra, 0x28($sp)
/* A18F0 800B10F0 21FD020C */  jal        FUN_800bf484
/* A18F4 800B10F4 21380000 */   addu      $a3, $zero, $zero
/* A18F8 800B10F8 0B004014 */  bnez       $v0, .L800B1128
/* A18FC 800B10FC 21200000 */   addu      $a0, $zero, $zero
/* A1900 800B1100 1800A527 */  addiu      $a1, $sp, 0x18
/* A1904 800B1104 40101000 */  sll        $v0, $s0, 1
/* A1908 800B1108 1800B1AF */  sw         $s1, 0x18($sp)
/* A190C 800B110C C7FC020C */  jal        FUN_800bf31c
/* A1910 800B1110 1C00A2AF */   sw        $v0, 0x1c($sp)
/* A1914 800B1114 21184000 */  addu       $v1, $v0, $zero
/* A1918 800B1118 04006014 */  bnez       $v1, .L800B112C
/* A191C 800B111C FFFF0224 */   addiu     $v0, $zero, -1
/* A1920 800B1120 4BC40208 */  j          .L800B112C
/* A1924 800B1124 21100000 */   addu      $v0, $zero, $zero
.L800B1128:
/* A1928 800B1128 FFFF0224 */  addiu      $v0, $zero, -1
.L800B112C:
/* A192C 800B112C 2800BF8F */  lw         $ra, 0x28($sp)
/* A1930 800B1130 2400B18F */  lw         $s1, 0x24($sp)
/* A1934 800B1134 2000B08F */  lw         $s0, 0x20($sp)
/* A1938 800B1138 0800E003 */  jr         $ra
/* A193C 800B113C 3000BD27 */   addiu     $sp, $sp, 0x30
