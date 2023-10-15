.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2960
/* 93160 800A2960 FFFF8224 */  addiu      $v0, $a0, -1
/* 93164 800A2964 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 93168 800A2968 03004014 */  bnez       $v0, .L800A2978
/* 9316C 800A296C 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 93170 800A2970 0800E003 */  jr         $ra
/* 93174 800A2974 21100000 */   addu      $v0, $zero, $zero
.L800A2978:
/* 93178 800A2978 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 9317C 800A297C 80200400 */  sll        $a0, $a0, 2
/* 93180 800A2980 21186400 */  addu       $v1, $v1, $a0
/* 93184 800A2984 0400628C */  lw         $v0, 4($v1)
/* 93188 800A2988 00000000 */  nop
/* 9318C 800A298C 06004010 */  beqz       $v0, .L800A29A8
/* 93190 800A2990 00000000 */   nop
/* 93194 800A2994 0E004284 */  lh         $v0, 0xe($v0)
/* 93198 800A2998 00000000 */  nop
/* 9319C 800A299C 01004238 */  xori       $v0, $v0, 1
/* 931A0 800A29A0 0800E003 */  jr         $ra
/* 931A4 800A29A4 0100422C */   sltiu     $v0, $v0, 1
.L800A29A8:
/* 931A8 800A29A8 0800E003 */  jr         $ra
/* 931AC 800A29AC 21100000 */   addu      $v0, $zero, $zero
