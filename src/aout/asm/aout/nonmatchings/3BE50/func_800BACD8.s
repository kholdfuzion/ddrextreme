.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BACD8
/* AB4D8 800BACD8 0180023C */  lui        $v0, %hi(D_80017558)
/* AB4DC 800BACDC 58754924 */  addiu      $t1, $v0, %lo(D_80017558)
/* AB4E0 800BACE0 01000A24 */  addiu      $t2, $zero, 1
/* AB4E4 800BACE4 21300000 */  addu       $a2, $zero, $zero
/* AB4E8 800BACE8 21280000 */  addu       $a1, $zero, $zero
.L800BACEC:
/* AB4EC 800BACEC 0100C824 */  addiu      $t0, $a2, 1
/* AB4F0 800BACF0 21382601 */  addu       $a3, $t1, $a2
.L800BACF4:
/* AB4F4 800BACF4 0700C510 */  beq        $a2, $a1, .L800BAD14
/* AB4F8 800BACF8 21102501 */   addu      $v0, $t1, $a1
/* AB4FC 800BACFC 0000E490 */  lbu        $a0, ($a3)
/* AB500 800BAD00 00004390 */  lbu        $v1, ($v0)
/* AB504 800BAD04 00000000 */  nop
/* AB508 800BAD08 02008314 */  bne        $a0, $v1, .L800BAD14
/* AB50C 800BAD0C 00000000 */   nop
/* AB510 800BAD10 21500000 */  addu       $t2, $zero, $zero
.L800BAD14:
/* AB514 800BAD14 0100A524 */  addiu      $a1, $a1, 1
/* AB518 800BAD18 1A00A228 */  slti       $v0, $a1, 0x1a
/* AB51C 800BAD1C F5FF4014 */  bnez       $v0, .L800BACF4
/* AB520 800BAD20 1A000229 */   slti      $v0, $t0, 0x1a
/* AB524 800BAD24 21300001 */  addu       $a2, $t0, $zero
/* AB528 800BAD28 F0FF4014 */  bnez       $v0, .L800BACEC
/* AB52C 800BAD2C 21280000 */   addu      $a1, $zero, $zero
/* AB530 800BAD30 0800E003 */  jr         $ra
/* AB534 800BAD34 21104001 */   addu      $v0, $t2, $zero
