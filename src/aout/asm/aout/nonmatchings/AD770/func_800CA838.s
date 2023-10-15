.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CA838
/* BB038 800CA838 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BB03C 800CA83C 1400B1AF */  sw         $s1, 0x14($sp)
/* BB040 800CA840 21888000 */  addu       $s1, $a0, $zero
/* BB044 800CA844 1800B2AF */  sw         $s2, 0x18($sp)
/* BB048 800CA848 2190A000 */  addu       $s2, $a1, $zero
/* BB04C 800CA84C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BB050 800CA850 2198C000 */  addu       $s3, $a2, $zero
/* BB054 800CA854 2000BFAF */  sw         $ra, 0x20($sp)
/* BB058 800CA858 622A030C */  jal        FUN_800ca988
/* BB05C 800CA85C 1000B0AF */   sw        $s0, 0x10($sp)
/* BB060 800CA860 03004014 */  bnez       $v0, .L800CA870
/* BB064 800CA864 21202002 */   addu      $a0, $s1, $zero
/* BB068 800CA868 362A0308 */  j          .L800CA8D8
/* BB06C 800CA86C F4FF0224 */   addiu     $v0, $zero, -0xc
.L800CA870:
/* BB070 800CA870 2080023C */  lui        $v0, %hi(D_801FBCA8)
/* BB074 800CA874 A8BC5024 */  addiu      $s0, $v0, %lo(D_801FBCA8)
/* BB078 800CA878 7D2D030C */  jal        FUN_800cb5f4
/* BB07C 800CA87C 21280002 */   addu      $a1, $s0, $zero
/* BB080 800CA880 15004014 */  bnez       $v0, .L800CA8D8
/* BB084 800CA884 00000000 */   nop
/* BB088 800CA888 02000292 */  lbu        $v0, 2($s0)
/* BB08C 800CA88C 00000000 */  nop
/* BB090 800CA890 C0004230 */  andi       $v0, $v0, 0xc0
/* BB094 800CA894 08004014 */  bnez       $v0, .L800CA8B8
/* BB098 800CA898 AC000224 */   addiu     $v0, $zero, 0xac
/* BB09C 800CA89C 4A70000C */  jal        FUN_8001c128
/* BB0A0 800CA8A0 020002A2 */   sb        $v0, 2($s0)
/* BB0A4 800CA8A4 21202002 */  addu       $a0, $s1, $zero
/* BB0A8 800CA8A8 8F2D030C */  jal        FUN_800cb63c
/* BB0AC 800CA8AC 21280002 */   addu      $a1, $s0, $zero
/* BB0B0 800CA8B0 09004014 */  bnez       $v0, .L800CA8D8
/* BB0B4 800CA8B4 00000000 */   nop
.L800CA8B8:
/* BB0B8 800CA8B8 07004012 */  beqz       $s2, .L800CA8D8
/* BB0BC 800CA8BC 21100000 */   addu      $v0, $zero, $zero
/* BB0C0 800CA8C0 05006012 */  beqz       $s3, .L800CA8D8
/* BB0C4 800CA8C4 21202002 */   addu      $a0, $s1, $zero
/* BB0C8 800CA8C8 21284000 */  addu       $a1, $v0, $zero
/* BB0CC 800CA8CC 21304002 */  addu       $a2, $s2, $zero
/* BB0D0 800CA8D0 A42A030C */  jal        FUN_800caa90
/* BB0D4 800CA8D4 21386002 */   addu      $a3, $s3, $zero
.L800CA8D8:
/* BB0D8 800CA8D8 2000BF8F */  lw         $ra, 0x20($sp)
/* BB0DC 800CA8DC 1C00B38F */  lw         $s3, 0x1c($sp)
/* BB0E0 800CA8E0 1800B28F */  lw         $s2, 0x18($sp)
/* BB0E4 800CA8E4 1400B18F */  lw         $s1, 0x14($sp)
/* BB0E8 800CA8E8 1000B08F */  lw         $s0, 0x10($sp)
/* BB0EC 800CA8EC 0800E003 */  jr         $ra
/* BB0F0 800CA8F0 2800BD27 */   addiu     $sp, $sp, 0x28
