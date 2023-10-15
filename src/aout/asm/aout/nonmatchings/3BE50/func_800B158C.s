.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B158C
/* A1D8C 800B158C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1D90 800B1590 02008104 */  bgez       $a0, .L800B159C
/* A1D94 800B1594 1800BFAF */   sw        $ra, 0x18($sp)
/* A1D98 800B1598 21200000 */  addu       $a0, $zero, $zero
.L800B159C:
/* A1D9C 800B159C 10008228 */  slti       $v0, $a0, 0x10
/* A1DA0 800B15A0 02004014 */  bnez       $v0, .L800B15AC
/* A1DA4 800B15A4 00000000 */   nop
/* A1DA8 800B15A8 0F000424 */  addiu      $a0, $zero, 0xf
.L800B15AC:
/* A1DAC 800B15AC 1000A4AF */  sw         $a0, 0x10($sp)
/* A1DB0 800B15B0 21200000 */  addu       $a0, $zero, $zero
/* A1DB4 800B15B4 10000524 */  addiu      $a1, $zero, 0x10
/* A1DB8 800B15B8 1000A627 */  addiu      $a2, $sp, 0x10
/* A1DBC 800B15BC 21FD020C */  jal        FUN_800bf484
/* A1DC0 800B15C0 21380000 */   addu      $a3, $zero, $zero
/* A1DC4 800B15C4 21184000 */  addu       $v1, $v0, $zero
/* A1DC8 800B15C8 02006010 */  beqz       $v1, .L800B15D4
/* A1DCC 800B15CC 21100000 */   addu      $v0, $zero, $zero
/* A1DD0 800B15D0 FFFF0224 */  addiu      $v0, $zero, -1
.L800B15D4:
/* A1DD4 800B15D4 1800BF8F */  lw         $ra, 0x18($sp)
/* A1DD8 800B15D8 00000000 */  nop
/* A1DDC 800B15DC 0800E003 */  jr         $ra
/* A1DE0 800B15E0 2000BD27 */   addiu     $sp, $sp, 0x20
