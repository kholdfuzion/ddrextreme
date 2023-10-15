.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80072f2c
/* 6372C 80072F2C 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 63730 80072F30 F4FB478C */  lw         $a3, %lo(D_801AFBF4)($v0)
/* 63734 80072F34 00000000 */  nop
/* 63738 80072F38 B800E384 */  lh         $v1, 0xb8($a3)
/* 6373C 80072F3C 01000224 */  addiu      $v0, $zero, 1
/* 63740 80072F40 03006210 */  beq        $v1, $v0, .L80072F50
/* 63744 80072F44 0900C22C */   sltiu     $v0, $a2, 9
.L80072F48:
/* 63748 80072F48 0800E003 */  jr         $ra
/* 6374C 80072F4C FFFF0224 */   addiu     $v0, $zero, -1
.L80072F50:
/* 63750 80072F50 FDFF4010 */  beqz       $v0, .L80072F48
/* 63754 80072F54 00000000 */   nop
/* 63758 80072F58 FBFF8004 */  bltz       $a0, .L80072F48
/* 6375C 80072F5C 00000000 */   nop
/* 63760 80072F60 F9FFA004 */  bltz       $a1, .L80072F48
/* 63764 80072F64 41018228 */   slti      $v0, $a0, 0x141
/* 63768 80072F68 F7FF4010 */  beqz       $v0, .L80072F48
/* 6376C 80072F6C F100A228 */   slti      $v0, $a1, 0xf1
/* 63770 80072F70 F5FF4010 */  beqz       $v0, .L80072F48
/* 63774 80072F74 21100000 */   addu      $v0, $zero, $zero
/* 63778 80072F78 BA00E6A4 */  sh         $a2, 0xba($a3)
/* 6377C 80072F7C BC00E4A4 */  sh         $a0, 0xbc($a3)
/* 63780 80072F80 0800E003 */  jr         $ra
/* 63784 80072F84 BE00E5A4 */   sh        $a1, 0xbe($a3)
