.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1f90
/* A2790 800B1F90 1D80033C */  lui        $v1, %hi(D_801D2CC8)
/* A2794 800B1F94 C82C6324 */  addiu      $v1, $v1, %lo(D_801D2CC8)
/* A2798 800B1F98 80100400 */  sll        $v0, $a0, 2
/* A279C 800B1F9C 21104400 */  addu       $v0, $v0, $a0
/* A27A0 800B1FA0 80100200 */  sll        $v0, $v0, 2
/* A27A4 800B1FA4 21186200 */  addu       $v1, $v1, $v0
/* A27A8 800B1FA8 0C00628C */  lw         $v0, 0xc($v1)
/* A27AC 800B1FAC 0800E003 */  jr         $ra
/* A27B0 800B1FB0 00000000 */   nop
