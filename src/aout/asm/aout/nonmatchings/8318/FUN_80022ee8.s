.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022ee8
/* 136E8 80022EE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 136EC 80022EEC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 136F0 80022EF0 0F80033C */  lui        $v1, 0x800f
/* 136F4 80022EF4 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 136F8 80022EF8 24000224 */  addiu      $v0, $zero, 0x24
/* 136FC 80022EFC 1000B0AF */  sw         $s0, 0x10($sp)
/* 13700 80022F00 21808000 */  addu       $s0, $a0, $zero
/* 13704 80022F04 1400BFAF */  sw         $ra, 0x14($sp)
/* 13708 80022F08 3E55010C */  jal        FUN_800554f8
/* 1370C 80022F0C 280062A4 */   sh        $v0, 0x28($v1)
/* 13710 80022F10 0400038E */  lw         $v1, 4($s0)
/* 13714 80022F14 01000224 */  addiu      $v0, $zero, 1
/* 13718 80022F18 03006214 */  bne        $v1, $v0, .L80022F28
/* 1371C 80022F1C 00000000 */   nop
/* 13720 80022F20 D5C1020C */  jal        FUN_800b0754
/* 13724 80022F24 00000000 */   nop
.L80022F28:
/* 13728 80022F28 1400BF8F */  lw         $ra, 0x14($sp)
/* 1372C 80022F2C 1000B08F */  lw         $s0, 0x10($sp)
/* 13730 80022F30 0800E003 */  jr         $ra
/* 13734 80022F34 1800BD27 */   addiu     $sp, $sp, 0x18
