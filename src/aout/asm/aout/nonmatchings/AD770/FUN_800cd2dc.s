.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd2dc
/* BDADC 800CD2DC F8FFBD27 */  addiu      $sp, $sp, -8
/* BDAE0 800CD2E0 21608000 */  addu       $t4, $a0, $zero
/* BDAE4 800CD2E4 2168A000 */  addu       $t5, $a1, $zero
/* BDAE8 800CD2E8 1800A28F */  lw         $v0, 0x18($sp)
/* BDAEC 800CD2EC 21480000 */  addu       $t1, $zero, $zero
/* BDAF0 800CD2F0 2100C018 */  blez       $a2, .L800CD378
/* BDAF4 800CD2F4 0000A2A3 */   sb        $v0, ($sp)
/* BDAF8 800CD2F8 2150A003 */  addu       $t2, $sp, $zero
/* BDAFC 800CD2FC 08000B24 */  addiu      $t3, $zero, 8
.L800CD300:
/* BDB00 800CD300 01000824 */  addiu      $t0, $zero, 1
/* BDB04 800CD304 2110A901 */  addu       $v0, $t5, $t1
/* BDB08 800CD308 00004290 */  lbu        $v0, ($v0)
/* BDB0C 800CD30C 00004391 */  lbu        $v1, ($t2)
/* BDB10 800CD310 0000E490 */  lbu        $a0, ($a3)
/* BDB14 800CD314 26104300 */  xor        $v0, $v0, $v1
/* BDB18 800CD318 21208200 */  addu       $a0, $a0, $v0
.L800CD31C:
/* BDB1C 800CD31C 2110E800 */  addu       $v0, $a3, $t0
/* BDB20 800CD320 00004590 */  lbu        $a1, ($v0)
/* BDB24 800CD324 01000825 */  addiu      $t0, $t0, 1
/* BDB28 800CD328 FF008430 */  andi       $a0, $a0, 0xff
/* BDB2C 800CD32C 42110500 */  srl        $v0, $a1, 5
/* BDB30 800CD330 04184400 */  sllv       $v1, $a0, $v0
/* BDB34 800CD334 23106201 */  subu       $v0, $t3, $v0
/* BDB38 800CD338 07004230 */  andi       $v0, $v0, 7
/* BDB3C 800CD33C 07204400 */  srav       $a0, $a0, $v0
/* BDB40 800CD340 25186400 */  or         $v1, $v1, $a0
/* BDB44 800CD344 FF006330 */  andi       $v1, $v1, 0xff
/* BDB48 800CD348 1F00A530 */  andi       $a1, $a1, 0x1f
/* BDB4C 800CD34C 21186500 */  addu       $v1, $v1, $a1
/* BDB50 800CD350 08000229 */  slti       $v0, $t0, 8
/* BDB54 800CD354 F1FF4014 */  bnez       $v0, .L800CD31C
/* BDB58 800CD358 21206000 */   addu      $a0, $v1, $zero
/* BDB5C 800CD35C 21108901 */  addu       $v0, $t4, $t1
/* BDB60 800CD360 01002925 */  addiu      $t1, $t1, 1
/* BDB64 800CD364 000043A1 */  sb         $v1, ($t2)
/* BDB68 800CD368 000044A0 */  sb         $a0, ($v0)
/* BDB6C 800CD36C 2A102601 */  slt        $v0, $t1, $a2
/* BDB70 800CD370 E3FF4014 */  bnez       $v0, .L800CD300
/* BDB74 800CD374 00000000 */   nop
.L800CD378:
/* BDB78 800CD378 0800E003 */  jr         $ra
/* BDB7C 800CD37C 0800BD27 */   addiu     $sp, $sp, 8
