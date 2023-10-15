.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel PutDrawEnv
/* 91C4 800189C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 91C8 800189C8 1800B2AF */  sw         $s2, 0x18($sp)
/* 91CC 800189CC 0D80123C */  lui        $s2, %hi(D_800D2B9A)
/* 91D0 800189D0 9A2B5226 */  addiu      $s2, $s2, %lo(D_800D2B9A)
/* 91D4 800189D4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 91D8 800189D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 91DC 800189DC 1000B0AF */  sw         $s0, 0x10($sp)
/* 91E0 800189E0 00004292 */  lbu        $v0, ($s2)
/* 91E4 800189E4 00000000 */  nop
/* 91E8 800189E8 0200422C */  sltiu      $v0, $v0, 2
/* 91EC 800189EC 08004014 */  bnez       $v0, .L80018A10
/* 91F0 800189F0 21888000 */   addu      $s1, $a0, $zero
/* 91F4 800189F4 0180043C */  lui        $a0, %hi(D_80010234)
/* 91F8 800189F8 34028424 */  addiu      $a0, $a0, %lo(D_80010234)
/* 91FC 800189FC 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 9200 80018A00 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 9204 80018A04 00000000 */  nop
/* 9208 80018A08 09F84000 */  jalr       $v0
/* 920C 80018A0C 21282002 */   addu      $a1, $s1, $zero
.L80018A10:
/* 9210 80018A10 1C003026 */  addiu      $s0, $s1, 0x1c
/* 9214 80018A14 21200002 */  addu       $a0, $s0, $zero
/* 9218 80018A18 E964000C */  jal        SYS_OBJ_13C0
/* 921C 80018A1C 21282002 */   addu      $a1, $s1, $zero
/* 9220 80018A20 FF00043C */  lui        $a0, 0xff
/* 9224 80018A24 FFFF8434 */  ori        $a0, $a0, 0xffff
/* 9228 80018A28 21280002 */  addu       $a1, $s0, $zero
/* 922C 80018A2C 40000624 */  addiu      $a2, $zero, 0x40
/* 9230 80018A30 1C00228E */  lw         $v0, 0x1c($s1)
/* 9234 80018A34 0D80033C */  lui        $v1, %hi(D_800D2B90)
/* 9238 80018A38 902B638C */  lw         $v1, %lo(D_800D2B90)($v1)
/* 923C 80018A3C 25104400 */  or         $v0, $v0, $a0
/* 9240 80018A40 1C0022AE */  sw         $v0, 0x1c($s1)
/* 9244 80018A44 1800648C */  lw         $a0, 0x18($v1)
/* 9248 80018A48 0800628C */  lw         $v0, 8($v1)
/* 924C 80018A4C 00000000 */  nop
/* 9250 80018A50 09F84000 */  jalr       $v0
/* 9254 80018A54 21380000 */   addu      $a3, $zero, $zero
/* 9258 80018A58 0E004426 */  addiu      $a0, $s2, 0xe
/* 925C 80018A5C 21282002 */  addu       $a1, $s1, $zero
/* 9260 80018A60 BD6B000C */  jal        memcpy
/* 9264 80018A64 5C000624 */   addiu     $a2, $zero, 0x5c
/* 9268 80018A68 21102002 */  addu       $v0, $s1, $zero
/* 926C 80018A6C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9270 80018A70 1800B28F */  lw         $s2, 0x18($sp)
/* 9274 80018A74 1400B18F */  lw         $s1, 0x14($sp)
/* 9278 80018A78 1000B08F */  lw         $s0, 0x10($sp)
/* 927C 80018A7C 0800E003 */  jr         $ra
/* 9280 80018A80 2000BD27 */   addiu     $sp, $sp, 0x20
