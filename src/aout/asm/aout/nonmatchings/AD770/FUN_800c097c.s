.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c097c
/* B117C 800C097C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B1180 800C0980 2400BFAF */  sw         $ra, 0x24($sp)
/* B1184 800C0984 2000B2AF */  sw         $s2, 0x20($sp)
/* B1188 800C0988 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B118C 800C098C 1800B0AF */  sw         $s0, 0x18($sp)
/* B1190 800C0990 2190A000 */  addu       $s2, $a1, $zero
/* B1194 800C0994 F6FF020C */  jal        FUN_800bffd8
/* B1198 800C0998 FF009030 */   andi      $s0, $a0, 0xff
/* B119C 800C099C FEFF0324 */  addiu      $v1, $zero, -2
/* B11A0 800C09A0 03004314 */  bne        $v0, $v1, .L800C09B0
/* B11A4 800C09A4 21880000 */   addu      $s1, $zero, $zero
/* B11A8 800C09A8 7B020308 */  j          .L800C09EC
/* B11AC 800C09AC FEFF0224 */   addiu     $v0, $zero, -2
.L800C09B0:
/* B11B0 800C09B0 C601030C */  jal        FUN_800c0718
/* B11B4 800C09B4 21200002 */   addu      $a0, $s0, $zero
/* B11B8 800C09B8 01000324 */  addiu      $v1, $zero, 1
/* B11BC 800C09BC 06004310 */  beq        $v0, $v1, .L800C09D8
/* B11C0 800C09C0 01000424 */   addiu     $a0, $zero, 1
/* B11C4 800C09C4 F401030C */  jal        FUN_800c07d0
/* B11C8 800C09C8 1000A527 */   addiu     $a1, $sp, 0x10
/* B11CC 800C09CC 01000324 */  addiu      $v1, $zero, 1
/* B11D0 800C09D0 02004314 */  bne        $v0, $v1, .L800C09DC
/* B11D4 800C09D4 00000000 */   nop
.L800C09D8:
/* B11D8 800C09D8 FDFF1124 */  addiu      $s1, $zero, -3
.L800C09DC:
/* B11DC 800C09DC 1000A28F */  lw         $v0, 0x10($sp)
/* B11E0 800C09E0 0C00030C */  jal        FUN_800c0030
/* B11E4 800C09E4 000042AE */   sw        $v0, ($s2)
/* B11E8 800C09E8 21102002 */  addu       $v0, $s1, $zero
.L800C09EC:
/* B11EC 800C09EC 2400BF8F */  lw         $ra, 0x24($sp)
/* B11F0 800C09F0 2000B28F */  lw         $s2, 0x20($sp)
/* B11F4 800C09F4 1C00B18F */  lw         $s1, 0x1c($sp)
/* B11F8 800C09F8 1800B08F */  lw         $s0, 0x18($sp)
/* B11FC 800C09FC 0800E003 */  jr         $ra
/* B1200 800C0A00 2800BD27 */   addiu     $sp, $sp, 0x28
