.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800268a8
/* 170A8 800268A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 170AC 800268AC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 170B0 800268B0 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 170B4 800268B4 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 170B8 800268B8 1B000224 */  addiu      $v0, $zero, 0x1b
/* 170BC 800268BC 1000BFAF */  sw         $ra, 0x10($sp)
/* 170C0 800268C0 2F28010C */  jal        FUN_8004a0bc
/* 170C4 800268C4 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 170C8 800268C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 170CC 800268CC 00000000 */  nop
/* 170D0 800268D0 0800E003 */  jr         $ra
/* 170D4 800268D4 1800BD27 */   addiu     $sp, $sp, 0x18
