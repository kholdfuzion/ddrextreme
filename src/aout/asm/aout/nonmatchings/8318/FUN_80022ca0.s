.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022ca0
/* 134A0 80022CA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 134A4 80022CA4 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 134A8 80022CA8 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 134AC 80022CAC 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 134B0 80022CB0 27000224 */  addiu      $v0, $zero, 0x27
/* 134B4 80022CB4 1000BFAF */  sw         $ra, 0x10($sp)
/* 134B8 80022CB8 0756010C */  jal        FUN_8005581c
/* 134BC 80022CBC 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 134C0 80022CC0 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 134C4 80022CC4 A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 134C8 80022CC8 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 134CC 80022CCC B40D828C */  lw         $v0, 0xdb4($a0)
/* 134D0 80022CD0 1000BF8F */  lw         $ra, 0x10($sp)
/* 134D4 80022CD4 24104300 */  and        $v0, $v0, $v1
/* 134D8 80022CD8 20004234 */  ori        $v0, $v0, 0x20
/* 134DC 80022CDC B40D82AC */  sw         $v0, 0xdb4($a0)
/* 134E0 80022CE0 0800E003 */  jr         $ra
/* 134E4 80022CE4 1800BD27 */   addiu     $sp, $sp, 0x18
