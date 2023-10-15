.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80025b44
/* 16344 80025B44 FEFF093C */  lui        $t1, 0xfffe
/* 16348 80025B48 FF7F2935 */  ori        $t1, $t1, 0x7fff
/* 1634C 80025B4C F9FF0A3C */  lui        $t2, 0xfff9
/* 16350 80025B50 FFFF4A35 */  ori        $t2, $t2, 0xffff
/* 16354 80025B54 F7FF083C */  lui        $t0, 0xfff7
/* 16358 80025B58 FFFF0835 */  ori        $t0, $t0, 0xffff
/* 1635C 80025B5C 0F80073C */  lui        $a3, %hi(D_800F0028)
/* 16360 80025B60 2800E724 */  addiu      $a3, $a3, %lo(D_800F0028)
/* 16364 80025B64 80280400 */  sll        $a1, $a0, 2
/* 16368 80025B68 2128A400 */  addu       $a1, $a1, $a0
/* 1636C 80025B6C C0110500 */  sll        $v0, $a1, 7
/* 16370 80025B70 2128A200 */  addu       $a1, $a1, $v0
/* 16374 80025B74 40290500 */  sll        $a1, $a1, 5
/* 16378 80025B78 2328A400 */  subu       $a1, $a1, $a0
/* 1637C 80025B7C 80280500 */  sll        $a1, $a1, 2
/* 16380 80025B80 2130A700 */  addu       $a2, $a1, $a3
/* 16384 80025B84 0F000224 */  addiu      $v0, $zero, 0xf
/* 16388 80025B88 3D00C2A0 */  sb         $v0, 0x3d($a2)
/* 1638C 80025B8C 3F00C2A0 */  sb         $v0, 0x3f($a2)
/* 16390 80025B90 01000224 */  addiu      $v0, $zero, 1
/* 16394 80025B94 FFFF0324 */  addiu      $v1, $zero, -1
/* 16398 80025B98 8E00C3A4 */  sh         $v1, 0x8e($a2)
/* 1639C 80025B9C EFFF0324 */  addiu      $v1, $zero, -0x11
/* 163A0 80025BA0 8900C2A0 */  sb         $v0, 0x89($a2)
/* 163A4 80025BA4 9000C28C */  lw         $v0, 0x90($a2)
/* 163A8 80025BA8 FCFF0424 */  addiu      $a0, $zero, -4
/* 163AC 80025BAC 3E00C0A0 */  sb         $zero, 0x3e($a2)
/* 163B0 80025BB0 4300C0A0 */  sb         $zero, 0x43($a2)
/* 163B4 80025BB4 4500C0A0 */  sb         $zero, 0x45($a2)
/* 163B8 80025BB8 8800C0A0 */  sb         $zero, 0x88($a2)
/* 163BC 80025BBC 8A00C0A0 */  sb         $zero, 0x8a($a2)
/* 163C0 80025BC0 8B00C0A0 */  sb         $zero, 0x8b($a2)
/* 163C4 80025BC4 8C00C0A0 */  sb         $zero, 0x8c($a2)
/* 163C8 80025BC8 24104300 */  and        $v0, $v0, $v1
/* 163CC 80025BCC 24104400 */  and        $v0, $v0, $a0
/* 163D0 80025BD0 24104900 */  and        $v0, $v0, $t1
/* 163D4 80025BD4 00804234 */  ori        $v0, $v0, 0x8000
/* 163D8 80025BD8 24104A00 */  and        $v0, $v0, $t2
/* 163DC 80025BDC 24104800 */  and        $v0, $v0, $t0
/* 163E0 80025BE0 FBFF0324 */  addiu      $v1, $zero, -5
/* 163E4 80025BE4 24104300 */  and        $v0, $v0, $v1
/* 163E8 80025BE8 F7FF0424 */  addiu      $a0, $zero, -9
/* 163EC 80025BEC 24104400 */  and        $v0, $v0, $a0
/* 163F0 80025BF0 7FF00324 */  addiu      $v1, $zero, -0xf81
/* 163F4 80025BF4 24104300 */  and        $v0, $v0, $v1
/* 163F8 80025BF8 00014234 */  ori        $v0, $v0, 0x100
/* 163FC 80025BFC 9FFF0324 */  addiu      $v1, $zero, -0x61
/* 16400 80025C00 24104300 */  and        $v0, $v0, $v1
/* 16404 80025C04 FFCF0424 */  addiu      $a0, $zero, -0x3001
/* 16408 80025C08 24104400 */  and        $v0, $v0, $a0
/* 1640C 80025C0C 00404234 */  ori        $v0, $v0, 0x4000
/* 16410 80025C10 2118E500 */  addu       $v1, $a3, $a1
/* 16414 80025C14 9000C2AC */  sw         $v0, 0x90($a2)
/* 16418 80025C18 21106000 */  addu       $v0, $v1, $zero
/* 1641C 80025C1C 21384000 */  addu       $a3, $v0, $zero
/* 16420 80025C20 740060AC */  sw         $zero, 0x74($v1)
/* 16424 80025C24 780040AC */  sw         $zero, 0x78($v0)
/* 16428 80025C28 7C0060AC */  sw         $zero, 0x7c($v1)
/* 1642C 80025C2C 0800E003 */  jr         $ra
/* 16430 80025C30 8000E0AC */   sw        $zero, 0x80($a3)
