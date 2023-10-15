.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002BF28
/* 1C728 8002BF28 21388000 */  addu       $a3, $a0, $zero
/* 1C72C 8002BF2C 1580023C */  lui        $v0, %hi(D_8014C1F0)
/* 1C730 8002BF30 F0C14384 */  lh         $v1, %lo(D_8014C1F0)($v0)
/* 1C734 8002BF34 00000000 */  nop
/* 1C738 8002BF38 44006010 */  beqz       $v1, .L8002C04C
/* 1C73C 8002BF3C F0C14624 */   addiu     $a2, $v0, -0x3e10
/* 1C740 8002BF40 80280700 */  sll        $a1, $a3, 2
/* 1C744 8002BF44 2800C224 */  addiu      $v0, $a2, 0x28
/* 1C748 8002BF48 2120A200 */  addu       $a0, $a1, $v0
/* 1C74C 8002BF4C 00008394 */  lhu        $v1, ($a0)
/* 1C750 8002BF50 FFFF0834 */  ori        $t0, $zero, 0xffff
/* 1C754 8002BF54 06006814 */  bne        $v1, $t0, .L8002BF70
/* 1C758 8002BF58 2A00C324 */   addiu     $v1, $a2, 0x2a
/* 1C75C 8002BF5C 2118A300 */  addu       $v1, $a1, $v1
/* 1C760 8002BF60 00006294 */  lhu        $v0, ($v1)
/* 1C764 8002BF64 00000000 */  nop
/* 1C768 8002BF68 01004224 */  addiu      $v0, $v0, 1
/* 1C76C 8002BF6C 000062A4 */  sh         $v0, ($v1)
.L8002BF70:
/* 1C770 8002BF70 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 1C774 8002BF74 00008294 */  lhu        $v0, ($a0)
/* 1C778 8002BF78 2800A524 */  addiu      $a1, $a1, %lo(D_800F0028)
/* 1C77C 8002BF7C 01004224 */  addiu      $v0, $v0, 1
/* 1C780 8002BF80 000082A4 */  sh         $v0, ($a0)
/* 1C784 8002BF84 01000424 */  addiu      $a0, $zero, 1
/* 1C788 8002BF88 23208700 */  subu       $a0, $a0, $a3
/* 1C78C 8002BF8C 80100400 */  sll        $v0, $a0, 2
/* 1C790 8002BF90 21104400 */  addu       $v0, $v0, $a0
/* 1C794 8002BF94 C0190200 */  sll        $v1, $v0, 7
/* 1C798 8002BF98 21104300 */  addu       $v0, $v0, $v1
/* 1C79C 8002BF9C 40110200 */  sll        $v0, $v0, 5
/* 1C7A0 8002BFA0 23104400 */  subu       $v0, $v0, $a0
/* 1C7A4 8002BFA4 80100200 */  sll        $v0, $v0, 2
/* 1C7A8 8002BFA8 21204500 */  addu       $a0, $v0, $a1
/* 1C7AC 8002BFAC 8A008390 */  lbu        $v1, 0x8a($a0)
/* 1C7B0 8002BFB0 07000224 */  addiu      $v0, $zero, 7
/* 1C7B4 8002BFB4 07006210 */  beq        $v1, $v0, .L8002BFD4
/* 1C7B8 8002BFB8 00000000 */   nop
/* 1C7BC 8002BFBC 05006010 */  beqz       $v1, .L8002BFD4
/* 1C7C0 8002BFC0 00000000 */   nop
/* 1C7C4 8002BFC4 3C008280 */  lb         $v0, 0x3c($a0)
/* 1C7C8 8002BFC8 00000000 */  nop
/* 1C7CC 8002BFCC 0E004014 */  bnez       $v0, .L8002C008
/* 1C7D0 8002BFD0 00000000 */   nop
.L8002BFD4:
/* 1C7D4 8002BFD4 3800C394 */  lhu        $v1, 0x38($a2)
/* 1C7D8 8002BFD8 FFFF0234 */  ori        $v0, $zero, 0xffff
/* 1C7DC 8002BFDC 05006214 */  bne        $v1, $v0, .L8002BFF4
/* 1C7E0 8002BFE0 00000000 */   nop
/* 1C7E4 8002BFE4 3A00C294 */  lhu        $v0, 0x3a($a2)
/* 1C7E8 8002BFE8 00000000 */  nop
/* 1C7EC 8002BFEC 01004224 */  addiu      $v0, $v0, 1
/* 1C7F0 8002BFF0 3A00C2A4 */  sh         $v0, 0x3a($a2)
.L8002BFF4:
/* 1C7F4 8002BFF4 3800C294 */  lhu        $v0, 0x38($a2)
/* 1C7F8 8002BFF8 00000000 */  nop
/* 1C7FC 8002BFFC 01004224 */  addiu      $v0, $v0, 1
/* 1C800 8002C000 0EB00008 */  j          .L8002C038
/* 1C804 8002C004 3800C2A4 */   sh        $v0, 0x38($a2)
.L8002C008:
/* 1C808 8002C008 3C00C294 */  lhu        $v0, 0x3c($a2)
/* 1C80C 8002C00C 00000000 */  nop
/* 1C810 8002C010 05004814 */  bne        $v0, $t0, .L8002C028
/* 1C814 8002C014 00000000 */   nop
/* 1C818 8002C018 3E00C294 */  lhu        $v0, 0x3e($a2)
/* 1C81C 8002C01C 00000000 */  nop
/* 1C820 8002C020 01004224 */  addiu      $v0, $v0, 1
/* 1C824 8002C024 3E00C2A4 */  sh         $v0, 0x3e($a2)
.L8002C028:
/* 1C828 8002C028 3C00C294 */  lhu        $v0, 0x3c($a2)
/* 1C82C 8002C02C 00000000 */  nop
/* 1C830 8002C030 01004224 */  addiu      $v0, $v0, 1
/* 1C834 8002C034 3C00C2A4 */  sh         $v0, 0x3c($a2)
.L8002C038:
/* 1C838 8002C038 0E80033C */  lui        $v1, %hi(D_800D8D38)
/* 1C83C 8002C03C 388D628C */  lw         $v0, %lo(D_800D8D38)($v1)
/* 1C840 8002C040 00000000 */  nop
/* 1C844 8002C044 08004234 */  ori        $v0, $v0, 8
/* 1C848 8002C048 388D62AC */  sw         $v0, -0x72c8($v1)
.L8002C04C:
/* 1C84C 8002C04C 0800E003 */  jr         $ra
/* 1C850 8002C050 00000000 */   nop
