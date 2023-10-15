.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005e904
/* 4F104 8005E904 0E80033C */  lui        $v1, %hi(D_800DAF94)
/* 4F108 8005E908 94AF648C */  lw         $a0, %lo(D_800DAF94)($v1)
/* 4F10C 8005E90C 00000000 */  nop
/* 4F110 8005E910 0000858C */  lw         $a1, ($a0)
/* 4F114 8005E914 00000000 */  nop
/* 4F118 8005E918 0200A228 */  slti       $v0, $a1, 2
/* 4F11C 8005E91C 02004014 */  bnez       $v0, .L8005E928
/* 4F120 8005E920 28000224 */   addiu     $v0, $zero, 0x28
/* 4F124 8005E924 0100A224 */  addiu      $v0, $a1, 1
.L8005E928:
/* 4F128 8005E928 000082AC */  sw         $v0, ($a0)
/* 4F12C 8005E92C 94AF638C */  lw         $v1, -0x506c($v1)
/* 4F130 8005E930 00000000 */  nop
/* 4F134 8005E934 0000628C */  lw         $v0, ($v1)
/* 4F138 8005E938 00000000 */  nop
/* 4F13C 8005E93C 29004228 */  slti       $v0, $v0, 0x29
/* 4F140 8005E940 02004014 */  bnez       $v0, .L8005E94C
/* 4F144 8005E944 28000224 */   addiu     $v0, $zero, 0x28
/* 4F148 8005E948 000062AC */  sw         $v0, ($v1)
.L8005E94C:
/* 4F14C 8005E94C 0800E003 */  jr         $ra
/* 4F150 8005E950 00000000 */   nop
