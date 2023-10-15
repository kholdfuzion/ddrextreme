.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d2ac0
/* C32C0 800D2AC0 08008010 */  beqz       $a0, .L800D2AE4
/* C32C4 800D2AC4 00160500 */   sll       $v0, $a1, 0x18
/* C32C8 800D2AC8 03160200 */  sra        $v0, $v0, 0x18
.L800D2ACC:
/* C32CC 800D2ACC 00008380 */  lb         $v1, ($a0)
/* C32D0 800D2AD0 00000000 */  nop
/* C32D4 800D2AD4 05006210 */  beq        $v1, $v0, .L800D2AEC
/* C32D8 800D2AD8 00000000 */   nop
/* C32DC 800D2ADC FBFF6014 */  bnez       $v1, .L800D2ACC
/* C32E0 800D2AE0 01008424 */   addiu     $a0, $a0, 1
.L800D2AE4:
/* C32E4 800D2AE4 BC4A0308 */  j          .L800D2AF0
/* C32E8 800D2AE8 21100000 */   addu      $v0, $zero, $zero
.L800D2AEC:
/* C32EC 800D2AEC 21108000 */  addu       $v0, $a0, $zero
.L800D2AF0:
/* C32F0 800D2AF0 0800E003 */  jr         $ra
/* C32F4 800D2AF4 00000000 */   nop
/* C32F8 800D2AF8 00000000 */  nop
/* C32FC 800D2AFC 00000000 */  nop
