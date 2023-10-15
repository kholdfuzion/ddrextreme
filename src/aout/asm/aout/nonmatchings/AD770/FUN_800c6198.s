.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6198
/* B6998 800C6198 40100400 */  sll        $v0, $a0, 1
/* B699C 800C619C 21104400 */  addu       $v0, $v0, $a0
/* B69A0 800C61A0 C0100200 */  sll        $v0, $v0, 3
/* B69A4 800C61A4 21104400 */  addu       $v0, $v0, $a0
/* B69A8 800C61A8 C0100200 */  sll        $v0, $v0, 3
/* B69AC 800C61AC 2080033C */  lui        $v1, %hi(D_801FB540)
/* B69B0 800C61B0 40B56324 */  addiu      $v1, $v1, %lo(D_801FB540)
/* B69B4 800C61B4 21204300 */  addu       $a0, $v0, $v1
/* B69B8 800C61B8 0400828C */  lw         $v0, 4($a0)
/* B69BC 800C61BC 00000000 */  nop
/* B69C0 800C61C0 03004014 */  bnez       $v0, .L800C61D0
/* B69C4 800C61C4 A4008324 */   addiu     $v1, $a0, 0xa4
/* B69C8 800C61C8 0800E003 */  jr         $ra
/* B69CC 800C61CC FFFF0224 */   addiu     $v0, $zero, -1
.L800C61D0:
/* B69D0 800C61D0 0C00828C */  lw         $v0, 0xc($a0)
/* B69D4 800C61D4 00000000 */  nop
/* B69D8 800C61D8 04004230 */  andi       $v0, $v0, 4
/* B69DC 800C61DC 08004010 */  beqz       $v0, .L800C6200
/* B69E0 800C61E0 FEFF0224 */   addiu     $v0, $zero, -2
/* B69E4 800C61E4 0800638C */  lw         $v1, 8($v1)
/* B69E8 800C61E8 00000000 */  nop
/* B69EC 800C61EC 04006214 */  bne        $v1, $v0, .L800C6200
/* B69F0 800C61F0 02000224 */   addiu     $v0, $zero, 2
/* B69F4 800C61F4 040082AC */  sw         $v0, 4($a0)
/* B69F8 800C61F8 0800E003 */  jr         $ra
/* B69FC 800C61FC FEFF0224 */   addiu     $v0, $zero, -2
.L800C6200:
/* B6A00 800C6200 040080AC */  sw         $zero, 4($a0)
/* B6A04 800C6204 0800E003 */  jr         $ra
/* B6A08 800C6208 21100000 */   addu      $v0, $zero, $zero
