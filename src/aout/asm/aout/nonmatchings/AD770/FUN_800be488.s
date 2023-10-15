.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be488
/* AEC88 800BE488 00008294 */  lhu        $v0, ($a0)
/* AEC8C 800BE48C 80800334 */  ori        $v1, $zero, 0x8080
/* AEC90 800BE490 80804230 */  andi       $v0, $v0, 0x8080
/* AEC94 800BE494 07004314 */  bne        $v0, $v1, .L800BE4B4
/* AEC98 800BE498 FEFF0524 */   addiu     $a1, $zero, -2
/* AEC9C 800BE49C 00008294 */  lhu        $v0, ($a0)
/* AECA0 800BE4A0 00000000 */  nop
/* AECA4 800BE4A4 10104230 */  andi       $v0, $v0, 0x1010
/* AECA8 800BE4A8 02004014 */  bnez       $v0, .L800BE4B4
/* AECAC 800BE4AC 00000000 */   nop
/* AECB0 800BE4B0 21280000 */  addu       $a1, $zero, $zero
.L800BE4B4:
/* AECB4 800BE4B4 0800E003 */  jr         $ra
/* AECB8 800BE4B8 2110A000 */   addu      $v0, $a1, $zero
