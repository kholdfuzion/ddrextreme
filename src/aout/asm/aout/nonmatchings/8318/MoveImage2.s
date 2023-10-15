.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel MoveImage2
/* B454 8001AC54 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B458 8001AC58 1000B0AF */  sw         $s0, 0x10($sp)
/* B45C 8001AC5C 21808000 */  addu       $s0, $a0, $zero
/* B460 8001AC60 1800B2AF */  sw         $s2, 0x18($sp)
/* B464 8001AC64 2190A000 */  addu       $s2, $a1, $zero
/* B468 8001AC68 1400B1AF */  sw         $s1, 0x14($sp)
/* B46C 8001AC6C 2188C000 */  addu       $s1, $a2, $zero
/* B470 8001AC70 0180043C */  lui        $a0, %hi(D_800101E4)
/* B474 8001AC74 E4018424 */  addiu      $a0, $a0, %lo(D_800101E4)
/* B478 8001AC78 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B47C 8001AC7C F260000C */  jal        SYS_OBJ_3E4
/* B480 8001AC80 21280002 */   addu      $a1, $s0, $zero
/* B484 8001AC84 CD6B000C */  jal        VSync
/* B488 8001AC88 FFFF0424 */   addiu     $a0, $zero, -1
/* B48C 8001AC8C 0D80033C */  lui        $v1, %hi(D_800D2CAC)
/* B490 8001AC90 AC2C638C */  lw         $v1, %lo(D_800D2CAC)($v1)
/* B494 8001AC94 F0004224 */  addiu      $v0, $v0, 0xf0
/* B498 8001AC98 0D80013C */  lui        $at, %hi(D_800D2CD4)
/* B49C 8001AC9C D42C22AC */  sw         $v0, %lo(D_800D2CD4)($at)
/* B4A0 8001ACA0 0D80013C */  lui        $at, %hi(D_800D2CD8)
/* B4A4 8001ACA4 D82C20AC */  sw         $zero, %lo(D_800D2CD8)($at)
/* B4A8 8001ACA8 0000628C */  lw         $v0, ($v1)
/* B4AC 8001ACAC 366B0008 */  j          SYS_OBJ_2CF4
/* B4B0 8001ACB0 0001033C */   lui       $v1, 0x100
.L8001ACB4:
/* B4B4 8001ACB4 266A000C */  jal        SYS_OBJ_28B4
/* B4B8 8001ACB8 00000000 */   nop
/* B4BC 8001ACBC 30004014 */  bnez       $v0, SYS_OBJ_2D9C
/* B4C0 8001ACC0 FFFF0224 */   addiu     $v0, $zero, -1
/* B4C4 8001ACC4 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* B4C8 8001ACC8 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* B4CC 8001ACCC 00000000 */  nop
/* B4D0 8001ACD0 0000428C */  lw         $v0, ($v0)
/* B4D4 8001ACD4 0001033C */  lui        $v1, 0x100
