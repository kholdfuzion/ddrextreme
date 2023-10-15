.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a5e0
/* 3ADE0 8004A5E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3ADE4 8004A5E4 1780043C */  lui        $a0, %hi(D_8016ED70)
/* 3ADE8 8004A5E8 70ED8424 */  addiu      $a0, $a0, %lo(D_8016ED70)
/* 3ADEC 8004A5EC 1DF20224 */  addiu      $v0, $zero, -0xde3
/* 3ADF0 8004A5F0 4001033C */  lui        $v1, 0x140
/* 3ADF4 8004A5F4 1000BFAF */  sw         $ra, 0x10($sp)
/* 3ADF8 8004A5F8 540082A4 */  sh         $v0, 0x54($a0)
/* 3ADFC 8004A5FC 46000224 */  addiu      $v0, $zero, 0x46
/* 3AE00 8004A600 580083AC */  sw         $v1, 0x58($a0)
/* 3AE04 8004A604 BE000324 */  addiu      $v1, $zero, 0xbe
/* 3AE08 8004A608 5C0082A0 */  sb         $v0, 0x5c($a0)
/* 3AE0C 8004A60C DC000224 */  addiu      $v0, $zero, 0xdc
/* 3AE10 8004A610 5D0083A0 */  sb         $v1, 0x5d($a0)
/* 3AE14 8004A614 5E0082A0 */  sb         $v0, 0x5e($a0)
/* 3AE18 8004A618 B429010C */  jal        GsSetFogParam
/* 3AE1C 8004A61C 54008424 */   addiu     $a0, $a0, 0x54
/* 3AE20 8004A620 1000BF8F */  lw         $ra, 0x10($sp)
/* 3AE24 8004A624 00000000 */  nop
/* 3AE28 8004A628 0800E003 */  jr         $ra
/* 3AE2C 8004A62C 1800BD27 */   addiu     $sp, $sp, 0x18
