.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b07b4
/* A0FB4 800B07B4 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* A0FB8 800B07B8 1D80023C */  lui        $v0, %hi(D_801D0048)
/* A0FBC 800B07BC 48004224 */  addiu      $v0, $v0, %lo(D_801D0048)
/* A0FC0 800B07C0 1400448C */  lw         $a0, 0x14($v0)
/* A0FC4 800B07C4 01000324 */  addiu      $v1, $zero, 1
/* A0FC8 800B07C8 030043A0 */  sb         $v1, 3($v0)
/* A0FCC 800B07CC FFFF0324 */  addiu      $v1, $zero, -1
/* A0FD0 800B07D0 100043AC */  sw         $v1, 0x10($v0)
/* A0FD4 800B07D4 0C0044AC */  sw         $a0, 0xc($v0)
/* A0FD8 800B07D8 21100000 */  addu       $v0, $zero, $zero
/* A0FDC 800B07DC 0800E003 */  jr         $ra
/* A0FE0 800B07E0 1000BD27 */   addiu     $sp, $sp, 0x10
