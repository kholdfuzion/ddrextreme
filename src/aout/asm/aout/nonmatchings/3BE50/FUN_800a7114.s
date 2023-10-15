.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a7114
/* 97914 800A7114 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97918 800A7118 1000B0AF */  sw         $s0, 0x10($sp)
/* 9791C 800A711C 21808000 */  addu       $s0, $a0, $zero
/* 97920 800A7120 01000226 */  addiu      $v0, $s0, 1
/* 97924 800A7124 0200422C */  sltiu      $v0, $v0, 2
/* 97928 800A7128 03004010 */  beqz       $v0, .L800A7138
/* 9792C 800A712C 1400BFAF */   sw        $ra, 0x14($sp)
/* 97930 800A7130 949A020C */  jal        FUN_800a6a50
/* 97934 800A7134 03000424 */   addiu     $a0, $zero, 3
.L800A7138:
/* 97938 800A7138 01000224 */  addiu      $v0, $zero, 1
/* 9793C 800A713C 03000212 */  beq        $s0, $v0, .L800A714C
/* 97940 800A7140 FFFF0224 */   addiu     $v0, $zero, -1
/* 97944 800A7144 03000216 */  bne        $s0, $v0, .L800A7154
/* 97948 800A7148 00000000 */   nop
.L800A714C:
/* 9794C 800A714C 949A020C */  jal        FUN_800a6a50
/* 97950 800A7150 07000424 */   addiu     $a0, $zero, 7
.L800A7154:
/* 97954 800A7154 1400BF8F */  lw         $ra, 0x14($sp)
/* 97958 800A7158 1000B08F */  lw         $s0, 0x10($sp)
/* 9795C 800A715C 0800E003 */  jr         $ra
/* 97960 800A7160 1800BD27 */   addiu     $sp, $sp, 0x18
