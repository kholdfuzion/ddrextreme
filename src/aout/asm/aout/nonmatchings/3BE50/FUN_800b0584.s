.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0584
/* A0D84 800B0584 FFFF8430 */  andi       $a0, $a0, 0xffff
/* A0D88 800B0588 21280000 */  addu       $a1, $zero, $zero
/* A0D8C 800B058C 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A0D90 800B0590 B8104324 */  addiu      $v1, $v0, %lo(D_801D10B8)
.L800B0594:
/* A0D94 800B0594 00006294 */  lhu        $v0, ($v1)
/* A0D98 800B0598 00000000 */  nop
/* A0D9C 800B059C 06004410 */  beq        $v0, $a0, .L800B05B8
/* A0DA0 800B05A0 21106000 */   addu      $v0, $v1, $zero
/* A0DA4 800B05A4 0100A524 */  addiu      $a1, $a1, 1
/* A0DA8 800B05A8 2C01A228 */  slti       $v0, $a1, 0x12c
/* A0DAC 800B05AC F9FF4014 */  bnez       $v0, .L800B0594
/* A0DB0 800B05B0 10006324 */   addiu     $v1, $v1, 0x10
/* A0DB4 800B05B4 21100000 */  addu       $v0, $zero, $zero
.L800B05B8:
/* A0DB8 800B05B8 02004010 */  beqz       $v0, .L800B05C4
/* A0DBC 800B05BC 21180000 */   addu      $v1, $zero, $zero
/* A0DC0 800B05C0 07004390 */  lbu        $v1, 7($v0)
.L800B05C4:
/* A0DC4 800B05C4 0800E003 */  jr         $ra
/* A0DC8 800B05C8 21106000 */   addu      $v0, $v1, $zero
