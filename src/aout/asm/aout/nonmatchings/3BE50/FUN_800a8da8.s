.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8da8
/* 995A8 800A8DA8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 995AC 800A8DAC 1000B0AF */  sw         $s0, 0x10($sp)
/* 995B0 800A8DB0 FFFF1024 */  addiu      $s0, $zero, -1
/* 995B4 800A8DB4 2000B4AF */  sw         $s4, 0x20($sp)
/* 995B8 800A8DB8 21A08000 */  addu       $s4, $a0, $zero
/* 995BC 800A8DBC 1800B2AF */  sw         $s2, 0x18($sp)
/* 995C0 800A8DC0 2190A000 */  addu       $s2, $a1, $zero
/* 995C4 800A8DC4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 995C8 800A8DC8 2198C000 */  addu       $s3, $a2, $zero
/* 995CC 800A8DCC 1400B1AF */  sw         $s1, 0x14($sp)
/* 995D0 800A8DD0 2188E000 */  addu       $s1, $a3, $zero
/* 995D4 800A8DD4 2800BFAF */  sw         $ra, 0x28($sp)
/* 995D8 800A8DD8 2400B5AF */  sw         $s5, 0x24($sp)
/* 995DC 800A8DDC 43008012 */  beqz       $s4, .L800A8EEC
/* 995E0 800A8DE0 FFFF0224 */   addiu     $v0, $zero, -1
/* 995E4 800A8DE4 0200422E */  sltiu      $v0, $s2, 2
/* 995E8 800A8DE8 03004014 */  bnez       $v0, .L800A8DF8
/* 995EC 800A8DEC 0400622E */   sltiu     $v0, $s3, 4
/* 995F0 800A8DF0 BBA30208 */  j          .L800A8EEC
/* 995F4 800A8DF4 FFFF0224 */   addiu     $v0, $zero, -1
.L800A8DF8:
/* 995F8 800A8DF8 3C004010 */  beqz       $v0, .L800A8EEC
/* 995FC 800A8DFC FFFF0224 */   addiu     $v0, $zero, -1
/* 99600 800A8E00 C4A3020C */  jal        FUN_800a8f10
/* 99604 800A8E04 21202002 */   addu      $a0, $s1, $zero
/* 99608 800A8E08 21202002 */  addu       $a0, $s1, $zero
/* 9960C 800A8E0C DEA3020C */  jal        FUN_800a8f78
/* 99610 800A8E10 21A84000 */   addu      $s5, $v0, $zero
/* 99614 800A8E14 21284000 */  addu       $a1, $v0, $zero
/* 99618 800A8E18 0500222E */  sltiu      $v0, $s1, 5
/* 9961C 800A8E1C 29004010 */  beqz       $v0, .L800A8EC4
/* 99620 800A8E20 0180023C */   lui       $v0, %hi(D_80016C60)
/* 99624 800A8E24 606C4224 */  addiu      $v0, $v0, %lo(D_80016C60)
/* 99628 800A8E28 80181100 */  sll        $v1, $s1, 2
/* 9962C 800A8E2C 21186200 */  addu       $v1, $v1, $v0
/* 99630 800A8E30 0000648C */  lw         $a0, ($v1)
/* 99634 800A8E34 00000000 */  nop
/* 99638 800A8E38 08008000 */  jr         $a0
/* 9963C 800A8E3C 00000000 */   nop
/* 99640 800A8E40 80101200 */  sll        $v0, $s2, 2
/* 99644 800A8E44 21105300 */  addu       $v0, $v0, $s3
/* 99648 800A8E48 40100200 */  sll        $v0, $v0, 1
/* 9964C 800A8E4C 21108202 */  addu       $v0, $s4, $v0
/* 99650 800A8E50 28005094 */  lhu        $s0, 0x28($v0)
/* 99654 800A8E54 B3A30208 */  j          .L800A8ECC
/* 99658 800A8E58 2A10B002 */   slt       $v0, $s5, $s0
/* 9965C 800A8E5C 80101200 */  sll        $v0, $s2, 2
/* 99660 800A8E60 21105300 */  addu       $v0, $v0, $s3
/* 99664 800A8E64 40100200 */  sll        $v0, $v0, 1
/* 99668 800A8E68 21108202 */  addu       $v0, $s4, $v0
/* 9966C 800A8E6C 38005094 */  lhu        $s0, 0x38($v0)
/* 99670 800A8E70 B3A30208 */  j          .L800A8ECC
/* 99674 800A8E74 2A10B002 */   slt       $v0, $s5, $s0
/* 99678 800A8E78 80101200 */  sll        $v0, $s2, 2
/* 9967C 800A8E7C 21105300 */  addu       $v0, $v0, $s3
/* 99680 800A8E80 40100200 */  sll        $v0, $v0, 1
/* 99684 800A8E84 21108202 */  addu       $v0, $s4, $v0
/* 99688 800A8E88 48005094 */  lhu        $s0, 0x48($v0)
/* 9968C 800A8E8C B3A30208 */  j          .L800A8ECC
/* 99690 800A8E90 2A10B002 */   slt       $v0, $s5, $s0
/* 99694 800A8E94 80101200 */  sll        $v0, $s2, 2
/* 99698 800A8E98 21105300 */  addu       $v0, $v0, $s3
/* 9969C 800A8E9C 40100200 */  sll        $v0, $v0, 1
/* 996A0 800A8EA0 21108202 */  addu       $v0, $s4, $v0
/* 996A4 800A8EA4 58005094 */  lhu        $s0, 0x58($v0)
/* 996A8 800A8EA8 B3A30208 */  j          .L800A8ECC
/* 996AC 800A8EAC 2A10B002 */   slt       $v0, $s5, $s0
/* 996B0 800A8EB0 80101200 */  sll        $v0, $s2, 2
/* 996B4 800A8EB4 21105300 */  addu       $v0, $v0, $s3
/* 996B8 800A8EB8 40100200 */  sll        $v0, $v0, 1
/* 996BC 800A8EBC 21108202 */  addu       $v0, $s4, $v0
/* 996C0 800A8EC0 68005094 */  lhu        $s0, 0x68($v0)
.L800A8EC4:
/* 996C4 800A8EC4 00000000 */  nop
/* 996C8 800A8EC8 2A10B002 */  slt        $v0, $s5, $s0
.L800A8ECC:
/* 996CC 800A8ECC 03004010 */  beqz       $v0, .L800A8EDC
/* 996D0 800A8ED0 2A100502 */   slt       $v0, $s0, $a1
/* 996D4 800A8ED4 2180A002 */  addu       $s0, $s5, $zero
/* 996D8 800A8ED8 2A100502 */  slt        $v0, $s0, $a1
.L800A8EDC:
/* 996DC 800A8EDC 03004010 */  beqz       $v0, .L800A8EEC
/* 996E0 800A8EE0 21100002 */   addu      $v0, $s0, $zero
/* 996E4 800A8EE4 2180A000 */  addu       $s0, $a1, $zero
/* 996E8 800A8EE8 21100002 */  addu       $v0, $s0, $zero
.L800A8EEC:
/* 996EC 800A8EEC 2800BF8F */  lw         $ra, 0x28($sp)
/* 996F0 800A8EF0 2400B58F */  lw         $s5, 0x24($sp)
/* 996F4 800A8EF4 2000B48F */  lw         $s4, 0x20($sp)
/* 996F8 800A8EF8 1C00B38F */  lw         $s3, 0x1c($sp)
/* 996FC 800A8EFC 1800B28F */  lw         $s2, 0x18($sp)
/* 99700 800A8F00 1400B18F */  lw         $s1, 0x14($sp)
/* 99704 800A8F04 1000B08F */  lw         $s0, 0x10($sp)
/* 99708 800A8F08 0800E003 */  jr         $ra
/* 9970C 800A8F0C 3000BD27 */   addiu     $sp, $sp, 0x30
