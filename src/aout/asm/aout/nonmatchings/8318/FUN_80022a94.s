.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022a94
/* 13294 80022A94 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13298 80022A98 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 1329C 80022A9C 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 132A0 80022AA0 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 132A4 80022AA4 21000224 */  addiu      $v0, $zero, 0x21
/* 132A8 80022AA8 1000BFAF */  sw         $ra, 0x10($sp)
/* 132AC 80022AAC C155010C */  jal        FUN_80055704
/* 132B0 80022AB0 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 132B4 80022AB4 1000BF8F */  lw         $ra, 0x10($sp)
/* 132B8 80022AB8 00000000 */  nop
/* 132BC 80022ABC 0800E003 */  jr         $ra
/* 132C0 80022AC0 1800BD27 */   addiu     $sp, $sp, 0x18
