.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006ca6c
/* 5D26C 8006CA6C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5D270 8006CA70 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5D274 8006CA74 40100400 */  sll        $v0, $a0, 1
/* 5D278 8006CA78 21104400 */  addu       $v0, $v0, $a0
/* 5D27C 8006CA7C 80100200 */  sll        $v0, $v0, 2
/* 5D280 8006CA80 23104400 */  subu       $v0, $v0, $a0
/* 5D284 8006CA84 80100200 */  sll        $v0, $v0, 2
/* 5D288 8006CA88 23104400 */  subu       $v0, $v0, $a0
/* 5D28C 8006CA8C 80100200 */  sll        $v0, $v0, 2
/* 5D290 8006CA90 21104400 */  addu       $v0, $v0, $a0
/* 5D294 8006CA94 80100200 */  sll        $v0, $v0, 2
/* 5D298 8006CA98 23104400 */  subu       $v0, $v0, $a0
/* 5D29C 8006CA9C 80100200 */  sll        $v0, $v0, 2
/* 5D2A0 8006CAA0 80410300 */  sll        $t0, $v1, 6
/* 5D2A4 8006CAA4 21400301 */  addu       $t0, $t0, $v1
/* 5D2A8 8006CAA8 80400800 */  sll        $t0, $t0, 2
/* 5D2AC 8006CAAC 23400301 */  subu       $t0, $t0, $v1
/* 5D2B0 8006CAB0 C0400800 */  sll        $t0, $t0, 3
/* 5D2B4 8006CAB4 21400301 */  addu       $t0, $t0, $v1
/* 5D2B8 8006CAB8 C0400800 */  sll        $t0, $t0, 3
/* 5D2BC 8006CABC 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5D2C0 8006CAC0 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5D2C4 8006CAC4 21104300 */  addu       $v0, $v0, $v1
/* 5D2C8 8006CAC8 21400201 */  addu       $t0, $t0, $v0
/* 5D2CC 8006CACC C0180500 */  sll        $v1, $a1, 3
/* 5D2D0 8006CAD0 23186500 */  subu       $v1, $v1, $a1
/* 5D2D4 8006CAD4 80180300 */  sll        $v1, $v1, 2
/* 5D2D8 8006CAD8 21400301 */  addu       $t0, $t0, $v1
/* 5D2DC 8006CADC 3C000825 */  addiu      $t0, $t0, 0x3c
/* 5D2E0 8006CAE0 080006A5 */  sh         $a2, 8($t0)
/* 5D2E4 8006CAE4 0800E003 */  jr         $ra
/* 5D2E8 8006CAE8 0A0007A5 */   sh        $a3, 0xa($t0)
