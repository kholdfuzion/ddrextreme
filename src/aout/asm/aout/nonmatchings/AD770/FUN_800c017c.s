.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c017c
/* B097C 800C017C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B0980 800C0180 2000BFAF */  sw         $ra, 0x20($sp)
/* B0984 800C0184 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B0988 800C0188 1800B0AF */  sw         $s0, 0x18($sp)
/* B098C 800C018C FF008430 */  andi       $a0, $a0, 0xff
/* B0990 800C0190 82100400 */  srl        $v0, $a0, 2
/* B0994 800C0194 30004234 */  ori        $v0, $v0, 0x30
/* B0998 800C0198 1000A2A3 */  sb         $v0, 0x10($sp)
/* B099C 800C019C 03008430 */  andi       $a0, $a0, 3
/* B09A0 800C01A0 80210400 */  sll        $a0, $a0, 6
/* B09A4 800C01A4 3F00A530 */  andi       $a1, $a1, 0x3f
/* B09A8 800C01A8 2528A400 */  or         $a1, $a1, $a0
/* B09AC 800C01AC 55FE020C */  jal        FUN_800bf954
/* B09B0 800C01B0 1100A5A3 */   sb        $a1, 0x11($sp)
/* B09B4 800C01B4 5AFF020C */  jal        FUN_800bfd68
/* B09B8 800C01B8 3A000424 */   addiu     $a0, $zero, 0x3a
/* B09BC 800C01BC E0FF020C */  jal        FUN_800bff80
/* B09C0 800C01C0 00000000 */   nop
/* B09C4 800C01C4 07004014 */  bnez       $v0, .L800C01E4
/* B09C8 800C01C8 00000000 */   nop
/* B09CC 800C01CC 5AFF020C */  jal        FUN_800bfd68
/* B09D0 800C01D0 68000424 */   addiu     $a0, $zero, 0x68
/* B09D4 800C01D4 E0FF020C */  jal        FUN_800bff80
/* B09D8 800C01D8 00000000 */   nop
/* B09DC 800C01DC 05004010 */  beqz       $v0, .L800C01F4
/* B09E0 800C01E0 21800000 */   addu      $s0, $zero, $zero
.L800C01E4:
/* B09E4 800C01E4 A7FE020C */  jal        FUN_800bfa9c
/* B09E8 800C01E8 00000000 */   nop
/* B09EC 800C01EC 8C000308 */  j          .L800C0230
/* B09F0 800C01F0 01000224 */   addiu     $v0, $zero, 1
.L800C01F4:
/* B09F4 800C01F4 1000B127 */  addiu      $s1, $sp, 0x10
/* B09F8 800C01F8 21103002 */  addu       $v0, $s1, $s0
.L800C01FC:
/* B09FC 800C01FC 00004490 */  lbu        $a0, ($v0)
/* B0A00 800C0200 5AFF020C */  jal        FUN_800bfd68
/* B0A04 800C0204 00000000 */   nop
/* B0A08 800C0208 E0FF020C */  jal        FUN_800bff80
/* B0A0C 800C020C 00000000 */   nop
/* B0A10 800C0210 F4FF4014 */  bnez       $v0, .L800C01E4
/* B0A14 800C0214 01001026 */   addiu     $s0, $s0, 1
/* B0A18 800C0218 0200022A */  slti       $v0, $s0, 2
/* B0A1C 800C021C F7FF4014 */  bnez       $v0, .L800C01FC
/* B0A20 800C0220 21103002 */   addu      $v0, $s1, $s0
/* B0A24 800C0224 A7FE020C */  jal        FUN_800bfa9c
/* B0A28 800C0228 00000000 */   nop
/* B0A2C 800C022C 21100000 */  addu       $v0, $zero, $zero
.L800C0230:
/* B0A30 800C0230 2000BF8F */  lw         $ra, 0x20($sp)
/* B0A34 800C0234 1C00B18F */  lw         $s1, 0x1c($sp)
/* B0A38 800C0238 1800B08F */  lw         $s0, 0x18($sp)
/* B0A3C 800C023C 0800E003 */  jr         $ra
/* B0A40 800C0240 2800BD27 */   addiu     $sp, $sp, 0x28
