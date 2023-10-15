.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b6a4
/* 5BEA4 8006B6A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5BEA8 8006B6A8 1800B2AF */  sw         $s2, 0x18($sp)
/* 5BEAC 8006B6AC 21908000 */  addu       $s2, $a0, $zero
/* 5BEB0 8006B6B0 21184002 */  addu       $v1, $s2, $zero
/* 5BEB4 8006B6B4 21104002 */  addu       $v0, $s2, $zero
/* 5BEB8 8006B6B8 01005226 */  addiu      $s2, $s2, 1
/* 5BEBC 8006B6BC 00014228 */  slti       $v0, $v0, 0x100
/* 5BEC0 8006B6C0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 5BEC4 8006B6C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 5BEC8 8006B6C8 02004014 */  bnez       $v0, .L8006B6D4
/* 5BECC 8006B6CC 1000B0AF */   sw        $s0, 0x10($sp)
/* 5BED0 8006B6D0 21180000 */  addu       $v1, $zero, $zero
.L8006B6D4:
/* 5BED4 8006B6D4 21200000 */  addu       $a0, $zero, $zero
/* 5BED8 8006B6D8 FFFF0524 */  addiu      $a1, $zero, -1
/* 5BEDC 8006B6DC 21300000 */  addu       $a2, $zero, $zero
/* 5BEE0 8006B6E0 21380000 */  addu       $a3, $zero, $zero
/* 5BEE4 8006B6E4 1380093C */  lui        $t1, %hi(D_80129DA8)
/* 5BEE8 8006B6E8 A89D228D */  lw         $v0, %lo(D_80129DA8)($t1)
/* 5BEEC 8006B6EC A89D2925 */  addiu      $t1, $t1, -0x6258
/* 5BEF0 8006B6F0 2C0C288D */  lw         $t0, 0xc2c($t1)
/* 5BEF4 8006B6F4 80800200 */  sll        $s0, $v0, 2
/* 5BEF8 8006B6F8 21800202 */  addu       $s0, $s0, $v0
/* 5BEFC 8006B6FC C0821000 */  sll        $s0, $s0, 0xb
/* 5BF00 8006B700 80100300 */  sll        $v0, $v1, 2
/* 5BF04 8006B704 21104300 */  addu       $v0, $v0, $v1
/* 5BF08 8006B708 C0100200 */  sll        $v0, $v0, 3
/* 5BF0C 8006B70C 1A80033C */  lui        $v1, %hi(D_801A2800)
/* 5BF10 8006B710 00286324 */  addiu      $v1, $v1, %lo(D_801A2800)
/* 5BF14 8006B714 21104300 */  addu       $v0, $v0, $v1
/* 5BF18 8006B718 0400118D */  lw         $s1, 4($t0)
/* 5BF1C 8006B71C 21800202 */  addu       $s0, $s0, $v0
/* 5BF20 8006B720 0DAE010C */  jal        GetTPage
/* 5BF24 8006B724 FC033126 */   addiu     $s1, $s1, 0x3fc
/* 5BF28 8006B728 21200002 */  addu       $a0, $s0, $zero
/* 5BF2C 8006B72C 21280000 */  addu       $a1, $zero, $zero
/* 5BF30 8006B730 21300000 */  addu       $a2, $zero, $zero
/* 5BF34 8006B734 1DAE010C */  jal        SetDrawTPage
/* 5BF38 8006B738 21384000 */   addu      $a3, $v0, $zero
/* 5BF3C 8006B73C 21202002 */  addu       $a0, $s1, $zero
/* 5BF40 8006B740 D685000C */  jal        AddPrim
/* 5BF44 8006B744 21280002 */   addu      $a1, $s0, $zero
/* 5BF48 8006B748 21104002 */  addu       $v0, $s2, $zero
/* 5BF4C 8006B74C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 5BF50 8006B750 1800B28F */  lw         $s2, 0x18($sp)
/* 5BF54 8006B754 1400B18F */  lw         $s1, 0x14($sp)
/* 5BF58 8006B758 1000B08F */  lw         $s0, 0x10($sp)
/* 5BF5C 8006B75C 0800E003 */  jr         $ra
/* 5BF60 8006B760 2000BD27 */   addiu     $sp, $sp, 0x20
