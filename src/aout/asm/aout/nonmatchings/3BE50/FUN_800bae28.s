.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bae28
/* AB628 800BAE28 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AB62C 800BAE2C 1000B0AF */  sw         $s0, 0x10($sp)
/* AB630 800BAE30 1400BFAF */  sw         $ra, 0x14($sp)
/* AB634 800BAE34 9DEA020C */  jal        FUN_800baa74
/* AB638 800BAE38 2180A000 */   addu      $s0, $a1, $zero
/* AB63C 800BAE3C 21380000 */  addu       $a3, $zero, $zero
/* AB640 800BAE40 01000824 */  addiu      $t0, $zero, 1
/* AB644 800BAE44 1E80093C */  lui        $t1, %hi(D_801E0EF0)
/* AB648 800BAE48 F00E2625 */  addiu      $a2, $t1, %lo(D_801E0EF0)
.L800BAE4C:
/* AB64C 800BAE4C 0000C290 */  lbu        $v0, ($a2)
/* AB650 800BAE50 0000038E */  lw         $v1, ($s0)
/* AB654 800BAE54 04104800 */  sllv       $v0, $t0, $v0
/* AB658 800BAE58 24106200 */  and        $v0, $v1, $v0
/* AB65C 800BAE5C 06004010 */  beqz       $v0, .L800BAE78
/* AB660 800BAE60 00000000 */   nop
/* AB664 800BAE64 1000C290 */  lbu        $v0, 0x10($a2)
/* AB668 800BAE68 00000000 */  nop
/* AB66C 800BAE6C 04104800 */  sllv       $v0, $t0, $v0
/* AB670 800BAE70 A3EB0208 */  j          .L800BAE8C
/* AB674 800BAE74 25106200 */   or        $v0, $v1, $v0
.L800BAE78:
/* AB678 800BAE78 1000C290 */  lbu        $v0, 0x10($a2)
/* AB67C 800BAE7C 00000000 */  nop
/* AB680 800BAE80 04104800 */  sllv       $v0, $t0, $v0
/* AB684 800BAE84 27100200 */  nor        $v0, $zero, $v0
/* AB688 800BAE88 24106200 */  and        $v0, $v1, $v0
.L800BAE8C:
/* AB68C 800BAE8C 000002AE */  sw         $v0, ($s0)
/* AB690 800BAE90 1000C290 */  lbu        $v0, 0x10($a2)
/* AB694 800BAE94 01000524 */  addiu      $a1, $zero, 1
/* AB698 800BAE98 04104500 */  sllv       $v0, $a1, $v0
/* AB69C 800BAE9C 24106200 */  and        $v0, $v1, $v0
/* AB6A0 800BAEA0 08004010 */  beqz       $v0, .L800BAEC4
/* AB6A4 800BAEA4 F00E2425 */   addiu     $a0, $t1, 0xef0
/* AB6A8 800BAEA8 2110E400 */  addu       $v0, $a3, $a0
/* AB6AC 800BAEAC 00004390 */  lbu        $v1, ($v0)
/* AB6B0 800BAEB0 0000048E */  lw         $a0, ($s0)
/* AB6B4 800BAEB4 04186500 */  sllv       $v1, $a1, $v1
/* AB6B8 800BAEB8 25208300 */  or         $a0, $a0, $v1
/* AB6BC 800BAEBC B8EB0208 */  j          .L800BAEE0
/* AB6C0 800BAEC0 000004AE */   sw        $a0, ($s0)
.L800BAEC4:
/* AB6C4 800BAEC4 2110E400 */  addu       $v0, $a3, $a0
/* AB6C8 800BAEC8 00004390 */  lbu        $v1, ($v0)
/* AB6CC 800BAECC 0000028E */  lw         $v0, ($s0)
/* AB6D0 800BAED0 04186500 */  sllv       $v1, $a1, $v1
/* AB6D4 800BAED4 27180300 */  nor        $v1, $zero, $v1
/* AB6D8 800BAED8 24104300 */  and        $v0, $v0, $v1
/* AB6DC 800BAEDC 000002AE */  sw         $v0, ($s0)
.L800BAEE0:
/* AB6E0 800BAEE0 0100E724 */  addiu      $a3, $a3, 1
/* AB6E4 800BAEE4 1000E228 */  slti       $v0, $a3, 0x10
/* AB6E8 800BAEE8 D8FF4014 */  bnez       $v0, .L800BAE4C
/* AB6EC 800BAEEC 0100C624 */   addiu     $a2, $a2, 1
/* AB6F0 800BAEF0 1400BF8F */  lw         $ra, 0x14($sp)
/* AB6F4 800BAEF4 1000B08F */  lw         $s0, 0x10($sp)
/* AB6F8 800BAEF8 0800E003 */  jr         $ra
/* AB6FC 800BAEFC 1800BD27 */   addiu     $sp, $sp, 0x18
