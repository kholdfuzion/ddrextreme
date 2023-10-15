.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_107_OBJ_51C
/* 126C4 80021EC4 1380063C */  lui        $a2, %hi(D_801290E8)
/* 126C8 80021EC8 E890C624 */  addiu      $a2, $a2, %lo(D_801290E8)
/* 126CC 80021ECC 0000C28C */  lw         $v0, ($a2)
/* 126D0 80021ED0 0400C38C */  lw         $v1, 4($a2)
/* 126D4 80021ED4 0800C58C */  lw         $a1, 8($a2)
/* 126D8 80021ED8 000082AC */  sw         $v0, ($a0)
/* 126DC 80021EDC 040083AC */  sw         $v1, 4($a0)
/* 126E0 80021EE0 080085AC */  sw         $a1, 8($a0)
/* 126E4 80021EE4 0C00C28C */  lw         $v0, 0xc($a2)
/* 126E8 80021EE8 1000C38C */  lw         $v1, 0x10($a2)
/* 126EC 80021EEC 1400C58C */  lw         $a1, 0x14($a2)
/* 126F0 80021EF0 0C0082AC */  sw         $v0, 0xc($a0)
/* 126F4 80021EF4 100083AC */  sw         $v1, 0x10($a0)
/* 126F8 80021EF8 140085AC */  sw         $a1, 0x14($a0)
/* 126FC 80021EFC 1800C28C */  lw         $v0, 0x18($a2)
/* 12700 80021F00 1C00C38C */  lw         $v1, 0x1c($a2)
/* 12704 80021F04 180082AC */  sw         $v0, 0x18($a0)
/* 12708 80021F08 0800E003 */  jr         $ra
/* 1270C 80021F0C 1C0083AC */   sw        $v1, 0x1c($a0)
/* 12710 80021F10 00000000 */  nop
/* 12714 80021F14 00000000 */  nop
