.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800ABAFC
/* 9C2FC 800ABAFC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9C300 800ABB00 1000BFAF */  sw         $ra, 0x10($sp)
/* 9C304 800ABB04 F8AE020C */  jal        FUN_800abbe0
/* 9C308 800ABB08 00000000 */   nop
/* 9C30C 800ABB0C 15004010 */  beqz       $v0, .L800ABB64
/* 9C310 800ABB10 0F80023C */   lui       $v0, %hi(D_800EC6F8)
/* 9C314 800ABB14 F8C6438C */  lw         $v1, %lo(D_800EC6F8)($v0)
/* 9C318 800ABB18 00000000 */  nop
/* 9C31C 800ABB1C 11006004 */  bltz       $v1, .L800ABB64
/* 9C320 800ABB20 0F80023C */   lui       $v0, %hi(D_800EC6FC)
/* 9C324 800ABB24 FCC6438C */  lw         $v1, %lo(D_800EC6FC)($v0)
/* 9C328 800ABB28 00000000 */  nop
/* 9C32C 800ABB2C 0E006014 */  bnez       $v1, .L800ABB68
/* 9C330 800ABB30 02000224 */   addiu     $v0, $zero, 2
/* 9C334 800ABB34 0F80023C */  lui        $v0, %hi(D_800EC704)
/* 9C338 800ABB38 04C7448C */  lw         $a0, %lo(D_800EC704)($v0)
/* 9C33C 800ABB3C 7A19030C */  jal        FUN_800c65e8
/* 9C340 800ABB40 00000000 */   nop
/* 9C344 800ABB44 21184000 */  addu       $v1, $v0, $zero
/* 9C348 800ABB48 FEFF0224 */  addiu      $v0, $zero, -2
/* 9C34C 800ABB4C 06006210 */  beq        $v1, $v0, .L800ABB68
/* 9C350 800ABB50 21100000 */   addu      $v0, $zero, $zero
/* 9C354 800ABB54 04006104 */  bgez       $v1, .L800ABB68
/* 9C358 800ABB58 01000224 */   addiu     $v0, $zero, 1
/* 9C35C 800ABB5C DAAE0208 */  j          .L800ABB68
/* 9C360 800ABB60 FFFF0224 */   addiu     $v0, $zero, -1
.L800ABB64:
/* 9C364 800ABB64 02000224 */  addiu      $v0, $zero, 2
.L800ABB68:
/* 9C368 800ABB68 1000BF8F */  lw         $ra, 0x10($sp)
/* 9C36C 800ABB6C 00000000 */  nop
/* 9C370 800ABB70 0800E003 */  jr         $ra
/* 9C374 800ABB74 1800BD27 */   addiu     $sp, $sp, 0x18
