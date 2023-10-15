.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bffa0
/* B07A0 800BFFA0 1F80023C */  lui        $v0, %hi(D_801F7090)
/* B07A4 800BFFA4 90704290 */  lbu        $v0, %lo(D_801F7090)($v0)
/* B07A8 800BFFA8 00000000 */  nop
/* B07AC 800BFFAC 01004230 */  andi       $v0, $v0, 1
/* B07B0 800BFFB0 03004010 */  beqz       $v0, .L800BFFC0
/* B07B4 800BFFB4 1F80033C */   lui       $v1, %hi(D_801F7090)
/* B07B8 800BFFB8 0800E003 */  jr         $ra
/* B07BC 800BFFBC FEFF0224 */   addiu     $v0, $zero, -2
.L800BFFC0:
/* B07C0 800BFFC0 90706290 */  lbu        $v0, %lo(D_801F7090)($v1)
/* B07C4 800BFFC4 00000000 */  nop
/* B07C8 800BFFC8 01004234 */  ori        $v0, $v0, 1
/* B07CC 800BFFCC 907062A0 */  sb         $v0, 0x7090($v1)
/* B07D0 800BFFD0 0800E003 */  jr         $ra
/* B07D4 800BFFD4 21100000 */   addu      $v0, $zero, $zero
