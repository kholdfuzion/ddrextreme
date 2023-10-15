.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006bf74
/* 5C774 8006BF74 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5C778 8006BF78 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5C77C 8006BF7C 40100400 */  sll        $v0, $a0, 1
/* 5C780 8006BF80 21104400 */  addu       $v0, $v0, $a0
/* 5C784 8006BF84 80100200 */  sll        $v0, $v0, 2
/* 5C788 8006BF88 23104400 */  subu       $v0, $v0, $a0
/* 5C78C 8006BF8C 80100200 */  sll        $v0, $v0, 2
/* 5C790 8006BF90 23104400 */  subu       $v0, $v0, $a0
/* 5C794 8006BF94 80100200 */  sll        $v0, $v0, 2
/* 5C798 8006BF98 21104400 */  addu       $v0, $v0, $a0
/* 5C79C 8006BF9C 80100200 */  sll        $v0, $v0, 2
/* 5C7A0 8006BFA0 23104400 */  subu       $v0, $v0, $a0
/* 5C7A4 8006BFA4 80100200 */  sll        $v0, $v0, 2
/* 5C7A8 8006BFA8 80290300 */  sll        $a1, $v1, 6
/* 5C7AC 8006BFAC 2128A300 */  addu       $a1, $a1, $v1
/* 5C7B0 8006BFB0 80280500 */  sll        $a1, $a1, 2
/* 5C7B4 8006BFB4 2328A300 */  subu       $a1, $a1, $v1
/* 5C7B8 8006BFB8 C0280500 */  sll        $a1, $a1, 3
/* 5C7BC 8006BFBC 2128A300 */  addu       $a1, $a1, $v1
/* 5C7C0 8006BFC0 C0280500 */  sll        $a1, $a1, 3
/* 5C7C4 8006BFC4 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5C7C8 8006BFC8 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5C7CC 8006BFCC 21104300 */  addu       $v0, $v0, $v1
/* 5C7D0 8006BFD0 2128A200 */  addu       $a1, $a1, $v0
/* 5C7D4 8006BFD4 BE0AA394 */  lhu        $v1, 0xabe($a1)
/* 5C7D8 8006BFD8 00000000 */  nop
/* 5C7DC 8006BFDC 0001632C */  sltiu      $v1, $v1, 0x100
/* 5C7E0 8006BFE0 22006010 */  beqz       $v1, .L8006C06C
/* 5C7E4 8006BFE4 00000000 */   nop
/* 5C7E8 8006BFE8 C00AA384 */  lh         $v1, 0xac0($a1)
/* 5C7EC 8006BFEC 00000000 */  nop
/* 5C7F0 8006BFF0 00016228 */  slti       $v0, $v1, 0x100
/* 5C7F4 8006BFF4 1D004010 */  beqz       $v0, .L8006C06C
/* 5C7F8 8006BFF8 00000000 */   nop
/* 5C7FC 8006BFFC 1B006004 */  bltz       $v1, .L8006C06C
/* 5C800 8006C000 00000000 */   nop
/* 5C804 8006C004 C20AA384 */  lh         $v1, 0xac2($a1)
/* 5C808 8006C008 00000000 */  nop
/* 5C80C 8006C00C 00016228 */  slti       $v0, $v1, 0x100
/* 5C810 8006C010 16004010 */  beqz       $v0, .L8006C06C
/* 5C814 8006C014 00000000 */   nop
/* 5C818 8006C018 14006004 */  bltz       $v1, .L8006C06C
/* 5C81C 8006C01C 00000000 */   nop
/* 5C820 8006C020 B40AA284 */  lh         $v0, 0xab4($a1)
/* 5C824 8006C024 00000000 */  nop
/* 5C828 8006C028 10004018 */  blez       $v0, .L8006C06C
/* 5C82C 8006C02C 21380000 */   addu      $a3, $zero, $zero
/* 5C830 8006C030 3C00A624 */  addiu      $a2, $a1, 0x3c
.L8006C034:
/* 5C834 8006C034 BE0AA290 */  lbu        $v0, 0xabe($a1)
/* 5C838 8006C038 00000000 */  nop
/* 5C83C 8006C03C 0400C2A0 */  sb         $v0, 4($a2)
/* 5C840 8006C040 C00AA390 */  lbu        $v1, 0xac0($a1)
/* 5C844 8006C044 00000000 */  nop
/* 5C848 8006C048 0500C3A0 */  sb         $v1, 5($a2)
/* 5C84C 8006C04C C20AA490 */  lbu        $a0, 0xac2($a1)
/* 5C850 8006C050 0100E724 */  addiu      $a3, $a3, 1
/* 5C854 8006C054 0600C4A0 */  sb         $a0, 6($a2)
/* 5C858 8006C058 B40AA284 */  lh         $v0, 0xab4($a1)
/* 5C85C 8006C05C 00000000 */  nop
/* 5C860 8006C060 2A10E200 */  slt        $v0, $a3, $v0
/* 5C864 8006C064 F3FF4014 */  bnez       $v0, .L8006C034
/* 5C868 8006C068 1C00C624 */   addiu     $a2, $a2, 0x1c
.L8006C06C:
/* 5C86C 8006C06C 0800E003 */  jr         $ra
/* 5C870 8006C070 00000000 */   nop
