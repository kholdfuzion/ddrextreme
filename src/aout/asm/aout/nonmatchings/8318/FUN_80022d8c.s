.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022d8c
/* 1358C 80022D8C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13590 80022D90 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 13594 80022D94 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 13598 80022D98 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 1359C 80022D9C 27000224 */  addiu      $v0, $zero, 0x27
/* 135A0 80022DA0 1000BFAF */  sw         $ra, 0x10($sp)
/* 135A4 80022DA4 5056010C */  jal        FUN_80055940
/* 135A8 80022DA8 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 135AC 80022DAC 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 135B0 80022DB0 A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 135B4 80022DB4 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 135B8 80022DB8 B40D828C */  lw         $v0, 0xdb4($a0)
/* 135BC 80022DBC 1000BF8F */  lw         $ra, 0x10($sp)
/* 135C0 80022DC0 24104300 */  and        $v0, $v0, $v1
/* 135C4 80022DC4 20004234 */  ori        $v0, $v0, 0x20
/* 135C8 80022DC8 B40D82AC */  sw         $v0, 0xdb4($a0)
/* 135CC 80022DCC 0800E003 */  jr         $ra
/* 135D0 80022DD0 1800BD27 */   addiu     $sp, $sp, 0x18
