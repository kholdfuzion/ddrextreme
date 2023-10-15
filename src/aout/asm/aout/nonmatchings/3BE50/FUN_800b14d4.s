.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b14d4
/* A1CD4 800B14D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1CD8 800B14D8 F1FF8228 */  slti       $v0, $a0, -0xf
/* A1CDC 800B14DC 02004010 */  beqz       $v0, .L800B14E8
/* A1CE0 800B14E0 1800BFAF */   sw        $ra, 0x18($sp)
/* A1CE4 800B14E4 F1FF0424 */  addiu      $a0, $zero, -0xf
.L800B14E8:
/* A1CE8 800B14E8 10008228 */  slti       $v0, $a0, 0x10
/* A1CEC 800B14EC 02004014 */  bnez       $v0, .L800B14F8
/* A1CF0 800B14F0 00000000 */   nop
/* A1CF4 800B14F4 0F000424 */  addiu      $a0, $zero, 0xf
.L800B14F8:
/* A1CF8 800B14F8 1000A4AF */  sw         $a0, 0x10($sp)
/* A1CFC 800B14FC 21200000 */  addu       $a0, $zero, $zero
/* A1D00 800B1500 0E000524 */  addiu      $a1, $zero, 0xe
/* A1D04 800B1504 1000A627 */  addiu      $a2, $sp, 0x10
/* A1D08 800B1508 21FD020C */  jal        FUN_800bf484
/* A1D0C 800B150C 21380000 */   addu      $a3, $zero, $zero
/* A1D10 800B1510 21184000 */  addu       $v1, $v0, $zero
/* A1D14 800B1514 02006010 */  beqz       $v1, .L800B1520
/* A1D18 800B1518 21100000 */   addu      $v0, $zero, $zero
/* A1D1C 800B151C FFFF0224 */  addiu      $v0, $zero, -1
.L800B1520:
/* A1D20 800B1520 1800BF8F */  lw         $ra, 0x18($sp)
/* A1D24 800B1524 00000000 */  nop
/* A1D28 800B1528 0800E003 */  jr         $ra
/* A1D2C 800B152C 2000BD27 */   addiu     $sp, $sp, 0x20
