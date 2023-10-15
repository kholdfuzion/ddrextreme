.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005ac74
/* 4B474 8005AC74 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4B478 8005AC78 21308000 */  addu       $a2, $a0, $zero
/* 4B47C 8005AC7C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B480 8005AC80 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B484 8005AC84 80100600 */  sll        $v0, $a2, 2
/* 4B488 8005AC88 21104600 */  addu       $v0, $v0, $a2
/* 4B48C 8005AC8C C0100200 */  sll        $v0, $v0, 3
/* 4B490 8005AC90 21104600 */  addu       $v0, $v0, $a2
/* 4B494 8005AC94 C0100200 */  sll        $v0, $v0, 3
/* 4B498 8005AC98 23104600 */  subu       $v0, $v0, $a2
/* 4B49C 8005AC9C 80100200 */  sll        $v0, $v0, 2
/* 4B4A0 8005ACA0 21104600 */  addu       $v0, $v0, $a2
/* 4B4A4 8005ACA4 C0100200 */  sll        $v0, $v0, 3
/* 4B4A8 8005ACA8 1400BFAF */  sw         $ra, 0x14($sp)
/* 4B4AC 8005ACAC 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B4B0 8005ACB0 40200300 */  sll        $a0, $v1, 1
/* 4B4B4 8005ACB4 21208300 */  addu       $a0, $a0, $v1
/* 4B4B8 8005ACB8 C0200400 */  sll        $a0, $a0, 3
/* 4B4BC 8005ACBC 23208300 */  subu       $a0, $a0, $v1
/* 4B4C0 8005ACC0 C0210400 */  sll        $a0, $a0, 7
/* 4B4C4 8005ACC4 21208300 */  addu       $a0, $a0, $v1
/* 4B4C8 8005ACC8 80200400 */  sll        $a0, $a0, 2
/* 4B4CC 8005ACCC 21208300 */  addu       $a0, $a0, $v1
/* 4B4D0 8005ACD0 C0200400 */  sll        $a0, $a0, 3
/* 4B4D4 8005ACD4 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B4D8 8005ACD8 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B4DC 8005ACDC 21104300 */  addu       $v0, $v0, $v1
/* 4B4E0 8005ACE0 0200A004 */  bltz       $a1, .L8005ACEC
/* 4B4E4 8005ACE4 21808200 */   addu      $s0, $a0, $v0
/* 4B4E8 8005ACE8 A02805A6 */  sh         $a1, 0x28a0($s0)
.L8005ACEC:
/* 4B4EC 8005ACEC A5280292 */  lbu        $v0, 0x28a5($s0)
/* 4B4F0 8005ACF0 00000000 */  nop
/* 4B4F4 8005ACF4 03004010 */  beqz       $v0, .L8005AD04
/* 4B4F8 8005ACF8 00000000 */   nop
/* 4B4FC 8005ACFC 9F5B010C */  jal        FUN_80056e7c
/* 4B500 8005AD00 2120C000 */   addu      $a0, $a2, $zero
.L8005AD04:
/* 4B504 8005AD04 A0280286 */  lh         $v0, 0x28a0($s0)
/* 4B508 8005AD08 1400BF8F */  lw         $ra, 0x14($sp)
/* 4B50C 8005AD0C 1000B08F */  lw         $s0, 0x10($sp)
/* 4B510 8005AD10 0800E003 */  jr         $ra
/* 4B514 8005AD14 1800BD27 */   addiu     $sp, $sp, 0x18
