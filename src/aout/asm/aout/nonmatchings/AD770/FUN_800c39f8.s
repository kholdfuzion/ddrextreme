.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c39f8
/* B41F8 800C39F8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B41FC 800C39FC 1800B0AF */  sw         $s0, 0x18($sp)
/* B4200 800C3A00 21800000 */  addu       $s0, $zero, $zero
/* B4204 800C3A04 1F80023C */  lui        $v0, %hi(D_801F72F8)
/* B4208 800C3A08 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B420C 800C3A0C F8725124 */  addiu      $s1, $v0, %lo(D_801F72F8)
/* B4210 800C3A10 27008014 */  bnez       $a0, .L800C3AB0
/* B4214 800C3A14 2000BFAF */   sw        $ra, 0x20($sp)
/* B4218 800C3A18 0001238E */  lw         $v1, 0x100($s1)
/* B421C 800C3A1C 00000000 */  nop
/* B4220 800C3A20 FFFF6224 */  addiu      $v0, $v1, -1
/* B4224 800C3A24 0200422C */  sltiu      $v0, $v0, 2
/* B4228 800C3A28 04004010 */  beqz       $v0, .L800C3A3C
/* B422C 800C3A2C 21202002 */   addu      $a0, $s1, $zero
/* B4230 800C3A30 10000524 */  addiu      $a1, $zero, 0x10
/* B4234 800C3A34 A10E0308 */  j          .L800C3A84
/* B4238 800C3A38 2130A503 */   addu      $a2, $sp, $a1
.L800C3A3C:
/* B423C 800C3A3C 03000224 */  addiu      $v0, $zero, 3
/* B4240 800C3A40 12006214 */  bne        $v1, $v0, .L800C3A8C
/* B4244 800C3A44 F5FF0224 */   addiu     $v0, $zero, -0xb
/* B4248 800C3A48 0401228E */  lw         $v0, 0x104($s1)
/* B424C 800C3A4C 00000000 */  nop
/* B4250 800C3A50 0A004014 */  bnez       $v0, .L800C3A7C
/* B4254 800C3A54 21202002 */   addu      $a0, $s1, $zero
/* B4258 800C3A58 01000224 */  addiu      $v0, $zero, 1
/* B425C 800C3A5C 040122AE */  sw         $v0, 0x104($s1)
/* B4260 800C3A60 1000A427 */  addiu      $a0, $sp, 0x10
/* B4264 800C3A64 21280000 */  addu       $a1, $zero, $zero
/* B4268 800C3A68 21308000 */  addu       $a2, $a0, $zero
/* B426C 800C3A6C A42A030C */  jal        FUN_800caa90
/* B4270 800C3A70 08000724 */   addiu     $a3, $zero, 8
/* B4274 800C3A74 0C004014 */  bnez       $v0, .L800C3AA8
/* B4278 800C3A78 21202002 */   addu      $a0, $s1, $zero
.L800C3A7C:
/* B427C 800C3A7C 28000524 */  addiu      $a1, $zero, 0x28
/* B4280 800C3A80 1000A627 */  addiu      $a2, $sp, 0x10
.L800C3A84:
/* B4284 800C3A84 A42A030C */  jal        FUN_800caa90
/* B4288 800C3A88 08000724 */   addiu     $a3, $zero, 8
.L800C3A8C:
/* B428C 800C3A8C 06004014 */  bnez       $v0, .L800C3AA8
/* B4290 800C3A90 1000A427 */   addiu     $a0, $sp, 0x10
/* B4294 800C3A94 50002526 */  addiu      $a1, $s1, 0x50
/* B4298 800C3A98 0905010C */  jal        bcmp
/* B429C 800C3A9C 08000624 */   addiu     $a2, $zero, 8
/* B42A0 800C3AA0 05004010 */  beqz       $v0, .L800C3AB8
/* B42A4 800C3AA4 21100002 */   addu      $v0, $s0, $zero
.L800C3AA8:
/* B42A8 800C3AA8 AD0E0308 */  j          .L800C3AB4
/* B42AC 800C3AAC FFFF1024 */   addiu     $s0, $zero, -1
.L800C3AB0:
/* B42B0 800C3AB0 FEFF1024 */  addiu      $s0, $zero, -2
.L800C3AB4:
/* B42B4 800C3AB4 21100002 */  addu       $v0, $s0, $zero
.L800C3AB8:
/* B42B8 800C3AB8 2000BF8F */  lw         $ra, 0x20($sp)
/* B42BC 800C3ABC 1C00B18F */  lw         $s1, 0x1c($sp)
/* B42C0 800C3AC0 1800B08F */  lw         $s0, 0x18($sp)
/* B42C4 800C3AC4 0800E003 */  jr         $ra
/* B42C8 800C3AC8 2800BD27 */   addiu     $sp, $sp, 0x28
