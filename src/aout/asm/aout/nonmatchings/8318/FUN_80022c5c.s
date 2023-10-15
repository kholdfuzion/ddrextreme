.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022c5c
/* 1345C 80022C5C 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 13460 80022C60 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 13464 80022C64 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 13468 80022C68 1F000224 */  addiu      $v0, $zero, 0x1f
/* 1346C 80022C6C 0800E003 */  jr         $ra
/* 13470 80022C70 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
