.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd4b4
/* BDCB4 800CD4B4 FFFF0334 */  ori        $v1, $zero, 0xffff
/* BDCB8 800CD4B8 1300A018 */  blez       $a1, .L800CD508
/* BDCBC 800CD4BC 21380000 */   addu      $a3, $zero, $zero
.L800CD4C0:
/* BDCC0 800CD4C0 21108700 */  addu       $v0, $a0, $a3
/* BDCC4 800CD4C4 00004290 */  lbu        $v0, ($v0)
/* BDCC8 800CD4C8 07000624 */  addiu      $a2, $zero, 7
/* BDCCC 800CD4CC 00120200 */  sll        $v0, $v0, 8
/* BDCD0 800CD4D0 26186200 */  xor        $v1, $v1, $v0
/* BDCD4 800CD4D4 00806230 */  andi       $v0, $v1, 0x8000
.L800CD4D8:
/* BDCD8 800CD4D8 03004010 */  beqz       $v0, .L800CD4E8
/* BDCDC 800CD4DC 40100300 */   sll       $v0, $v1, 1
/* BDCE0 800CD4E0 3B350308 */  j          .L800CD4EC
/* BDCE4 800CD4E4 21104338 */   xori      $v1, $v0, 0x1021
.L800CD4E8:
/* BDCE8 800CD4E8 40180300 */  sll        $v1, $v1, 1
.L800CD4EC:
/* BDCEC 800CD4EC FFFFC624 */  addiu      $a2, $a2, -1
/* BDCF0 800CD4F0 F9FFC104 */  bgez       $a2, .L800CD4D8
/* BDCF4 800CD4F4 00806230 */   andi      $v0, $v1, 0x8000
/* BDCF8 800CD4F8 0100E724 */  addiu      $a3, $a3, 1
/* BDCFC 800CD4FC 2A10E500 */  slt        $v0, $a3, $a1
/* BDD00 800CD500 EFFF4014 */  bnez       $v0, .L800CD4C0
/* BDD04 800CD504 00000000 */   nop
.L800CD508:
/* BDD08 800CD508 27100300 */  nor        $v0, $zero, $v1
/* BDD0C 800CD50C 0800E003 */  jr         $ra
/* BDD10 800CD510 FFFF4230 */   andi      $v0, $v0, 0xffff
