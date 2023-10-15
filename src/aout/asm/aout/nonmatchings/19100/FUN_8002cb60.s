.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cb60
/* 1D360 8002CB60 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1D364 8002CB64 1000BFAF */  sw         $ra, 0x10($sp)
/* 1D368 8002CB68 CC02063C */  lui        $a2, 0x2cc
/* 1D36C 8002CB6C 0040C634 */  ori        $a2, $a2, 0x4000
/* 1D370 8002CB70 0E80073C */  lui        $a3, %hi(D_800D8D34)
/* 1D374 8002CB74 64068824 */  addiu      $t0, $a0, 0x664
/* 1D378 8002CB78 60068324 */  addiu      $v1, $a0, 0x660
/* 1D37C 8002CB7C 13000524 */  addiu      $a1, $zero, 0x13
.L8002CB80:
/* 1D380 8002CB80 348DE28C */  lw         $v0, %lo(D_800D8D34)($a3)
/* 1D384 8002CB84 FFFFA524 */  addiu      $a1, $a1, -1
/* 1D388 8002CB88 040066AC */  sw         $a2, 4($v1)
/* 1D38C 8002CB8C 03004988 */  lwl        $t1, 3($v0)
/* 1D390 8002CB90 00004998 */  lwr        $t1, ($v0)
/* 1D394 8002CB94 00000000 */  nop
/* 1D398 8002CB98 030069A8 */  swl        $t1, 3($v1)
/* 1D39C 8002CB9C 000069B8 */  swr        $t1, ($v1)
/* 1D3A0 8002CBA0 F7FFA104 */  bgez       $a1, .L8002CB80
/* 1D3A4 8002CBA4 08006324 */   addiu     $v1, $v1, 8
/* 1D3A8 8002CBA8 14000524 */  addiu      $a1, $zero, 0x14
/* 1D3AC 8002CBAC 0800063C */  lui        $a2, 8
/* 1D3B0 8002CBB0 48BEC634 */  ori        $a2, $a2, 0xbe48
/* 1D3B4 8002CBB4 0E80073C */  lui        $a3, %hi(D_800D8D34)
/* 1D3B8 8002CBB8 00078424 */  addiu      $a0, $a0, 0x700
/* 1D3BC 8002CBBC A0000325 */  addiu      $v1, $t0, 0xa0
.L8002CBC0:
/* 1D3C0 8002CBC0 000066AC */  sw         $a2, ($v1)
/* 1D3C4 8002CBC4 08006324 */  addiu      $v1, $v1, 8
/* 1D3C8 8002CBC8 348DE28C */  lw         $v0, %lo(D_800D8D34)($a3)
/* 1D3CC 8002CBCC 0100A524 */  addiu      $a1, $a1, 1
/* 1D3D0 8002CBD0 03004888 */  lwl        $t0, 3($v0)
/* 1D3D4 8002CBD4 00004898 */  lwr        $t0, ($v0)
/* 1D3D8 8002CBD8 00000000 */  nop
/* 1D3DC 8002CBDC 030088A8 */  swl        $t0, 3($a0)
/* 1D3E0 8002CBE0 000088B8 */  swr        $t0, ($a0)
/* 1D3E4 8002CBE4 2800A228 */  slti       $v0, $a1, 0x28
/* 1D3E8 8002CBE8 F5FF4014 */  bnez       $v0, .L8002CBC0
/* 1D3EC 8002CBEC 08008424 */   addiu     $a0, $a0, 8
/* 1D3F0 8002CBF0 2DB3000C */  jal        FUN_8002ccb4
/* 1D3F4 8002CBF4 02000424 */   addiu     $a0, $zero, 2
/* 1D3F8 8002CBF8 1000BF8F */  lw         $ra, 0x10($sp)
/* 1D3FC 8002CBFC 01000224 */  addiu      $v0, $zero, 1
/* 1D400 8002CC00 0800E003 */  jr         $ra
/* 1D404 8002CC04 1800BD27 */   addiu     $sp, $sp, 0x18
