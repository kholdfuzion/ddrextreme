.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80067a0c
/* 5820C 80067A0C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 58210 80067A10 1000B0AF */  sw         $s0, 0x10($sp)
/* 58214 80067A14 21808000 */  addu       $s0, $a0, $zero
/* 58218 80067A18 21280000 */  addu       $a1, $zero, $zero
/* 5821C 80067A1C 1400BFAF */  sw         $ra, 0x14($sp)
/* 58220 80067A20 F6A2000C */  jal        memset
/* 58224 80067A24 34000624 */   addiu     $a2, $zero, 0x34
/* 58228 80067A28 21200002 */  addu       $a0, $s0, $zero
/* 5822C 80067A2C 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 58230 80067A30 1C00458C */  lw         $a1, %lo(D_800F001C)($v0)
/* 58234 80067A34 FFFF0324 */  addiu      $v1, $zero, -1
/* 58238 80067A38 080003AE */  sw         $v1, 8($s0)
/* 5823C 80067A3C 0C0000AE */  sw         $zero, 0xc($s0)
/* 58240 80067A40 100000AE */  sw         $zero, 0x10($s0)
/* 58244 80067A44 1C0000AE */  sw         $zero, 0x1c($s0)
/* 58248 80067A48 0300A524 */  addiu      $a1, $a1, 3
/* 5824C 80067A4C 1F97010C */  jal        FUN_80065c7c
/* 58250 80067A50 040005AE */   sw        $a1, 4($s0)
/* 58254 80067A54 ED58020C */  jal        FUN_800963b4
/* 58258 80067A58 00000000 */   nop
/* 5825C 80067A5C 1400BF8F */  lw         $ra, 0x14($sp)
/* 58260 80067A60 1000B08F */  lw         $s0, 0x10($sp)
/* 58264 80067A64 0800E003 */  jr         $ra
/* 58268 80067A68 1800BD27 */   addiu     $sp, $sp, 0x18
