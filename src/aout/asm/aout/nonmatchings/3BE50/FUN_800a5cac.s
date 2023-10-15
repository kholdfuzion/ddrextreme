.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a5cac
/* 964AC 800A5CAC 21388000 */  addu       $a3, $a0, $zero
/* 964B0 800A5CB0 1B80043C */  lui        $a0, %hi(D_801B2EC0)
/* 964B4 800A5CB4 C02E8324 */  addiu      $v1, $a0, %lo(D_801B2EC0)
/* 964B8 800A5CB8 80100700 */  sll        $v0, $a3, 2
/* 964BC 800A5CBC 21104300 */  addu       $v0, $v0, $v1
/* 964C0 800A5CC0 000045AC */  sw         $a1, ($v0)
/* 964C4 800A5CC4 02000224 */  addiu      $v0, $zero, 2
/* 964C8 800A5CC8 0B00E214 */  bne        $a3, $v0, .L800A5CF8
/* 964CC 800A5CCC 1B80093C */   lui       $t1, 0x801b
/* 964D0 800A5CD0 08000524 */  addiu      $a1, $zero, 8
/* 964D4 800A5CD4 1B80023C */  lui        $v0, %hi(D_801B2ED0)
/* 964D8 800A5CD8 D02E4624 */  addiu      $a2, $v0, %lo(D_801B2ED0)
/* 964DC 800A5CDC 2110A600 */  addu       $v0, $a1, $a2
.L800A5CE0:
/* 964E0 800A5CE0 000040A0 */  sb         $zero, ($v0)
/* 964E4 800A5CE4 0100A524 */  addiu      $a1, $a1, 1
/* 964E8 800A5CE8 0E00A228 */  slti       $v0, $a1, 0xe
/* 964EC 800A5CEC FCFF4014 */  bnez       $v0, .L800A5CE0
/* 964F0 800A5CF0 2110A600 */   addu      $v0, $a1, $a2
/* 964F4 800A5CF4 C02E8324 */  addiu      $v1, $a0, 0x2ec0
.L800A5CF8:
/* 964F8 800A5CF8 80100700 */  sll        $v0, $a3, 2
/* 964FC 800A5CFC 21104300 */  addu       $v0, $v0, $v1
/* 96500 800A5D00 00004594 */  lhu        $a1, ($v0)
/* 96504 800A5D04 0200E828 */  slti       $t0, $a3, 2
/* 96508 800A5D08 0B000011 */  beqz       $t0, .L800A5D38
/* 9650C 800A5D0C 1B80023C */   lui       $v0, %hi(D_801B2EF0)
/* 96510 800A5D10 F02E4224 */  addiu      $v0, $v0, %lo(D_801B2EF0)
/* 96514 800A5D14 40180700 */  sll        $v1, $a3, 1
/* 96518 800A5D18 21186700 */  addu       $v1, $v1, $a3
/* 9651C 800A5D1C 80180300 */  sll        $v1, $v1, 2
/* 96520 800A5D20 23186700 */  subu       $v1, $v1, $a3
/* 96524 800A5D24 80180300 */  sll        $v1, $v1, 2
/* 96528 800A5D28 21186200 */  addu       $v1, $v1, $v0
/* 9652C 800A5D2C 22006494 */  lhu        $a0, 0x22($v1)
/* 96530 800A5D30 0003A534 */  ori        $a1, $a1, 0x300
/* 96534 800A5D34 24288500 */  and        $a1, $a0, $a1
.L800A5D38:
/* 96538 800A5D38 01000224 */  addiu      $v0, $zero, 1
/* 9653C 800A5D3C 1600E210 */  beq        $a3, $v0, .L800A5D98
/* 96540 800A5D40 27300500 */   nor       $a2, $zero, $a1
/* 96544 800A5D44 05000011 */  beqz       $t0, .L800A5D5C
/* 96548 800A5D48 02000224 */   addiu     $v0, $zero, 2
/* 9654C 800A5D4C 0900E010 */  beqz       $a3, .L800A5D74
/* 96550 800A5D50 641F033C */   lui       $v1, 0x1f64
/* 96554 800A5D54 7D970208 */  j          .L800A5DF4
/* 96558 800A5D58 00000000 */   nop
.L800A5D5C:
/* 9655C 800A5D5C 1800E210 */  beq        $a3, $v0, .L800A5DC0
/* 96560 800A5D60 03000224 */   addiu     $v0, $zero, 3
/* 96564 800A5D64 2000E210 */  beq        $a3, $v0, .L800A5DE8
/* 96568 800A5D68 641F033C */   lui       $v1, 0x1f64
/* 9656C 800A5D6C 7D970208 */  j          .L800A5DF4
/* 96570 800A5D70 00000000 */   nop
.L800A5D74:
/* 96574 800A5D74 00F00524 */  addiu      $a1, $zero, -0x1000
/* 96578 800A5D78 2410C500 */  and        $v0, $a2, $a1
/* 9657C 800A5D7C 641F043C */  lui        $a0, 0x1f64
/* 96580 800A5D80 E20062A4 */  sh         $v0, 0xe2($v1)
/* 96584 800A5D84 00110600 */  sll        $v0, $a2, 4
/* 96588 800A5D88 24104500 */  and        $v0, $v0, $a1
/* 9658C 800A5D8C E40082A4 */  sh         $v0, 0xe4($a0)
/* 96590 800A5D90 7D970208 */  j          .L800A5DF4
/* 96594 800A5D94 00000000 */   nop
.L800A5D98:
/* 96598 800A5D98 641F033C */  lui        $v1, 0x1f64
/* 9659C 800A5D9C 00F00524 */  addiu      $a1, $zero, -0x1000
/* 965A0 800A5DA0 2410C500 */  and        $v0, $a2, $a1
/* 965A4 800A5DA4 641F043C */  lui        $a0, 0x1f64
/* 965A8 800A5DA8 FE0062A4 */  sh         $v0, 0xfe($v1)
/* 965AC 800A5DAC 00110600 */  sll        $v0, $a2, 4
/* 965B0 800A5DB0 24104500 */  and        $v0, $v0, $a1
/* 965B4 800A5DB4 E00082A4 */  sh         $v0, 0xe0($a0)
/* 965B8 800A5DB8 7D970208 */  j          .L800A5DF4
/* 965BC 800A5DBC 00000000 */   nop
.L800A5DC0:
/* 965C0 800A5DC0 641F033C */  lui        $v1, 0x1f64
/* 965C4 800A5DC4 00F00524 */  addiu      $a1, $zero, -0x1000
/* 965C8 800A5DC8 2410C500 */  and        $v0, $a2, $a1
/* 965CC 800A5DCC 641F043C */  lui        $a0, 0x1f64
/* 965D0 800A5DD0 FA0062A4 */  sh         $v0, 0xfa($v1)
/* 965D4 800A5DD4 00110600 */  sll        $v0, $a2, 4
/* 965D8 800A5DD8 24104500 */  and        $v0, $v0, $a1
/* 965DC 800A5DDC FC0082A4 */  sh         $v0, 0xfc($a0)
/* 965E0 800A5DE0 7D970208 */  j          .L800A5DF4
/* 965E4 800A5DE4 00000000 */   nop
.L800A5DE8:
/* 965E8 800A5DE8 00F00224 */  addiu      $v0, $zero, -0x1000
/* 965EC 800A5DEC 2410C200 */  and        $v0, $a2, $v0
/* 965F0 800A5DF0 E60062A4 */  sh         $v0, 0xe6($v1)
.L800A5DF4:
/* 965F4 800A5DF4 482F20AD */  sw         $zero, 0x2f48($t1)
/* 965F8 800A5DF8 482F228D */  lw         $v0, 0x2f48($t1)
/* 965FC 800A5DFC 0800E003 */  jr         $ra
/* 96600 800A5E00 00000000 */   nop
