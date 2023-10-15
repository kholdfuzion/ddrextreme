.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd41c
/* BDC1C 800CD41C F8FFBD27 */  addiu      $sp, $sp, -8
/* BDC20 800CD420 21608000 */  addu       $t4, $a0, $zero
/* BDC24 800CD424 2168A000 */  addu       $t5, $a1, $zero
/* BDC28 800CD428 1800A28F */  lw         $v0, 0x18($sp)
/* BDC2C 800CD42C FFFFC624 */  addiu      $a2, $a2, -1
/* BDC30 800CD430 1E00C004 */  bltz       $a2, .L800CD4AC
/* BDC34 800CD434 0000A2A3 */   sb        $v0, ($sp)
/* BDC38 800CD438 2150A003 */  addu       $t2, $sp, $zero
/* BDC3C 800CD43C 08000B24 */  addiu      $t3, $zero, 8
.L800CD440:
/* BDC40 800CD440 2110A601 */  addu       $v0, $t5, $a2
/* BDC44 800CD444 00004990 */  lbu        $t1, ($v0)
/* BDC48 800CD448 07000524 */  addiu      $a1, $zero, 7
/* BDC4C 800CD44C 21402001 */  addu       $t0, $t1, $zero
.L800CD450:
/* BDC50 800CD450 2110E500 */  addu       $v0, $a3, $a1
/* BDC54 800CD454 00004390 */  lbu        $v1, ($v0)
/* BDC58 800CD458 FFFFA524 */  addiu      $a1, $a1, -1
/* BDC5C 800CD45C 1F006230 */  andi       $v0, $v1, 0x1f
/* BDC60 800CD460 23100201 */  subu       $v0, $t0, $v0
/* BDC64 800CD464 42190300 */  srl        $v1, $v1, 5
/* BDC68 800CD468 FF004230 */  andi       $v0, $v0, 0xff
/* BDC6C 800CD46C 07206200 */  srav       $a0, $v0, $v1
/* BDC70 800CD470 23186301 */  subu       $v1, $t3, $v1
/* BDC74 800CD474 07006330 */  andi       $v1, $v1, 7
/* BDC78 800CD478 04106200 */  sllv       $v0, $v0, $v1
/* BDC7C 800CD47C F4FFA01C */  bgtz       $a1, .L800CD450
/* BDC80 800CD480 25408200 */   or        $t0, $a0, $v0
/* BDC84 800CD484 21288601 */  addu       $a1, $t4, $a2
/* BDC88 800CD488 FFFFC624 */  addiu      $a2, $a2, -1
/* BDC8C 800CD48C 0000E390 */  lbu        $v1, ($a3)
/* BDC90 800CD490 00004491 */  lbu        $a0, ($t2)
/* BDC94 800CD494 FF000231 */  andi       $v0, $t0, 0xff
/* BDC98 800CD498 000049A1 */  sb         $t1, ($t2)
/* BDC9C 800CD49C 23104300 */  subu       $v0, $v0, $v1
/* BDCA0 800CD4A0 26104400 */  xor        $v0, $v0, $a0
/* BDCA4 800CD4A4 E6FFC104 */  bgez       $a2, .L800CD440
/* BDCA8 800CD4A8 0000A2A0 */   sb        $v0, ($a1)
.L800CD4AC:
/* BDCAC 800CD4AC 0800E003 */  jr         $ra
/* BDCB0 800CD4B0 0800BD27 */   addiu     $sp, $sp, 8
