.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C3ACC
/* B42CC 800C3ACC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B42D0 800C3AD0 1000B0AF */  sw         $s0, 0x10($sp)
/* B42D4 800C3AD4 1F80103C */  lui        $s0, %hi(D_801F72F8)
/* B42D8 800C3AD8 F8721026 */  addiu      $s0, $s0, %lo(D_801F72F8)
/* B42DC 800C3ADC 51000426 */  addiu      $a0, $s0, 0x51
/* B42E0 800C3AE0 18000526 */  addiu      $a1, $s0, 0x18
/* B42E4 800C3AE4 1400BFAF */  sw         $ra, 0x14($sp)
/* B42E8 800C3AE8 180F030C */  jal        FUN_800c3c60
/* B42EC 800C3AEC 0E000624 */   addiu     $a2, $zero, 0xe
/* B42F0 800C3AF0 1C001026 */  addiu      $s0, $s0, 0x1c
/* B42F4 800C3AF4 01000292 */  lbu        $v0, 1($s0)
/* B42F8 800C3AF8 02000392 */  lbu        $v1, 2($s0)
/* B42FC 800C3AFC 1400BF8F */  lw         $ra, 0x14($sp)
/* B4300 800C3B00 1000B08F */  lw         $s0, 0x10($sp)
/* B4304 800C3B04 00120200 */  sll        $v0, $v0, 8
/* B4308 800C3B08 25104300 */  or         $v0, $v0, $v1
/* B430C 800C3B0C 0800E003 */  jr         $ra
/* B4310 800C3B10 1800BD27 */   addiu     $sp, $sp, 0x18
