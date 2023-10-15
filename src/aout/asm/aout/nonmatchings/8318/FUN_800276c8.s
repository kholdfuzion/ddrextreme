.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800276c8
/* 17EC8 800276C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17ECC 800276CC 0E80023C */  lui        $v0, %hi(D_800D8C9C)
/* 17ED0 800276D0 1000BFAF */  sw         $ra, 0x10($sp)
/* 17ED4 800276D4 0400858C */  lw         $a1, 4($a0)
/* 17ED8 800276D8 9C8C4224 */  addiu      $v0, $v0, %lo(D_800D8C9C)
/* 17EDC 800276DC 80180500 */  sll        $v1, $a1, 2
/* 17EE0 800276E0 21104300 */  addu       $v0, $v0, $v1
/* 17EE4 800276E4 4800438C */  lw         $v1, 0x48($v0)
/* 17EE8 800276E8 00000000 */  nop
/* 17EEC 800276EC 09F86000 */  jalr       $v1
/* 17EF0 800276F0 00000000 */   nop
/* 17EF4 800276F4 EDC1020C */  jal        FUN_800b07b4
/* 17EF8 800276F8 00000000 */   nop
/* 17EFC 800276FC 1000BF8F */  lw         $ra, 0x10($sp)
/* 17F00 80027700 00000000 */  nop
/* 17F04 80027704 0800E003 */  jr         $ra
/* 17F08 80027708 1800BD27 */   addiu     $sp, $sp, 0x18
