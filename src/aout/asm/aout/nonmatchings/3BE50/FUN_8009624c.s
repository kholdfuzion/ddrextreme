.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009624c
/* 86A4C 8009624C 1B80023C */  lui        $v0, %hi(D_801B2A8C)
/* 86A50 80096250 8C2A40AC */  sw         $zero, %lo(D_801B2A8C)($v0)
/* 86A54 80096254 FFFF0524 */  addiu      $a1, $zero, -1
/* 86A58 80096258 1B80023C */  lui        $v0, %hi(D_801B2AC0)
/* 86A5C 8009625C C02A4224 */  addiu      $v0, $v0, %lo(D_801B2AC0)
/* 86A60 80096260 1B80033C */  lui        $v1, %hi(D_801B2A90)
/* 86A64 80096264 902A6324 */  addiu      $v1, $v1, %lo(D_801B2A90)
/* 86A68 80096268 0B000424 */  addiu      $a0, $zero, 0xb
.L8009626C:
/* 86A6C 8009626C 000045AC */  sw         $a1, ($v0)
/* 86A70 80096270 04004224 */  addiu      $v0, $v0, 4
/* 86A74 80096274 000065AC */  sw         $a1, ($v1)
/* 86A78 80096278 FFFF8424 */  addiu      $a0, $a0, -1
/* 86A7C 8009627C FBFF8104 */  bgez       $a0, .L8009626C
/* 86A80 80096280 04006324 */   addiu     $v1, $v1, 4
/* 86A84 80096284 0800E003 */  jr         $ra
/* 86A88 80096288 00000000 */   nop
