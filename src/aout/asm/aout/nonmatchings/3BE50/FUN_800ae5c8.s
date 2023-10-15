.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae5c8
/* 9EDC8 800AE5C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9EDCC 800AE5CC 1C80023C */  lui        $v0, %hi(D_801C4678)
/* 9EDD0 800AE5D0 78464224 */  addiu      $v0, $v0, %lo(D_801C4678)
/* 9EDD4 800AE5D4 1800B2AF */  sw         $s2, 0x18($sp)
/* 9EDD8 800AE5D8 00405224 */  addiu      $s2, $v0, 0x4000
/* 9EDDC 800AE5DC 1400B1AF */  sw         $s1, 0x14($sp)
/* 9EDE0 800AE5E0 21884000 */  addu       $s1, $v0, $zero
/* 9EDE4 800AE5E4 1000B0AF */  sw         $s0, 0x10($sp)
/* 9EDE8 800AE5E8 01001024 */  addiu      $s0, $zero, 1
/* 9EDEC 800AE5EC 1C00BFAF */  sw         $ra, 0x1c($sp)
.L800AE5F0:
/* 9EDF0 800AE5F0 21202002 */  addu       $a0, $s1, $zero
/* 9EDF4 800AE5F4 21280000 */  addu       $a1, $zero, $zero
/* 9EDF8 800AE5F8 F6A2000C */  jal        memset
/* 9EDFC 800AE5FC 00400624 */   addiu     $a2, $zero, 0x4000
/* 9EE00 800AE600 21204002 */  addu       $a0, $s2, $zero
/* 9EE04 800AE604 21280000 */  addu       $a1, $zero, $zero
/* 9EE08 800AE608 F6A2000C */  jal        memset
/* 9EE0C 800AE60C 80000624 */   addiu     $a2, $zero, 0x80
/* 9EE10 800AE610 80405226 */  addiu      $s2, $s2, 0x4080
/* 9EE14 800AE614 FFFF1026 */  addiu      $s0, $s0, -1
/* 9EE18 800AE618 F5FF0106 */  bgez       $s0, .L800AE5F0
/* 9EE1C 800AE61C 80403126 */   addiu     $s1, $s1, 0x4080
/* 9EE20 800AE620 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9EE24 800AE624 1800B28F */  lw         $s2, 0x18($sp)
/* 9EE28 800AE628 1400B18F */  lw         $s1, 0x14($sp)
/* 9EE2C 800AE62C 1000B08F */  lw         $s0, 0x10($sp)
/* 9EE30 800AE630 0800E003 */  jr         $ra
/* 9EE34 800AE634 2000BD27 */   addiu     $sp, $sp, 0x20
