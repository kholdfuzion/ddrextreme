.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BADA8
/* AB5A8 800BADA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AB5AC 800BADAC 1000BFAF */  sw         $ra, 0x10($sp)
/* AB5B0 800BADB0 21408000 */  addu       $t0, $a0, $zero
/* AB5B4 800BADB4 2138A000 */  addu       $a3, $a1, $zero
/* AB5B8 800BADB8 21200000 */  addu       $a0, $zero, $zero
/* AB5BC 800BADBC 21280000 */  addu       $a1, $zero, $zero
/* AB5C0 800BADC0 18000624 */  addiu      $a2, $zero, 0x18
.L800BADC4:
/* AB5C4 800BADC4 21100501 */  addu       $v0, $t0, $a1
/* AB5C8 800BADC8 00004390 */  lbu        $v1, ($v0)
/* AB5CC 800BADCC 0100A524 */  addiu      $a1, $a1, 1
/* AB5D0 800BADD0 0400A228 */  slti       $v0, $a1, 4
/* AB5D4 800BADD4 0418C300 */  sllv       $v1, $v1, $a2
/* AB5D8 800BADD8 25208300 */  or         $a0, $a0, $v1
/* AB5DC 800BADDC F9FF4014 */  bnez       $v0, .L800BADC4
/* AB5E0 800BADE0 F8FFC624 */   addiu     $a2, $a2, -8
/* AB5E4 800BADE4 1A000524 */  addiu      $a1, $zero, 0x1a
/* AB5E8 800BADE8 FEEB020C */  jal        FUN_800baff8
/* AB5EC 800BADEC 07000624 */   addiu     $a2, $zero, 7
/* AB5F0 800BADF0 1000BF8F */  lw         $ra, 0x10($sp)
/* AB5F4 800BADF4 00000000 */  nop
/* AB5F8 800BADF8 0800E003 */  jr         $ra
/* AB5FC 800BADFC 1800BD27 */   addiu     $sp, $sp, 0x18
