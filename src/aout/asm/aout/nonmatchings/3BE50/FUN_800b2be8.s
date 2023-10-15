.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2be8
/* A33E8 800B2BE8 1E80033C */  lui        $v1, %hi(D_801E0766)
/* A33EC 800B2BEC 66076290 */  lbu        $v0, %lo(D_801E0766)($v1)
/* A33F0 800B2BF0 0800E003 */  jr         $ra
/* A33F4 800B2BF4 2B100200 */   sltu      $v0, $zero, $v0
