.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_107_OBJ_4B8
/* 12660 80021E60 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 12664 80021E64 1000BFAF */  sw         $ra, 0x10($sp)
/* 12668 80021E68 1380063C */  lui        $a2, %hi(D_801290E8)
/* 1266C 80021E6C E890C624 */  addiu      $a2, $a2, %lo(D_801290E8)
/* 12670 80021E70 0000828C */  lw         $v0, ($a0)
/* 12674 80021E74 0400838C */  lw         $v1, 4($a0)
/* 12678 80021E78 0800858C */  lw         $a1, 8($a0)
/* 1267C 80021E7C 0000C2AC */  sw         $v0, ($a2)
/* 12680 80021E80 0400C3AC */  sw         $v1, 4($a2)
/* 12684 80021E84 0800C5AC */  sw         $a1, 8($a2)
/* 12688 80021E88 0C00828C */  lw         $v0, 0xc($a0)
/* 1268C 80021E8C 1000838C */  lw         $v1, 0x10($a0)
/* 12690 80021E90 1400858C */  lw         $a1, 0x14($a0)
/* 12694 80021E94 0C00C2AC */  sw         $v0, 0xc($a2)
/* 12698 80021E98 1000C3AC */  sw         $v1, 0x10($a2)
/* 1269C 80021E9C 1400C5AC */  sw         $a1, 0x14($a2)
/* 126A0 80021EA0 1800828C */  lw         $v0, 0x18($a0)
/* 126A4 80021EA4 1C00838C */  lw         $v1, 0x1c($a0)
/* 126A8 80021EA8 1800C2AC */  sw         $v0, 0x18($a2)
/* 126AC 80021EAC 2288000C */  jal        SetColorMatrix
/* 126B0 80021EB0 1C00C3AC */   sw        $v1, 0x1c($a2)
/* 126B4 80021EB4 1000BF8F */  lw         $ra, 0x10($sp)
/* 126B8 80021EB8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 126BC 80021EBC 0800E003 */  jr         $ra
/* 126C0 80021EC0 00000000 */   nop
