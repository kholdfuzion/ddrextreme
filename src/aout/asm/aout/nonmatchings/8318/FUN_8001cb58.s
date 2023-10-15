.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001cb58
/* D358 8001CB58 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* D35C 8001CB5C 80000424 */  addiu      $a0, $zero, 0x80
/* D360 8001CB60 A4010524 */  addiu      $a1, $zero, 0x1a4
/* D364 8001CB64 2800BFAF */  sw         $ra, 0x28($sp)
/* D368 8001CB68 2400B1AF */  sw         $s1, 0x24($sp)
/* D36C 8001CB6C FDA5020C */  jal        FUN_800a97f4
/* D370 8001CB70 2000B0AF */   sw        $s0, 0x20($sp)
/* D374 8001CB74 FCC0020C */  jal        FUN_800b03f0
/* D378 8001CB78 00101024 */   addiu     $s0, $zero, 0x1000
/* D37C 8001CB7C 21200000 */  addu       $a0, $zero, $zero
/* D380 8001CB80 B0FF0524 */  addiu      $a1, $zero, -0x50
/* D384 8001CB84 E0FF0624 */  addiu      $a2, $zero, -0x20
/* D388 8001CB88 00100724 */  addiu      $a3, $zero, 0x1000
/* D38C 8001CB8C 0180033C */  lui        $v1, %hi(D_80010784)
/* D390 8001CB90 84076324 */  addiu      $v1, $v1, %lo(D_80010784)
/* D394 8001CB94 21884000 */  addu       $s1, $v0, $zero
/* D398 8001CB98 1000B0AF */  sw         $s0, 0x10($sp)
/* D39C 8001CB9C 1400A3AF */  sw         $v1, 0x14($sp)
/* D3A0 8001CBA0 290A010C */  jal        PrintText_800428a4
/* D3A4 8001CBA4 1800B1AF */   sw        $s1, 0x18($sp)
/* D3A8 8001CBA8 21200000 */  addu       $a0, $zero, $zero
/* D3AC 8001CBAC CCFF0524 */  addiu      $a1, $zero, -0x34
/* D3B0 8001CBB0 F0FF0624 */  addiu      $a2, $zero, -0x10
/* D3B4 8001CBB4 00100724 */  addiu      $a3, $zero, 0x1000
/* D3B8 8001CBB8 0180023C */  lui        $v0, %hi(D_80010798)
/* D3BC 8001CBBC 98074224 */  addiu      $v0, $v0, %lo(D_80010798)
/* D3C0 8001CBC0 1000B0AF */  sw         $s0, 0x10($sp)
/* D3C4 8001CBC4 290A010C */  jal        PrintText_800428a4
/* D3C8 8001CBC8 1400A2AF */   sw        $v0, 0x14($sp)
/* D3CC 8001CBCC 1D0B010C */  jal        FUN_80042c74
/* D3D0 8001CBD0 00000000 */   nop
/* D3D4 8001CBD4 FFFF0324 */  addiu      $v1, $zero, -1
/* D3D8 8001CBD8 02002316 */  bne        $s1, $v1, .L8001CBE4
/* D3DC 8001CBDC 02000224 */   addiu     $v0, $zero, 2
/* D3E0 8001CBE0 03000224 */  addiu      $v0, $zero, 3
.L8001CBE4:
/* D3E4 8001CBE4 2800BF8F */  lw         $ra, 0x28($sp)
/* D3E8 8001CBE8 2400B18F */  lw         $s1, 0x24($sp)
/* D3EC 8001CBEC 2000B08F */  lw         $s0, 0x20($sp)
/* D3F0 8001CBF0 0800E003 */  jr         $ra
/* D3F4 8001CBF4 3000BD27 */   addiu     $sp, $sp, 0x30
