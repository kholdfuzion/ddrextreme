.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C6734
/* B6F34 800C6734 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B6F38 800C6738 2080063C */  lui        $a2, %hi(D_801FB764)
/* B6F3C 800C673C 1400B1AF */  sw         $s1, 0x14($sp)
/* B6F40 800C6740 64B7D124 */  addiu      $s1, $a2, %lo(D_801FB764)
/* B6F44 800C6744 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B6F48 800C6748 1800B2AF */  sw         $s2, 0x18($sp)
/* B6F4C 800C674C 1000B0AF */  sw         $s0, 0x10($sp)
/* B6F50 800C6750 0800228E */  lw         $v0, 8($s1)
/* B6F54 800C6754 FEFF1224 */  addiu      $s2, $zero, -2
/* B6F58 800C6758 1B005210 */  beq        $v0, $s2, .L800C67C8
/* B6F5C 800C675C FFFF0324 */   addiu     $v1, $zero, -1
/* B6F60 800C6760 B4BC3026 */  addiu      $s0, $s1, -0x434c
/* B6F64 800C6764 05000224 */  addiu      $v0, $zero, 5
/* B6F68 800C6768 0C0024AE */  sw         $a0, 0xc($s1)
/* B6F6C 800C676C 1C002426 */  addiu      $a0, $s1, 0x1c
/* B6F70 800C6770 180025AE */  sw         $a1, 0x18($s1)
/* B6F74 800C6774 64B7C0AC */  sw         $zero, -0x489c($a2)
/* B6F78 800C6778 1400038E */  lw         $v1, 0x14($s0)
/* B6F7C 800C677C 21282002 */  addu       $a1, $s1, $zero
/* B6F80 800C6780 040022AE */  sw         $v0, 4($s1)
/* B6F84 800C6784 080032AE */  sw         $s2, 8($s1)
/* B6F88 800C6788 01006324 */  addiu      $v1, $v1, 1
/* B6F8C 800C678C FF28030C */  jal        FUN_800ca3fc
/* B6F90 800C6790 140003AE */   sw        $v1, 0x14($s0)
/* B6F94 800C6794 1400028E */  lw         $v0, 0x14($s0)
/* B6F98 800C6798 0800238E */  lw         $v1, 8($s1)
/* B6F9C 800C679C FFFF4224 */  addiu      $v0, $v0, -1
/* B6FA0 800C67A0 08007214 */  bne        $v1, $s2, .L800C67C4
/* B6FA4 800C67A4 140002AE */   sw        $v0, 0x14($s0)
/* B6FA8 800C67A8 21804002 */  addu       $s0, $s2, $zero
.L800C67AC:
/* B6FAC 800C67AC 4270000C */  jal        FUN_8001c108
/* B6FB0 800C67B0 00000000 */   nop
/* B6FB4 800C67B4 0800228E */  lw         $v0, 8($s1)
/* B6FB8 800C67B8 00000000 */  nop
/* B6FBC 800C67BC FBFF5010 */  beq        $v0, $s0, .L800C67AC
/* B6FC0 800C67C0 00000000 */   nop
.L800C67C4:
/* B6FC4 800C67C4 0800238E */  lw         $v1, 8($s1)
.L800C67C8:
/* B6FC8 800C67C8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B6FCC 800C67CC 1800B28F */  lw         $s2, 0x18($sp)
/* B6FD0 800C67D0 1400B18F */  lw         $s1, 0x14($sp)
/* B6FD4 800C67D4 1000B08F */  lw         $s0, 0x10($sp)
/* B6FD8 800C67D8 21106000 */  addu       $v0, $v1, $zero
/* B6FDC 800C67DC 0800E003 */  jr         $ra
/* B6FE0 800C67E0 2000BD27 */   addiu     $sp, $sp, 0x20
