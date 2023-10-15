.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1140
/* A1940 800B1140 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* A1944 800B1144 2400B1AF */  sw         $s1, 0x24($sp)
/* A1948 800B1148 21888000 */  addu       $s1, $a0, $zero
/* A194C 800B114C 21200000 */  addu       $a0, $zero, $zero
/* A1950 800B1150 2000B0AF */  sw         $s0, 0x20($sp)
/* A1954 800B1154 2180A000 */  addu       $s0, $a1, $zero
/* A1958 800B1158 0C000524 */  addiu      $a1, $zero, 0xc
/* A195C 800B115C 1000A6AF */  sw         $a2, 0x10($sp)
/* A1960 800B1160 1000A627 */  addiu      $a2, $sp, 0x10
/* A1964 800B1164 2800BFAF */  sw         $ra, 0x28($sp)
/* A1968 800B1168 21FD020C */  jal        FUN_800bf484
/* A196C 800B116C 21380000 */   addu      $a3, $zero, $zero
/* A1970 800B1170 0B004014 */  bnez       $v0, .L800B11A0
/* A1974 800B1174 21200000 */   addu      $a0, $zero, $zero
/* A1978 800B1178 1800A527 */  addiu      $a1, $sp, 0x18
/* A197C 800B117C 40101000 */  sll        $v0, $s0, 1
/* A1980 800B1180 1800B1AF */  sw         $s1, 0x18($sp)
/* A1984 800B1184 F4FC020C */  jal        FUN_800bf3d0
/* A1988 800B1188 1C00A2AF */   sw        $v0, 0x1c($sp)
/* A198C 800B118C 21184000 */  addu       $v1, $v0, $zero
/* A1990 800B1190 04006014 */  bnez       $v1, .L800B11A4
/* A1994 800B1194 FFFF0224 */   addiu     $v0, $zero, -1
/* A1998 800B1198 69C40208 */  j          .L800B11A4
/* A199C 800B119C 21100000 */   addu      $v0, $zero, $zero
.L800B11A0:
/* A19A0 800B11A0 FFFF0224 */  addiu      $v0, $zero, -1
.L800B11A4:
/* A19A4 800B11A4 2800BF8F */  lw         $ra, 0x28($sp)
/* A19A8 800B11A8 2400B18F */  lw         $s1, 0x24($sp)
/* A19AC 800B11AC 2000B08F */  lw         $s0, 0x20($sp)
/* A19B0 800B11B0 0800E003 */  jr         $ra
/* A19B4 800B11B4 3000BD27 */   addiu     $sp, $sp, 0x30
