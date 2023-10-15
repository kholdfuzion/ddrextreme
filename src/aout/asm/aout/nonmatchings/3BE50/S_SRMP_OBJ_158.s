.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SRMP_OBJ_158
/* A846C 800B7C6C 0F80023C */  lui        $v0, %hi(D_800EC7A0)
/* A8470 800B7C70 A0C74224 */  addiu      $v0, $v0, %lo(D_800EC7A0)
/* A8474 800B7C74 000040AC */  sw         $zero, ($v0)
/* A8478 800B7C78 FCFF40AC */  sw         $zero, -4($v0)
