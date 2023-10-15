.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005e7cc
/* 4EFCC 8005E7CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4EFD0 8005E7D0 0E80023C */  lui        $v0, %hi(D_800DAF90)
/* 4EFD4 8005E7D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EFD8 8005E7D8 90AF508C */  lw         $s0, %lo(D_800DAF90)($v0)
/* 4EFDC 8005E7DC 1400BFAF */  sw         $ra, 0x14($sp)
/* 4EFE0 8005E7E0 2A0C010C */  jal        FUN_800430a8
/* 4EFE4 8005E7E4 00000000 */   nop
/* 4EFE8 8005E7E8 76000424 */  addiu      $a0, $zero, 0x76
/* 4EFEC 8005E7EC FFFF0524 */  addiu      $a1, $zero, -1
/* 4EFF0 8005E7F0 8876000C */  jal        FUN_8001da20
/* 4EFF4 8005E7F4 FFFF0624 */   addiu     $a2, $zero, -1
/* 4EFF8 8005E7F8 21280000 */  addu       $a1, $zero, $zero
/* 4EFFC 8005E7FC BC040624 */  addiu      $a2, $zero, 0x4bc
/* 4F000 8005E800 F6A2000C */  jal        memset
/* 4F004 8005E804 21200002 */   addu      $a0, $s0, $zero
/* 4F008 8005E808 0F80033C */  lui        $v1, %hi(D_800F001C)
/* 4F00C 8005E80C 1C00648C */  lw         $a0, %lo(D_800F001C)($v1)
/* 4F010 8005E810 617A010C */  jal        srand
/* 4F014 8005E814 00000000 */   nop
/* 4F018 8005E818 1400BF8F */  lw         $ra, 0x14($sp)
/* 4F01C 8005E81C 1000B08F */  lw         $s0, 0x10($sp)
/* 4F020 8005E820 0800E003 */  jr         $ra
/* 4F024 8005E824 1800BD27 */   addiu     $sp, $sp, 0x18
