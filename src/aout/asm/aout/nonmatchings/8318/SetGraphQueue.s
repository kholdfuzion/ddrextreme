.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetGraphQueue
/* 89B4 800181B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 89B8 800181B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 89BC 800181BC 1400B1AF */  sw         $s1, 0x14($sp)
/* 89C0 800181C0 0D80113C */  lui        $s1, %hi(D_800D2B99)
/* 89C4 800181C4 992B3126 */  addiu      $s1, $s1, %lo(D_800D2B99)
/* 89C8 800181C8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 89CC 800181CC 1800B2AF */  sw         $s2, 0x18($sp)
/* 89D0 800181D0 01002292 */  lbu        $v0, 1($s1)
/* 89D4 800181D4 00003292 */  lbu        $s2, ($s1)
/* 89D8 800181D8 0200422C */  sltiu      $v0, $v0, 2
/* 89DC 800181DC 08004014 */  bnez       $v0, .L80018200
/* 89E0 800181E0 21808000 */   addu      $s0, $a0, $zero
/* 89E4 800181E4 0180043C */  lui        $a0, %hi(D_80010138)
/* 89E8 800181E8 38018424 */  addiu      $a0, $a0, %lo(D_80010138)
/* 89EC 800181EC 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 89F0 800181F0 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 89F4 800181F4 00000000 */  nop
/* 89F8 800181F8 09F84000 */  jalr       $v0
/* 89FC 800181FC 21280002 */   addu      $a1, $s0, $zero
.L80018200:
/* 8A00 80018200 00002292 */  lbu        $v0, ($s1)
/* 8A04 80018204 00000000 */  nop
/* 8A08 80018208 0D000212 */  beq        $s0, $v0, .L80018240
/* 8A0C 8001820C 21104002 */   addu      $v0, $s2, $zero
/* 8A10 80018210 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 8A14 80018214 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 8A18 80018218 00000000 */  nop
/* 8A1C 8001821C 3400428C */  lw         $v0, 0x34($v0)
/* 8A20 80018220 00000000 */  nop
/* 8A24 80018224 09F84000 */  jalr       $v0
/* 8A28 80018228 01000424 */   addiu     $a0, $zero, 1
/* 8A2C 8001822C 02000424 */  addiu      $a0, $zero, 2
/* 8A30 80018230 21280000 */  addu       $a1, $zero, $zero
/* 8A34 80018234 716C000C */  jal        DMACallback
/* 8A38 80018238 000030A2 */   sb        $s0, ($s1)
/* 8A3C 8001823C 21104002 */  addu       $v0, $s2, $zero
.L80018240:
/* 8A40 80018240 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 8A44 80018244 1800B28F */  lw         $s2, 0x18($sp)
/* 8A48 80018248 1400B18F */  lw         $s1, 0x14($sp)
/* 8A4C 8001824C 1000B08F */  lw         $s0, 0x10($sp)
/* 8A50 80018250 0800E003 */  jr         $ra
/* 8A54 80018254 2000BD27 */   addiu     $sp, $sp, 0x20
