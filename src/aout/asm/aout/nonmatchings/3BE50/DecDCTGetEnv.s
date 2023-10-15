.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTGetEnv
/* 63978 80073178 21308000 */  addu       $a2, $a0, $zero
/* 6397C 8007317C 0E80053C */  lui        $a1, %hi(D_800DAFE4)
/* 63980 80073180 E4AFA524 */  addiu      $a1, $a1, %lo(D_800DAFE4)
/* 63984 80073184 0F000324 */  addiu      $v1, $zero, 0xf
/* 63988 80073188 FFFF0724 */  addiu      $a3, $zero, -1
.L8007318C:
/* 6398C 8007318C 0000A28C */  lw         $v0, ($a1)
/* 63990 80073190 0400A524 */  addiu      $a1, $a1, 4
/* 63994 80073194 FFFF6324 */  addiu      $v1, $v1, -1
/* 63998 80073198 0000C2AC */  sw         $v0, ($a2)
/* 6399C 8007319C FBFF6714 */  bne        $v1, $a3, .L8007318C
/* 639A0 800731A0 0400C624 */   addiu     $a2, $a2, 4
/* 639A4 800731A4 40008624 */  addiu      $a2, $a0, 0x40
/* 639A8 800731A8 0E80053C */  lui        $a1, %hi(D_800DB024)
/* 639AC 800731AC 24B0A524 */  addiu      $a1, $a1, %lo(D_800DB024)
/* 639B0 800731B0 0F000324 */  addiu      $v1, $zero, 0xf
/* 639B4 800731B4 FFFF0724 */  addiu      $a3, $zero, -1
.L800731B8:
/* 639B8 800731B8 0000A28C */  lw         $v0, ($a1)
/* 639BC 800731BC 0400A524 */  addiu      $a1, $a1, 4
/* 639C0 800731C0 FFFF6324 */  addiu      $v1, $v1, -1
/* 639C4 800731C4 0000C2AC */  sw         $v0, ($a2)
/* 639C8 800731C8 FBFF6714 */  bne        $v1, $a3, .L800731B8
/* 639CC 800731CC 0400C624 */   addiu     $a2, $a2, 4
/* 639D0 800731D0 80008624 */  addiu      $a2, $a0, 0x80
/* 639D4 800731D4 0E80053C */  lui        $a1, %hi(D_800DB068)
/* 639D8 800731D8 68B0A524 */  addiu      $a1, $a1, %lo(D_800DB068)
/* 639DC 800731DC 1F000324 */  addiu      $v1, $zero, 0x1f
/* 639E0 800731E0 FFFF0724 */  addiu      $a3, $zero, -1
.L800731E4:
/* 639E4 800731E4 0000A28C */  lw         $v0, ($a1)
/* 639E8 800731E8 0400A524 */  addiu      $a1, $a1, 4
/* 639EC 800731EC FFFF6324 */  addiu      $v1, $v1, -1
/* 639F0 800731F0 0000C2AC */  sw         $v0, ($a2)
/* 639F4 800731F4 FBFF6714 */  bne        $v1, $a3, .L800731E4
/* 639F8 800731F8 0400C624 */   addiu     $a2, $a2, 4
/* 639FC 800731FC 0800E003 */  jr         $ra
/* 63A00 80073200 21108000 */   addu      $v0, $a0, $zero
