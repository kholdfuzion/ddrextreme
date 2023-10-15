.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004989c
/* 3A09C 8004989C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3A0A0 800498A0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 3A0A4 800498A4 21888000 */  addu       $s1, $a0, $zero
/* 3A0A8 800498A8 2000BFAF */  sw         $ra, 0x20($sp)
/* 3A0AC 800498AC 02002106 */  bgez       $s1, .L800498B8
/* 3A0B0 800498B0 1800B0AF */   sw        $s0, 0x18($sp)
/* 3A0B4 800498B4 21880000 */  addu       $s1, $zero, $zero
.L800498B8:
/* 3A0B8 800498B8 0001222A */  slti       $v0, $s1, 0x100
/* 3A0BC 800498BC 02004014 */  bnez       $v0, .L800498C8
/* 3A0C0 800498C0 1380103C */   lui       $s0, %hi(D_80129DA8)
/* 3A0C4 800498C4 FF001124 */  addiu      $s1, $zero, 0xff
.L800498C8:
/* 3A0C8 800498C8 A89D0326 */  addiu      $v1, $s0, %lo(D_80129DA8)
/* 3A0CC 800498CC B40D628C */  lw         $v0, 0xdb4($v1)
/* 3A0D0 800498D0 00000000 */  nop
/* 3A0D4 800498D4 0F004230 */  andi       $v0, $v0, 0xf
/* 3A0D8 800498D8 28004014 */  bnez       $v0, .L8004997C
/* 3A0DC 800498DC 8100222A */   slti      $v0, $s1, 0x81
/* 3A0E0 800498E0 21200000 */  addu       $a0, $zero, $zero
/* 3A0E4 800498E4 FA56010C */  jal        FUN_80055be8
/* 3A0E8 800498E8 01000524 */   addiu     $a1, $zero, 1
/* 3A0EC 800498EC 21200000 */  addu       $a0, $zero, $zero
/* 3A0F0 800498F0 376C010C */  jal        FUN_8005b0dc
/* 3A0F4 800498F4 FF000524 */   addiu     $a1, $zero, 0xff
/* 3A0F8 800498F8 21200000 */  addu       $a0, $zero, $zero
/* 3A0FC 800498FC FFFF0524 */  addiu      $a1, $zero, -1
/* 3A100 80049900 FFFF0624 */  addiu      $a2, $zero, -1
/* 3A104 80049904 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A108 80049908 FFFF0224 */  addiu      $v0, $zero, -1
/* 3A10C 8004990C 766C010C */  jal        FUN_8005b1d8
/* 3A110 80049910 1000A2AF */   sw        $v0, 0x10($sp)
/* 3A114 80049914 21200000 */  addu       $a0, $zero, $zero
/* 3A118 80049918 21280000 */  addu       $a1, $zero, $zero
/* 3A11C 8004991C 40010724 */  addiu      $a3, $zero, 0x140
/* 3A120 80049920 A89D068E */  lw         $a2, -0x6258($s0)
/* 3A124 80049924 F0000224 */  addiu      $v0, $zero, 0xf0
/* 3A128 80049928 1000A2AF */  sw         $v0, 0x10($sp)
/* 3A12C 8004992C 02000224 */  addiu      $v0, $zero, 2
/* 3A130 80049930 1400A2AF */  sw         $v0, 0x14($sp)
/* 3A134 80049934 D16B010C */  jal        FUN_8005af44
/* 3A138 80049938 00320600 */   sll       $a2, $a2, 8
/* 3A13C 8004993C 21200000 */  addu       $a0, $zero, $zero
/* 3A140 80049940 21280000 */  addu       $a1, $zero, $zero
/* 3A144 80049944 0C6C010C */  jal        FUN_8005b030
/* 3A148 80049948 EE010624 */   addiu     $a2, $zero, 0x1ee
/* 3A14C 8004994C 21200000 */  addu       $a0, $zero, $zero
/* 3A150 80049950 21282002 */  addu       $a1, $s1, $zero
/* 3A154 80049954 2130A000 */  addu       $a2, $a1, $zero
/* 3A158 80049958 646B010C */  jal        FUN_8005ad90
/* 3A15C 8004995C 2138A000 */   addu      $a3, $a1, $zero
/* 3A160 80049960 21200000 */  addu       $a0, $zero, $zero
/* 3A164 80049964 946B010C */  jal        FUN_8005ae50
/* 3A168 80049968 FFFF0524 */   addiu     $a1, $zero, -1
/* 3A16C 8004996C 9157010C */  jal        FUN_80055e44
/* 3A170 80049970 21200000 */   addu      $a0, $zero, $zero
/* 3A174 80049974 89260108 */  j          .L80049A24
/* 3A178 80049978 00000000 */   nop
.L8004997C:
/* 3A17C 8004997C 02004014 */  bnez       $v0, .L80049988
/* 3A180 80049980 00000000 */   nop
/* 3A184 80049984 80001124 */  addiu      $s1, $zero, 0x80
.L80049988:
/* 3A188 80049988 21200000 */  addu       $a0, $zero, $zero
/* 3A18C 8004998C FA56010C */  jal        FUN_80055be8
/* 3A190 80049990 11000524 */   addiu     $a1, $zero, 0x11
/* 3A194 80049994 21200000 */  addu       $a0, $zero, $zero
/* 3A198 80049998 376C010C */  jal        FUN_8005b0dc
/* 3A19C 8004999C FF000524 */   addiu     $a1, $zero, 0xff
/* 3A1A0 800499A0 21200000 */  addu       $a0, $zero, $zero
/* 3A1A4 800499A4 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A1A8 800499A8 FFFF0624 */  addiu      $a2, $zero, -1
/* 3A1AC 800499AC FFFF0724 */  addiu      $a3, $zero, -1
/* 3A1B0 800499B0 FFFF0224 */  addiu      $v0, $zero, -1
/* 3A1B4 800499B4 766C010C */  jal        FUN_8005b1d8
/* 3A1B8 800499B8 1000A2AF */   sw        $v0, 0x10($sp)
/* 3A1BC 800499BC 1380103C */  lui        $s0, %hi(D_80128BBC)
/* 3A1C0 800499C0 BC8B1026 */  addiu      $s0, $s0, %lo(D_80128BBC)
/* 3A1C4 800499C4 04000586 */  lh         $a1, 4($s0)
/* 3A1C8 800499C8 06000686 */  lh         $a2, 6($s0)
/* 3A1CC 800499CC 08000786 */  lh         $a3, 8($s0)
/* 3A1D0 800499D0 0A000286 */  lh         $v0, 0xa($s0)
/* 3A1D4 800499D4 0C000386 */  lh         $v1, 0xc($s0)
/* 3A1D8 800499D8 21200000 */  addu       $a0, $zero, $zero
/* 3A1DC 800499DC 1000A2AF */  sw         $v0, 0x10($sp)
/* 3A1E0 800499E0 D16B010C */  jal        FUN_8005af44
/* 3A1E4 800499E4 1400A3AF */   sw        $v1, 0x14($sp)
/* 3A1E8 800499E8 16000586 */  lh         $a1, 0x16($s0)
/* 3A1EC 800499EC 18000686 */  lh         $a2, 0x18($s0)
/* 3A1F0 800499F0 0C6C010C */  jal        FUN_8005b030
/* 3A1F4 800499F4 21200000 */   addu      $a0, $zero, $zero
/* 3A1F8 800499F8 21200000 */  addu       $a0, $zero, $zero
/* 3A1FC 800499FC 80000524 */  addiu      $a1, $zero, 0x80
/* 3A200 80049A00 2328B100 */  subu       $a1, $a1, $s1
/* 3A204 80049A04 2130A000 */  addu       $a2, $a1, $zero
/* 3A208 80049A08 646B010C */  jal        FUN_8005ad90
/* 3A20C 80049A0C 2138A000 */   addu      $a3, $a1, $zero
/* 3A210 80049A10 21200000 */  addu       $a0, $zero, $zero
/* 3A214 80049A14 946B010C */  jal        FUN_8005ae50
/* 3A218 80049A18 02000524 */   addiu     $a1, $zero, 2
/* 3A21C 80049A1C 9157010C */  jal        FUN_80055e44
/* 3A220 80049A20 21200000 */   addu      $a0, $zero, $zero
.L80049A24:
/* 3A224 80049A24 2000BF8F */  lw         $ra, 0x20($sp)
/* 3A228 80049A28 1C00B18F */  lw         $s1, 0x1c($sp)
/* 3A22C 80049A2C 1800B08F */  lw         $s0, 0x18($sp)
/* 3A230 80049A30 0800E003 */  jr         $ra
/* 3A234 80049A34 2800BD27 */   addiu     $sp, $sp, 0x28
