.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aad58
/* 9B558 800AAD58 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9B55C 800AAD5C 1400B1AF */  sw         $s1, 0x14($sp)
/* 9B560 800AAD60 21888000 */  addu       $s1, $a0, $zero
/* 9B564 800AAD64 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9B568 800AAD68 2198A000 */  addu       $s3, $a1, $zero
/* 9B56C 800AAD6C 2000BFAF */  sw         $ra, 0x20($sp)
/* 9B570 800AAD70 1800B2AF */  sw         $s2, 0x18($sp)
/* 9B574 800AAD74 8FAF020C */  jal        FUN_800abe3c
/* 9B578 800AAD78 1000B0AF */   sw        $s0, 0x10($sp)
/* 9B57C 800AAD7C 0CAF020C */  jal        FUN_800abc30
/* 9B580 800AAD80 21904000 */   addu      $s2, $v0, $zero
/* 9B584 800AAD84 05004014 */  bnez       $v0, .L800AAD9C
/* 9B588 800AAD88 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 9B58C 800AAD8C 28004484 */  lh         $a0, %lo(D_800F0028)($v0)
/* 9B590 800AAD90 2A000324 */  addiu      $v1, $zero, 0x2a
/* 9B594 800AAD94 2C008314 */  bne        $a0, $v1, .L800AAE48
/* 9B598 800AAD98 FFFF0224 */   addiu     $v0, $zero, -1
.L800AAD9C:
/* 9B59C 800AAD9C 2A002006 */  bltz       $s1, .L800AAE48
/* 9B5A0 800AADA0 FFFF0224 */   addiu     $v0, $zero, -1
/* 9B5A4 800AADA4 8BAF020C */  jal        FUN_800abe2c
/* 9B5A8 800AADA8 00000000 */   nop
/* 9B5AC 800AADAC 43191100 */  sra        $v1, $s1, 5
/* 9B5B0 800AADB0 8BAF020C */  jal        FUN_800abe2c
/* 9B5B4 800AADB4 21806200 */   addu      $s0, $v1, $v0
/* 9B5B8 800AADB8 2A100202 */  slt        $v0, $s0, $v0
/* 9B5BC 800AADBC 22004014 */  bnez       $v0, .L800AAE48
/* 9B5C0 800AADC0 FFFF0224 */   addiu     $v0, $zero, -1
/* 9B5C4 800AADC4 8DAF020C */  jal        FUN_800abe34
/* 9B5C8 800AADC8 00000000 */   nop
/* 9B5CC 800AADCC 2A105000 */  slt        $v0, $v0, $s0
/* 9B5D0 800AADD0 1D004014 */  bnez       $v0, .L800AAE48
/* 9B5D4 800AADD4 FFFF0224 */   addiu     $v0, $zero, -1
/* 9B5D8 800AADD8 21204002 */  addu       $a0, $s2, $zero
/* 9B5DC 800AADDC 6ED5000C */  jal        FUN_800355b8
/* 9B5E0 800AADE0 21280002 */   addu      $a1, $s0, $zero
/* 9B5E4 800AADE4 40181100 */  sll        $v1, $s1, 1
/* 9B5E8 800AADE8 3F006330 */  andi       $v1, $v1, 0x3f
/* 9B5EC 800AADEC C01A0300 */  sll        $v1, $v1, 0xb
/* 9B5F0 800AADF0 21304300 */  addu       $a2, $v0, $v1
/* 9B5F4 800AADF4 0000C494 */  lhu        $a0, ($a2)
/* 9B5F8 800AADF8 ADDE0234 */  ori        $v0, $zero, 0xdead
/* 9B5FC 800AADFC 12008214 */  bne        $a0, $v0, .L800AAE48
/* 9B600 800AAE00 FFFF0224 */   addiu     $v0, $zero, -1
/* 9B604 800AAE04 0200C624 */  addiu      $a2, $a2, 2
/* 9B608 800AAE08 0000C394 */  lhu        $v1, ($a2)
/* 9B60C 800AAE0C CEFA0234 */  ori        $v0, $zero, 0xface
/* 9B610 800AAE10 0D006214 */  bne        $v1, $v0, .L800AAE48
/* 9B614 800AAE14 FFFF0224 */   addiu     $v0, $zero, -1
/* 9B618 800AAE18 21200000 */  addu       $a0, $zero, $zero
/* 9B61C 800AAE1C F6070724 */  addiu      $a3, $zero, 0x7f6
/* 9B620 800AAE20 21286002 */  addu       $a1, $s3, $zero
/* 9B624 800AAE24 1200C324 */  addiu      $v1, $a2, 0x12
.L800AAE28:
/* 9B628 800AAE28 00006294 */  lhu        $v0, ($v1)
/* 9B62C 800AAE2C 02006324 */  addiu      $v1, $v1, 2
/* 9B630 800AAE30 01008424 */  addiu      $a0, $a0, 1
/* 9B634 800AAE34 0000A2A4 */  sh         $v0, ($a1)
/* 9B638 800AAE38 2B108700 */  sltu       $v0, $a0, $a3
/* 9B63C 800AAE3C FAFF4014 */  bnez       $v0, .L800AAE28
/* 9B640 800AAE40 0200A524 */   addiu     $a1, $a1, 2
/* 9B644 800AAE44 21100000 */  addu       $v0, $zero, $zero
.L800AAE48:
/* 9B648 800AAE48 2000BF8F */  lw         $ra, 0x20($sp)
/* 9B64C 800AAE4C 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9B650 800AAE50 1800B28F */  lw         $s2, 0x18($sp)
/* 9B654 800AAE54 1400B18F */  lw         $s1, 0x14($sp)
/* 9B658 800AAE58 1000B08F */  lw         $s0, 0x10($sp)
/* 9B65C 800AAE5C 0800E003 */  jr         $ra
/* 9B660 800AAE60 2800BD27 */   addiu     $sp, $sp, 0x28
