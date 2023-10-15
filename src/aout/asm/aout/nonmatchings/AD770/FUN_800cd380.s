.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd380
/* BDB80 800CD380 F8FFBD27 */  addiu      $sp, $sp, -8
/* BDB84 800CD384 21588000 */  addu       $t3, $a0, $zero
/* BDB88 800CD388 2160A000 */  addu       $t4, $a1, $zero
/* BDB8C 800CD38C 1800A28F */  lw         $v0, 0x18($sp)
/* BDB90 800CD390 FFFFC624 */  addiu      $a2, $a2, -1
/* BDB94 800CD394 1F00C004 */  bltz       $a2, .L800CD414
/* BDB98 800CD398 0000A2A3 */   sb        $v0, ($sp)
/* BDB9C 800CD39C 2148A003 */  addu       $t1, $sp, $zero
/* BDBA0 800CD3A0 08000A24 */  addiu      $t2, $zero, 8
.L800CD3A4:
/* BDBA4 800CD3A4 01000824 */  addiu      $t0, $zero, 1
/* BDBA8 800CD3A8 21108601 */  addu       $v0, $t4, $a2
/* BDBAC 800CD3AC 00004290 */  lbu        $v0, ($v0)
/* BDBB0 800CD3B0 00002391 */  lbu        $v1, ($t1)
/* BDBB4 800CD3B4 0000E490 */  lbu        $a0, ($a3)
/* BDBB8 800CD3B8 26104300 */  xor        $v0, $v0, $v1
/* BDBBC 800CD3BC 21208200 */  addu       $a0, $a0, $v0
.L800CD3C0:
/* BDBC0 800CD3C0 2110E800 */  addu       $v0, $a3, $t0
/* BDBC4 800CD3C4 00004590 */  lbu        $a1, ($v0)
/* BDBC8 800CD3C8 01000825 */  addiu      $t0, $t0, 1
/* BDBCC 800CD3CC FF008430 */  andi       $a0, $a0, 0xff
/* BDBD0 800CD3D0 42110500 */  srl        $v0, $a1, 5
/* BDBD4 800CD3D4 04184400 */  sllv       $v1, $a0, $v0
/* BDBD8 800CD3D8 23104201 */  subu       $v0, $t2, $v0
/* BDBDC 800CD3DC 07004230 */  andi       $v0, $v0, 7
/* BDBE0 800CD3E0 07204400 */  srav       $a0, $a0, $v0
/* BDBE4 800CD3E4 25186400 */  or         $v1, $v1, $a0
/* BDBE8 800CD3E8 FF006330 */  andi       $v1, $v1, 0xff
/* BDBEC 800CD3EC 1F00A530 */  andi       $a1, $a1, 0x1f
/* BDBF0 800CD3F0 21186500 */  addu       $v1, $v1, $a1
/* BDBF4 800CD3F4 08000229 */  slti       $v0, $t0, 8
/* BDBF8 800CD3F8 F1FF4014 */  bnez       $v0, .L800CD3C0
/* BDBFC 800CD3FC 21206000 */   addu      $a0, $v1, $zero
/* BDC00 800CD400 21106601 */  addu       $v0, $t3, $a2
/* BDC04 800CD404 FFFFC624 */  addiu      $a2, $a2, -1
/* BDC08 800CD408 000023A1 */  sb         $v1, ($t1)
/* BDC0C 800CD40C E5FFC104 */  bgez       $a2, .L800CD3A4
/* BDC10 800CD410 000044A0 */   sb        $a0, ($v0)
.L800CD414:
/* BDC14 800CD414 0800E003 */  jr         $ra
/* BDC18 800CD418 0800BD27 */   addiu     $sp, $sp, 8
