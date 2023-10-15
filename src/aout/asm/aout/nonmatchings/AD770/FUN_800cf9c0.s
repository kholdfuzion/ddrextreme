.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cf9c0
/* C01C0 800CF9C0 1100C010 */  beqz       $a2, .L800CFA08
/* C01C4 800CF9C4 21380000 */   addu      $a3, $zero, $zero
.L800CF9C8:
/* C01C8 800CF9C8 0000A290 */  lbu        $v0, ($a1)
/* C01CC 800CF9CC 21188700 */  addu       $v1, $a0, $a3
/* C01D0 800CF9D0 000062A0 */  sb         $v0, ($v1)
/* C01D4 800CF9D4 0000A28C */  lw         $v0, ($a1)
/* C01D8 800CF9D8 00000000 */  nop
/* C01DC 800CF9DC 02120200 */  srl        $v0, $v0, 8
/* C01E0 800CF9E0 010062A0 */  sb         $v0, 1($v1)
/* C01E4 800CF9E4 0200A294 */  lhu        $v0, 2($a1)
/* C01E8 800CF9E8 0400E724 */  addiu      $a3, $a3, 4
/* C01EC 800CF9EC 020062A0 */  sb         $v0, 2($v1)
/* C01F0 800CF9F0 0300A290 */  lbu        $v0, 3($a1)
/* C01F4 800CF9F4 00000000 */  nop
/* C01F8 800CF9F8 030062A0 */  sb         $v0, 3($v1)
/* C01FC 800CF9FC 2B10E600 */  sltu       $v0, $a3, $a2
/* C0200 800CFA00 F1FF4014 */  bnez       $v0, .L800CF9C8
/* C0204 800CFA04 0400A524 */   addiu     $a1, $a1, 4
.L800CFA08:
/* C0208 800CFA08 0800E003 */  jr         $ra
/* C020C 800CFA0C 00000000 */   nop
