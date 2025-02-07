.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_151C
/* 9D00 80019500 1000A397 */  lhu        $v1, 0x10($sp)
/* 9D04 80019504 1600A2A7 */  sh         $v0, 0x16($sp)
/* 9D08 80019508 3F006230 */  andi       $v0, $v1, 0x3f
/* 9D0C 8001950C 06004014 */  bnez       $v0, .L80019528
/* 9D10 80019510 80300800 */   sll       $a2, $t0, 2
/* 9D14 80019514 1400A297 */  lhu        $v0, 0x14($sp)
/* 9D18 80019518 00000000 */  nop
/* 9D1C 8001951C 3F004230 */  andi       $v0, $v0, 0x3f
/* 9D20 80019520 1F004010 */  beqz       $v0, .L800195A0
/* 9D24 80019524 80280800 */   sll       $a1, $t0, 2
.L80019528:
/* 9D28 80019528 01000825 */  addiu      $t0, $t0, 1
/* 9D2C 8001952C 80380800 */  sll        $a3, $t0, 2
/* 9D30 80019530 01000825 */  addiu      $t0, $t0, 1
/* 9D34 80019534 80280800 */  sll        $a1, $t0, 2
/* 9D38 80019538 01000825 */  addiu      $t0, $t0, 1
/* 9D3C 8001953C 08000296 */  lhu        $v0, 8($s0)
/* 9D40 80019540 2130D100 */  addu       $a2, $a2, $s1
/* 9D44 80019544 23106200 */  subu       $v0, $v1, $v0
/* 9D48 80019548 1000A2A7 */  sh         $v0, 0x10($sp)
/* 9D4C 8001954C 1200A297 */  lhu        $v0, 0x12($sp)
/* 9D50 80019550 0A000396 */  lhu        $v1, 0xa($s0)
/* 9D54 80019554 0060043C */  lui        $a0, 0x6000
/* 9D58 80019558 23104300 */  subu       $v0, $v0, $v1
/* 9D5C 8001955C 1200A2A7 */  sh         $v0, 0x12($sp)
/* 9D60 80019560 1B000292 */  lbu        $v0, 0x1b($s0)
/* 9D64 80019564 1A000392 */  lbu        $v1, 0x1a($s0)
/* 9D68 80019568 00140200 */  sll        $v0, $v0, 0x10
/* 9D6C 8001956C 001A0300 */  sll        $v1, $v1, 8
/* 9D70 80019570 25186400 */  or         $v1, $v1, $a0
/* 9D74 80019574 19000492 */  lbu        $a0, 0x19($s0)
/* 9D78 80019578 25104300 */  or         $v0, $v0, $v1
/* 9D7C 8001957C 25104400 */  or         $v0, $v0, $a0
/* 9D80 80019580 0000C2AC */  sw         $v0, ($a2)
/* 9D84 80019584 1000A28F */  lw         $v0, 0x10($sp)
/* 9D88 80019588 2138F100 */  addu       $a3, $a3, $s1
/* 9D8C 8001958C 0000E2AC */  sw         $v0, ($a3)
/* 9D90 80019590 1400A28F */  lw         $v0, 0x14($sp)
/* 9D94 80019594 2128B100 */  addu       $a1, $a1, $s1
/* 9D98 80019598 7E650008 */  j          SYS_OBJ_1614
/* 9D9C 8001959C 0000A2AC */   sw        $v0, ($a1)
.L800195A0:
/* 9DA0 800195A0 01000825 */  addiu      $t0, $t0, 1
/* 9DA4 800195A4 80300800 */  sll        $a2, $t0, 2
/* 9DA8 800195A8 01000825 */  addiu      $t0, $t0, 1
/* 9DAC 800195AC 80380800 */  sll        $a3, $t0, 2
/* 9DB0 800195B0 01000825 */  addiu      $t0, $t0, 1
/* 9DB4 800195B4 2128B100 */  addu       $a1, $a1, $s1
/* 9DB8 800195B8 0002043C */  lui        $a0, 0x200
/* 9DBC 800195BC 1B000292 */  lbu        $v0, 0x1b($s0)
/* 9DC0 800195C0 1A000392 */  lbu        $v1, 0x1a($s0)
/* 9DC4 800195C4 00140200 */  sll        $v0, $v0, 0x10
/* 9DC8 800195C8 001A0300 */  sll        $v1, $v1, 8
/* 9DCC 800195CC 25186400 */  or         $v1, $v1, $a0
/* 9DD0 800195D0 19000492 */  lbu        $a0, 0x19($s0)
/* 9DD4 800195D4 25104300 */  or         $v0, $v0, $v1
/* 9DD8 800195D8 25104400 */  or         $v0, $v0, $a0
/* 9DDC 800195DC 0000A2AC */  sw         $v0, ($a1)
/* 9DE0 800195E0 1000A28F */  lw         $v0, 0x10($sp)
/* 9DE4 800195E4 2130D100 */  addu       $a2, $a2, $s1
/* 9DE8 800195E8 0000C2AC */  sw         $v0, ($a2)
/* 9DEC 800195EC 1400A28F */  lw         $v0, 0x14($sp)
/* 9DF0 800195F0 2138F100 */  addu       $a3, $a3, $s1
/* 9DF4 800195F4 0000E2AC */  sw         $v0, ($a3)
