.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cde5c
/* BE65C 800CDE5C 21400000 */  addu       $t0, $zero, $zero
/* BE660 800CDE60 1200A018 */  blez       $a1, .L800CDEAC
/* BE664 800CDE64 21180001 */   addu      $v1, $t0, $zero
/* BE668 800CDE68 21108800 */  addu       $v0, $a0, $t0
.L800CDE6C:
/* BE66C 800CDE6C 00004790 */  lbu        $a3, ($v0)
/* BE670 800CDE70 07000624 */  addiu      $a2, $zero, 7
.L800CDE74:
/* BE674 800CDE74 2610E300 */  xor        $v0, $a3, $v1
/* BE678 800CDE78 01004230 */  andi       $v0, $v0, 1
/* BE67C 800CDE7C 03004010 */  beqz       $v0, .L800CDE8C
/* BE680 800CDE80 43100300 */   sra       $v0, $v1, 1
/* BE684 800CDE84 A4370308 */  j          .L800CDE90
/* BE688 800CDE88 8C004338 */   xori      $v1, $v0, 0x8c
.L800CDE8C:
/* BE68C 800CDE8C 43180300 */  sra        $v1, $v1, 1
.L800CDE90:
/* BE690 800CDE90 FFFFC624 */  addiu      $a2, $a2, -1
/* BE694 800CDE94 F7FFC104 */  bgez       $a2, .L800CDE74
/* BE698 800CDE98 43380700 */   sra       $a3, $a3, 1
/* BE69C 800CDE9C 01000825 */  addiu      $t0, $t0, 1
/* BE6A0 800CDEA0 2A100501 */  slt        $v0, $t0, $a1
/* BE6A4 800CDEA4 F1FF4014 */  bnez       $v0, .L800CDE6C
/* BE6A8 800CDEA8 21108800 */   addu      $v0, $a0, $t0
.L800CDEAC:
/* BE6AC 800CDEAC 0800E003 */  jr         $ra
/* BE6B0 800CDEB0 FF006230 */   andi      $v0, $v1, 0xff
