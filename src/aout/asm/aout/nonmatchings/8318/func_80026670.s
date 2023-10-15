.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026670
/* 16E70 80026670 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 16E74 80026674 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 16E78 80026678 1400B1AF */  sw         $s1, 0x14($sp)
/* 16E7C 8002667C A8FF5124 */  addiu      $s1, $v0, %lo(D_800EFFA8)
/* 16E80 80026680 1800BFAF */  sw         $ra, 0x18($sp)
/* 16E84 80026684 1000B0AF */  sw         $s0, 0x10($sp)
/* 16E88 80026688 7800238E */  lw         $v1, 0x78($s1)
/* 16E8C 8002668C A0000224 */  addiu      $v0, $zero, 0xa0
/* 16E90 80026690 04006214 */  bne        $v1, $v0, .L800266A4
/* 16E94 80026694 801F023C */   lui       $v0, 0x1f80
/* 16E98 80026698 12CB020C */  jal        FUN_800b2c48
/* 16E9C 8002669C 03000424 */   addiu     $a0, $zero, 3
/* 16EA0 800266A0 801F023C */  lui        $v0, 0x1f80
.L800266A4:
/* 16EA4 800266A4 FC034234 */  ori        $v0, $v0, 0x3fc
/* 16EA8 800266A8 21404000 */  addu       $t0, $v0, $zero
/* 16EAC 800266AC 00001DAD */  sw         $sp, ($t0)
/* 16EB0 800266B0 FCFF0825 */  addiu      $t0, $t0, -4
/* 16EB4 800266B4 21E80001 */  addu       $sp, $t0, $zero
/* 16EB8 800266B8 26D9010C */  jal        FUN_80076498
/* 16EBC 800266BC 1380103C */   lui       $s0, %hi(D_80129190)
/* 16EC0 800266C0 909102AE */  sw         $v0, %lo(D_80129190)($s0)
/* 16EC4 800266C4 0400BD27 */  addiu      $sp, $sp, 4
/* 16EC8 800266C8 0000BD8F */  lw         $sp, ($sp)
/* 16ECC 800266CC 7C27010C */  jal        FUN_80049df0
/* 16ED0 800266D0 00000000 */   nop
/* 16ED4 800266D4 9091038E */  lw         $v1, -0x6e70($s0)
/* 16ED8 800266D8 FFFF0224 */  addiu      $v0, $zero, -1
/* 16EDC 800266DC 07006214 */  bne        $v1, $v0, .L800266FC
/* 16EE0 800266E0 05000224 */   addiu     $v0, $zero, 5
/* 16EE4 800266E4 7800238E */  lw         $v1, 0x78($s1)
/* 16EE8 800266E8 00000000 */  nop
/* 16EEC 800266EC 09076328 */  slti       $v1, $v1, 0x709
/* 16EF0 800266F0 02006010 */  beqz       $v1, .L800266FC
/* 16EF4 800266F4 06000224 */   addiu     $v0, $zero, 6
/* 16EF8 800266F8 04000224 */  addiu      $v0, $zero, 4
.L800266FC:
/* 16EFC 800266FC 1800BF8F */  lw         $ra, 0x18($sp)
/* 16F00 80026700 1400B18F */  lw         $s1, 0x14($sp)
/* 16F04 80026704 1000B08F */  lw         $s0, 0x10($sp)
/* 16F08 80026708 0800E003 */  jr         $ra
/* 16F0C 8002670C 2000BD27 */   addiu     $sp, $sp, 0x20
