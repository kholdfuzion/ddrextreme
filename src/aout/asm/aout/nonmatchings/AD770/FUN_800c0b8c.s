.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0b8c
/* B138C 800C0B8C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B1390 800C0B90 2000BFAF */  sw         $ra, 0x20($sp)
/* B1394 800C0B94 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B1398 800C0B98 1800B0AF */  sw         $s0, 0x18($sp)
/* B139C 800C0B9C F6FF020C */  jal        FUN_800bffd8
/* B13A0 800C0BA0 21888000 */   addu      $s1, $a0, $zero
/* B13A4 800C0BA4 FEFF0324 */  addiu      $v1, $zero, -2
/* B13A8 800C0BA8 03004314 */  bne        $v0, $v1, .L800C0BB8
/* B13AC 800C0BAC 21800000 */   addu      $s0, $zero, $zero
/* B13B0 800C0BB0 F9020308 */  j          .L800C0BE4
/* B13B4 800C0BB4 FEFF0224 */   addiu     $v0, $zero, -2
.L800C0BB8:
/* B13B8 800C0BB8 01000424 */  addiu      $a0, $zero, 1
/* B13BC 800C0BBC 9100030C */  jal        FUN_800c0244
/* B13C0 800C0BC0 1000A527 */   addiu     $a1, $sp, 0x10
/* B13C4 800C0BC4 01000324 */  addiu      $v1, $zero, 1
/* B13C8 800C0BC8 02004314 */  bne        $v0, $v1, .L800C0BD4
/* B13CC 800C0BCC 00000000 */   nop
/* B13D0 800C0BD0 FDFF1024 */  addiu      $s0, $zero, -3
.L800C0BD4:
/* B13D4 800C0BD4 1000A297 */  lhu        $v0, 0x10($sp)
/* B13D8 800C0BD8 0C00030C */  jal        FUN_800c0030
/* B13DC 800C0BDC 000022A6 */   sh        $v0, ($s1)
/* B13E0 800C0BE0 21100002 */  addu       $v0, $s0, $zero
.L800C0BE4:
/* B13E4 800C0BE4 2000BF8F */  lw         $ra, 0x20($sp)
/* B13E8 800C0BE8 1C00B18F */  lw         $s1, 0x1c($sp)
/* B13EC 800C0BEC 1800B08F */  lw         $s0, 0x18($sp)
/* B13F0 800C0BF0 0800E003 */  jr         $ra
/* B13F4 800C0BF4 2800BD27 */   addiu     $sp, $sp, 0x28
