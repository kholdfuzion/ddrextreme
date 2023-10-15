.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be354
/* AEB54 800BE354 00008294 */  lhu        $v0, ($a0)
/* AEB58 800BE358 00000000 */  nop
/* AEB5C 800BE35C FFFF4430 */  andi       $a0, $v0, 0xffff
/* AEB60 800BE360 00808230 */  andi       $v0, $a0, 0x8000
/* AEB64 800BE364 05004010 */  beqz       $v0, .L800BE37C
/* AEB68 800BE368 FEFF0324 */   addiu     $v1, $zero, -2
/* AEB6C 800BE36C 00208230 */  andi       $v0, $a0, 0x2000
/* AEB70 800BE370 02004010 */  beqz       $v0, .L800BE37C
/* AEB74 800BE374 21180000 */   addu      $v1, $zero, $zero
/* AEB78 800BE378 FFFF0324 */  addiu      $v1, $zero, -1
.L800BE37C:
/* AEB7C 800BE37C 0800E003 */  jr         $ra
/* AEB80 800BE380 21106000 */   addu      $v0, $v1, $zero
