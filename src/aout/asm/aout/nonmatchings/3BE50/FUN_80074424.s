.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80074424
/* 64C24 80074424 00300424 */  addiu      $a0, $zero, 0x3000
/* 64C28 80074428 1B80023C */  lui        $v0, %hi(D_801B0C98)
/* 64C2C 8007442C 980C4224 */  addiu      $v0, $v0, %lo(D_801B0C98)
/* 64C30 80074430 07000324 */  addiu      $v1, $zero, 7
.L80074434:
/* 64C34 80074434 C0FE8424 */  addiu      $a0, $a0, -0x140
/* 64C38 80074438 000040AC */  sw         $zero, ($v0)
/* 64C3C 8007443C 040044AC */  sw         $a0, 4($v0)
/* 64C40 80074440 080040AC */  sw         $zero, 8($v0)
/* 64C44 80074444 0C0040AC */  sw         $zero, 0xc($v0)
/* 64C48 80074448 FFFF6324 */  addiu      $v1, $v1, -1
/* 64C4C 8007444C F9FF6104 */  bgez       $v1, .L80074434
/* 64C50 80074450 14004224 */   addiu     $v0, $v0, 0x14
/* 64C54 80074454 0800E003 */  jr         $ra
/* 64C58 80074458 21100000 */   addu      $v0, $zero, $zero
