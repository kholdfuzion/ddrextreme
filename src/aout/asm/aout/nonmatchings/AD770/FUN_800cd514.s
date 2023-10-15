.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd514
/* BDD14 800CD514 48FFBD27 */  addiu      $sp, $sp, -0xb8
/* BDD18 800CD518 A800B0AF */  sw         $s0, 0xa8($sp)
/* BDD1C 800CD51C 21808000 */  addu       $s0, $a0, $zero
/* BDD20 800CD520 B000B2AF */  sw         $s2, 0xb0($sp)
/* BDD24 800CD524 2190A000 */  addu       $s2, $a1, $zero
/* BDD28 800CD528 2800A427 */  addiu      $a0, $sp, 0x28
/* BDD2C 800CD52C B400BFAF */  sw         $ra, 0xb4($sp)
/* BDD30 800CD530 8CF0020C */  jal        FUN_800bc230
/* BDD34 800CD534 AC00B1AF */   sw        $s1, 0xac($sp)
/* BDD38 800CD538 3C00A293 */  lbu        $v0, 0x3c($sp)
/* BDD3C 800CD53C 3800A393 */  lbu        $v1, 0x38($sp)
/* BDD40 800CD540 3400A593 */  lbu        $a1, 0x34($sp)
/* BDD44 800CD544 4000A693 */  lbu        $a2, 0x40($sp)
/* BDD48 800CD548 3000A793 */  lbu        $a3, 0x30($sp)
/* BDD4C 800CD54C 2C00A893 */  lbu        $t0, 0x2c($sp)
/* BDD50 800CD550 2800A993 */  lbu        $t1, 0x28($sp)
/* BDD54 800CD554 FFFF0424 */  addiu      $a0, $zero, -1
/* BDD58 800CD558 1000A2A3 */  sb         $v0, 0x10($sp)
/* BDD5C 800CD55C 1100A3A3 */  sb         $v1, 0x11($sp)
/* BDD60 800CD560 1200A5A3 */  sb         $a1, 0x12($sp)
/* BDD64 800CD564 1300A6A3 */  sb         $a2, 0x13($sp)
/* BDD68 800CD568 1400A7A3 */  sb         $a3, 0x14($sp)
/* BDD6C 800CD56C 1500A8A3 */  sb         $t0, 0x15($sp)
/* BDD70 800CD570 CD6B000C */  jal        VSync
/* BDD74 800CD574 1600A9A3 */   sb        $t1, 0x16($sp)
/* BDD78 800CD578 5000B127 */  addiu      $s1, $sp, 0x50
/* BDD7C 800CD57C 21202002 */  addu       $a0, $s1, $zero
/* BDD80 800CD580 243E030C */  jal        FUN_800cf890
/* BDD84 800CD584 1700A2A3 */   sb        $v0, 0x17($sp)
/* BDD88 800CD588 04000012 */  beqz       $s0, .L800CD59C
/* BDD8C 800CD58C 21202002 */   addu      $a0, $s1, $zero
/* BDD90 800CD590 21280002 */  addu       $a1, $s0, $zero
/* BDD94 800CD594 333E030C */  jal        FUN_800cf8cc
/* BDD98 800CD598 08000624 */   addiu     $a2, $zero, 8
.L800CD59C:
/* BDD9C 800CD59C 21202002 */  addu       $a0, $s1, $zero
/* BDDA0 800CD5A0 1000A527 */  addiu      $a1, $sp, 0x10
/* BDDA4 800CD5A4 333E030C */  jal        FUN_800cf8cc
/* BDDA8 800CD5A8 08000624 */   addiu     $a2, $zero, 8
/* BDDAC 800CD5AC 1800B027 */  addiu      $s0, $sp, 0x18
/* BDDB0 800CD5B0 21200002 */  addu       $a0, $s0, $zero
/* BDDB4 800CD5B4 CF39030C */  jal        FUN_800ce73c
/* BDDB8 800CD5B8 21282002 */   addu      $a1, $s1, $zero
/* BDDBC 800CD5BC 21280000 */  addu       $a1, $zero, $zero
.L800CD5C0:
/* BDDC0 800CD5C0 21204502 */  addu       $a0, $s2, $a1
/* BDDC4 800CD5C4 21100502 */  addu       $v0, $s0, $a1
/* BDDC8 800CD5C8 2118B000 */  addu       $v1, $a1, $s0
/* BDDCC 800CD5CC 00004290 */  lbu        $v0, ($v0)
/* BDDD0 800CD5D0 08006390 */  lbu        $v1, 8($v1)
/* BDDD4 800CD5D4 0100A524 */  addiu      $a1, $a1, 1
/* BDDD8 800CD5D8 26104300 */  xor        $v0, $v0, $v1
/* BDDDC 800CD5DC 000082A0 */  sb         $v0, ($a0)
/* BDDE0 800CD5E0 0800A228 */  slti       $v0, $a1, 8
/* BDDE4 800CD5E4 F6FF4014 */  bnez       $v0, .L800CD5C0
/* BDDE8 800CD5E8 00000000 */   nop
/* BDDEC 800CD5EC B400BF8F */  lw         $ra, 0xb4($sp)
/* BDDF0 800CD5F0 B000B28F */  lw         $s2, 0xb0($sp)
/* BDDF4 800CD5F4 AC00B18F */  lw         $s1, 0xac($sp)
/* BDDF8 800CD5F8 A800B08F */  lw         $s0, 0xa8($sp)
/* BDDFC 800CD5FC 0800E003 */  jr         $ra
/* BDE00 800CD600 B800BD27 */   addiu     $sp, $sp, 0xb8
