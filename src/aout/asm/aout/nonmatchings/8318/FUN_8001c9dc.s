.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c9dc
/* D1DC 8001C9DC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D1E0 8001C9E0 1000BFAF */  sw         $ra, 0x10($sp)
/* D1E4 8001C9E4 480B010C */  jal        FUN_80042d20
/* D1E8 8001C9E8 00000000 */   nop
/* D1EC 8001C9EC 1780043C */  lui        $a0, %hi(D_8016EB10)
/* D1F0 8001C9F0 F009010C */  jal        FUN_800427c0
/* D1F4 8001C9F4 10EB8424 */   addiu     $a0, $a0, %lo(D_8016EB10)
/* D1F8 8001C9F8 1000BF8F */  lw         $ra, 0x10($sp)
/* D1FC 8001C9FC 00000000 */  nop
/* D200 8001CA00 0800E003 */  jr         $ra
/* D204 8001CA04 1800BD27 */   addiu     $sp, $sp, 0x18
