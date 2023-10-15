.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel getgameloopmode_8001e1e0
/* E9E0 8001E1E0 F8FFBD27 */  addiu      $sp, $sp, -8
/* E9E4 8001E1E4 21780000 */  addu       $t7, $zero, $zero
/* E9E8 8001E1E8 00008290 */  lbu        $v0, ($a0)
/* E9EC 8001E1EC 00000000 */  nop
/* E9F0 8001E1F0 15004010 */  beqz       $v0, .L8001E248
/* E9F4 8001E1F4 21280000 */   addu      $a1, $zero, $zero
/* E9F8 8001E1F8 3F000624 */  addiu      $a2, $zero, 0x3f
.L8001E1FC:
/* E9FC 8001E1FC 00008390 */  lbu        $v1, ($a0)
/* EA00 8001E200 00000000 */  nop
/* EA04 8001E204 BFFF6224 */  addiu      $v0, $v1, -0x41
/* EA08 8001E208 1A00422C */  sltiu      $v0, $v0, 0x1a
/* EA0C 8001E20C 02004010 */  beqz       $v0, .L8001E218
/* EA10 8001E210 00000000 */   nop
/* EA14 8001E214 20006324 */  addiu      $v1, $v1, 0x20
.L8001E218:
/* EA18 8001E218 02006614 */  bne        $v1, $a2, .L8001E224
/* EA1C 8001E21C 2110A503 */   addu      $v0, $sp, $a1
/* EA20 8001E220 0100EF25 */  addiu      $t7, $t7, 1
.L8001E224:
/* EA24 8001E224 000043A0 */  sb         $v1, ($v0)
/* EA28 8001E228 0100A524 */  addiu      $a1, $a1, 1
/* EA2C 8001E22C 0800A228 */  slti       $v0, $a1, 8
/* EA30 8001E230 05004010 */  beqz       $v0, .L8001E248
/* EA34 8001E234 01008424 */   addiu     $a0, $a0, 1
/* EA38 8001E238 00008290 */  lbu        $v0, ($a0)
/* EA3C 8001E23C 00000000 */  nop
/* EA40 8001E240 EEFF4014 */  bnez       $v0, .L8001E1FC
/* EA44 8001E244 00000000 */   nop
.L8001E248:
/* EA48 8001E248 2138A000 */  addu       $a3, $a1, $zero
/* EA4C 8001E24C 0800E228 */  slti       $v0, $a3, 8
/* EA50 8001E250 08004010 */  beqz       $v0, .L8001E274
/* EA54 8001E254 2150A003 */   addu      $t2, $sp, $zero
/* EA58 8001E258 2110A503 */  addu       $v0, $sp, $a1
.L8001E25C:
/* EA5C 8001E25C 000040A0 */  sb         $zero, ($v0)
/* EA60 8001E260 0100A524 */  addiu      $a1, $a1, 1
/* EA64 8001E264 0800A228 */  slti       $v0, $a1, 8
/* EA68 8001E268 FCFF4014 */  bnez       $v0, .L8001E25C
/* EA6C 8001E26C 2110A503 */   addu      $v0, $sp, $a1
/* EA70 8001E270 2150A003 */  addu       $t2, $sp, $zero
.L8001E274:
/* EA74 8001E274 21400000 */  addu       $t0, $zero, $zero
/* EA78 8001E278 0000A993 */  lbu        $t1, ($sp)
/* EA7C 8001E27C 3F000B24 */  addiu      $t3, $zero, 0x3f
/* EA80 8001E280 08000C24 */  addiu      $t4, $zero, 8
/* EA84 8001E284 1280023C */  lui        $v0, %hi(D_801270E0)
/* EA88 8001E288 E0704624 */  addiu      $a2, $v0, %lo(D_801270E0)
.L8001E28C:
/* EA8C 8001E28C 0000C290 */  lbu        $v0, ($a2)
/* EA90 8001E290 00000000 */  nop
/* EA94 8001E294 03004910 */  beq        $v0, $t1, .L8001E2A4
/* EA98 8001E298 21280000 */   addu      $a1, $zero, $zero
/* EA9C 8001E29C 0F002B15 */  bne        $t1, $t3, .L8001E2DC
/* EAA0 8001E2A0 00000000 */   nop
.L8001E2A4:
/* EAA4 8001E2A4 0100A524 */  addiu      $a1, $a1, 1
.L8001E2A8:
/* EAA8 8001E2A8 0800A228 */  slti       $v0, $a1, 8
/* EAAC 8001E2AC 0B004010 */  beqz       $v0, .L8001E2DC
/* EAB0 8001E2B0 2110C500 */   addu      $v0, $a2, $a1
/* EAB4 8001E2B4 21184501 */  addu       $v1, $t2, $a1
/* EAB8 8001E2B8 00004490 */  lbu        $a0, ($v0)
/* EABC 8001E2BC 00006290 */  lbu        $v0, ($v1)
/* EAC0 8001E2C0 00000000 */  nop
/* EAC4 8001E2C4 F8FF8210 */  beq        $a0, $v0, .L8001E2A8
/* EAC8 8001E2C8 0100A524 */   addiu     $a1, $a1, 1
/* EACC 8001E2CC FFFFA524 */  addiu      $a1, $a1, -1
/* EAD0 8001E2D0 F5FF4B10 */  beq        $v0, $t3, .L8001E2A8
/* EAD4 8001E2D4 0100A524 */   addiu     $a1, $a1, 1
/* EAD8 8001E2D8 FFFFA524 */  addiu      $a1, $a1, -1
.L8001E2DC:
/* EADC 8001E2DC 0600AC10 */  beq        $a1, $t4, .L8001E2F8
/* EAE0 8001E2E0 21180001 */   addu      $v1, $t0, $zero
/* EAE4 8001E2E4 01000825 */  addiu      $t0, $t0, 1
/* EAE8 8001E2E8 00020229 */  slti       $v0, $t0, 0x200
/* EAEC 8001E2EC E7FF4014 */  bnez       $v0, .L8001E28C
/* EAF0 8001E2F0 0800C624 */   addiu     $a2, $a2, 8
/* EAF4 8001E2F4 FFFF0324 */  addiu      $v1, $zero, -1
.L8001E2F8:
/* EAF8 8001E2F8 72006104 */  bgez       $v1, .L8001E4C4
/* EAFC 8001E2FC 21106000 */   addu      $v0, $v1, $zero
/* EB00 8001E300 0600E228 */  slti       $v0, $a3, 6
/* EB04 8001E304 07004010 */  beqz       $v0, .L8001E324
/* EB08 8001E308 2110FD00 */   addu      $v0, $a3, $sp
/* EB0C 8001E30C FDFF4390 */  lbu        $v1, -3($v0)
/* EB10 8001E310 5F000424 */  addiu      $a0, $zero, 0x5f
/* EB14 8001E314 03006410 */  beq        $v1, $a0, .L8001E324
/* EB18 8001E318 2110A703 */   addu      $v0, $sp, $a3
/* EB1C 8001E31C 000044A0 */  sb         $a0, ($v0)
/* EB20 8001E320 0300E724 */  addiu      $a3, $a3, 3
.L8001E324:
/* EB24 8001E324 FEFFE224 */  addiu      $v0, $a3, -2
/* EB28 8001E328 2128A203 */  addu       $a1, $sp, $v0
/* EB2C 8001E32C 0000A390 */  lbu        $v1, ($a1)
/* EB30 8001E330 31000C24 */  addiu      $t4, $zero, 0x31
/* EB34 8001E334 21704000 */  addu       $t6, $v0, $zero
/* EB38 8001E338 06006C14 */  bne        $v1, $t4, .L8001E354
/* EB3C 8001E33C FFFFEB24 */   addiu     $t3, $a3, -1
/* EB40 8001E340 2110AB03 */  addu       $v0, $sp, $t3
/* EB44 8001E344 00004490 */  lbu        $a0, ($v0)
/* EB48 8001E348 36000324 */  addiu      $v1, $zero, 0x36
/* EB4C 8001E34C 29008310 */  beq        $a0, $v1, .L8001E3F4
/* EB50 8001E350 00000000 */   nop
.L8001E354:
/* EB54 8001E354 2148A003 */  addu       $t1, $sp, $zero
/* EB58 8001E358 21400000 */  addu       $t0, $zero, $zero
/* EB5C 8001E35C 3F000A24 */  addiu      $t2, $zero, 0x3f
/* EB60 8001E360 08000D24 */  addiu      $t5, $zero, 8
/* EB64 8001E364 1280023C */  lui        $v0, %hi(D_801270E0)
/* EB68 8001E368 E0704624 */  addiu      $a2, $v0, %lo(D_801270E0)
/* EB6C 8001E36C 2118AB03 */  addu       $v1, $sp, $t3
/* EB70 8001E370 36000224 */  addiu      $v0, $zero, 0x36
/* EB74 8001E374 0000ACA0 */  sb         $t4, ($a1)
/* EB78 8001E378 000062A0 */  sb         $v0, ($v1)
/* EB7C 8001E37C 0000A793 */  lbu        $a3, ($sp)
.L8001E380:
/* EB80 8001E380 0000C290 */  lbu        $v0, ($a2)
/* EB84 8001E384 00000000 */  nop
/* EB88 8001E388 03004710 */  beq        $v0, $a3, .L8001E398
/* EB8C 8001E38C 21280000 */   addu      $a1, $zero, $zero
/* EB90 8001E390 0F00EA14 */  bne        $a3, $t2, .L8001E3D0
/* EB94 8001E394 00000000 */   nop
.L8001E398:
/* EB98 8001E398 0100A524 */  addiu      $a1, $a1, 1
.L8001E39C:
/* EB9C 8001E39C 0800A228 */  slti       $v0, $a1, 8
/* EBA0 8001E3A0 0B004010 */  beqz       $v0, .L8001E3D0
/* EBA4 8001E3A4 2110C500 */   addu      $v0, $a2, $a1
/* EBA8 8001E3A8 21182501 */  addu       $v1, $t1, $a1
/* EBAC 8001E3AC 00004490 */  lbu        $a0, ($v0)
/* EBB0 8001E3B0 00006290 */  lbu        $v0, ($v1)
/* EBB4 8001E3B4 00000000 */  nop
/* EBB8 8001E3B8 F8FF8210 */  beq        $a0, $v0, .L8001E39C
/* EBBC 8001E3BC 0100A524 */   addiu     $a1, $a1, 1
/* EBC0 8001E3C0 FFFFA524 */  addiu      $a1, $a1, -1
/* EBC4 8001E3C4 F5FF4A10 */  beq        $v0, $t2, .L8001E39C
/* EBC8 8001E3C8 0100A524 */   addiu     $a1, $a1, 1
/* EBCC 8001E3CC FFFFA524 */  addiu      $a1, $a1, -1
.L8001E3D0:
/* EBD0 8001E3D0 0600AD10 */  beq        $a1, $t5, .L8001E3EC
/* EBD4 8001E3D4 21180001 */   addu      $v1, $t0, $zero
/* EBD8 8001E3D8 01000825 */  addiu      $t0, $t0, 1
/* EBDC 8001E3DC 00020229 */  slti       $v0, $t0, 0x200
/* EBE0 8001E3E0 E7FF4014 */  bnez       $v0, .L8001E380
/* EBE4 8001E3E4 0800C624 */   addiu     $a2, $a2, 8
/* EBE8 8001E3E8 FFFF0324 */  addiu      $v1, $zero, -1
.L8001E3EC:
/* EBEC 8001E3EC 35006104 */  bgez       $v1, .L8001E4C4
/* EBF0 8001E3F0 21106000 */   addu      $v0, $v1, $zero
.L8001E3F4:
/* EBF4 8001E3F4 2128AE03 */  addu       $a1, $sp, $t6
/* EBF8 8001E3F8 0000A290 */  lbu        $v0, ($a1)
/* EBFC 8001E3FC 32000724 */  addiu      $a3, $zero, 0x32
/* EC00 8001E400 06004714 */  bne        $v0, $a3, .L8001E41C
/* EC04 8001E404 2148A003 */   addu      $t1, $sp, $zero
/* EC08 8001E408 2110AB03 */  addu       $v0, $sp, $t3
/* EC0C 8001E40C 00004490 */  lbu        $a0, ($v0)
/* EC10 8001E410 35000324 */  addiu      $v1, $zero, 0x35
/* EC14 8001E414 28008310 */  beq        $a0, $v1, .L8001E4B8
/* EC18 8001E418 00000000 */   nop
.L8001E41C:
/* EC1C 8001E41C 21400000 */  addu       $t0, $zero, $zero
/* EC20 8001E420 3F000A24 */  addiu      $t2, $zero, 0x3f
/* EC24 8001E424 08000C24 */  addiu      $t4, $zero, 8
/* EC28 8001E428 1280023C */  lui        $v0, %hi(D_801270E0)
/* EC2C 8001E42C E0704624 */  addiu      $a2, $v0, %lo(D_801270E0)
/* EC30 8001E430 2118AB03 */  addu       $v1, $sp, $t3
/* EC34 8001E434 35000224 */  addiu      $v0, $zero, 0x35
/* EC38 8001E438 0000A7A0 */  sb         $a3, ($a1)
/* EC3C 8001E43C 000062A0 */  sb         $v0, ($v1)
/* EC40 8001E440 0000A793 */  lbu        $a3, ($sp)
.L8001E444:
/* EC44 8001E444 0000C290 */  lbu        $v0, ($a2)
/* EC48 8001E448 00000000 */  nop
/* EC4C 8001E44C 03004710 */  beq        $v0, $a3, .L8001E45C
/* EC50 8001E450 21280000 */   addu      $a1, $zero, $zero
/* EC54 8001E454 0F00EA14 */  bne        $a3, $t2, .L8001E494
/* EC58 8001E458 00000000 */   nop
.L8001E45C:
/* EC5C 8001E45C 0100A524 */  addiu      $a1, $a1, 1
.L8001E460:
/* EC60 8001E460 0800A228 */  slti       $v0, $a1, 8
/* EC64 8001E464 0B004010 */  beqz       $v0, .L8001E494
/* EC68 8001E468 2110C500 */   addu      $v0, $a2, $a1
/* EC6C 8001E46C 21182501 */  addu       $v1, $t1, $a1
/* EC70 8001E470 00004490 */  lbu        $a0, ($v0)
/* EC74 8001E474 00006290 */  lbu        $v0, ($v1)
/* EC78 8001E478 00000000 */  nop
/* EC7C 8001E47C F8FF8210 */  beq        $a0, $v0, .L8001E460
/* EC80 8001E480 0100A524 */   addiu     $a1, $a1, 1
/* EC84 8001E484 FFFFA524 */  addiu      $a1, $a1, -1
/* EC88 8001E488 F5FF4A10 */  beq        $v0, $t2, .L8001E460
/* EC8C 8001E48C 0100A524 */   addiu     $a1, $a1, 1
/* EC90 8001E490 FFFFA524 */  addiu      $a1, $a1, -1
.L8001E494:
/* EC94 8001E494 0600AC10 */  beq        $a1, $t4, .L8001E4B0
/* EC98 8001E498 21180001 */   addu      $v1, $t0, $zero
/* EC9C 8001E49C 01000825 */  addiu      $t0, $t0, 1
/* ECA0 8001E4A0 00020229 */  slti       $v0, $t0, 0x200
/* ECA4 8001E4A4 E7FF4014 */  bnez       $v0, .L8001E444
/* ECA8 8001E4A8 0800C624 */   addiu     $a2, $a2, 8
/* ECAC 8001E4AC FFFF0324 */  addiu      $v1, $zero, -1
.L8001E4B0:
/* ECB0 8001E4B0 04006104 */  bgez       $v1, .L8001E4C4
/* ECB4 8001E4B4 21106000 */   addu      $v0, $v1, $zero
.L8001E4B8:
/* ECB8 8001E4B8 0200E015 */  bnez       $t7, .L8001E4C4
/* ECBC 8001E4BC FFFF0224 */   addiu     $v0, $zero, -1
/* ECC0 8001E4C0 21100000 */  addu       $v0, $zero, $zero
.L8001E4C4:
/* ECC4 8001E4C4 0800E003 */  jr         $ra
/* ECC8 8001E4C8 0800BD27 */   addiu     $sp, $sp, 8
