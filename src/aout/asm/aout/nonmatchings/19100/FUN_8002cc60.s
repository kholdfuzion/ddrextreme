.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cc60
/* 1D460 8002CC60 C0300600 */  sll        $a2, $a2, 3
/* 1D464 8002CC64 2110A600 */  addu       $v0, $a1, $a2
/* 1D468 8002CC68 1C0E4394 */  lhu        $v1, 0xe1c($v0)
/* 1D46C 8002CC6C 21108600 */  addu       $v0, $a0, $a2
/* 1D470 8002CC70 2138A300 */  addu       $a3, $a1, $v1
/* 1D474 8002CC74 2128A600 */  addu       $a1, $a1, $a2
/* 1D478 8002CC78 1C0E4394 */  lhu        $v1, 0xe1c($v0)
/* 1D47C 8002CC7C 1E0EA694 */  lhu        $a2, 0xe1e($a1)
/* 1D480 8002CC80 00000000 */  nop
/* 1D484 8002CC84 42300600 */  srl        $a2, $a2, 1
/* 1D488 8002CC88 0800C010 */  beqz       $a2, .L8002CCAC
/* 1D48C 8002CC8C 21208300 */   addu      $a0, $a0, $v1
/* 1D490 8002CC90 2128E000 */  addu       $a1, $a3, $zero
.L8002CC94:
/* 1D494 8002CC94 0000A294 */  lhu        $v0, ($a1)
/* 1D498 8002CC98 0200A524 */  addiu      $a1, $a1, 2
/* 1D49C 8002CC9C FFFFC624 */  addiu      $a2, $a2, -1
/* 1D4A0 8002CCA0 000082A4 */  sh         $v0, ($a0)
/* 1D4A4 8002CCA4 FBFFC014 */  bnez       $a2, .L8002CC94
/* 1D4A8 8002CCA8 02008424 */   addiu     $a0, $a0, 2
.L8002CCAC:
/* 1D4AC 8002CCAC 0800E003 */  jr         $ra
/* 1D4B0 8002CCB0 21100000 */   addu      $v0, $zero, $zero
