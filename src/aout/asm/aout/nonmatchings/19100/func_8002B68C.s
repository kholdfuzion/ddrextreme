.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002B68C
/* 1BE8C 8002B68C 21580000 */  addu       $t3, $zero, $zero
/* 1BE90 8002B690 1580023C */  lui        $v0, %hi(D_8014ABF0)
/* 1BE94 8002B694 F0AB4224 */  addiu      $v0, $v0, %lo(D_8014ABF0)
/* 1BE98 8002B698 1E0E4A24 */  addiu      $t2, $v0, 0xe1e
/* 1BE9C 8002B69C 21380000 */  addu       $a3, $zero, $zero
/* 1BEA0 8002B6A0 1C0E4C24 */  addiu      $t4, $v0, 0xe1c
/* 1BEA4 8002B6A4 1580033C */  lui        $v1, %hi(D_8014BA50)
/* 1BEA8 8002B6A8 50BA6924 */  addiu      $t1, $v1, %lo(D_8014BA50)
/* 1BEAC 8002B6AC 1C0E2825 */  addiu      $t0, $t1, 0xe1c
.L8002B6B0:
/* 1BEB0 8002B6B0 2110EC00 */  addu       $v0, $a3, $t4
/* 1BEB4 8002B6B4 00000495 */  lhu        $a0, ($t0)
/* 1BEB8 8002B6B8 00004394 */  lhu        $v1, ($v0)
/* 1BEBC 8002B6BC 00000000 */  nop
/* 1BEC0 8002B6C0 07008314 */  bne        $a0, $v1, .L8002B6E0
/* 1BEC4 8002B6C4 1E0E2225 */   addiu     $v0, $t1, 0xe1e
/* 1BEC8 8002B6C8 2120E200 */  addu       $a0, $a3, $v0
/* 1BECC 8002B6CC 00008394 */  lhu        $v1, ($a0)
/* 1BED0 8002B6D0 00004295 */  lhu        $v0, ($t2)
/* 1BED4 8002B6D4 00000000 */  nop
/* 1BED8 8002B6D8 03006210 */  beq        $v1, $v0, .L8002B6E8
/* 1BEDC 8002B6DC 21280000 */   addu      $a1, $zero, $zero
.L8002B6E0:
/* 1BEE0 8002B6E0 0800E003 */  jr         $ra
/* 1BEE4 8002B6E4 FFFF0224 */   addiu     $v0, $zero, -1
.L8002B6E8:
/* 1BEE8 8002B6E8 200E2625 */  addiu      $a2, $t1, 0xe20
/* 1BEEC 8002B6EC 00000295 */  lhu        $v0, ($t0)
/* 1BEF0 8002B6F0 00008394 */  lhu        $v1, ($a0)
/* 1BEF4 8002B6F4 00000000 */  nop
/* 1BEF8 8002B6F8 42180300 */  srl        $v1, $v1, 1
/* 1BEFC 8002B6FC 08006010 */  beqz       $v1, .L8002B720
/* 1BF00 8002B700 21104900 */   addu      $v0, $v0, $t1
/* 1BF04 8002B704 21204000 */  addu       $a0, $v0, $zero
.L8002B708:
/* 1BF08 8002B708 00008294 */  lhu        $v0, ($a0)
/* 1BF0C 8002B70C 02008424 */  addiu      $a0, $a0, 2
/* 1BF10 8002B710 FFFF6324 */  addiu      $v1, $v1, -1
/* 1BF14 8002B714 2110A200 */  addu       $v0, $a1, $v0
/* 1BF18 8002B718 FBFF6014 */  bnez       $v1, .L8002B708
/* 1BF1C 8002B71C FFFF4530 */   andi      $a1, $v0, 0xffff
.L8002B720:
/* 1BF20 8002B720 27100500 */  nor        $v0, $zero, $a1
/* 1BF24 8002B724 2118C700 */  addu       $v1, $a2, $a3
/* 1BF28 8002B728 00006494 */  lhu        $a0, ($v1)
/* 1BF2C 8002B72C FFFF4530 */  andi       $a1, $v0, 0xffff
/* 1BF30 8002B730 0300A410 */  beq        $a1, $a0, .L8002B740
/* 1BF34 8002B734 21100000 */   addu      $v0, $zero, $zero
/* 1BF38 8002B738 0100023C */  lui        $v0, 1
/* 1BF3C 8002B73C 2510A200 */  or         $v0, $a1, $v0
.L8002B740:
/* 1BF40 8002B740 E7FF4014 */  bnez       $v0, .L8002B6E0
/* 1BF44 8002B744 08004A25 */   addiu     $t2, $t2, 8
/* 1BF48 8002B748 08000825 */  addiu      $t0, $t0, 8
/* 1BF4C 8002B74C 01006B25 */  addiu      $t3, $t3, 1
/* 1BF50 8002B750 05006229 */  slti       $v0, $t3, 5
/* 1BF54 8002B754 D6FF4014 */  bnez       $v0, .L8002B6B0
/* 1BF58 8002B758 0800E724 */   addiu     $a3, $a3, 8
/* 1BF5C 8002B75C 0800E003 */  jr         $ra
/* 1BF60 8002B760 21100000 */   addu      $v0, $zero, $zero
