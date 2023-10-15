.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c10a8
/* B18A8 800C10A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B18AC 800C10AC 1000BFAF */  sw         $ra, 0x10($sp)
/* B18B0 800C10B0 0000838C */  lw         $v1, ($a0)
/* B18B4 800C10B4 00000000 */  nop
/* B18B8 800C10B8 03006104 */  bgez       $v1, .L800C10C8
/* B18BC 800C10BC 10006228 */   slti      $v0, $v1, 0x10
/* B18C0 800C10C0 21180000 */  addu       $v1, $zero, $zero
/* B18C4 800C10C4 10006228 */  slti       $v0, $v1, 0x10
.L800C10C8:
/* B18C8 800C10C8 02004014 */  bnez       $v0, .L800C10D4
/* B18CC 800C10CC 0F80023C */   lui       $v0, %hi(D_800EE514)
/* B18D0 800C10D0 0F000324 */  addiu      $v1, $zero, 0xf
.L800C10D4:
/* B18D4 800C10D4 14E54224 */  addiu      $v0, $v0, %lo(D_800EE514)
/* B18D8 800C10D8 80180300 */  sll        $v1, $v1, 2
/* B18DC 800C10DC 21186200 */  addu       $v1, $v1, $v0
/* B18E0 800C10E0 0000658C */  lw         $a1, ($v1)
/* B18E4 800C10E4 1601030C */  jal        FUN_800c0458
/* B18E8 800C10E8 E7000424 */   addiu     $a0, $zero, 0xe7
/* B18EC 800C10EC 21184000 */  addu       $v1, $v0, $zero
/* B18F0 800C10F0 FEFF0224 */  addiu      $v0, $zero, -2
/* B18F4 800C10F4 04006210 */  beq        $v1, $v0, .L800C1108
/* B18F8 800C10F8 00000000 */   nop
/* B18FC 800C10FC 02006014 */  bnez       $v1, .L800C1108
/* B1900 800C1100 FFFF0224 */   addiu     $v0, $zero, -1
/* B1904 800C1104 21100000 */  addu       $v0, $zero, $zero
.L800C1108:
/* B1908 800C1108 1000BF8F */  lw         $ra, 0x10($sp)
/* B190C 800C110C 00000000 */  nop
/* B1910 800C1110 0800E003 */  jr         $ra
/* B1914 800C1114 1800BD27 */   addiu     $sp, $sp, 0x18
