.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b05cc
/* A0DCC 800B05CC FFFF8430 */  andi       $a0, $a0, 0xffff
/* A0DD0 800B05D0 21380000 */  addu       $a3, $zero, $zero
/* A0DD4 800B05D4 1D80023C */  lui        $v0, %hi(D_801D2378)
/* A0DD8 800B05D8 78234524 */  addiu      $a1, $v0, %lo(D_801D2378)
/* A0DDC 800B05DC 2130A000 */  addu       $a2, $a1, $zero
.L800B05E0:
/* A0DE0 800B05E0 0000A294 */  lhu        $v0, ($a1)
/* A0DE4 800B05E4 00000000 */  nop
/* A0DE8 800B05E8 1A004410 */  beq        $v0, $a0, .L800B0654
/* A0DEC 800B05EC 2118C000 */   addu      $v1, $a2, $zero
/* A0DF0 800B05F0 1000A524 */  addiu      $a1, $a1, 0x10
/* A0DF4 800B05F4 0100E724 */  addiu      $a3, $a3, 1
/* A0DF8 800B05F8 F9FFE018 */  blez       $a3, .L800B05E0
/* A0DFC 800B05FC 10006624 */   addiu     $a2, $v1, 0x10
/* A0E00 800B0600 21100000 */  addu       $v0, $zero, $zero
.L800B0604:
/* A0E04 800B0604 15004014 */  bnez       $v0, .L800B065C
/* A0E08 800B0608 21380000 */   addu      $a3, $zero, $zero
/* A0E0C 800B060C 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A0E10 800B0610 B8104524 */  addiu      $a1, $v0, %lo(D_801D10B8)
/* A0E14 800B0614 2130A000 */  addu       $a2, $a1, $zero
.L800B0618:
/* A0E18 800B0618 0000A294 */  lhu        $v0, ($a1)
/* A0E1C 800B061C 00000000 */  nop
/* A0E20 800B0620 07004410 */  beq        $v0, $a0, .L800B0640
/* A0E24 800B0624 2118C000 */   addu      $v1, $a2, $zero
/* A0E28 800B0628 1000A524 */  addiu      $a1, $a1, 0x10
/* A0E2C 800B062C 0100E724 */  addiu      $a3, $a3, 1
/* A0E30 800B0630 2C01E228 */  slti       $v0, $a3, 0x12c
/* A0E34 800B0634 F8FF4014 */  bnez       $v0, .L800B0618
/* A0E38 800B0638 10006624 */   addiu     $a2, $v1, 0x10
/* A0E3C 800B063C 21180000 */  addu       $v1, $zero, $zero
.L800B0640:
/* A0E40 800B0640 02006010 */  beqz       $v1, .L800B064C
/* A0E44 800B0644 21100000 */   addu      $v0, $zero, $zero
/* A0E48 800B0648 07006290 */  lbu        $v0, 7($v1)
.L800B064C:
/* A0E4C 800B064C 0800E003 */  jr         $ra
/* A0E50 800B0650 00000000 */   nop
.L800B0654:
/* A0E54 800B0654 81C10208 */  j          .L800B0604
/* A0E58 800B0658 2110C000 */   addu      $v0, $a2, $zero
.L800B065C:
/* A0E5C 800B065C 07004290 */  lbu        $v0, 7($v0)
/* A0E60 800B0660 0800E003 */  jr         $ra
/* A0E64 800B0664 00000000 */   nop
