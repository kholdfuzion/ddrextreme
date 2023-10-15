.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae3ec
/* 9EBEC 800AE3EC C0190400 */  sll        $v1, $a0, 7
/* 9EBF0 800AE3F0 21186400 */  addu       $v1, $v1, $a0
/* 9EBF4 800AE3F4 C0190300 */  sll        $v1, $v1, 7
/* 9EBF8 800AE3F8 1D80023C */  lui        $v0, %hi(D_801C8178)
/* 9EBFC 800AE3FC 78814224 */  addiu      $v0, $v0, %lo(D_801C8178)
/* 9EC00 800AE400 21186200 */  addu       $v1, $v1, $v0
/* 9EC04 800AE404 040060A0 */  sb         $zero, 4($v1)
/* 9EC08 800AE408 20000724 */  addiu      $a3, $zero, 0x20
/* 9EC0C 800AE40C 21206000 */  addu       $a0, $v1, $zero
/* 9EC10 800AE410 04006624 */  addiu      $a2, $v1, 4
.L800AE414:
/* 9EC14 800AE414 00008590 */  lbu        $a1, ($a0)
/* 9EC18 800AE418 00000000 */  nop
/* 9EC1C 800AE41C 9FFFA224 */  addiu      $v0, $a1, -0x61
/* 9EC20 800AE420 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 9EC24 800AE424 02004010 */  beqz       $v0, .L800AE430
/* 9EC28 800AE428 E0FFA224 */   addiu     $v0, $a1, -0x20
/* 9EC2C 800AE42C 000082A0 */  sb         $v0, ($a0)
.L800AE430:
/* 9EC30 800AE430 00008290 */  lbu        $v0, ($a0)
/* 9EC34 800AE434 00000000 */  nop
/* 9EC38 800AE438 E0FF4224 */  addiu      $v0, $v0, -0x20
/* 9EC3C 800AE43C 5F00422C */  sltiu      $v0, $v0, 0x5f
/* 9EC40 800AE440 02004014 */  bnez       $v0, .L800AE44C
/* 9EC44 800AE444 00000000 */   nop
/* 9EC48 800AE448 000087A0 */  sb         $a3, ($a0)
.L800AE44C:
/* 9EC4C 800AE44C 01008424 */  addiu      $a0, $a0, 1
/* 9EC50 800AE450 2A108600 */  slt        $v0, $a0, $a2
/* 9EC54 800AE454 EFFF4014 */  bnez       $v0, .L800AE414
/* 9EC58 800AE458 21106000 */   addu      $v0, $v1, $zero
/* 9EC5C 800AE45C 0800E003 */  jr         $ra
/* 9EC60 800AE460 00000000 */   nop
