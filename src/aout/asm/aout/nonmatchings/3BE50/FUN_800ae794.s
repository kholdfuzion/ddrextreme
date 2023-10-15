.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae794
/* 9EF94 800AE794 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 9EF98 800AE798 C0110400 */  sll        $v0, $a0, 7
/* 9EF9C 800AE79C 21104400 */  addu       $v0, $v0, $a0
/* 9EFA0 800AE7A0 3000B0AF */  sw         $s0, 0x30($sp)
/* 9EFA4 800AE7A4 1000B027 */  addiu      $s0, $sp, 0x10
/* 9EFA8 800AE7A8 21200002 */  addu       $a0, $s0, $zero
/* 9EFAC 800AE7AC 21280000 */  addu       $a1, $zero, $zero
/* 9EFB0 800AE7B0 1C000624 */  addiu      $a2, $zero, 0x1c
/* 9EFB4 800AE7B4 C0110200 */  sll        $v0, $v0, 7
/* 9EFB8 800AE7B8 1D80033C */  lui        $v1, %hi(D_801C81F8)
/* 9EFBC 800AE7BC F8816324 */  addiu      $v1, $v1, %lo(D_801C81F8)
/* 9EFC0 800AE7C0 3400B1AF */  sw         $s1, 0x34($sp)
/* 9EFC4 800AE7C4 3800BFAF */  sw         $ra, 0x38($sp)
/* 9EFC8 800AE7C8 F6A2000C */  jal        memset
/* 9EFCC 800AE7CC 21884300 */   addu      $s1, $v0, $v1
/* 9EFD0 800AE7D0 21202002 */  addu       $a0, $s1, $zero
/* 9EFD4 800AE7D4 21280002 */  addu       $a1, $s0, $zero
/* 9EFD8 800AE7D8 0905010C */  jal        bcmp
/* 9EFDC 800AE7DC 1C000624 */   addiu     $a2, $zero, 0x1c
/* 9EFE0 800AE7E0 07004010 */  beqz       $v0, .L800AE800
/* 9EFE4 800AE7E4 21202002 */   addu      $a0, $s1, $zero
/* 9EFE8 800AE7E8 0180053C */  lui        $a1, %hi(D_80016E68)
/* 9EFEC 800AE7EC 686EA524 */  addiu      $a1, $a1, %lo(D_80016E68)
/* 9EFF0 800AE7F0 0905010C */  jal        bcmp
/* 9EFF4 800AE7F4 1C000624 */   addiu     $a2, $zero, 0x1c
/* 9EFF8 800AE7F8 01BA0208 */  j          .L800AE804
/* 9EFFC 800AE7FC 0100422C */   sltiu     $v0, $v0, 1
.L800AE800:
/* 9F000 800AE800 01000224 */  addiu      $v0, $zero, 1
.L800AE804:
/* 9F004 800AE804 3800BF8F */  lw         $ra, 0x38($sp)
/* 9F008 800AE808 3400B18F */  lw         $s1, 0x34($sp)
/* 9F00C 800AE80C 3000B08F */  lw         $s0, 0x30($sp)
/* 9F010 800AE810 0800E003 */  jr         $ra
/* 9F014 800AE814 4000BD27 */   addiu     $sp, $sp, 0x40
