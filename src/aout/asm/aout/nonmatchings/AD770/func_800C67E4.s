.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C67E4
/* B6FE4 800C67E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B6FE8 800C67E8 2080063C */  lui        $a2, %hi(D_801FB764)
/* B6FEC 800C67EC 1400B1AF */  sw         $s1, 0x14($sp)
/* B6FF0 800C67F0 64B7D124 */  addiu      $s1, $a2, %lo(D_801FB764)
/* B6FF4 800C67F4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B6FF8 800C67F8 1800B2AF */  sw         $s2, 0x18($sp)
/* B6FFC 800C67FC 1000B0AF */  sw         $s0, 0x10($sp)
/* B7000 800C6800 0800228E */  lw         $v0, 8($s1)
/* B7004 800C6804 FEFF1224 */  addiu      $s2, $zero, -2
/* B7008 800C6808 1B005210 */  beq        $v0, $s2, .L800C6878
/* B700C 800C680C FFFF0324 */   addiu     $v1, $zero, -1
/* B7010 800C6810 B4BC3026 */  addiu      $s0, $s1, -0x434c
/* B7014 800C6814 06000224 */  addiu      $v0, $zero, 6
/* B7018 800C6818 0C0024AE */  sw         $a0, 0xc($s1)
/* B701C 800C681C 1C002426 */  addiu      $a0, $s1, 0x1c
/* B7020 800C6820 180025AE */  sw         $a1, 0x18($s1)
/* B7024 800C6824 64B7C0AC */  sw         $zero, -0x489c($a2)
/* B7028 800C6828 1400038E */  lw         $v1, 0x14($s0)
/* B702C 800C682C 21282002 */  addu       $a1, $s1, $zero
/* B7030 800C6830 040022AE */  sw         $v0, 4($s1)
/* B7034 800C6834 080032AE */  sw         $s2, 8($s1)
/* B7038 800C6838 01006324 */  addiu      $v1, $v1, 1
/* B703C 800C683C FF28030C */  jal        FUN_800ca3fc
/* B7040 800C6840 140003AE */   sw        $v1, 0x14($s0)
/* B7044 800C6844 1400028E */  lw         $v0, 0x14($s0)
/* B7048 800C6848 0800238E */  lw         $v1, 8($s1)
/* B704C 800C684C FFFF4224 */  addiu      $v0, $v0, -1
/* B7050 800C6850 08007214 */  bne        $v1, $s2, .L800C6874
/* B7054 800C6854 140002AE */   sw        $v0, 0x14($s0)
/* B7058 800C6858 21804002 */  addu       $s0, $s2, $zero
.L800C685C:
/* B705C 800C685C 4270000C */  jal        FUN_8001c108
/* B7060 800C6860 00000000 */   nop
/* B7064 800C6864 0800228E */  lw         $v0, 8($s1)
/* B7068 800C6868 00000000 */  nop
/* B706C 800C686C FBFF5010 */  beq        $v0, $s0, .L800C685C
/* B7070 800C6870 00000000 */   nop
.L800C6874:
/* B7074 800C6874 0800238E */  lw         $v1, 8($s1)
.L800C6878:
/* B7078 800C6878 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B707C 800C687C 1800B28F */  lw         $s2, 0x18($sp)
/* B7080 800C6880 1400B18F */  lw         $s1, 0x14($sp)
/* B7084 800C6884 1000B08F */  lw         $s0, 0x10($sp)
/* B7088 800C6888 21106000 */  addu       $v0, $v1, $zero
/* B708C 800C688C 0800E003 */  jr         $ra
/* B7090 800C6890 2000BD27 */   addiu     $sp, $sp, 0x20
