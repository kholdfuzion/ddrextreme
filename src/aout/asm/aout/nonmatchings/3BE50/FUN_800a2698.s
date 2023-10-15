.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2698
/* 92E98 800A2698 1B80023C */  lui        $v0, %hi(D_801B2B88)
/* 92E9C 800A269C 882B458C */  lw         $a1, %lo(D_801B2B88)($v0)
/* 92EA0 800A26A0 00000000 */  nop
/* 92EA4 800A26A4 0000A38C */  lw         $v1, ($a1)
/* 92EA8 800A26A8 00000000 */  nop
/* 92EAC 800A26AC FFFF6224 */  addiu      $v0, $v1, -1
/* 92EB0 800A26B0 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92EB4 800A26B4 03004014 */  bnez       $v0, .L800A26C4
/* 92EB8 800A26B8 80100300 */   sll       $v0, $v1, 2
/* 92EBC 800A26BC 0800E003 */  jr         $ra
/* 92EC0 800A26C0 21100000 */   addu      $v0, $zero, $zero
.L800A26C4:
/* 92EC4 800A26C4 2110A200 */  addu       $v0, $a1, $v0
/* 92EC8 800A26C8 0400458C */  lw         $a1, 4($v0)
/* 92ECC 800A26CC 00000000 */  nop
/* 92ED0 800A26D0 0C00A010 */  beqz       $a1, .L800A2704
/* 92ED4 800A26D4 00000000 */   nop
/* 92ED8 800A26D8 0000A28C */  lw         $v0, ($a1)
/* 92EDC 800A26DC 00000000 */  nop
/* 92EE0 800A26E0 2B108200 */  sltu       $v0, $a0, $v0
/* 92EE4 800A26E4 07004010 */  beqz       $v0, .L800A2704
/* 92EE8 800A26E8 40180400 */   sll       $v1, $a0, 1
/* 92EEC 800A26EC 21186400 */  addu       $v1, $v1, $a0
/* 92EF0 800A26F0 80180300 */  sll        $v1, $v1, 2
/* 92EF4 800A26F4 2118A300 */  addu       $v1, $a1, $v1
/* 92EF8 800A26F8 1C00628C */  lw         $v0, 0x1c($v1)
/* 92EFC 800A26FC 0800E003 */  jr         $ra
/* 92F00 800A2700 00000000 */   nop
.L800A2704:
/* 92F04 800A2704 0800E003 */  jr         $ra
/* 92F08 800A2708 21100000 */   addu      $v0, $zero, $zero
