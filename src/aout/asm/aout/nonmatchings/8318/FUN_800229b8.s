.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800229b8
/* 131B8 800229B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 131BC 800229BC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 131C0 800229C0 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 131C4 800229C4 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 131C8 800229C8 20000224 */  addiu      $v0, $zero, 0x20
/* 131CC 800229CC 1000BFAF */  sw         $ra, 0x10($sp)
/* 131D0 800229D0 AE55010C */  jal        FUN_800556b8
/* 131D4 800229D4 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 131D8 800229D8 12CB020C */  jal        FUN_800b2c48
/* 131DC 800229DC 21200000 */   addu      $a0, $zero, $zero
/* 131E0 800229E0 1000BF8F */  lw         $ra, 0x10($sp)
/* 131E4 800229E4 00000000 */  nop
/* 131E8 800229E8 0800E003 */  jr         $ra
/* 131EC 800229EC 1800BD27 */   addiu     $sp, $sp, 0x18
