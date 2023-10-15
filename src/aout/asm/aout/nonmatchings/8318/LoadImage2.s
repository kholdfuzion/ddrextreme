.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LoadImage2
/* B27C 8001AA7C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B280 8001AA80 1000B0AF */  sw         $s0, 0x10($sp)
/* B284 8001AA84 21808000 */  addu       $s0, $a0, $zero
/* B288 8001AA88 1400B1AF */  sw         $s1, 0x14($sp)
/* B28C 8001AA8C 2188A000 */  addu       $s1, $a1, $zero
/* B290 8001AA90 0180043C */  lui        $a0, %hi(D_800102B4)
/* B294 8001AA94 B4028424 */  addiu      $a0, $a0, %lo(D_800102B4)
/* B298 8001AA98 1800BFAF */  sw         $ra, 0x18($sp)
/* B29C 8001AA9C F260000C */  jal        SYS_OBJ_3E4
/* B2A0 8001AAA0 21280002 */   addu      $a1, $s0, $zero
/* B2A4 8001AAA4 CD6B000C */  jal        VSync
/* B2A8 8001AAA8 FFFF0424 */   addiu     $a0, $zero, -1
/* B2AC 8001AAAC 0D80033C */  lui        $v1, %hi(D_800D2CAC)
/* B2B0 8001AAB0 AC2C638C */  lw         $v1, %lo(D_800D2CAC)($v1)
/* B2B4 8001AAB4 F0004224 */  addiu      $v0, $v0, 0xf0
/* B2B8 8001AAB8 0D80013C */  lui        $at, %hi(D_800D2CD4)
/* B2BC 8001AABC D42C22AC */  sw         $v0, %lo(D_800D2CD4)($at)
/* B2C0 8001AAC0 0D80013C */  lui        $at, %hi(D_800D2CD8)
/* B2C4 8001AAC4 D82C20AC */  sw         $zero, %lo(D_800D2CD8)($at)
/* B2C8 8001AAC8 0000628C */  lw         $v0, ($v1)
/* B2CC 8001AACC BE6A0008 */  j          SYS_OBJ_2B14
/* B2D0 8001AAD0 0001033C */   lui       $v1, 0x100
.L8001AAD4:
/* B2D4 8001AAD4 266A000C */  jal        SYS_OBJ_28B4
/* B2D8 8001AAD8 00000000 */   nop
/* B2DC 8001AADC 1D004014 */  bnez       $v0, .L8001AB54
/* B2E0 8001AAE0 FFFF0224 */   addiu     $v0, $zero, -1
/* B2E4 8001AAE4 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* B2E8 8001AAE8 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* B2EC 8001AAEC 00000000 */  nop
/* B2F0 8001AAF0 0000428C */  lw         $v0, ($v0)
/* B2F4 8001AAF4 0001033C */  lui        $v1, 0x100
