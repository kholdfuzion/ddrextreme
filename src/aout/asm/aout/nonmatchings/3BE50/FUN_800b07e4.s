.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b07e4
/* A0FE4 800B07E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A0FE8 800B07E8 1000BFAF */  sw         $ra, 0x10($sp)
/* A0FEC 800B07EC 8EC4020C */  jal        FUN_800b1238
/* A0FF0 800B07F0 00000000 */   nop
/* A0FF4 800B07F4 1D80033C */  lui        $v1, %hi(D_801D0048)
/* A0FF8 800B07F8 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* A0FFC 800B07FC 1000BF8F */  lw         $ra, 0x10($sp)
/* A1000 800B0800 FFFF0424 */  addiu      $a0, $zero, -1
/* A1004 800B0804 100064AC */  sw         $a0, 0x10($v1)
/* A1008 800B0808 0B0060A0 */  sb         $zero, 0xb($v1)
/* A100C 800B080C 0A0060A0 */  sb         $zero, 0xa($v1)
/* A1010 800B0810 0800E003 */  jr         $ra
/* A1014 800B0814 1800BD27 */   addiu     $sp, $sp, 0x18
