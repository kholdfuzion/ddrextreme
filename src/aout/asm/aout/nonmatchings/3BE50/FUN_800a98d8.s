.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a98d8
/* 9A0D8 800A98D8 0F80043C */  lui        $a0, %hi(D_800EC6E8)
/* 9A0DC 800A98DC E8C6838C */  lw         $v1, %lo(D_800EC6E8)($a0)
/* 9A0E0 800A98E0 01000224 */  addiu      $v0, $zero, 1
/* 9A0E4 800A98E4 02006214 */  bne        $v1, $v0, .L800A98F0
/* 9A0E8 800A98E8 00000000 */   nop
/* 9A0EC 800A98EC E8C680AC */  sw         $zero, -0x3918($a0)
.L800A98F0:
/* 9A0F0 800A98F0 E8C6828C */  lw         $v0, -0x3918($a0)
/* 9A0F4 800A98F4 0800E003 */  jr         $ra
/* 9A0F8 800A98F8 00000000 */   nop
