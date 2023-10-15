.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B681C
/* A701C 800B681C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7020 800B6820 1000BFAF */  sw         $ra, 0x10($sp)
/* A7024 800B6824 09DE020C */  jal        FUN_800b7824
/* A7028 800B6828 00000000 */   nop
/* A702C 800B682C 1E80023C */  lui        $v0, %hi(D_801E07D8)
/* A7030 800B6830 D807448C */  lw         $a0, %lo(D_801E07D8)($v0)
/* A7034 800B6834 1E80033C */  lui        $v1, %hi(D_801E07A8)
/* A7038 800B6838 A8D3020C */  jal        FUN_800b4ea0
/* A703C 800B683C A80760A0 */   sb        $zero, %lo(D_801E07A8)($v1)
/* A7040 800B6840 1000BF8F */  lw         $ra, 0x10($sp)
/* A7044 800B6844 00000000 */  nop
/* A7048 800B6848 0800E003 */  jr         $ra
/* A704C 800B684C 1800BD27 */   addiu     $sp, $sp, 0x18
