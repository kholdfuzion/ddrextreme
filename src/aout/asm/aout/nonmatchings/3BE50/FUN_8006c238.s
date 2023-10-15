.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006c238
/* 5CA38 8006C238 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CA3C 8006C23C A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CA40 8006C240 40100400 */  sll        $v0, $a0, 1
/* 5CA44 8006C244 21104400 */  addu       $v0, $v0, $a0
/* 5CA48 8006C248 80100200 */  sll        $v0, $v0, 2
/* 5CA4C 8006C24C 23104400 */  subu       $v0, $v0, $a0
/* 5CA50 8006C250 80100200 */  sll        $v0, $v0, 2
/* 5CA54 8006C254 23104400 */  subu       $v0, $v0, $a0
/* 5CA58 8006C258 80100200 */  sll        $v0, $v0, 2
/* 5CA5C 8006C25C 21104400 */  addu       $v0, $v0, $a0
/* 5CA60 8006C260 80100200 */  sll        $v0, $v0, 2
/* 5CA64 8006C264 23104400 */  subu       $v0, $v0, $a0
/* 5CA68 8006C268 80100200 */  sll        $v0, $v0, 2
/* 5CA6C 8006C26C 80290300 */  sll        $a1, $v1, 6
/* 5CA70 8006C270 2128A300 */  addu       $a1, $a1, $v1
/* 5CA74 8006C274 80280500 */  sll        $a1, $a1, 2
/* 5CA78 8006C278 2328A300 */  subu       $a1, $a1, $v1
/* 5CA7C 8006C27C C0280500 */  sll        $a1, $a1, 3
/* 5CA80 8006C280 2128A300 */  addu       $a1, $a1, $v1
/* 5CA84 8006C284 C0280500 */  sll        $a1, $a1, 3
/* 5CA88 8006C288 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CA8C 8006C28C 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CA90 8006C290 21104300 */  addu       $v0, $v0, $v1
/* 5CA94 8006C294 2128A200 */  addu       $a1, $a1, $v0
/* 5CA98 8006C298 C80AA38C */  lw         $v1, 0xac8($a1)
/* 5CA9C 8006C29C 00000000 */  nop
/* 5CAA0 8006C2A0 09006014 */  bnez       $v1, .L8006C2C8
/* 5CAA4 8006C2A4 21300000 */   addu      $a2, $zero, $zero
/* 5CAA8 8006C2A8 5F000624 */  addiu      $a2, $zero, 0x5f
/* 5CAAC 8006C2AC AE0AA524 */  addiu      $a1, $a1, 0xaae
.L8006C2B0:
/* 5CAB0 8006C2B0 0000A0A4 */  sh         $zero, ($a1)
/* 5CAB4 8006C2B4 FFFFC624 */  addiu      $a2, $a2, -1
/* 5CAB8 8006C2B8 FDFFC104 */  bgez       $a2, .L8006C2B0
/* 5CABC 8006C2BC E4FFA524 */   addiu     $a1, $a1, -0x1c
.L8006C2C0:
/* 5CAC0 8006C2C0 0800E003 */  jr         $ra
/* 5CAC4 8006C2C4 00000000 */   nop
.L8006C2C8:
/* 5CAC8 8006C2C8 CA0AA284 */  lh         $v0, 0xaca($a1)
/* 5CACC 8006C2CC C80AA394 */  lhu        $v1, 0xac8($a1)
/* 5CAD0 8006C2D0 B40AA484 */  lh         $a0, 0xab4($a1)
/* 5CAD4 8006C2D4 80110200 */  sll        $v0, $v0, 6
/* 5CAD8 8006C2D8 02190300 */  srl        $v1, $v1, 4
/* 5CADC 8006C2DC 3F006330 */  andi       $v1, $v1, 0x3f
/* 5CAE0 8006C2E0 F7FF8018 */  blez       $a0, .L8006C2C0
/* 5CAE4 8006C2E4 25384300 */   or        $a3, $v0, $v1
/* 5CAE8 8006C2E8 4A00A324 */  addiu      $v1, $a1, 0x4a
.L8006C2EC:
/* 5CAEC 8006C2EC 000067A4 */  sh         $a3, ($v1)
/* 5CAF0 8006C2F0 B40AA284 */  lh         $v0, 0xab4($a1)
/* 5CAF4 8006C2F4 0100C624 */  addiu      $a2, $a2, 1
/* 5CAF8 8006C2F8 2A10C200 */  slt        $v0, $a2, $v0
/* 5CAFC 8006C2FC FBFF4014 */  bnez       $v0, .L8006C2EC
/* 5CB00 8006C300 1C006324 */   addiu     $v1, $v1, 0x1c
/* 5CB04 8006C304 0800E003 */  jr         $ra
/* 5CB08 8006C308 00000000 */   nop
