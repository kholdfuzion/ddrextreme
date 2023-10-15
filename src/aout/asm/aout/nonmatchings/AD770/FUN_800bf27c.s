.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf27c
/* AFA7C 800BF27C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AFA80 800BF280 1800BFAF */  sw         $ra, 0x18($sp)
/* AFA84 800BF284 1F80023C */  lui        $v0, %hi(D_801F7088)
/* AFA88 800BF288 88704324 */  addiu      $v1, $v0, %lo(D_801F7088)
/* AFA8C 800BF28C 8870428C */  lw         $v0, 0x7088($v0)
/* AFA90 800BF290 00000000 */  nop
/* AFA94 800BF294 13004014 */  bnez       $v0, .L800BF2E4
/* AFA98 800BF298 FFFF0224 */   addiu     $v0, $zero, -1
/* AFA9C 800BF29C 0400628C */  lw         $v0, 4($v1)
/* AFAA0 800BF2A0 00000000 */  nop
/* AFAA4 800BF2A4 0F004010 */  beqz       $v0, .L800BF2E4
/* AFAA8 800BF2A8 FFFF0224 */   addiu     $v0, $zero, -1
/* AFAAC 800BF2AC 1103030C */  jal        FUN_800c0c44
/* AFAB0 800BF2B0 00000000 */   nop
/* AFAB4 800BF2B4 1703030C */  jal        FUN_800c0c5c
/* AFAB8 800BF2B8 1000A427 */   addiu     $a0, $sp, 0x10
/* AFABC 800BF2BC 3703030C */  jal        FUN_800c0cdc
/* AFAC0 800BF2C0 1000A427 */   addiu     $a0, $sp, 0x10
/* AFAC4 800BF2C4 36FD020C */  jal        FUN_800bf4d8
/* AFAC8 800BF2C8 21200000 */   addu      $a0, $zero, $zero
/* AFACC 800BF2CC 44FD020C */  jal        FUN_800bf510
/* AFAD0 800BF2D0 21200000 */   addu      $a0, $zero, $zero
/* AFAD4 800BF2D4 1F80033C */  lui        $v1, %hi(D_801F7088)
/* AFAD8 800BF2D8 01000224 */  addiu      $v0, $zero, 1
/* AFADC 800BF2DC 887062AC */  sw         $v0, %lo(D_801F7088)($v1)
/* AFAE0 800BF2E0 21100000 */  addu       $v0, $zero, $zero
.L800BF2E4:
/* AFAE4 800BF2E4 1800BF8F */  lw         $ra, 0x18($sp)
/* AFAE8 800BF2E8 00000000 */  nop
/* AFAEC 800BF2EC 0800E003 */  jr         $ra
/* AFAF0 800BF2F0 2000BD27 */   addiu     $sp, $sp, 0x20
