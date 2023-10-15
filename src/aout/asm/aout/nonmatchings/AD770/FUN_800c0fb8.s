.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0fb8
/* B17B8 800C0FB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B17BC 800C0FBC 1000BFAF */  sw         $ra, 0x10($sp)
/* B17C0 800C0FC0 0000838C */  lw         $v1, ($a0)
/* B17C4 800C0FC4 00000000 */  nop
/* B17C8 800C0FC8 F1FF6228 */  slti       $v0, $v1, -0xf
/* B17CC 800C0FCC 03004010 */  beqz       $v0, .L800C0FDC
/* B17D0 800C0FD0 10006228 */   slti      $v0, $v1, 0x10
/* B17D4 800C0FD4 F1FF0324 */  addiu      $v1, $zero, -0xf
/* B17D8 800C0FD8 10006228 */  slti       $v0, $v1, 0x10
.L800C0FDC:
/* B17DC 800C0FDC 02004014 */  bnez       $v0, .L800C0FE8
/* B17E0 800C0FE0 0F80023C */   lui       $v0, %hi(D_800EE41C)
/* B17E4 800C0FE4 0F000324 */  addiu      $v1, $zero, 0xf
.L800C0FE8:
/* B17E8 800C0FE8 1CE44224 */  addiu      $v0, $v0, %lo(D_800EE41C)
/* B17EC 800C0FEC 0F006324 */  addiu      $v1, $v1, 0xf
/* B17F0 800C0FF0 80180300 */  sll        $v1, $v1, 2
/* B17F4 800C0FF4 21186200 */  addu       $v1, $v1, $v0
/* B17F8 800C0FF8 0000658C */  lw         $a1, ($v1)
/* B17FC 800C0FFC 1601030C */  jal        FUN_800c0458
/* B1800 800C1000 6B000424 */   addiu     $a0, $zero, 0x6b
/* B1804 800C1004 21184000 */  addu       $v1, $v0, $zero
/* B1808 800C1008 FEFF0224 */  addiu      $v0, $zero, -2
/* B180C 800C100C 04006210 */  beq        $v1, $v0, .L800C1020
/* B1810 800C1010 00000000 */   nop
/* B1814 800C1014 02006014 */  bnez       $v1, .L800C1020
/* B1818 800C1018 FFFF0224 */   addiu     $v0, $zero, -1
/* B181C 800C101C 21100000 */  addu       $v0, $zero, $zero
.L800C1020:
/* B1820 800C1020 1000BF8F */  lw         $ra, 0x10($sp)
/* B1824 800C1024 00000000 */  nop
/* B1828 800C1028 0800E003 */  jr         $ra
/* B182C 800C102C 1800BD27 */   addiu     $sp, $sp, 0x18
