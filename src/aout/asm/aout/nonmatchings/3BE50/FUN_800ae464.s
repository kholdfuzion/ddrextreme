.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae464
/* 9EC64 800AE464 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9EC68 800AE468 1000B0AF */  sw         $s0, 0x10($sp)
/* 9EC6C 800AE46C 21808000 */  addu       $s0, $a0, $zero
/* 9EC70 800AE470 1400B1AF */  sw         $s1, 0x14($sp)
/* 9EC74 800AE474 1800BFAF */  sw         $ra, 0x18($sp)
/* 9EC78 800AE478 AAAF020C */  jal        FUN_800abea8
/* 9EC7C 800AE47C 2188A000 */   addu      $s1, $a1, $zero
/* 9EC80 800AE480 13004014 */  bnez       $v0, .L800AE4D0
/* 9EC84 800AE484 21100000 */   addu      $v0, $zero, $zero
/* 9EC88 800AE488 1C80033C */  lui        $v1, %hi(D_801C4658)
/* 9EC8C 800AE48C 58466324 */  addiu      $v1, $v1, %lo(D_801C4658)
/* 9EC90 800AE490 08006290 */  lbu        $v0, 8($v1)
/* 9EC94 800AE494 00000000 */  nop
/* 9EC98 800AE498 07100202 */  srav       $v0, $v0, $s0
/* 9EC9C 800AE49C 01004230 */  andi       $v0, $v0, 1
/* 9ECA0 800AE4A0 02004010 */  beqz       $v0, .L800AE4AC
/* 9ECA4 800AE4A4 FFFF0424 */   addiu     $a0, $zero, -1
/* 9ECA8 800AE4A8 21200000 */  addu       $a0, $zero, $zero
.L800AE4AC:
/* 9ECAC 800AE4AC 07008014 */  bnez       $a0, .L800AE4CC
/* 9ECB0 800AE4B0 00000000 */   nop
/* 9ECB4 800AE4B4 0A006290 */  lbu        $v0, 0xa($v1)
/* 9ECB8 800AE4B8 40181000 */  sll        $v1, $s0, 1
/* 9ECBC 800AE4BC 07106200 */  srav       $v0, $v0, $v1
/* 9ECC0 800AE4C0 07102202 */  srav       $v0, $v0, $s1
/* 9ECC4 800AE4C4 34B90208 */  j          .L800AE4D0
/* 9ECC8 800AE4C8 01004230 */   andi      $v0, $v0, 1
.L800AE4CC:
/* 9ECCC 800AE4CC 21100000 */  addu       $v0, $zero, $zero
.L800AE4D0:
/* 9ECD0 800AE4D0 1800BF8F */  lw         $ra, 0x18($sp)
/* 9ECD4 800AE4D4 1400B18F */  lw         $s1, 0x14($sp)
/* 9ECD8 800AE4D8 1000B08F */  lw         $s0, 0x10($sp)
/* 9ECDC 800AE4DC 0800E003 */  jr         $ra
/* 9ECE0 800AE4E0 2000BD27 */   addiu     $sp, $sp, 0x20
