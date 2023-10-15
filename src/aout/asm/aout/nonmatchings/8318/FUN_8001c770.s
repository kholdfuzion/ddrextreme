.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c770
/* CF70 8001C770 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* CF74 8001C774 0F80023C */  lui        $v0, %hi(D_800F0028)
/* CF78 8001C778 1000B0AF */  sw         $s0, 0x10($sp)
/* CF7C 8001C77C 1280103C */  lui        $s0, 0x8012
/* CF80 8001C780 0E000524 */  addiu      $a1, $zero, 0xe
/* CF84 8001C784 280040A4 */  sh         $zero, %lo(D_800F0028)($v0)
/* CF88 8001C788 28004224 */  addiu      $v0, $v0, 0x28
/* CF8C 8001C78C 0100033C */  lui        $v1, 1
/* CF90 8001C790 7C426334 */  ori        $v1, $v1, 0x427c
/* CF94 8001C794 01000424 */  addiu      $a0, $zero, 1
/* CF98 8001C798 1400BFAF */  sw         $ra, 0x14($sp)
.L8001C79C:
/* CF9C 8001C79C 400045A0 */  sb         $a1, 0x40($v0)
/* CFA0 8001C7A0 410045A0 */  sb         $a1, 0x41($v0)
/* CFA4 8001C7A4 420045A0 */  sb         $a1, 0x42($v0)
/* CFA8 8001C7A8 FFFF8424 */  addiu      $a0, $a0, -1
/* CFAC 8001C7AC FBFF8104 */  bgez       $a0, .L8001C79C
/* CFB0 8001C7B0 21104300 */   addu      $v0, $v0, $v1
/* CFB4 8001C7B4 0180043C */  lui        $a0, %hi(D_800107A4)
/* CFB8 8001C7B8 339E020C */  jal        FUN_800a78cc
/* CFBC 8001C7BC A4078424 */   addiu     $a0, $a0, %lo(D_800107A4)
/* CFC0 8001C7C0 2D80043C */  lui        $a0, 0x802d
/* CFC4 8001C7C4 6186020C */  jal        FUN_800a1984
/* CFC8 8001C7C8 00908434 */   ori       $a0, $a0, 0x9000
/* CFCC 8001C7CC 8374000C */  jal        FUN_8001d20c
/* CFD0 8001C7D0 00000000 */   nop
/* CFD4 8001C7D4 1478000C */  jal        FUN_8001e050
/* CFD8 8001C7D8 00000000 */   nop
/* CFDC 8001C7DC 7056010C */  jal        FUN_800559c0
/* CFE0 8001C7E0 00000000 */   nop
/* CFE4 8001C7E4 29AE010C */  jal        FUN_8006b8a4
/* CFE8 8001C7E8 00000000 */   nop
/* CFEC 8001C7EC 2176010C */  jal        FUN_8005d884
/* CFF0 8001C7F0 00000000 */   nop
/* CFF4 8001C7F4 3D41020C */  jal        FUN_800904f4
/* CFF8 8001C7F8 00000000 */   nop
/* CFFC 8001C7FC A0A20426 */  addiu      $a0, $s0, -0x5d60
/* D000 8001C800 01000324 */  addiu      $v1, $zero, 1
/* D004 8001C804 0E80023C */  lui        $v0, %hi(D_800D887C)
/* D008 8001C808 7C884224 */  addiu      $v0, $v0, %lo(D_800D887C)
/* D00C 8001C80C A0A203AE */  sw         $v1, -0x5d60($s0)
/* D010 8001C810 0400438C */  lw         $v1, 4($v0)
/* D014 8001C814 00000000 */  nop
/* D018 8001C818 09F86000 */  jalr       $v1
/* D01C 8001C81C 01000524 */   addiu     $a1, $zero, 1
/* D020 8001C820 1400BF8F */  lw         $ra, 0x14($sp)
/* D024 8001C824 1000B08F */  lw         $s0, 0x10($sp)
/* D028 8001C828 0800E003 */  jr         $ra
/* D02C 8001C82C 1800BD27 */   addiu     $sp, $sp, 0x18
