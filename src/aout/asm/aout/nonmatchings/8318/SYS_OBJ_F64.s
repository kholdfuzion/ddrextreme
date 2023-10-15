.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_F64
/* 9748 80018F48 2180A000 */  addu       $s0, $a1, $zero
/* 974C 80018F4C 02000526 */  addiu      $a1, $s0, 2
/* 9750 80018F50 2A104502 */  slt        $v0, $s2, $a1
/* 9754 80018F54 29004014 */  bnez       $v0, .L80018FFC
/* 9758 80018F58 3201422A */   slti      $v0, $s2, 0x132
/* 975C 80018F5C FC630008 */  j          SYS_OBJ_100C
/* 9760 80018F60 31010524 */   addiu     $a1, $zero, 0x131
.L80018F64:
/* 9764 80018F64 F4018228 */  slti       $v0, $a0, 0x1f4
/* 9768 80018F68 05004014 */  bnez       $v0, .L80018F80
/* 976C 80018F6C F4010524 */   addiu     $a1, $zero, 0x1f4
/* 9770 80018F70 B30C8228 */  slti       $v0, $a0, 0xcb3
/* 9774 80018F74 02004010 */  beqz       $v0, .L80018F80
/* 9778 80018F78 B20C0524 */   addiu     $a1, $zero, 0xcb2
/* 977C 80018F7C 21288000 */  addu       $a1, $a0, $zero
.L80018F80:
/* 9780 80018F80 0D80023C */  lui        $v0, %hi(D_800D2C94)
/* 9784 80018F84 21104600 */  addu       $v0, $v0, $a2
/* 9788 80018F88 942C4290 */  lbu        $v0, %lo(D_800D2C94)($v0)
/* 978C 80018F8C 2120A000 */  addu       $a0, $a1, $zero
/* 9790 80018F90 80100200 */  sll        $v0, $v0, 2
/* 9794 80018F94 21288200 */  addu       $a1, $a0, $v0
/* 9798 80018F98 2A106500 */  slt        $v0, $v1, $a1
/* 979C 80018F9C 06004014 */  bnez       $v0, .L80018FB8
/* 97A0 80018FA0 1000022A */   slti      $v0, $s0, 0x10
/* 97A4 80018FA4 DB0C6228 */  slti       $v0, $v1, 0xcdb
/* 97A8 80018FA8 02004010 */  beqz       $v0, .L80018FB4
/* 97AC 80018FAC DA0C0524 */   addiu     $a1, $zero, 0xcda
/* 97B0 80018FB0 21286000 */  addu       $a1, $v1, $zero
.L80018FB4:
/* 97B4 80018FB4 1000022A */  slti       $v0, $s0, 0x10
.L80018FB8:
/* 97B8 80018FB8 06004014 */  bnez       $v0, .L80018FD4
/* 97BC 80018FBC 2118A000 */   addu      $v1, $a1, $zero
/* 97C0 80018FC0 0201022A */  slti       $v0, $s0, 0x102
/* 97C4 80018FC4 04004010 */  beqz       $v0, SYS_OBJ_FF4
/* 97C8 80018FC8 01010524 */   addiu     $a1, $zero, 0x101
/* 97CC 80018FCC F6630008 */  j          SYS_OBJ_FF4
/* 97D0 80018FD0 21280002 */   addu      $a1, $s0, $zero
.L80018FD4:
/* 97D4 80018FD4 10000524 */  addiu      $a1, $zero, 0x10
