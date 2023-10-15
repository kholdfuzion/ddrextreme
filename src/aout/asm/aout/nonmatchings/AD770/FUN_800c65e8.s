.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c65e8
/* B6DE8 800C65E8 11008004 */  bltz       $a0, .L800C6630
/* B6DEC 800C65EC 2080033C */   lui       $v1, 0x8020
/* B6DF0 800C65F0 40100400 */  sll        $v0, $a0, 1
/* B6DF4 800C65F4 21104400 */  addu       $v0, $v0, $a0
/* B6DF8 800C65F8 C0100200 */  sll        $v0, $v0, 3
/* B6DFC 800C65FC 21104400 */  addu       $v0, $v0, $a0
/* B6E00 800C6600 C0100200 */  sll        $v0, $v0, 3
/* B6E04 800C6604 40B56324 */  addiu      $v1, $v1, -0x4ac0
/* B6E08 800C6608 21204300 */  addu       $a0, $v0, $v1
/* B6E0C 800C660C 02000224 */  addiu      $v0, $zero, 2
/* B6E10 800C6610 0400838C */  lw         $v1, 4($a0)
/* B6E14 800C6614 AC00858C */  lw         $a1, 0xac($a0)
/* B6E18 800C6618 07006214 */  bne        $v1, $v0, .L800C6638
/* B6E1C 800C661C FEFF0224 */   addiu     $v0, $zero, -2
/* B6E20 800C6620 0500A210 */  beq        $a1, $v0, .L800C6638
/* B6E24 800C6624 00000000 */   nop
/* B6E28 800C6628 8E190308 */  j          .L800C6638
/* B6E2C 800C662C 040080AC */   sw        $zero, 4($a0)
.L800C6630:
/* B6E30 800C6630 2080023C */  lui        $v0, %hi(D_801FB758)
/* B6E34 800C6634 58B7458C */  lw         $a1, %lo(D_801FB758)($v0)
.L800C6638:
/* B6E38 800C6638 0800E003 */  jr         $ra
/* B6E3C 800C663C 2110A000 */   addu      $v0, $a1, $zero
