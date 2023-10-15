.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80096208
/* 86A08 80096208 1B80033C */  lui        $v1, %hi(D_801B2A8C)
/* 86A0C 8009620C 01000224 */  addiu      $v0, $zero, 1
/* 86A10 80096210 8C2A62AC */  sw         $v0, %lo(D_801B2A8C)($v1)
/* 86A14 80096214 FFFF0524 */  addiu      $a1, $zero, -1
/* 86A18 80096218 1B80023C */  lui        $v0, %hi(D_801B2AC0)
/* 86A1C 8009621C C02A4224 */  addiu      $v0, $v0, %lo(D_801B2AC0)
/* 86A20 80096220 1B80033C */  lui        $v1, %hi(D_801B2A90)
/* 86A24 80096224 902A6324 */  addiu      $v1, $v1, %lo(D_801B2A90)
/* 86A28 80096228 0B000424 */  addiu      $a0, $zero, 0xb
.L8009622C:
/* 86A2C 8009622C 000045AC */  sw         $a1, ($v0)
/* 86A30 80096230 04004224 */  addiu      $v0, $v0, 4
/* 86A34 80096234 000065AC */  sw         $a1, ($v1)
/* 86A38 80096238 FFFF8424 */  addiu      $a0, $a0, -1
/* 86A3C 8009623C FBFF8104 */  bgez       $a0, .L8009622C
/* 86A40 80096240 04006324 */   addiu     $v1, $v1, 4
/* 86A44 80096244 0800E003 */  jr         $ra
/* 86A48 80096248 00000000 */   nop
