.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DrawOTag2
/* B598 8001AD98 0D80023C */  lui        $v0, %hi(D_800D2B9A)
/* B59C 8001AD9C 9A2B4290 */  lbu        $v0, %lo(D_800D2B9A)($v0)
/* B5A0 8001ADA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B5A4 8001ADA4 1000B0AF */  sw         $s0, 0x10($sp)
/* B5A8 8001ADA8 21808000 */  addu       $s0, $a0, $zero
/* B5AC 8001ADAC 0200422C */  sltiu      $v0, $v0, 2
/* B5B0 8001ADB0 08004014 */  bnez       $v0, .L8001ADD4
/* B5B4 8001ADB4 1400BFAF */   sw        $ra, 0x14($sp)
/* B5B8 8001ADB8 0180043C */  lui        $a0, %hi(D_80010220)
/* B5BC 8001ADBC 20028424 */  addiu      $a0, $a0, %lo(D_80010220)
/* B5C0 8001ADC0 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* B5C4 8001ADC4 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* B5C8 8001ADC8 00000000 */  nop
/* B5CC 8001ADCC 09F84000 */  jalr       $v0
/* B5D0 8001ADD0 21280002 */   addu      $a1, $s0, $zero
.L8001ADD4:
/* B5D4 8001ADD4 CD6B000C */  jal        VSync
/* B5D8 8001ADD8 FFFF0424 */   addiu     $a0, $zero, -1
/* B5DC 8001ADDC 0D80033C */  lui        $v1, %hi(D_800D2CAC)
/* B5E0 8001ADE0 AC2C638C */  lw         $v1, %lo(D_800D2CAC)($v1)
/* B5E4 8001ADE4 F0004224 */  addiu      $v0, $v0, 0xf0
/* B5E8 8001ADE8 0D80013C */  lui        $at, %hi(D_800D2CD4)
/* B5EC 8001ADEC D42C22AC */  sw         $v0, %lo(D_800D2CD4)($at)
/* B5F0 8001ADF0 0D80013C */  lui        $at, %hi(D_800D2CD8)
/* B5F4 8001ADF4 D82C20AC */  sw         $zero, %lo(D_800D2CD8)($at)
/* B5F8 8001ADF8 0000628C */  lw         $v0, ($v1)
/* B5FC 8001ADFC 8A6B0008 */  j          SYS_OBJ_2E44
/* B600 8001AE00 0001033C */   lui       $v1, 0x100
.L8001AE04:
/* B604 8001AE04 266A000C */  jal        SYS_OBJ_28B4
/* B608 8001AE08 00000000 */   nop
/* B60C 8001AE0C 1D004014 */  bnez       $v0, .L8001AE84
/* B610 8001AE10 FFFF0224 */   addiu     $v0, $zero, -1
/* B614 8001AE14 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* B618 8001AE18 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* B61C 8001AE1C 00000000 */  nop
/* B620 8001AE20 0000428C */  lw         $v0, ($v0)
/* B624 8001AE24 0001033C */  lui        $v1, 0x100
