.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006c604
/* 5CE04 8006C604 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5CE08 8006C608 1000B0AF */  sw         $s0, 0x10($sp)
/* 5CE0C 8006C60C 21808000 */  addu       $s0, $a0, $zero
/* 5CE10 8006C610 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CE14 8006C614 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CE18 8006C618 40101000 */  sll        $v0, $s0, 1
/* 5CE1C 8006C61C 21105000 */  addu       $v0, $v0, $s0
/* 5CE20 8006C620 80100200 */  sll        $v0, $v0, 2
/* 5CE24 8006C624 23105000 */  subu       $v0, $v0, $s0
/* 5CE28 8006C628 80100200 */  sll        $v0, $v0, 2
/* 5CE2C 8006C62C 23105000 */  subu       $v0, $v0, $s0
/* 5CE30 8006C630 80100200 */  sll        $v0, $v0, 2
/* 5CE34 8006C634 21105000 */  addu       $v0, $v0, $s0
/* 5CE38 8006C638 80100200 */  sll        $v0, $v0, 2
/* 5CE3C 8006C63C 23105000 */  subu       $v0, $v0, $s0
/* 5CE40 8006C640 80100200 */  sll        $v0, $v0, 2
/* 5CE44 8006C644 1800BFAF */  sw         $ra, 0x18($sp)
/* 5CE48 8006C648 1400B1AF */  sw         $s1, 0x14($sp)
/* 5CE4C 8006C64C 80210300 */  sll        $a0, $v1, 6
/* 5CE50 8006C650 21208300 */  addu       $a0, $a0, $v1
/* 5CE54 8006C654 80200400 */  sll        $a0, $a0, 2
/* 5CE58 8006C658 23208300 */  subu       $a0, $a0, $v1
/* 5CE5C 8006C65C C0200400 */  sll        $a0, $a0, 3
/* 5CE60 8006C660 21208300 */  addu       $a0, $a0, $v1
/* 5CE64 8006C664 C0200400 */  sll        $a0, $a0, 3
/* 5CE68 8006C668 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CE6C 8006C66C 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CE70 8006C670 21104300 */  addu       $v0, $v0, $v1
/* 5CE74 8006C674 21208200 */  addu       $a0, $a0, $v0
/* 5CE78 8006C678 BB0A8280 */  lb         $v0, 0xabb($a0)
/* 5CE7C 8006C67C BB0A8390 */  lbu        $v1, 0xabb($a0)
/* 5CE80 8006C680 18004510 */  beq        $v0, $a1, .L8006C6E4
/* 5CE84 8006C684 00000000 */   nop
/* 5CE88 8006C688 0600A104 */  bgez       $a1, .L8006C6A4
/* 5CE8C 8006C68C 21880000 */   addu      $s1, $zero, $zero
/* 5CE90 8006C690 10004004 */  bltz       $v0, .L8006C6D4
/* 5CE94 8006C694 27100300 */   nor       $v0, $zero, $v1
/* 5CE98 8006C698 BB0A82A0 */  sb         $v0, 0xabb($a0)
/* 5CE9C 8006C69C B5B10108 */  j          .L8006C6D4
/* 5CEA0 8006C6A0 01001124 */   addiu     $s1, $zero, 1
.L8006C6A4:
/* 5CEA4 8006C6A4 02004104 */  bgez       $v0, .L8006C6B0
/* 5CEA8 8006C6A8 00000000 */   nop
/* 5CEAC 8006C6AC 01001124 */  addiu      $s1, $zero, 1
.L8006C6B0:
/* 5CEB0 8006C6B0 27100200 */  nor        $v0, $zero, $v0
/* 5CEB4 8006C6B4 06004510 */  beq        $v0, $a1, .L8006C6D0
/* 5CEB8 8006C6B8 00000000 */   nop
/* 5CEBC 8006C6BC BB0A85A0 */  sb         $a1, 0xabb($a0)
/* 5CEC0 8006C6C0 4CB0010C */  jal        FUN_8006c130
/* 5CEC4 8006C6C4 21200002 */   addu      $a0, $s0, $zero
/* 5CEC8 8006C6C8 B5B10108 */  j          .L8006C6D4
/* 5CECC 8006C6CC 00000000 */   nop
.L8006C6D0:
/* 5CED0 8006C6D0 BB0A85A0 */  sb         $a1, 0xabb($a0)
.L8006C6D4:
/* 5CED4 8006C6D4 03002012 */  beqz       $s1, .L8006C6E4
/* 5CED8 8006C6D8 00000000 */   nop
/* 5CEDC 8006C6DC 1DB0010C */  jal        FUN_8006c074
/* 5CEE0 8006C6E0 21200002 */   addu      $a0, $s0, $zero
.L8006C6E4:
/* 5CEE4 8006C6E4 1800BF8F */  lw         $ra, 0x18($sp)
/* 5CEE8 8006C6E8 1400B18F */  lw         $s1, 0x14($sp)
/* 5CEEC 8006C6EC 1000B08F */  lw         $s0, 0x10($sp)
/* 5CEF0 8006C6F0 0800E003 */  jr         $ra
/* 5CEF4 8006C6F4 2000BD27 */   addiu     $sp, $sp, 0x20
