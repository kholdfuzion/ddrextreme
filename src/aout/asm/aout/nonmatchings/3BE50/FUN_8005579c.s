.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005579c
/* 45F9C 8005579C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45FA0 800557A0 0180043C */  lui        $a0, %hi(D_80013E24)
/* 45FA4 800557A4 1000BFAF */  sw         $ra, 0x10($sp)
/* 45FA8 800557A8 7878000C */  jal        getgameloopmode_8001e1e0
/* 45FAC 800557AC 243E8424 */   addiu     $a0, $a0, %lo(D_80013E24)
/* 45FB0 800557B0 21204000 */  addu       $a0, $v0, $zero
/* 45FB4 800557B4 FFFF0524 */  addiu      $a1, $zero, -1
/* 45FB8 800557B8 8876000C */  jal        FUN_8001da20
/* 45FBC 800557BC FFFF0624 */   addiu     $a2, $zero, -1
/* 45FC0 800557C0 1380033C */  lui        $v1, %hi(D_8012AB59)
/* 45FC4 800557C4 1000BF8F */  lw         $ra, 0x10($sp)
/* 45FC8 800557C8 01000224 */  addiu      $v0, $zero, 1
/* 45FCC 800557CC 59AB62A0 */  sb         $v0, %lo(D_8012AB59)($v1)
/* 45FD0 800557D0 0800E003 */  jr         $ra
/* 45FD4 800557D4 1800BD27 */   addiu     $sp, $sp, 0x18
