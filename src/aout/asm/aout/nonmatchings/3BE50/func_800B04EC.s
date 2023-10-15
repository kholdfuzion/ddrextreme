.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B04EC
/* A0CEC 800B04EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A0CF0 800B04F0 1000BFAF */  sw         $ra, 0x10($sp)
/* A0CF4 800B04F4 FFFF0434 */  ori        $a0, $zero, 0xffff
/* A0CF8 800B04F8 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A0CFC 800B04FC B8104224 */  addiu      $v0, $v0, %lo(D_801D10B8)
/* A0D00 800B0500 2B010324 */  addiu      $v1, $zero, 0x12b
.L800B0504:
/* A0D04 800B0504 070040A0 */  sb         $zero, 7($v0)
/* A0D08 800B0508 000044A4 */  sh         $a0, ($v0)
/* A0D0C 800B050C 020040A4 */  sh         $zero, 2($v0)
/* A0D10 800B0510 040040A4 */  sh         $zero, 4($v0)
/* A0D14 800B0514 060040A0 */  sb         $zero, 6($v0)
/* A0D18 800B0518 080040AC */  sw         $zero, 8($v0)
/* A0D1C 800B051C 0C0040AC */  sw         $zero, 0xc($v0)
/* A0D20 800B0520 FFFF6324 */  addiu      $v1, $v1, -1
/* A0D24 800B0524 F7FF6104 */  bgez       $v1, .L800B0504
/* A0D28 800B0528 10004224 */   addiu     $v0, $v0, 0x10
/* A0D2C 800B052C 51C1020C */  jal        FUN_800b0544
/* A0D30 800B0530 00000000 */   nop
/* A0D34 800B0534 1000BF8F */  lw         $ra, 0x10($sp)
/* A0D38 800B0538 00000000 */  nop
/* A0D3C 800B053C 0800E003 */  jr         $ra
/* A0D40 800B0540 1800BD27 */   addiu     $sp, $sp, 0x18
