.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800999a0
/* 8A1A0 800999A0 F8FFBD27 */  addiu      $sp, $sp, -8
/* 8A1A4 800999A4 0A000224 */  addiu      $v0, $zero, 0xa
/* 8A1A8 800999A8 21288000 */  addu       $a1, $a0, $zero
/* 8A1AC 800999AC 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 8A1B0 800999B0 0400A2AF */  sw         $v0, 4($sp)
/* 8A1B4 800999B4 0000A2AF */  sw         $v0, ($sp)
/* 8A1B8 800999B8 28006224 */  addiu      $v0, $v1, %lo(D_800F0028)
/* 8A1BC 800999BC 8A004290 */  lbu        $v0, 0x8a($v0)
/* 8A1C0 800999C0 07000424 */  addiu      $a0, $zero, 7
/* 8A1C4 800999C4 07004410 */  beq        $v0, $a0, .L800999E4
/* 8A1C8 800999C8 00000000 */   nop
/* 8A1CC 800999CC 06004010 */  beqz       $v0, .L800999E8
/* 8A1D0 800999D0 28006224 */   addiu     $v0, $v1, 0x28
/* 8A1D4 800999D4 0800A28C */  lw         $v0, 8($a1)
/* 8A1D8 800999D8 00000000 */  nop
/* 8A1DC 800999DC 0F004230 */  andi       $v0, $v0, 0xf
/* 8A1E0 800999E0 0000A2AF */  sw         $v0, ($sp)
.L800999E4:
/* 8A1E4 800999E4 28006224 */  addiu      $v0, $v1, 0x28
.L800999E8:
/* 8A1E8 800999E8 0100033C */  lui        $v1, 1
/* 8A1EC 800999EC 21104300 */  addu       $v0, $v0, $v1
/* 8A1F0 800999F0 06434290 */  lbu        $v0, 0x4306($v0)
/* 8A1F4 800999F4 07000324 */  addiu      $v1, $zero, 7
/* 8A1F8 800999F8 07004310 */  beq        $v0, $v1, .L80099A18
/* 8A1FC 800999FC 00000000 */   nop
/* 8A200 80099A00 05004010 */  beqz       $v0, .L80099A18
/* 8A204 80099A04 00000000 */   nop
/* 8A208 80099A08 0C00A28C */  lw         $v0, 0xc($a1)
/* 8A20C 80099A0C 00000000 */  nop
/* 8A210 80099A10 0F004230 */  andi       $v0, $v0, 0xf
/* 8A214 80099A14 0400A2AF */  sw         $v0, 4($sp)
.L80099A18:
/* 8A218 80099A18 0400A38F */  lw         $v1, 4($sp)
/* 8A21C 80099A1C 0000A48F */  lw         $a0, ($sp)
/* 8A220 80099A20 21106000 */  addu       $v0, $v1, $zero
/* 8A224 80099A24 2A186400 */  slt        $v1, $v1, $a0
/* 8A228 80099A28 02006014 */  bnez       $v1, .L80099A34
/* 8A22C 80099A2C 00000000 */   nop
/* 8A230 80099A30 21108000 */  addu       $v0, $a0, $zero
.L80099A34:
/* 8A234 80099A34 0800E003 */  jr         $ra
/* 8A238 80099A38 0800BD27 */   addiu     $sp, $sp, 8
