.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae708
/* 9EF08 800AE708 21300000 */  addu       $a2, $zero, $zero
/* 9EF0C 800AE70C 1C80033C */  lui        $v1, %hi(D_801C4678)
/* 9EF10 800AE710 78466324 */  addiu      $v1, $v1, %lo(D_801C4678)
/* 9EF14 800AE714 C0110400 */  sll        $v0, $a0, 7
/* 9EF18 800AE718 21104400 */  addu       $v0, $v0, $a0
/* 9EF1C 800AE71C C0110200 */  sll        $v0, $v0, 7
/* 9EF20 800AE720 00406324 */  addiu      $v1, $v1, 0x4000
/* 9EF24 800AE724 21184300 */  addu       $v1, $v0, $v1
.L800AE728:
/* 9EF28 800AE728 00006290 */  lbu        $v0, ($v1)
/* 9EF2C 800AE72C 00000000 */  nop
/* 9EF30 800AE730 24104500 */  and        $v0, $v0, $a1
/* 9EF34 800AE734 03004010 */  beqz       $v0, .L800AE744
/* 9EF38 800AE738 0100C624 */   addiu     $a2, $a2, 1
/* 9EF3C 800AE73C 0800E003 */  jr         $ra
/* 9EF40 800AE740 01000224 */   addiu     $v0, $zero, 1
.L800AE744:
/* 9EF44 800AE744 8000C228 */  slti       $v0, $a2, 0x80
/* 9EF48 800AE748 F7FF4014 */  bnez       $v0, .L800AE728
/* 9EF4C 800AE74C 01006324 */   addiu     $v1, $v1, 1
/* 9EF50 800AE750 0800E003 */  jr         $ra
/* 9EF54 800AE754 21100000 */   addu      $v0, $zero, $zero
