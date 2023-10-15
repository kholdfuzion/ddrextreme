.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SRMP_OBJ_400
/* A8714 800B7F14 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A8718 800B7F18 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A871C 800B7F1C 00000000 */  nop
/* A8720 800B7F20 840140A4 */  sh         $zero, 0x184($v0)
/* A8724 800B7F24 860140A4 */  sh         $zero, 0x186($v0)
/* A8728 800B7F28 0F80023C */  lui        $v0, %hi(D_800EC798)
/* A872C 800B7F2C 98C74224 */  addiu      $v0, $v0, %lo(D_800EC798)
/* A8730 800B7F30 000040A4 */  sh         $zero, ($v0)
/* A8734 800B7F34 020040A4 */  sh         $zero, 2($v0)
