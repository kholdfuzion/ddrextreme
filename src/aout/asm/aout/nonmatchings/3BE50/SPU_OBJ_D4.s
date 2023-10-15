.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_D4
/* A7588 800B6D88 1E80053C */  lui        $a1, %hi(D_801E0ED8)
/* A758C 800B6D8C D80EA524 */  addiu      $a1, $a1, %lo(D_801E0ED8)
/* A7590 800B6D90 02000224 */  addiu      $v0, $zero, 2
/* A7594 800B6D94 0F80013C */  lui        $at, %hi(D_800EC814)
/* A7598 800B6D98 14C822AC */  sw         $v0, %lo(D_800EC814)($at)
/* A759C 800B6D9C 03000224 */  addiu      $v0, $zero, 3
/* A75A0 800B6DA0 0F80013C */  lui        $at, %hi(D_800EC818)
/* A75A4 800B6DA4 18C822AC */  sw         $v0, %lo(D_800EC818)($at)
/* A75A8 800B6DA8 08000224 */  addiu      $v0, $zero, 8
/* A75AC 800B6DAC 0F80013C */  lui        $at, %hi(D_800EC81C)
/* A75B0 800B6DB0 1CC822AC */  sw         $v0, %lo(D_800EC81C)($at)
/* A75B4 800B6DB4 07000224 */  addiu      $v0, $zero, 7
/* A75B8 800B6DB8 0F80013C */  lui        $at, %hi(D_800EC820)
/* A75BC 800B6DBC 20C822AC */  sw         $v0, %lo(D_800EC820)($at)
/* A75C0 800B6DC0 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A75C4 800B6DC4 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A75C8 800B6DC8 04000324 */  addiu      $v1, $zero, 4
/* A75CC 800B6DCC AC0143A4 */  sh         $v1, 0x1ac($v0)
/* A75D0 800B6DD0 FFFF0334 */  ori        $v1, $zero, 0xffff
/* A75D4 800B6DD4 840140A4 */  sh         $zero, 0x184($v0)
/* A75D8 800B6DD8 860140A4 */  sh         $zero, 0x186($v0)
/* A75DC 800B6DDC 8C0143A4 */  sh         $v1, 0x18c($v0)
/* A75E0 800B6DE0 8E0143A4 */  sh         $v1, 0x18e($v0)
/* A75E4 800B6DE4 980140A4 */  sh         $zero, 0x198($v0)
/* A75E8 800B6DE8 9A0140A4 */  sh         $zero, 0x19a($v0)
.L800B6DEC:
/* A75EC 800B6DEC 0000A0A4 */  sh         $zero, ($a1)
/* A75F0 800B6DF0 01008424 */  addiu      $a0, $a0, 1
/* A75F4 800B6DF4 0A008228 */  slti       $v0, $a0, 0xa
/* A75F8 800B6DF8 FCFF4014 */  bnez       $v0, .L800B6DEC
/* A75FC 800B6DFC 0200A524 */   addiu     $a1, $a1, 2
/* A7600 800B6E00 3C000016 */  bnez       $s0, .L800B6EF4
/* A7604 800B6E04 21100000 */   addu      $v0, $zero, $zero
/* A7608 800B6E08 0F80043C */  lui        $a0, %hi(D_800EC830)
/* A760C 800B6E0C 30C88424 */  addiu      $a0, $a0, %lo(D_800EC830)
/* A7610 800B6E10 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7614 800B6E14 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A7618 800B6E18 00020324 */  addiu      $v1, $zero, 0x200
/* A761C 800B6E1C 0F80013C */  lui        $at, %hi(D_800EC808)
/* A7620 800B6E20 08C823A4 */  sh         $v1, %lo(D_800EC808)($at)
/* A7624 800B6E24 900140A4 */  sh         $zero, 0x190($v0)
/* A7628 800B6E28 920140A4 */  sh         $zero, 0x192($v0)
/* A762C 800B6E2C 940140A4 */  sh         $zero, 0x194($v0)
/* A7630 800B6E30 960140A4 */  sh         $zero, 0x196($v0)
/* A7634 800B6E34 B00140A4 */  sh         $zero, 0x1b0($v0)
/* A7638 800B6E38 B20140A4 */  sh         $zero, 0x1b2($v0)
/* A763C 800B6E3C B40140A4 */  sh         $zero, 0x1b4($v0)
/* A7640 800B6E40 B60140A4 */  sh         $zero, 0x1b6($v0)
/* A7644 800B6E44 CDDB020C */  jal        SPU_OBJ_280
/* A7648 800B6E48 10000524 */   addiu     $a1, $zero, 0x10
/* A764C 800B6E4C 21200000 */  addu       $a0, $zero, $zero
/* A7650 800B6E50 FF3F0624 */  addiu      $a2, $zero, 0x3fff
/* A7654 800B6E54 00020524 */  addiu      $a1, $zero, 0x200
/* A7658 800B6E58 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A765C 800B6E5C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A7660 800B6E60 00000000 */  nop
.L800B6E64:
/* A7664 800B6E64 000060A4 */  sh         $zero, ($v1)
/* A7668 800B6E68 020060A4 */  sh         $zero, 2($v1)
/* A766C 800B6E6C 040066A4 */  sh         $a2, 4($v1)
/* A7670 800B6E70 060065A4 */  sh         $a1, 6($v1)
/* A7674 800B6E74 080060A4 */  sh         $zero, 8($v1)
/* A7678 800B6E78 0A0060A4 */  sh         $zero, 0xa($v1)
/* A767C 800B6E7C 01008424 */  addiu      $a0, $a0, 1
/* A7680 800B6E80 18008228 */  slti       $v0, $a0, 0x18
/* A7684 800B6E84 F7FF4014 */  bnez       $v0, .L800B6E64
/* A7688 800B6E88 10006324 */   addiu     $v1, $v1, 0x10
/* A768C 800B6E8C FFFF1134 */  ori        $s1, $zero, 0xffff
/* A7690 800B6E90 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7694 800B6E94 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A7698 800B6E98 FF001024 */  addiu      $s0, $zero, 0xff
/* A769C 800B6E9C 880151A4 */  sh         $s1, 0x188($v0)
/* A76A0 800B6EA0 E3DD020C */  jal        _spu_Fw1ts
/* A76A4 800B6EA4 8A0150A4 */   sh        $s0, 0x18a($v0)
/* A76A8 800B6EA8 E3DD020C */  jal        _spu_Fw1ts
/* A76AC 800B6EAC 00000000 */   nop
/* A76B0 800B6EB0 E3DD020C */  jal        _spu_Fw1ts
/* A76B4 800B6EB4 00000000 */   nop
/* A76B8 800B6EB8 E3DD020C */  jal        _spu_Fw1ts
/* A76BC 800B6EBC 00000000 */   nop
/* A76C0 800B6EC0 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A76C4 800B6EC4 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A76C8 800B6EC8 00000000 */  nop
/* A76CC 800B6ECC 8C0151A4 */  sh         $s1, 0x18c($v0)
/* A76D0 800B6ED0 E3DD020C */  jal        _spu_Fw1ts
/* A76D4 800B6ED4 8E0150A4 */   sh        $s0, 0x18e($v0)
/* A76D8 800B6ED8 E3DD020C */  jal        _spu_Fw1ts
/* A76DC 800B6EDC 00000000 */   nop
/* A76E0 800B6EE0 E3DD020C */  jal        _spu_Fw1ts
/* A76E4 800B6EE4 00000000 */   nop
/* A76E8 800B6EE8 E3DD020C */  jal        _spu_Fw1ts
/* A76EC 800B6EEC 00000000 */   nop
/* A76F0 800B6EF0 21100000 */  addu       $v0, $zero, $zero
.L800B6EF4:
/* A76F4 800B6EF4 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A76F8 800B6EF8 F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
/* A76FC 800B6EFC 01000324 */  addiu      $v1, $zero, 1
/* A7700 800B6F00 0F80013C */  lui        $at, %hi(D_800EC824)
/* A7704 800B6F04 24C823AC */  sw         $v1, %lo(D_800EC824)($at)
/* A7708 800B6F08 00C00334 */  ori        $v1, $zero, 0xc000
/* A770C 800B6F0C AA0183A4 */  sh         $v1, 0x1aa($a0)
/* A7710 800B6F10 0F80013C */  lui        $at, %hi(D_800EC828)
/* A7714 800B6F14 28C820AC */  sw         $zero, %lo(D_800EC828)($at)
/* A7718 800B6F18 0F80013C */  lui        $at, %hi(D_800EC82C)
/* A771C 800B6F1C 2CC820AC */  sw         $zero, %lo(D_800EC82C)($at)
/* A7720 800B6F20 1800BF8F */  lw         $ra, 0x18($sp)
/* A7724 800B6F24 1400B18F */  lw         $s1, 0x14($sp)
/* A7728 800B6F28 1000B08F */  lw         $s0, 0x10($sp)
/* A772C 800B6F2C 0800E003 */  jr         $ra
/* A7730 800B6F30 2000BD27 */   addiu     $sp, $sp, 0x20
