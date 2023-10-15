.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_VB_OBJ_58
/* C16C 8001B96C 0D80023C */  lui        $v0, %hi(D_800D3E28)
/* C170 8001B970 283E428C */  lw         $v0, %lo(D_800D3E28)($v0)
/* C174 8001B974 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* C178 8001B978 1400B1AF */  sw         $s1, 0x14($sp)
/* C17C 8001B97C 21880000 */  addu       $s1, $zero, $zero
/* C180 8001B980 1000B0AF */  sw         $s0, 0x10($sp)
/* C184 8001B984 0D80103C */  lui        $s0, %hi(D_800D3E08)
/* C188 8001B988 083E1026 */  addiu      $s0, $s0, %lo(D_800D3E08)
/* C18C 8001B98C 1800BFAF */  sw         $ra, 0x18($sp)
/* C190 8001B990 01004224 */  addiu      $v0, $v0, 1
/* C194 8001B994 0D80013C */  lui        $at, %hi(D_800D3E28)
/* C198 8001B998 283E22AC */  sw         $v0, %lo(D_800D3E28)($at)
.L8001B99C:
/* C19C 8001B99C 0000028E */  lw         $v0, ($s0)
/* C1A0 8001B9A0 00000000 */  nop
/* C1A4 8001B9A4 03004010 */  beqz       $v0, .L8001B9B4
/* C1A8 8001B9A8 00000000 */   nop
/* C1AC 8001B9AC 09F84000 */  jalr       $v0
/* C1B0 8001B9B0 00000000 */   nop
.L8001B9B4:
/* C1B4 8001B9B4 01003126 */  addiu      $s1, $s1, 1
/* C1B8 8001B9B8 0800222A */  slti       $v0, $s1, 8
/* C1BC 8001B9BC F7FF4014 */  bnez       $v0, .L8001B99C
/* C1C0 8001B9C0 04001026 */   addiu     $s0, $s0, 4
/* C1C4 8001B9C4 1800BF8F */  lw         $ra, 0x18($sp)
/* C1C8 8001B9C8 1400B18F */  lw         $s1, 0x14($sp)
/* C1CC 8001B9CC 1000B08F */  lw         $s0, 0x10($sp)
/* C1D0 8001B9D0 0800E003 */  jr         $ra
/* C1D4 8001B9D4 2000BD27 */   addiu     $sp, $sp, 0x20
