.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2b48
/* 93348 800A2B48 1B80023C */  lui        $v0, %hi(D_801B2B88)
/* 9334C 800A2B4C 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 93350 800A2B50 00000000 */  nop
/* 93354 800A2B54 0000668C */  lw         $a2, ($v1)
/* 93358 800A2B58 00000000 */  nop
/* 9335C 800A2B5C FFFFC224 */  addiu      $v0, $a2, -1
/* 93360 800A2B60 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 93364 800A2B64 03004014 */  bnez       $v0, .L800A2B74
/* 93368 800A2B68 80100600 */   sll       $v0, $a2, 2
.L800A2B6C:
/* 9336C 800A2B6C 0800E003 */  jr         $ra
/* 93370 800A2B70 21100000 */   addu      $v0, $zero, $zero
.L800A2B74:
/* 93374 800A2B74 21106200 */  addu       $v0, $v1, $v0
/* 93378 800A2B78 0400428C */  lw         $v0, 4($v0)
/* 9337C 800A2B7C 00000000 */  nop
/* 93380 800A2B80 FAFF4010 */  beqz       $v0, .L800A2B6C
/* 93384 800A2B84 00000000 */   nop
/* 93388 800A2B88 0000468C */  lw         $a2, ($v0)
/* 9338C 800A2B8C 00000000 */  nop
/* 93390 800A2B90 2B108600 */  sltu       $v0, $a0, $a2
/* 93394 800A2B94 08004010 */  beqz       $v0, .L800A2BB8
/* 93398 800A2B98 0A00C22C */   sltiu     $v0, $a2, 0xa
/* 9339C 800A2B9C 06004010 */  beqz       $v0, .L800A2BB8
/* 933A0 800A2BA0 21186400 */   addu      $v1, $v1, $a0
/* 933A4 800A2BA4 04016290 */  lbu        $v0, 0x104($v1)
/* 933A8 800A2BA8 80200500 */  sll        $a0, $a1, 2
/* 933AC 800A2BAC 07108200 */  srav       $v0, $v0, $a0
/* 933B0 800A2BB0 0800E003 */  jr         $ra
/* 933B4 800A2BB4 0F004230 */   andi      $v0, $v0, 0xf
.L800A2BB8:
/* 933B8 800A2BB8 0800E003 */  jr         $ra
/* 933BC 800A2BBC 21100000 */   addu      $v0, $zero, $zero
