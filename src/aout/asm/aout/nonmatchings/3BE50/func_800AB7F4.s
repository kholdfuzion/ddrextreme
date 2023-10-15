.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800AB7F4
/* 9BFF4 800AB7F4 1C80033C */  lui        $v1, %hi(D_801BFBB8)
/* 9BFF8 800AB7F8 B8FB6324 */  addiu      $v1, $v1, %lo(D_801BFBB8)
/* 9BFFC 800AB7FC 40100400 */  sll        $v0, $a0, 1
/* 9C000 800AB800 21104400 */  addu       $v0, $v0, $a0
/* 9C004 800AB804 C0100200 */  sll        $v0, $v0, 3
/* 9C008 800AB808 21104300 */  addu       $v0, $v0, $v1
/* 9C00C 800AB80C 0F004380 */  lb         $v1, 0xf($v0)
/* 9C010 800AB810 0B00A004 */  bltz       $a1, .L800AB840
/* 9C014 800AB814 0200A228 */   slti      $v0, $a1, 2
/* 9C018 800AB818 05004014 */  bnez       $v0, .L800AB830
/* 9C01C 800AB81C 02000224 */   addiu     $v0, $zero, 2
/* 9C020 800AB820 0500A210 */  beq        $a1, $v0, .L800AB838
/* 9C024 800AB824 02006238 */   xori      $v0, $v1, 2
/* 9C028 800AB828 0800E003 */  jr         $ra
/* 9C02C 800AB82C 21100000 */   addu      $v0, $zero, $zero
.L800AB830:
/* 9C030 800AB830 0800E003 */  jr         $ra
/* 9C034 800AB834 0200622C */   sltiu     $v0, $v1, 2
.L800AB838:
/* 9C038 800AB838 0800E003 */  jr         $ra
/* 9C03C 800AB83C 0100422C */   sltiu     $v0, $v0, 1
.L800AB840:
/* 9C040 800AB840 21100000 */  addu       $v0, $zero, $zero
/* 9C044 800AB844 0800E003 */  jr         $ra
/* 9C048 800AB848 00000000 */   nop
