.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0e7c
/* A167C 800B0E7C 1D80023C */  lui        $v0, %hi(D_801D2398)
/* A1680 800B0E80 98234224 */  addiu      $v0, $v0, %lo(D_801D2398)
/* A1684 800B0E84 00210400 */  sll        $a0, $a0, 4
/* A1688 800B0E88 21208200 */  addu       $a0, $a0, $v0
/* A168C 800B0E8C 0C008284 */  lh         $v0, 0xc($a0)
/* A1690 800B0E90 0800E003 */  jr         $ra
/* A1694 800B0E94 00000000 */   nop
