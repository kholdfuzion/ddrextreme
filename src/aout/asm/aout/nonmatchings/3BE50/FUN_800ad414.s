.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ad414
/* 9DC14 800AD414 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 9DC18 800AD418 2800B6AF */  sw         $s6, 0x28($sp)
/* 9DC1C 800AD41C 21B08000 */  addu       $s6, $a0, $zero
/* 9DC20 800AD420 C0211600 */  sll        $a0, $s6, 7
/* 9DC24 800AD424 21189600 */  addu       $v1, $a0, $s6
/* 9DC28 800AD428 C0190300 */  sll        $v1, $v1, 7
/* 9DC2C 800AD42C 1C80023C */  lui        $v0, %hi(D_801C4788)
/* 9DC30 800AD430 88474224 */  addiu      $v0, $v0, %lo(D_801C4788)
/* 9DC34 800AD434 3000BEAF */  sw         $fp, 0x30($sp)
/* 9DC38 800AD438 21F06200 */  addu       $fp, $v1, $v0
/* 9DC3C 800AD43C 32000524 */  addiu      $a1, $zero, 0x32
/* 9DC40 800AD440 2400B5AF */  sw         $s5, 0x24($sp)
/* 9DC44 800AD444 21A88000 */  addu       $s5, $a0, $zero
/* 9DC48 800AD448 21104300 */  addu       $v0, $v0, $v1
/* 9DC4C 800AD44C 223F4324 */  addiu      $v1, $v0, 0x3f22
/* 9DC50 800AD450 3400BFAF */  sw         $ra, 0x34($sp)
/* 9DC54 800AD454 2C00B7AF */  sw         $s7, 0x2c($sp)
/* 9DC58 800AD458 2000B4AF */  sw         $s4, 0x20($sp)
/* 9DC5C 800AD45C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9DC60 800AD460 1800B2AF */  sw         $s2, 0x18($sp)
/* 9DC64 800AD464 1400B1AF */  sw         $s1, 0x14($sp)
/* 9DC68 800AD468 1000B0AF */  sw         $s0, 0x10($sp)
.L800AD46C:
/* 9DC6C 800AD46C 00006290 */  lbu        $v0, ($v1)
/* 9DC70 800AD470 00000000 */  nop
/* 9DC74 800AD474 02004230 */  andi       $v0, $v0, 2
/* 9DC78 800AD478 1F004010 */  beqz       $v0, .L800AD4F8
/* 9DC7C 800AD47C 2190C003 */   addu      $s2, $fp, $zero
/* 9DC80 800AD480 0180173C */  lui        $s7, 0x8001
/* 9DC84 800AD484 06001424 */  addiu      $s4, $zero, 6
.L800AD488:
/* 9DC88 800AD488 00004396 */  lhu        $v1, ($s2)
/* 9DC8C 800AD48C 04000224 */  addiu      $v0, $zero, 4
/* 9DC90 800AD490 14006214 */  bne        $v1, $v0, .L800AD4E4
/* 9DC94 800AD494 1C80023C */   lui       $v0, %hi(D_801C4678)
/* 9DC98 800AD498 78465324 */  addiu      $s3, $v0, %lo(D_801C4678)
/* 9DC9C 800AD49C 2110B602 */  addu       $v0, $s5, $s6
/* 9DCA0 800AD4A0 C0810200 */  sll        $s0, $v0, 7
/* 9DCA4 800AD4A4 803B6426 */  addiu      $a0, $s3, 0x3b80
/* 9DCA8 800AD4A8 21200402 */  addu       $a0, $s0, $a0
/* 9DCAC 800AD4AC 686EE526 */  addiu      $a1, $s7, 0x6e68
/* 9DCB0 800AD4B0 1C000624 */  addiu      $a2, $zero, 0x1c
/* 9DCB4 800AD4B4 01000224 */  addiu      $v0, $zero, 1
/* 9DCB8 800AD4B8 21187002 */  addu       $v1, $s3, $s0
/* 9DCBC 800AD4BC 02001124 */  addiu      $s1, $zero, 2
/* 9DCC0 800AD4C0 060042A2 */  sb         $v0, 6($s2)
/* 9DCC4 800AD4C4 0905010C */  jal        bcmp
/* 9DCC8 800AD4C8 024071A0 */   sb        $s1, 0x4002($v1)
/* 9DCCC 800AD4CC 04004010 */  beqz       $v0, .L800AD4E0
/* 9DCD0 800AD4D0 21107002 */   addu      $v0, $s3, $s0
/* 9DCD4 800AD4D4 06BA020C */  jal        FUN_800ae818
/* 9DCD8 800AD4D8 2120C002 */   addu      $a0, $s6, $zero
/* 9DCDC 800AD4DC 21107002 */  addu       $v0, $s3, $s0
.L800AD4E0:
/* 9DCE0 800AD4E0 774051A0 */  sb         $s1, 0x4077($v0)
.L800AD4E4:
/* 9DCE4 800AD4E4 FFFF9426 */  addiu      $s4, $s4, -1
/* 9DCE8 800AD4E8 E7FF8106 */  bgez       $s4, .L800AD488
/* 9DCEC 800AD4EC 10005226 */   addiu     $s2, $s2, 0x10
/* 9DCF0 800AD4F0 43B50208 */  j          .L800AD50C
/* 9DCF4 800AD4F4 74000524 */   addiu     $a1, $zero, 0x74
.L800AD4F8:
/* 9DCF8 800AD4F8 0100A524 */  addiu      $a1, $a1, 1
/* 9DCFC 800AD4FC 7400A228 */  slti       $v0, $a1, 0x74
/* 9DD00 800AD500 DAFF4014 */  bnez       $v0, .L800AD46C
/* 9DD04 800AD504 01006324 */   addiu     $v1, $v1, 1
/* 9DD08 800AD508 74000524 */  addiu      $a1, $zero, 0x74
.L800AD50C:
/* 9DD0C 800AD50C 1C80023C */  lui        $v0, %hi(D_801C4678)
/* 9DD10 800AD510 78464224 */  addiu      $v0, $v0, %lo(D_801C4678)
/* 9DD14 800AD514 21A8B602 */  addu       $s5, $s5, $s6
/* 9DD18 800AD518 C0191500 */  sll        $v1, $s5, 7
/* 9DD1C 800AD51C 21104300 */  addu       $v0, $v0, $v1
/* 9DD20 800AD520 74404324 */  addiu      $v1, $v0, 0x4074
.L800AD524:
/* 9DD24 800AD524 00006290 */  lbu        $v0, ($v1)
/* 9DD28 800AD528 00000000 */  nop
/* 9DD2C 800AD52C 02004230 */  andi       $v0, $v0, 2
/* 9DD30 800AD530 1E004010 */  beqz       $v0, .L800AD5AC
/* 9DD34 800AD534 2188C003 */   addu      $s1, $fp, $zero
/* 9DD38 800AD538 0180173C */  lui        $s7, 0x8001
/* 9DD3C 800AD53C 06001424 */  addiu      $s4, $zero, 6
.L800AD540:
/* 9DD40 800AD540 00002396 */  lhu        $v1, ($s1)
/* 9DD44 800AD544 06000224 */  addiu      $v0, $zero, 6
/* 9DD48 800AD548 13006214 */  bne        $v1, $v0, .L800AD598
/* 9DD4C 800AD54C 1C80023C */   lui       $v0, %hi(D_801C4678)
/* 9DD50 800AD550 78465324 */  addiu      $s3, $v0, %lo(D_801C4678)
/* 9DD54 800AD554 C0811500 */  sll        $s0, $s5, 7
/* 9DD58 800AD558 803B6426 */  addiu      $a0, $s3, 0x3b80
/* 9DD5C 800AD55C 21200402 */  addu       $a0, $s0, $a0
/* 9DD60 800AD560 686EE526 */  addiu      $a1, $s7, 0x6e68
/* 9DD64 800AD564 1C000624 */  addiu      $a2, $zero, 0x1c
/* 9DD68 800AD568 01000224 */  addiu      $v0, $zero, 1
/* 9DD6C 800AD56C 21187002 */  addu       $v1, $s3, $s0
/* 9DD70 800AD570 02001224 */  addiu      $s2, $zero, 2
/* 9DD74 800AD574 060022A2 */  sb         $v0, 6($s1)
/* 9DD78 800AD578 0905010C */  jal        bcmp
/* 9DD7C 800AD57C 024072A0 */   sb        $s2, 0x4002($v1)
/* 9DD80 800AD580 04004010 */  beqz       $v0, .L800AD594
/* 9DD84 800AD584 21107002 */   addu      $v0, $s3, $s0
/* 9DD88 800AD588 06BA020C */  jal        FUN_800ae818
/* 9DD8C 800AD58C 2120C002 */   addu      $a0, $s6, $zero
/* 9DD90 800AD590 21107002 */  addu       $v0, $s3, $s0
.L800AD594:
/* 9DD94 800AD594 774052A0 */  sb         $s2, 0x4077($v0)
.L800AD598:
/* 9DD98 800AD598 FFFF9426 */  addiu      $s4, $s4, -1
/* 9DD9C 800AD59C E8FF8106 */  bgez       $s4, .L800AD540
/* 9DDA0 800AD5A0 10003126 */   addiu     $s1, $s1, 0x10
/* 9DDA4 800AD5A4 6FB50208 */  j          .L800AD5BC
/* 9DDA8 800AD5A8 00000000 */   nop
.L800AD5AC:
/* 9DDAC 800AD5AC 0100A524 */  addiu      $a1, $a1, 1
/* 9DDB0 800AD5B0 7600A228 */  slti       $v0, $a1, 0x76
/* 9DDB4 800AD5B4 DBFF4014 */  bnez       $v0, .L800AD524
/* 9DDB8 800AD5B8 01006324 */   addiu     $v1, $v1, 1
.L800AD5BC:
/* 9DDBC 800AD5BC 3400BF8F */  lw         $ra, 0x34($sp)
/* 9DDC0 800AD5C0 3000BE8F */  lw         $fp, 0x30($sp)
/* 9DDC4 800AD5C4 2C00B78F */  lw         $s7, 0x2c($sp)
/* 9DDC8 800AD5C8 2800B68F */  lw         $s6, 0x28($sp)
/* 9DDCC 800AD5CC 2400B58F */  lw         $s5, 0x24($sp)
/* 9DDD0 800AD5D0 2000B48F */  lw         $s4, 0x20($sp)
/* 9DDD4 800AD5D4 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9DDD8 800AD5D8 1800B28F */  lw         $s2, 0x18($sp)
/* 9DDDC 800AD5DC 1400B18F */  lw         $s1, 0x14($sp)
/* 9DDE0 800AD5E0 1000B08F */  lw         $s0, 0x10($sp)
/* 9DDE4 800AD5E4 0800E003 */  jr         $ra
/* 9DDE8 800AD5E8 3800BD27 */   addiu     $sp, $sp, 0x38
