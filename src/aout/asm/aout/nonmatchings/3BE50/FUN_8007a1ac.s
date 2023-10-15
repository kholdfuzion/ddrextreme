.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007a1ac
/* 6A9AC 8007A1AC 48FFBD27 */  addiu      $sp, $sp, -0xb8
/* 6A9B0 8007A1B0 2380023C */  lui        $v0, 0x8023
/* 6A9B4 8007A1B4 00804234 */  ori        $v0, $v0, 0x8000
/* 6A9B8 8007A1B8 B400BFAF */  sw         $ra, 0xb4($sp)
/* 6A9BC 8007A1BC B000BEAF */  sw         $fp, 0xb0($sp)
/* 6A9C0 8007A1C0 AC00B7AF */  sw         $s7, 0xac($sp)
/* 6A9C4 8007A1C4 A800B6AF */  sw         $s6, 0xa8($sp)
/* 6A9C8 8007A1C8 A400B5AF */  sw         $s5, 0xa4($sp)
/* 6A9CC 8007A1CC A000B4AF */  sw         $s4, 0xa0($sp)
/* 6A9D0 8007A1D0 9C00B3AF */  sw         $s3, 0x9c($sp)
/* 6A9D4 8007A1D4 9800B2AF */  sw         $s2, 0x98($sp)
/* 6A9D8 8007A1D8 9400B1AF */  sw         $s1, 0x94($sp)
/* 6A9DC 8007A1DC 9000B0AF */  sw         $s0, 0x90($sp)
/* 6A9E0 8007A1E0 5C00A2AF */  sw         $v0, 0x5c($sp)
/* 6A9E4 8007A1E4 4800A0AF */  sw         $zero, 0x48($sp)
/* 6A9E8 8007A1E8 B800A4AF */  sw         $a0, 0xb8($sp)
/* 6A9EC 8007A1EC 0000828C */  lw         $v0, ($a0)
/* 6A9F0 8007A1F0 00000000 */  nop
/* 6A9F4 8007A1F4 0F004010 */  beqz       $v0, .L8007A234
/* 6A9F8 8007A1F8 00000000 */   nop
/* 6A9FC 8007A1FC 88E80108 */  j          .L8007A220
/* 6AA00 8007A200 00000000 */   nop
.L8007A204:
/* 6AA04 8007A204 0000828C */  lw         $v0, ($a0)
/* 6AA08 8007A208 00000000 */  nop
/* 6AA0C 8007A20C 21208200 */  addu       $a0, $a0, $v0
/* 6AA10 8007A210 0000838C */  lw         $v1, ($a0)
/* 6AA14 8007A214 00000000 */  nop
/* 6AA18 8007A218 06006010 */  beqz       $v1, .L8007A234
/* 6AA1C 8007A21C 00000000 */   nop
.L8007A220:
/* 6AA20 8007A220 04008394 */  lhu        $v1, 4($a0)
/* 6AA24 8007A224 02000224 */  addiu      $v0, $zero, 2
/* 6AA28 8007A228 F6FF6214 */  bne        $v1, $v0, .L8007A204
/* 6AA2C 8007A22C 00000000 */   nop
/* 6AA30 8007A230 4800A4AF */  sw         $a0, 0x48($sp)
.L8007A234:
/* 6AA34 8007A234 4800A38F */  lw         $v1, 0x48($sp)
/* 6AA38 8007A238 B800A48F */  lw         $a0, 0xb8($sp)
/* 6AA3C 8007A23C 4800A58F */  lw         $a1, 0x48($sp)
/* 6AA40 8007A240 4400A0AF */  sw         $zero, 0x44($sp)
/* 6AA44 8007A244 0800628C */  lw         $v0, 8($v1)
/* 6AA48 8007A248 0000838C */  lw         $v1, ($a0)
/* 6AA4C 8007A24C 80100200 */  sll        $v0, $v0, 2
/* 6AA50 8007A250 0C004224 */  addiu      $v0, $v0, 0xc
/* 6AA54 8007A254 2110A200 */  addu       $v0, $a1, $v0
/* 6AA58 8007A258 9CE80108 */  j          .L8007A270
/* 6AA5C 8007A25C 5000A2AF */   sw        $v0, 0x50($sp)
.L8007A260:
/* 6AA60 8007A260 0000828C */  lw         $v0, ($a0)
/* 6AA64 8007A264 00000000 */  nop
/* 6AA68 8007A268 21208200 */  addu       $a0, $a0, $v0
/* 6AA6C 8007A26C 0000838C */  lw         $v1, ($a0)
.L8007A270:
/* 6AA70 8007A270 00000000 */  nop
/* 6AA74 8007A274 06006010 */  beqz       $v1, .L8007A290
/* 6AA78 8007A278 01000224 */   addiu     $v0, $zero, 1
/* 6AA7C 8007A27C 04008394 */  lhu        $v1, 4($a0)
/* 6AA80 8007A280 00000000 */  nop
/* 6AA84 8007A284 F6FF6214 */  bne        $v1, $v0, .L8007A260
/* 6AA88 8007A288 00000000 */   nop
/* 6AA8C 8007A28C 4400A4AF */  sw         $a0, 0x44($sp)
.L8007A290:
/* 6AA90 8007A290 4400A68F */  lw         $a2, 0x44($sp)
/* 6AA94 8007A294 00000000 */  nop
/* 6AA98 8007A298 0800C38C */  lw         $v1, 8($a2)
/* 6AA9C 8007A29C 21200000 */  addu       $a0, $zero, $zero
/* 6AAA0 8007A2A0 80100300 */  sll        $v0, $v1, 2
/* 6AAA4 8007A2A4 0C004224 */  addiu      $v0, $v0, 0xc
/* 6AAA8 8007A2A8 2110C200 */  addu       $v0, $a2, $v0
/* 6AAAC 8007A2AC 15006010 */  beqz       $v1, .L8007A304
/* 6AAB0 8007A2B0 5400A2AF */   sw        $v0, 0x54($sp)
/* 6AAB4 8007A2B4 FF7F0524 */  addiu      $a1, $zero, 0x7fff
/* 6AAB8 8007A2B8 21184000 */  addu       $v1, $v0, $zero
.L8007A2BC:
/* 6AABC 8007A2BC 0000628C */  lw         $v0, ($v1)
/* 6AAC0 8007A2C0 00000000 */  nop
/* 6AAC4 8007A2C4 2A10A200 */  slt        $v0, $a1, $v0
/* 6AAC8 8007A2C8 02004010 */  beqz       $v0, .L8007A2D4
/* 6AACC 8007A2CC 00000000 */   nop
/* 6AAD0 8007A2D0 000065AC */  sw         $a1, ($v1)
.L8007A2D4:
/* 6AAD4 8007A2D4 0000628C */  lw         $v0, ($v1)
/* 6AAD8 8007A2D8 00000000 */  nop
/* 6AADC 8007A2DC 02004104 */  bgez       $v0, .L8007A2E8
/* 6AAE0 8007A2E0 00000000 */   nop
/* 6AAE4 8007A2E4 000060AC */  sw         $zero, ($v1)
.L8007A2E8:
/* 6AAE8 8007A2E8 4400AE8F */  lw         $t6, 0x44($sp)
/* 6AAEC 8007A2EC 00000000 */  nop
/* 6AAF0 8007A2F0 0800C28D */  lw         $v0, 8($t6)
/* 6AAF4 8007A2F4 01008424 */  addiu      $a0, $a0, 1
/* 6AAF8 8007A2F8 2B108200 */  sltu       $v0, $a0, $v0
/* 6AAFC 8007A2FC EFFF4014 */  bnez       $v0, .L8007A2BC
/* 6AB00 8007A300 04006324 */   addiu     $v1, $v1, 4
.L8007A304:
/* 6AB04 8007A304 96000224 */  addiu      $v0, $zero, 0x96
/* 6AB08 8007A308 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 6AB0C 8007A30C 4400A38F */  lw         $v1, 0x44($sp)
/* 6AB10 8007A310 28008524 */  addiu      $a1, $a0, %lo(D_800F0028)
/* 6AB14 8007A314 4C00A0AF */  sw         $zero, 0x4c($sp)
/* 6AB18 8007A318 060062A4 */  sh         $v0, 6($v1)
/* 6AB1C 8007A31C 3C00A280 */  lb         $v0, 0x3c($a1)
/* 6AB20 8007A320 02000424 */  addiu      $a0, $zero, 2
/* 6AB24 8007A324 1C004410 */  beq        $v0, $a0, .L8007A398
/* 6AB28 8007A328 04000324 */   addiu     $v1, $zero, 4
/* 6AB2C 8007A32C 1A004310 */  beq        $v0, $v1, .L8007A398
/* 6AB30 8007A330 0100023C */   lui       $v0, 1
/* 6AB34 8007A334 2130A200 */  addu       $a2, $a1, $v0
/* 6AB38 8007A338 B842C280 */  lb         $v0, 0x42b8($a2)
/* 6AB3C 8007A33C 00000000 */  nop
/* 6AB40 8007A340 12004410 */  beq        $v0, $a0, .L8007A38C
/* 6AB44 8007A344 00000000 */   nop
/* 6AB48 8007A348 10004310 */  beq        $v0, $v1, .L8007A38C
/* 6AB4C 8007A34C 07000324 */   addiu     $v1, $zero, 7
/* 6AB50 8007A350 8A00A290 */  lbu        $v0, 0x8a($a1)
/* 6AB54 8007A354 00000000 */  nop
/* 6AB58 8007A358 03004310 */  beq        $v0, $v1, .L8007A368
/* 6AB5C 8007A35C 00000000 */   nop
/* 6AB60 8007A360 0E004014 */  bnez       $v0, .L8007A39C
/* 6AB64 8007A364 21100000 */   addu      $v0, $zero, $zero
.L8007A368:
/* 6AB68 8007A368 0643C290 */  lbu        $v0, 0x4306($a2)
/* 6AB6C 8007A36C 00000000 */  nop
/* 6AB70 8007A370 03004310 */  beq        $v0, $v1, .L8007A380
/* 6AB74 8007A374 00000000 */   nop
/* 6AB78 8007A378 07004014 */  bnez       $v0, .L8007A398
/* 6AB7C 8007A37C 00000000 */   nop
.L8007A380:
/* 6AB80 8007A380 FEFF023C */  lui        $v0, 0xfffe
/* 6AB84 8007A384 E7E80108 */  j          .L8007A39C
/* 6AB88 8007A388 84BD4234 */   ori       $v0, $v0, 0xbd84
.L8007A38C:
/* 6AB8C 8007A38C 0100023C */  lui        $v0, 1
/* 6AB90 8007A390 E7E80108 */  j          .L8007A39C
/* 6AB94 8007A394 7C424234 */   ori       $v0, $v0, 0x427c
.L8007A398:
/* 6AB98 8007A398 21100000 */  addu       $v0, $zero, $zero
.L8007A39C:
/* 6AB9C 8007A39C 2110A200 */  addu       $v0, $a1, $v0
/* 6ABA0 8007A3A0 8E004384 */  lh         $v1, 0x8e($v0)
/* 6ABA4 8007A3A4 00000000 */  nop
/* 6ABA8 8007A3A8 3C026004 */  bltz       $v1, .L8007AC9C
/* 6ABAC 8007A3AC 21F00000 */   addu      $fp, $zero, $zero
/* 6ABB0 8007A3B0 21900000 */  addu       $s2, $zero, $zero
/* 6ABB4 8007A3B4 21980000 */  addu       $s3, $zero, $zero
/* 6ABB8 8007A3B8 4800A58F */  lw         $a1, 0x48($sp)
/* 6ABBC 8007A3BC 21A00000 */  addu       $s4, $zero, $zero
/* 6ABC0 8007A3C0 0800A28C */  lw         $v0, 8($a1)
/* 6ABC4 8007A3C4 00000000 */  nop
/* 6ABC8 8007A3C8 1E004010 */  beqz       $v0, .L8007A444
/* 6ABCC 8007A3CC 21280000 */   addu      $a1, $zero, $zero
/* 6ABD0 8007A3D0 02000A24 */  addiu      $t2, $zero, 2
/* 6ABD4 8007A3D4 05000924 */  addiu      $t1, $zero, 5
/* 6ABD8 8007A3D8 03000824 */  addiu      $t0, $zero, 3
/* 6ABDC 8007A3DC 04000724 */  addiu      $a3, $zero, 4
/* 6ABE0 8007A3E0 21304000 */  addu       $a2, $v0, $zero
/* 6ABE4 8007A3E4 4800AE8F */  lw         $t6, 0x48($sp)
/* 6ABE8 8007A3E8 5000A48F */  lw         $a0, 0x50($sp)
/* 6ABEC 8007A3EC 0C00C325 */  addiu      $v1, $t6, 0xc
.L8007A3F0:
/* 6ABF0 8007A3F0 00008290 */  lbu        $v0, ($a0)
/* 6ABF4 8007A3F4 00000000 */  nop
/* 6ABF8 8007A3F8 0D004A14 */  bne        $v0, $t2, .L8007A430
/* 6ABFC 8007A3FC 00000000 */   nop
/* 6AC00 8007A400 01008290 */  lbu        $v0, 1($a0)
/* 6AC04 8007A404 00000000 */  nop
/* 6AC08 8007A408 02004914 */  bne        $v0, $t1, .L8007A414
/* 6AC0C 8007A40C 00000000 */   nop
/* 6AC10 8007A410 00007E8C */  lw         $fp, ($v1)
.L8007A414:
/* 6AC14 8007A414 02004814 */  bne        $v0, $t0, .L8007A420
/* 6AC18 8007A418 00000000 */   nop
/* 6AC1C 8007A41C 0000728C */  lw         $s2, ($v1)
.L8007A420:
/* 6AC20 8007A420 03004714 */  bne        $v0, $a3, .L8007A430
/* 6AC24 8007A424 00000000 */   nop
/* 6AC28 8007A428 0000738C */  lw         $s3, ($v1)
/* 6AC2C 8007A42C 21A0A000 */  addu       $s4, $a1, $zero
.L8007A430:
/* 6AC30 8007A430 04006324 */  addiu      $v1, $v1, 4
/* 6AC34 8007A434 0100A524 */  addiu      $a1, $a1, 1
/* 6AC38 8007A438 2B10A600 */  sltu       $v0, $a1, $a2
/* 6AC3C 8007A43C ECFF4014 */  bnez       $v0, .L8007A3F0
/* 6AC40 8007A440 02008424 */   addiu     $a0, $a0, 2
.L8007A444:
/* 6AC44 8007A444 2380023C */  lui        $v0, 0x8023
/* 6AC48 8007A448 0F80033C */  lui        $v1, %hi(D_800F02D4)
/* 6AC4C 8007A44C D4026524 */  addiu      $a1, $v1, %lo(D_800F02D4)
/* 6AC50 8007A450 54FDA324 */  addiu      $v1, $a1, -0x2ac
/* 6AC54 8007A454 4C00A2AF */  sw         $v0, 0x4c($sp)
/* 6AC58 8007A458 4C00A48F */  lw         $a0, 0x4c($sp)
/* 6AC5C 8007A45C 8B006290 */  lbu        $v0, 0x8b($v1)
/* 6AC60 8007A460 00808434 */  ori        $a0, $a0, 0x8000
/* 6AC64 8007A464 06004010 */  beqz       $v0, .L8007A480
/* 6AC68 8007A468 4C00A4AF */   sw        $a0, 0x4c($sp)
/* 6AC6C 8007A46C 8E006484 */  lh         $a0, 0x8e($v1)
/* 6AC70 8007A470 5DAD020C */  jal        FUN_800ab574
/* 6AC74 8007A474 00000000 */   nop
/* 6AC78 8007A478 24E90108 */  j          .L8007A490
/* 6AC7C 8007A47C 21804000 */   addu      $s0, $v0, $zero
.L8007A480:
/* 6AC80 8007A480 8E006484 */  lh         $a0, 0x8e($v1)
/* 6AC84 8007A484 91AD020C */  jal        FUN_800ab644
/* 6AC88 8007A488 00000000 */   nop
/* 6AC8C 8007A48C 21804000 */  addu       $s0, $v0, $zero
.L8007A490:
/* 6AC90 8007A490 FB010012 */  beqz       $s0, .L8007AC80
/* 6AC94 8007A494 21280000 */   addu      $a1, $zero, $zero
/* 6AC98 8007A498 2380163C */  lui        $s6, 0x8023
/* 6AC9C 8007A49C 09FFD636 */  ori        $s6, $s6, 0xff09
/* 6ACA0 8007A4A0 2480193C */  lui        $t9, 0x8024
/* 6ACA4 8007A4A4 0C123937 */  ori        $t9, $t9, 0x120c
/* 6ACA8 8007A4A8 21B80000 */  addu       $s7, $zero, $zero
/* 6ACAC 8007A4AC 23105E02 */  subu       $v0, $s2, $fp
/* 6ACB0 8007A4B0 03120200 */  sra        $v0, $v0, 8
/* 6ACB4 8007A4B4 0000038E */  lw         $v1, ($s0)
/* 6ACB8 8007A4B8 01004424 */  addiu      $a0, $v0, 1
/* 6ACBC 8007A4BC F0FF7124 */  addiu      $s1, $v1, -0x10
/* 6ACC0 8007A4C0 21382002 */  addu       $a3, $s1, $zero
/* 6ACC4 8007A4C4 0B000392 */  lbu        $v1, 0xb($s0)
/* 6ACC8 8007A4C8 2A109100 */  slt        $v0, $a0, $s1
/* 6ACCC 8007A4CC 01006330 */  andi       $v1, $v1, 1
/* 6ACD0 8007A4D0 02004010 */  beqz       $v0, .L8007A4DC
/* 6ACD4 8007A4D4 6000A3AF */   sw        $v1, 0x60($sp)
/* 6ACD8 8007A4D8 21888000 */  addu       $s1, $a0, $zero
.L8007A4DC:
/* 6ACDC 8007A4DC 00121100 */  sll        $v0, $s1, 8
/* 6ACE0 8007A4E0 2120C203 */  addu       $a0, $fp, $v0
/* 6ACE4 8007A4E4 2A186402 */  slt        $v1, $s3, $a0
/* 6ACE8 8007A4E8 05006010 */  beqz       $v1, .L8007A500
/* 6ACEC 8007A4EC 80101400 */   sll       $v0, $s4, 2
/* 6ACF0 8007A4F0 4800A68F */  lw         $a2, 0x48($sp)
/* 6ACF4 8007A4F4 00000000 */  nop
/* 6ACF8 8007A4F8 2110C200 */  addu       $v0, $a2, $v0
/* 6ACFC 8007A4FC 0C0044AC */  sw         $a0, 0xc($v0)
.L8007A500:
/* 6AD00 8007A500 2480013C */  lui        $at, %hi(D_80238008)
/* 6AD04 8007A504 088020AC */  sw         $zero, %lo(D_80238008)($at)
/* 6AD08 8007A508 10001224 */  addiu      $s2, $zero, 0x10
/* 6AD0C 8007A50C 2A105102 */  slt        $v0, $s2, $s1
/* 6AD10 8007A510 0E004010 */  beqz       $v0, .L8007A54C
/* 6AD14 8007A514 10001026 */   addiu     $s0, $s0, 0x10
/* 6AD18 8007A518 FF000324 */  addiu      $v1, $zero, 0xff
/* 6AD1C 8007A51C 21101202 */  addu       $v0, $s0, $s2
.L8007A520:
/* 6AD20 8007A520 00004290 */  lbu        $v0, ($v0)
/* 6AD24 8007A524 00000000 */  nop
/* 6AD28 8007A528 04004010 */  beqz       $v0, .L8007A53C
/* 6AD2C 8007A52C 00000000 */   nop
/* 6AD30 8007A530 02004310 */  beq        $v0, $v1, .L8007A53C
/* 6AD34 8007A534 00000000 */   nop
/* 6AD38 8007A538 0100A524 */  addiu      $a1, $a1, 1
.L8007A53C:
/* 6AD3C 8007A53C 01005226 */  addiu      $s2, $s2, 1
/* 6AD40 8007A540 2A105102 */  slt        $v0, $s2, $s1
/* 6AD44 8007A544 F6FF4014 */  bnez       $v0, .L8007A520
/* 6AD48 8007A548 21101202 */   addu      $v0, $s0, $s2
.L8007A54C:
/* 6AD4C 8007A54C 0108A228 */  slti       $v0, $a1, 0x801
/* 6AD50 8007A550 03004014 */  bnez       $v0, .L8007A560
/* 6AD54 8007A554 00000000 */   nop
/* 6AD58 8007A558 21800000 */  addu       $s0, $zero, $zero
/* 6AD5C 8007A55C 21880000 */  addu       $s1, $zero, $zero
.L8007A560:
/* 6AD60 8007A560 AB012012 */  beqz       $s1, .L8007AC10
/* 6AD64 8007A564 21980000 */   addu      $s3, $zero, $zero
/* 6AD68 8007A568 21A00000 */  addu       $s4, $zero, $zero
/* 6AD6C 8007A56C 0180023C */  lui        $v0, %hi(D_80015724)
/* 6AD70 8007A570 24574324 */  addiu      $v1, $v0, %lo(D_80015724)
/* 6AD74 8007A574 21900000 */  addu       $s2, $zero, $zero
/* 6AD78 8007A578 2457448C */  lw         $a0, 0x5724($v0)
/* 6AD7C 8007A57C 0400658C */  lw         $a1, 4($v1)
/* 6AD80 8007A580 0800628C */  lw         $v0, 8($v1)
/* 6AD84 8007A584 0C00668C */  lw         $a2, 0xc($v1)
/* 6AD88 8007A588 21180702 */  addu       $v1, $s0, $a3
/* 6AD8C 8007A58C 1000A4AF */  sw         $a0, 0x10($sp)
/* 6AD90 8007A590 1400A5AF */  sw         $a1, 0x14($sp)
/* 6AD94 8007A594 1800A2AF */  sw         $v0, 0x18($sp)
/* 6AD98 8007A598 9D01201A */  blez       $s1, .L8007AC10
/* 6AD9C 8007A59C 1C00A6AF */   sw        $a2, 0x1c($sp)
/* 6ADA0 8007A5A0 2800AE27 */  addiu      $t6, $sp, 0x28
/* 6ADA4 8007A5A4 6400AEAF */  sw         $t6, 0x64($sp)
/* 6ADA8 8007A5A8 21A86000 */  addu       $s5, $v1, $zero
.L8007A5AC:
/* 6ADAC 8007A5AC 2800A427 */  addiu      $a0, $sp, 0x28
/* 6ADB0 8007A5B0 21280000 */  addu       $a1, $zero, $zero
/* 6ADB4 8007A5B4 08000624 */  addiu      $a2, $zero, 8
/* 6ADB8 8007A5B8 F6A2000C */  jal        memset
/* 6ADBC 8007A5BC 8C00B9AF */   sw        $t9, 0x8c($sp)
/* 6ADC0 8007A5C0 00000A92 */  lbu        $t2, ($s0)
/* 6ADC4 8007A5C4 8C00B98F */  lw         $t9, 0x8c($sp)
/* 6ADC8 8007A5C8 0200801A */  blez       $s4, .L8007A5D4
/* 6ADCC 8007A5CC 01001026 */   addiu     $s0, $s0, 1
/* 6ADD0 8007A5D0 FFFF9426 */  addiu      $s4, $s4, -1
.L8007A5D4:
/* 6ADD4 8007A5D4 8A014011 */  beqz       $t2, .L8007AC00
/* 6ADD8 8007A5D8 FF000224 */   addiu     $v0, $zero, 0xff
/* 6ADDC 8007A5DC 05004215 */  bne        $t2, $v0, .L8007A5F4
/* 6ADE0 8007A5E0 21380000 */   addu      $a3, $zero, $zero
/* 6ADE4 8007A5E4 04008016 */  bnez       $s4, .L8007A5F8
/* 6ADE8 8007A5E8 1000AF27 */   addiu     $t7, $sp, 0x10
/* 6ADEC 8007A5EC 00EB0108 */  j          .L8007AC00
/* 6ADF0 8007A5F0 04001424 */   addiu     $s4, $zero, 4
.L8007A5F4:
/* 6ADF4 8007A5F4 1000AF27 */  addiu      $t7, $sp, 0x10
.L8007A5F8:
/* 6ADF8 8007A5F8 2158E001 */  addu       $t3, $t7, $zero
/* 6ADFC 8007A5FC FFFF0624 */  addiu      $a2, $zero, -1
/* 6AE00 8007A600 6400A88F */  lw         $t0, 0x64($sp)
.L8007A604:
/* 6AE04 8007A604 0100E924 */  addiu      $t1, $a3, 1
/* 6AE08 8007A608 80100700 */  sll        $v0, $a3, 2
/* 6AE0C 8007A60C 21280201 */  addu       $a1, $t0, $v0
/* 6AE10 8007A610 C0180700 */  sll        $v1, $a3, 3
/* 6AE14 8007A614 21186B00 */  addu       $v1, $v1, $t3
/* 6AE18 8007A618 01000424 */  addiu      $a0, $zero, 1
.L8007A61C:
/* 6AE1C 8007A61C 0000628C */  lw         $v0, ($v1)
/* 6AE20 8007A620 00000000 */  nop
/* 6AE24 8007A624 2A105200 */  slt        $v0, $v0, $s2
/* 6AE28 8007A628 02004010 */  beqz       $v0, .L8007A634
/* 6AE2C 8007A62C 00000000 */   nop
/* 6AE30 8007A630 000066AC */  sw         $a2, ($v1)
.L8007A634:
/* 6AE34 8007A634 0000628C */  lw         $v0, ($v1)
/* 6AE38 8007A638 00000000 */  nop
/* 6AE3C 8007A63C 05004610 */  beq        $v0, $a2, .L8007A654
/* 6AE40 8007A640 00000000 */   nop
/* 6AE44 8007A644 0000A28C */  lw         $v0, ($a1)
/* 6AE48 8007A648 00000000 */  nop
/* 6AE4C 8007A64C 01004224 */  addiu      $v0, $v0, 1
/* 6AE50 8007A650 0000A2AC */  sw         $v0, ($a1)
.L8007A654:
/* 6AE54 8007A654 FFFF8424 */  addiu      $a0, $a0, -1
/* 6AE58 8007A658 F0FF8104 */  bgez       $a0, .L8007A61C
/* 6AE5C 8007A65C 04006324 */   addiu     $v1, $v1, 4
/* 6AE60 8007A660 21382001 */  addu       $a3, $t1, $zero
/* 6AE64 8007A664 0200E228 */  slti       $v0, $a3, 2
/* 6AE68 8007A668 E6FF4014 */  bnez       $v0, .L8007A604
/* 6AE6C 8007A66C 0F80033C */   lui       $v1, %hi(D_800F0028)
/* 6AE70 8007A670 28006224 */  addiu      $v0, $v1, %lo(D_800F0028)
/* 6AE74 8007A674 8A004390 */  lbu        $v1, 0x8a($v0)
/* 6AE78 8007A678 02000624 */  addiu      $a2, $zero, 2
/* 6AE7C 8007A67C 07006610 */  beq        $v1, $a2, .L8007A69C
/* 6AE80 8007A680 1080043C */   lui       $a0, %hi(D_80100028)
/* 6AE84 8007A684 28008424 */  addiu      $a0, $a0, %lo(D_80100028)
/* 6AE88 8007A688 2800A58F */  lw         $a1, 0x28($sp)
/* 6AE8C 8007A68C 06438290 */  lbu        $v0, 0x4306($a0)
/* 6AE90 8007A690 2C00A48F */  lw         $a0, 0x2c($sp)
/* 6AE94 8007A694 09004614 */  bne        $v0, $a2, .L8007A6BC
/* 6AE98 8007A698 2110A400 */   addu      $v0, $a1, $a0
.L8007A69C:
/* 6AE9C 8007A69C 2800A28F */  lw         $v0, 0x28($sp)
/* 6AEA0 8007A6A0 2C00A38F */  lw         $v1, 0x2c($sp)
/* 6AEA4 8007A6A4 21284000 */  addu       $a1, $v0, $zero
/* 6AEA8 8007A6A8 21104300 */  addu       $v0, $v0, $v1
/* 6AEAC 8007A6AC 02004228 */  slti       $v0, $v0, 2
/* 6AEB0 8007A6B0 53014010 */  beqz       $v0, .L8007AC00
/* 6AEB4 8007A6B4 21206000 */   addu      $a0, $v1, $zero
/* 6AEB8 8007A6B8 2110A400 */  addu       $v0, $a1, $a0
.L8007A6BC:
/* 6AEBC 8007A6BC 04004228 */  slti       $v0, $v0, 4
/* 6AEC0 8007A6C0 4F014010 */  beqz       $v0, .L8007AC00
/* 6AEC4 8007A6C4 21380000 */   addu      $a3, $zero, $zero
/* 6AEC8 8007A6C8 2000A827 */  addiu      $t0, $sp, 0x20
/* 6AECC 8007A6CC 21200001 */  addu       $a0, $t0, $zero
/* 6AED0 8007A6D0 21108700 */  addu       $v0, $a0, $a3
.L8007A6D4:
/* 6AED4 8007A6D4 80180700 */  sll        $v1, $a3, 2
/* 6AED8 8007A6D8 07186A00 */  srav       $v1, $t2, $v1
/* 6AEDC 8007A6DC 0F006330 */  andi       $v1, $v1, 0xf
/* 6AEE0 8007A6E0 000043A0 */  sb         $v1, ($v0)
/* 6AEE4 8007A6E4 0100E724 */  addiu      $a3, $a3, 1
/* 6AEE8 8007A6E8 0200E228 */  slti       $v0, $a3, 2
/* 6AEEC 8007A6EC F9FF4014 */  bnez       $v0, .L8007A6D4
/* 6AEF0 8007A6F0 21108700 */   addu      $v0, $a0, $a3
/* 6AEF4 8007A6F4 21280000 */  addu       $a1, $zero, $zero
/* 6AEF8 8007A6F8 21380000 */  addu       $a3, $zero, $zero
/* 6AEFC 8007A6FC 21300001 */  addu       $a2, $t0, $zero
/* 6AF00 8007A700 1080023C */  lui        $v0, %hi(D_80100028)
/* 6AF04 8007A704 28004E24 */  addiu      $t6, $v0, %lo(D_80100028)
/* 6AF08 8007A708 6400AB8F */  lw         $t3, 0x64($sp)
/* 6AF0C 8007A70C 01000D24 */  addiu      $t5, $zero, 1
/* 6AF10 8007A710 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6AF14 8007A714 28004C24 */  addiu      $t4, $v0, %lo(D_800F0028)
/* 6AF18 8007A718 21180000 */  addu       $v1, $zero, $zero
.L8007A71C:
/* 6AF1C 8007A71C 0100E924 */  addiu      $t1, $a3, 1
/* 6AF20 8007A720 2110C700 */  addu       $v0, $a2, $a3
/* 6AF24 8007A724 00004490 */  lbu        $a0, ($v0)
/* 6AF28 8007A728 00000000 */  nop
/* 6AF2C 8007A72C 07106400 */  srav       $v0, $a0, $v1
.L8007A730:
/* 6AF30 8007A730 01004230 */  andi       $v0, $v0, 1
/* 6AF34 8007A734 02004010 */  beqz       $v0, .L8007A740
/* 6AF38 8007A738 00000000 */   nop
/* 6AF3C 8007A73C 0100A524 */  addiu      $a1, $a1, 1
.L8007A740:
/* 6AF40 8007A740 01006324 */  addiu      $v1, $v1, 1
/* 6AF44 8007A744 04006228 */  slti       $v0, $v1, 4
/* 6AF48 8007A748 F9FF4014 */  bnez       $v0, .L8007A730
/* 6AF4C 8007A74C 07106400 */   srav      $v0, $a0, $v1
/* 6AF50 8007A750 8A008291 */  lbu        $v0, 0x8a($t4)
/* 6AF54 8007A754 02000324 */  addiu      $v1, $zero, 2
/* 6AF58 8007A758 0F004310 */  beq        $v0, $v1, .L8007A798
/* 6AF5C 8007A75C 00000000 */   nop
/* 6AF60 8007A760 0643C291 */  lbu        $v0, 0x4306($t6)
/* 6AF64 8007A764 00000000 */  nop
/* 6AF68 8007A768 0B004310 */  beq        $v0, $v1, .L8007A798
/* 6AF6C 8007A76C 0200A228 */   slti      $v0, $a1, 2
/* 6AF70 8007A770 09004014 */  bnez       $v0, .L8007A798
/* 6AF74 8007A774 21280000 */   addu      $a1, $zero, $zero
/* 6AF78 8007A778 80100700 */  sll        $v0, $a3, 2
/* 6AF7C 8007A77C 21106201 */  addu       $v0, $t3, $v0
/* 6AF80 8007A780 0000438C */  lw         $v1, ($v0)
/* 6AF84 8007A784 00000000 */  nop
/* 6AF88 8007A788 03006D14 */  bne        $v1, $t5, .L8007A798
/* 6AF8C 8007A78C 2110C700 */   addu      $v0, $a2, $a3
/* 6AF90 8007A790 000040A0 */  sb         $zero, ($v0)
/* 6AF94 8007A794 21280000 */  addu       $a1, $zero, $zero
.L8007A798:
/* 6AF98 8007A798 21382001 */  addu       $a3, $t1, $zero
/* 6AF9C 8007A79C 02002229 */  slti       $v0, $t1, 2
/* 6AFA0 8007A7A0 DEFF4014 */  bnez       $v0, .L8007A71C
/* 6AFA4 8007A7A4 21180000 */   addu      $v1, $zero, $zero
/* 6AFA8 8007A7A8 0F80063C */  lui        $a2, %hi(D_800F0028)
/* 6AFAC 8007A7AC 2800C224 */  addiu      $v0, $a2, %lo(D_800F0028)
/* 6AFB0 8007A7B0 8A004390 */  lbu        $v1, 0x8a($v0)
/* 6AFB4 8007A7B4 02000424 */  addiu      $a0, $zero, 2
/* 6AFB8 8007A7B8 07006410 */  beq        $v1, $a0, .L8007A7D8
/* 6AFBC 8007A7BC 0200A228 */   slti      $v0, $a1, 2
/* 6AFC0 8007A7C0 10800E3C */  lui        $t6, %hi(D_80100028)
/* 6AFC4 8007A7C4 2800CE25 */  addiu      $t6, $t6, %lo(D_80100028)
/* 6AFC8 8007A7C8 0643C291 */  lbu        $v0, 0x4306($t6)
/* 6AFCC 8007A7CC 00000000 */  nop
/* 6AFD0 8007A7D0 0B004414 */  bne        $v0, $a0, .L8007A800
/* 6AFD4 8007A7D4 0200A228 */   slti      $v0, $a1, 2
.L8007A7D8:
/* 6AFD8 8007A7D8 09004014 */  bnez       $v0, .L8007A800
/* 6AFDC 8007A7DC 00000000 */   nop
/* 6AFE0 8007A7E0 2800A28F */  lw         $v0, 0x28($sp)
/* 6AFE4 8007A7E4 2C00A38F */  lw         $v1, 0x2c($sp)
/* 6AFE8 8007A7E8 01000424 */  addiu      $a0, $zero, 1
/* 6AFEC 8007A7EC 21104300 */  addu       $v0, $v0, $v1
/* 6AFF0 8007A7F0 03004414 */  bne        $v0, $a0, .L8007A800
/* 6AFF4 8007A7F4 00000000 */   nop
/* 6AFF8 8007A7F8 2000A0A3 */  sb         $zero, 0x20($sp)
/* 6AFFC 8007A7FC 2100A0A3 */  sb         $zero, 0x21($sp)
.L8007A800:
/* 6B000 8007A800 2000A593 */  lbu        $a1, 0x20($sp)
/* 6B004 8007A804 00000000 */  nop
/* 6B008 8007A808 0500A014 */  bnez       $a1, .L8007A820
/* 6B00C 8007A80C 00000000 */   nop
/* 6B010 8007A810 2100A293 */  lbu        $v0, 0x21($sp)
/* 6B014 8007A814 00000000 */  nop
/* 6B018 8007A818 F9004010 */  beqz       $v0, .L8007AC00
/* 6B01C 8007A81C 00000000 */   nop
.L8007A820:
/* 6B020 8007A820 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 6B024 8007A824 28006224 */  addiu      $v0, $v1, %lo(D_800F0028)
/* 6B028 8007A828 8A004390 */  lbu        $v1, 0x8a($v0)
/* 6B02C 8007A82C 02000424 */  addiu      $a0, $zero, 2
/* 6B030 8007A830 07006410 */  beq        $v1, $a0, .L8007A850
/* 6B034 8007A834 00000000 */   nop
/* 6B038 8007A838 1080063C */  lui        $a2, %hi(D_80100028)
/* 6B03C 8007A83C 2800C624 */  addiu      $a2, $a2, %lo(D_80100028)
/* 6B040 8007A840 0643C290 */  lbu        $v0, 0x4306($a2)
/* 6B044 8007A844 00000000 */  nop
/* 6B048 8007A848 34004414 */  bne        $v0, $a0, .L8007A91C
/* 6B04C 8007A84C 00000000 */   nop
.L8007A850:
/* 6B050 8007A850 3200A010 */  beqz       $a1, .L8007A91C
/* 6B054 8007A854 00000000 */   nop
/* 6B058 8007A858 2100A293 */  lbu        $v0, 0x21($sp)
/* 6B05C 8007A85C 00000000 */  nop
/* 6B060 8007A860 2E004010 */  beqz       $v0, .L8007A91C
/* 6B064 8007A864 21204000 */   addu      $a0, $v0, $zero
/* 6B068 8007A868 01800E3C */  lui        $t6, %hi(D_80015734)
/* 6B06C 8007A86C 3457CE25 */  addiu      $t6, $t6, %lo(D_80015734)
/* 6B070 8007A870 21208E00 */  addu       $a0, $a0, $t6
/* 6B074 8007A874 2000A393 */  lbu        $v1, 0x20($sp)
/* 6B078 8007A878 00008590 */  lbu        $a1, ($a0)
/* 6B07C 8007A87C 21186E00 */  addu       $v1, $v1, $t6
/* 6B080 8007A880 00006290 */  lbu        $v0, ($v1)
/* 6B084 8007A884 00000000 */  nop
/* 6B088 8007A888 21104500 */  addu       $v0, $v0, $a1
/* 6B08C 8007A88C 02004228 */  slti       $v0, $v0, 2
/* 6B090 8007A890 50004014 */  bnez       $v0, .L8007A9D4
/* 6B094 8007A894 00136C2A */   slti      $t4, $s3, 0x1300
/* 6B098 8007A898 0180023C */  lui        $v0, %hi(D_80015744)
/* 6B09C 8007A89C 44574490 */  lbu        $a0, %lo(D_80015744)($v0)
/* 6B0A0 8007A8A0 21304000 */  addu       $a2, $v0, $zero
/* 6B0A4 8007A8A4 FF000224 */  addiu      $v0, $zero, 0xff
/* 6B0A8 8007A8A8 FF008330 */  andi       $v1, $a0, 0xff
/* 6B0AC 8007A8AC 15006210 */  beq        $v1, $v0, .L8007A904
/* 6B0B0 8007A8B0 21280000 */   addu      $a1, $zero, $zero
/* 6B0B4 8007A8B4 24108A00 */  and        $v0, $a0, $t2
/* 6B0B8 8007A8B8 0C004310 */  beq        $v0, $v1, .L8007A8EC
/* 6B0BC 8007A8BC FF000424 */   addiu     $a0, $zero, 0xff
/* 6B0C0 8007A8C0 4457C724 */  addiu      $a3, $a2, 0x5744
/* 6B0C4 8007A8C4 0100A524 */  addiu      $a1, $a1, 1
.L8007A8C8:
/* 6B0C8 8007A8C8 2110A700 */  addu       $v0, $a1, $a3
/* 6B0CC 8007A8CC 00004290 */  lbu        $v0, ($v0)
/* 6B0D0 8007A8D0 00000000 */  nop
/* 6B0D4 8007A8D4 FF004330 */  andi       $v1, $v0, 0xff
/* 6B0D8 8007A8D8 0A006410 */  beq        $v1, $a0, .L8007A904
/* 6B0DC 8007A8DC 24104A00 */   and       $v0, $v0, $t2
/* 6B0E0 8007A8E0 F9FF4314 */  bne        $v0, $v1, .L8007A8C8
/* 6B0E4 8007A8E4 0100A524 */   addiu     $a1, $a1, 1
/* 6B0E8 8007A8E8 FFFFA524 */  addiu      $a1, $a1, -1
.L8007A8EC:
/* 6B0EC 8007A8EC 4457C224 */  addiu      $v0, $a2, 0x5744
/* 6B0F0 8007A8F0 2110A200 */  addu       $v0, $a1, $v0
/* 6B0F4 8007A8F4 00004390 */  lbu        $v1, ($v0)
/* 6B0F8 8007A8F8 FF000424 */  addiu      $a0, $zero, 0xff
/* 6B0FC 8007A8FC 03006414 */  bne        $v1, $a0, .L8007A90C
/* 6B100 8007A900 4457C224 */   addiu     $v0, $a2, 0x5744
.L8007A904:
/* 6B104 8007A904 21280000 */  addu       $a1, $zero, $zero
/* 6B108 8007A908 4457C224 */  addiu      $v0, $a2, 0x5744
.L8007A90C:
/* 6B10C 8007A90C 2110A200 */  addu       $v0, $a1, $v0
/* 6B110 8007A910 00004A90 */  lbu        $t2, ($v0)
/* 6B114 8007A914 75EA0108 */  j          .L8007A9D4
/* 6B118 8007A918 00000000 */   nop
.L8007A91C:
/* 6B11C 8007A91C 21380000 */  addu       $a3, $zero, $zero
/* 6B120 8007A920 00136C2A */  slti       $t4, $s3, 0x1300
/* 6B124 8007A924 0180053C */  lui        $a1, %hi(D_80015734)
/* 6B128 8007A928 3457AD24 */  addiu      $t5, $a1, %lo(D_80015734)
/* 6B12C 8007A92C 0180023C */  lui        $v0, %hi(D_80015750)
/* 6B130 8007A930 50574B24 */  addiu      $t3, $v0, %lo(D_80015750)
/* 6B134 8007A934 FF000A24 */  addiu      $t2, $zero, 0xff
/* 6B138 8007A938 21100701 */  addu       $v0, $t0, $a3
.L8007A93C:
/* 6B13C 8007A93C 00004390 */  lbu        $v1, ($v0)
/* 6B140 8007A940 00000000 */  nop
/* 6B144 8007A944 21186D00 */  addu       $v1, $v1, $t5
/* 6B148 8007A948 00006290 */  lbu        $v0, ($v1)
/* 6B14C 8007A94C 00000000 */  nop
/* 6B150 8007A950 0300422C */  sltiu      $v0, $v0, 3
/* 6B154 8007A954 16004014 */  bnez       $v0, .L8007A9B0
/* 6B158 8007A958 0100E924 */   addiu     $t1, $a3, 1
/* 6B15C 8007A95C 5AEA0108 */  j          .L8007A968
/* 6B160 8007A960 21300000 */   addu      $a2, $zero, $zero
.L8007A964:
/* 6B164 8007A964 0100C624 */  addiu      $a2, $a2, 1
.L8007A968:
/* 6B168 8007A968 2110CB00 */  addu       $v0, $a2, $t3
/* 6B16C 8007A96C 00004490 */  lbu        $a0, ($v0)
/* 6B170 8007A970 00000000 */  nop
/* 6B174 8007A974 FF008530 */  andi       $a1, $a0, 0xff
/* 6B178 8007A978 0800AA10 */  beq        $a1, $t2, .L8007A99C
/* 6B17C 8007A97C 21100701 */   addu      $v0, $t0, $a3
/* 6B180 8007A980 00004390 */  lbu        $v1, ($v0)
/* 6B184 8007A984 00000000 */  nop
/* 6B188 8007A988 24106400 */  and        $v0, $v1, $a0
/* 6B18C 8007A98C F5FF4514 */  bne        $v0, $a1, .L8007A964
/* 6B190 8007A990 00000000 */   nop
/* 6B194 8007A994 03004A14 */  bne        $v0, $t2, .L8007A9A4
/* 6B198 8007A998 2110CB00 */   addu      $v0, $a2, $t3
.L8007A99C:
/* 6B19C 8007A99C 21300000 */  addu       $a2, $zero, $zero
/* 6B1A0 8007A9A0 2110CB00 */  addu       $v0, $a2, $t3
.L8007A9A4:
/* 6B1A4 8007A9A4 00004490 */  lbu        $a0, ($v0)
/* 6B1A8 8007A9A8 21180701 */  addu       $v1, $t0, $a3
/* 6B1AC 8007A9AC 000064A0 */  sb         $a0, ($v1)
.L8007A9B0:
/* 6B1B0 8007A9B0 21382001 */  addu       $a3, $t1, $zero
/* 6B1B4 8007A9B4 0200E228 */  slti       $v0, $a3, 2
/* 6B1B8 8007A9B8 E0FF4014 */  bnez       $v0, .L8007A93C
/* 6B1BC 8007A9BC 21100701 */   addu      $v0, $t0, $a3
/* 6B1C0 8007A9C0 2100A293 */  lbu        $v0, 0x21($sp)
/* 6B1C4 8007A9C4 2000A393 */  lbu        $v1, 0x20($sp)
/* 6B1C8 8007A9C8 00110200 */  sll        $v0, $v0, 4
/* 6B1CC 8007A9CC 25186200 */  or         $v1, $v1, $v0
/* 6B1D0 8007A9D0 FF006A30 */  andi       $t2, $v1, 0xff
.L8007A9D4:
/* 6B1D4 8007A9D4 1C008011 */  beqz       $t4, .L8007AA48
/* 6B1D8 8007A9D8 2110D302 */   addu      $v0, $s6, $s3
/* 6B1DC 8007A9DC 12008012 */  beqz       $s4, .L8007AA28
/* 6B1E0 8007A9E0 00004AA0 */   sb        $t2, ($v0)
/* 6B1E4 8007A9E4 5555023C */  lui        $v0, 0x5555
/* 6B1E8 8007A9E8 56554234 */  ori        $v0, $v0, 0x5556
/* 6B1EC 8007A9EC 03000324 */  addiu      $v1, $zero, 3
/* 6B1F0 8007A9F0 23187400 */  subu       $v1, $v1, $s4
/* 6B1F4 8007A9F4 801A0300 */  sll        $v1, $v1, 0xa
/* 6B1F8 8007A9F8 18006200 */  mult       $v1, $v0
/* 6B1FC 8007A9FC FCFF8426 */  addiu      $a0, $s4, -4
/* 6B200 8007AA00 21204402 */  addu       $a0, $s2, $a0
/* 6B204 8007AA04 00220400 */  sll        $a0, $a0, 8
/* 6B208 8007AA08 2120C403 */  addu       $a0, $fp, $a0
/* 6B20C 8007AA0C C31F0300 */  sra        $v1, $v1, 0x1f
/* 6B210 8007AA10 10100000 */  mfhi       $v0
/* 6B214 8007AA14 23104300 */  subu       $v0, $v0, $v1
/* 6B218 8007AA18 43110200 */  sra        $v0, $v0, 5
/* 6B21C 8007AA1C 40110200 */  sll        $v0, $v0, 5
/* 6B220 8007AA20 8CEA0108 */  j          .L8007AA30
/* 6B224 8007AA24 21208200 */   addu      $a0, $a0, $v0
.L8007AA28:
/* 6B228 8007AA28 00121200 */  sll        $v0, $s2, 8
/* 6B22C 8007AA2C 2120C203 */  addu       $a0, $fp, $v0
.L8007AA30:
/* 6B230 8007AA30 0010C227 */  addiu      $v0, $fp, 0x1000
/* 6B234 8007AA34 2A108200 */  slt        $v0, $a0, $v0
/* 6B238 8007AA38 6C004014 */  bnez       $v0, .L8007ABEC
/* 6B23C 8007AA3C 3F006232 */   andi      $v0, $s3, 0x3f
/* 6B240 8007AA40 03008015 */  bnez       $t4, .L8007AA50
/* 6B244 8007AA44 2380033C */   lui       $v1, 0x8023
.L8007AA48:
/* 6B248 8007AA48 04EB0108 */  j          .L8007AC10
/* 6B24C 8007AA4C 21800000 */   addu      $s0, $zero, $zero
.L8007AA50:
/* 6B250 8007AA50 0C806334 */  ori        $v1, $v1, 0x800c
/* 6B254 8007AA54 80101300 */  sll        $v0, $s3, 2
/* 6B258 8007AA58 21104300 */  addu       $v0, $v0, $v1
/* 6B25C 8007AA5C 01007326 */  addiu      $s3, $s3, 1
/* 6B260 8007AA60 23800B3C */  lui        $t3, 0x8023
/* 6B264 8007AA64 000044AC */  sw         $a0, ($v0)
/* 6B268 8007AA68 6000A28F */  lw         $v0, 0x60($sp)
/* 6B26C 8007AA6C 00000000 */  nop
/* 6B270 8007AA70 5D004010 */  beqz       $v0, .L8007ABE8
/* 6B274 8007AA74 0C806B35 */   ori       $t3, $t3, 0x800c
/* 6B278 8007AA78 5C008016 */  bnez       $s4, .L8007ABEC
/* 6B27C 8007AA7C 3F006232 */   andi      $v0, $s3, 0x3f
/* 6B280 8007AA80 0000AE92 */  lbu        $t6, ($s5)
/* 6B284 8007AA84 21380000 */  addu       $a3, $zero, $zero
/* 6B288 8007AA88 2168A002 */  addu       $t5, $s5, $zero
/* 6B28C 8007AA8C 2148E001 */  addu       $t1, $t7, $zero
/* 6B290 8007AA90 FFFF0C24 */  addiu      $t4, $zero, -1
/* 6B294 8007AA94 40101700 */  sll        $v0, $s7, 1
/* 6B298 8007AA98 21405900 */  addu       $t0, $v0, $t9
/* 6B29C 8007AA9C 0710EA00 */  srav       $v0, $t2, $a3
.L8007AAA0:
/* 6B2A0 8007AAA0 01004230 */  andi       $v0, $v0, 1
/* 6B2A4 8007AAA4 4C004010 */  beqz       $v0, .L8007ABD8
/* 6B2A8 8007AAA8 0710EE00 */   srav      $v0, $t6, $a3
/* 6B2AC 8007AAAC 01004230 */  andi       $v0, $v0, 1
/* 6B2B0 8007AAB0 49004010 */  beqz       $v0, .L8007ABD8
/* 6B2B4 8007AAB4 2118A001 */   addu      $v1, $t5, $zero
/* 6B2B8 8007AAB8 FFFF0624 */  addiu      $a2, $zero, -1
/* 6B2BC 8007AABC 21204002 */  addu       $a0, $s2, $zero
/* 6B2C0 8007AAC0 FFFF2526 */  addiu      $a1, $s1, -1
/* 6B2C4 8007AAC4 B7EA0108 */  j          .L8007AADC
/* 6B2C8 8007AAC8 2A104502 */   slt       $v0, $s2, $a1
.L8007AACC:
/* 6B2CC 8007AACC 21308000 */  addu       $a2, $a0, $zero
/* 6B2D0 8007AAD0 01006324 */  addiu      $v1, $v1, 1
/* 6B2D4 8007AAD4 0100C424 */  addiu      $a0, $a2, 1
/* 6B2D8 8007AAD8 2A108500 */  slt        $v0, $a0, $a1
.L8007AADC:
/* 6B2DC 8007AADC 07004010 */  beqz       $v0, .L8007AAFC
/* 6B2E0 8007AAE0 0100C224 */   addiu     $v0, $a2, 1
/* 6B2E4 8007AAE4 00006290 */  lbu        $v0, ($v1)
/* 6B2E8 8007AAE8 00000000 */  nop
/* 6B2EC 8007AAEC 0710E200 */  srav       $v0, $v0, $a3
/* 6B2F0 8007AAF0 01004230 */  andi       $v0, $v0, 1
/* 6B2F4 8007AAF4 F5FF4014 */  bnez       $v0, .L8007AACC
/* 6B2F8 8007AAF8 0100C224 */   addiu     $v0, $a2, 1
.L8007AAFC:
/* 6B2FC 8007AAFC 0200422C */  sltiu      $v0, $v0, 2
/* 6B300 8007AB00 35004014 */  bnez       $v0, .L8007ABD8
/* 6B304 8007AB04 00000000 */   nop
/* 6B308 8007AB08 33004612 */  beq        $s2, $a2, .L8007ABD8
/* 6B30C 8007AB0C 2318D200 */   subu      $v1, $a2, $s2
/* 6B310 8007AB10 02006228 */  slti       $v0, $v1, 2
/* 6B314 8007AB14 30004014 */  bnez       $v0, .L8007ABD8
/* 6B318 8007AB18 00046228 */   slti      $v0, $v1, 0x400
/* 6B31C 8007AB1C 02004014 */  bnez       $v0, .L8007AB28
/* 6B320 8007AB20 0013622A */   slti      $v0, $s3, 0x1300
/* 6B324 8007AB24 FF034626 */  addiu      $a2, $s2, 0x3ff
.L8007AB28:
/* 6B328 8007AB28 03004010 */  beqz       $v0, .L8007AB38
/* 6B32C 8007AB2C 0010E22A */   slti      $v0, $s7, 0x1000
/* 6B330 8007AB30 04004014 */  bnez       $v0, .L8007AB44
/* 6B334 8007AB34 00000000 */   nop
.L8007AB38:
/* 6B338 8007AB38 21800000 */  addu       $s0, $zero, $zero
/* 6B33C 8007AB3C FAEA0108 */  j          .L8007ABE8
/* 6B340 8007AB40 21880000 */   addu      $s1, $zero, $zero
.L8007AB44:
/* 6B344 8007AB44 0200E104 */  bgez       $a3, .L8007AB50
/* 6B348 8007AB48 2110E000 */   addu      $v0, $a3, $zero
/* 6B34C 8007AB4C 0300E224 */  addiu      $v0, $a3, 3
.L8007AB50:
/* 6B350 8007AB50 83280200 */  sra        $a1, $v0, 2
/* 6B354 8007AB54 C0100500 */  sll        $v0, $a1, 3
/* 6B358 8007AB58 21102201 */  addu       $v0, $t1, $v0
/* 6B35C 8007AB5C 0000438C */  lw         $v1, ($v0)
/* 6B360 8007AB60 E1EA0108 */  j          .L8007AB84
/* 6B364 8007AB64 21200000 */   addu      $a0, $zero, $zero
.L8007AB68:
/* 6B368 8007AB68 02008228 */  slti       $v0, $a0, 2
/* 6B36C 8007AB6C 0A004010 */  beqz       $v0, .L8007AB98
/* 6B370 8007AB70 80100400 */   sll       $v0, $a0, 2
/* 6B374 8007AB74 C0180500 */  sll        $v1, $a1, 3
/* 6B378 8007AB78 21104300 */  addu       $v0, $v0, $v1
/* 6B37C 8007AB7C 21102201 */  addu       $v0, $t1, $v0
/* 6B380 8007AB80 0000438C */  lw         $v1, ($v0)
.L8007AB84:
/* 6B384 8007AB84 00000000 */  nop
/* 6B388 8007AB88 F7FF6C14 */  bne        $v1, $t4, .L8007AB68
/* 6B38C 8007AB8C 01008424 */   addiu     $a0, $a0, 1
/* 6B390 8007AB90 FFFF8424 */  addiu      $a0, $a0, -1
/* 6B394 8007AB94 000046AC */  sw         $a2, ($v0)
.L8007AB98:
/* 6B398 8007AB98 02000224 */  addiu      $v0, $zero, 2
/* 6B39C 8007AB9C 12008210 */  beq        $a0, $v0, .L8007ABE8
/* 6B3A0 8007ABA0 80201300 */   sll       $a0, $s3, 2
/* 6B3A4 8007ABA4 21206401 */  addu       $a0, $t3, $a0
/* 6B3A8 8007ABA8 00120600 */  sll        $v0, $a2, 8
/* 6B3AC 8007ABAC 2110C203 */  addu       $v0, $fp, $v0
/* 6B3B0 8007ABB0 2118D302 */  addu       $v1, $s6, $s3
/* 6B3B4 8007ABB4 000082AC */  sw         $v0, ($a0)
/* 6B3B8 8007ABB8 01000224 */  addiu      $v0, $zero, 1
/* 6B3BC 8007ABBC 0410E200 */  sllv       $v0, $v0, $a3
/* 6B3C0 8007ABC0 00014234 */  ori        $v0, $v0, 0x100
/* 6B3C4 8007ABC4 000060A0 */  sb         $zero, ($v1)
/* 6B3C8 8007ABC8 000002A5 */  sh         $v0, ($t0)
/* 6B3CC 8007ABCC 02000825 */  addiu      $t0, $t0, 2
/* 6B3D0 8007ABD0 0100F726 */  addiu      $s7, $s7, 1
/* 6B3D4 8007ABD4 01007326 */  addiu      $s3, $s3, 1
.L8007ABD8:
/* 6B3D8 8007ABD8 0100E724 */  addiu      $a3, $a3, 1
/* 6B3DC 8007ABDC 0800E228 */  slti       $v0, $a3, 8
/* 6B3E0 8007ABE0 AFFF4014 */  bnez       $v0, .L8007AAA0
/* 6B3E4 8007ABE4 0710EA00 */   srav      $v0, $t2, $a3
.L8007ABE8:
/* 6B3E8 8007ABE8 3F006232 */  andi       $v0, $s3, 0x3f
.L8007ABEC:
/* 6B3EC 8007ABEC 04004014 */  bnez       $v0, .L8007AC00
/* 6B3F0 8007ABF0 00000000 */   nop
/* 6B3F4 8007ABF4 7CAA000C */  jal        vsync_8002a9f0
/* 6B3F8 8007ABF8 8C00B9AF */   sw        $t9, 0x8c($sp)
/* 6B3FC 8007ABFC 8C00B98F */  lw         $t9, 0x8c($sp)
.L8007AC00:
/* 6B400 8007AC00 01005226 */  addiu      $s2, $s2, 1
/* 6B404 8007AC04 2A105102 */  slt        $v0, $s2, $s1
/* 6B408 8007AC08 68FE4014 */  bnez       $v0, .L8007A5AC
/* 6B40C 8007AC0C 0100B526 */   addiu     $s5, $s5, 1
.L8007AC10:
/* 6B410 8007AC10 80101300 */  sll        $v0, $s3, 2
/* 6B414 8007AC14 0C004224 */  addiu      $v0, $v0, 0xc
/* 6B418 8007AC18 2380053C */  lui        $a1, 0x8023
/* 6B41C 8007AC1C 09FFA534 */  ori        $a1, $a1, 0xff09
/* 6B420 8007AC20 2480013C */  lui        $at, %hi(D_80238008)
/* 6B424 8007AC24 088033AC */  sw         $s3, %lo(D_80238008)($at)
/* 6B428 8007AC28 5C00A38F */  lw         $v1, 0x5c($sp)
/* 6B42C 8007AC2C 21306002 */  addu       $a2, $s3, $zero
/* 6B430 8007AC30 21106200 */  addu       $v0, $v1, $v0
/* 6B434 8007AC34 21204000 */  addu       $a0, $v0, $zero
/* 6B438 8007AC38 BD6B000C */  jal        memcpy
/* 6B43C 8007AC3C 5800A2AF */   sw        $v0, 0x58($sp)
/* 6B440 8007AC40 6000A48F */  lw         $a0, 0x60($sp)
/* 6B444 8007AC44 00000000 */  nop
/* 6B448 8007AC48 0B008010 */  beqz       $a0, .L8007AC78
/* 6B44C 8007AC4C 01006426 */   addiu     $a0, $s3, 1
/* 6B450 8007AC50 C2170400 */  srl        $v0, $a0, 0x1f
/* 6B454 8007AC54 21208200 */  addu       $a0, $a0, $v0
/* 6B458 8007AC58 43200400 */  sra        $a0, $a0, 1
/* 6B45C 8007AC5C 40200400 */  sll        $a0, $a0, 1
/* 6B460 8007AC60 5800A58F */  lw         $a1, 0x58($sp)
/* 6B464 8007AC64 40301700 */  sll        $a2, $s7, 1
/* 6B468 8007AC68 21208500 */  addu       $a0, $a0, $a1
/* 6B46C 8007AC6C 2480053C */  lui        $a1, 0x8024
/* 6B470 8007AC70 BD6B000C */  jal        memcpy
/* 6B474 8007AC74 0C12A534 */   ori       $a1, $a1, 0x120c
.L8007AC78:
/* 6B478 8007AC78 08000016 */  bnez       $s0, .L8007AC9C
/* 6B47C 8007AC7C 00000000 */   nop
.L8007AC80:
/* 6B480 8007AC80 0F80063C */  lui        $a2, %hi(D_800F0028)
/* 6B484 8007AC84 2800C224 */  addiu      $v0, $a2, %lo(D_800F0028)
/* 6B488 8007AC88 FFFF0424 */  addiu      $a0, $zero, -1
/* 6B48C 8007AC8C 0100033C */  lui        $v1, 1
/* 6B490 8007AC90 8E0044A4 */  sh         $a0, 0x8e($v0)
/* 6B494 8007AC94 21104300 */  addu       $v0, $v0, $v1
/* 6B498 8007AC98 0A4344A4 */  sh         $a0, 0x430a($v0)
.L8007AC9C:
/* 6B49C 8007AC9C 6DF0010C */  jal        FUN_8007c1b4
/* 6B4A0 8007ACA0 21200000 */   addu      $a0, $zero, $zero
/* 6B4A4 8007ACA4 21F00000 */  addu       $fp, $zero, $zero
.L8007ACA8:
/* 6B4A8 8007ACA8 0F800E3C */  lui        $t6, %hi(D_800F0028)
/* 6B4AC 8007ACAC 2800C625 */  addiu      $a2, $t6, %lo(D_800F0028)
/* 6B4B0 8007ACB0 80201E00 */  sll        $a0, $fp, 2
/* 6B4B4 8007ACB4 21109E00 */  addu       $v0, $a0, $fp
/* 6B4B8 8007ACB8 C0190200 */  sll        $v1, $v0, 7
/* 6B4BC 8007ACBC 21104300 */  addu       $v0, $v0, $v1
/* 6B4C0 8007ACC0 40110200 */  sll        $v0, $v0, 5
/* 6B4C4 8007ACC4 23105E00 */  subu       $v0, $v0, $fp
/* 6B4C8 8007ACC8 80100200 */  sll        $v0, $v0, 2
/* 6B4CC 8007ACCC 21104600 */  addu       $v0, $v0, $a2
/* 6B4D0 8007ACD0 21508000 */  addu       $t2, $a0, $zero
/* 6B4D4 8007ACD4 01000424 */  addiu      $a0, $zero, 1
/* 6B4D8 8007ACD8 23209E00 */  subu       $a0, $a0, $fp
/* 6B4DC 8007ACDC 8A004790 */  lbu        $a3, 0x8a($v0)
/* 6B4E0 8007ACE0 80100400 */  sll        $v0, $a0, 2
/* 6B4E4 8007ACE4 21104400 */  addu       $v0, $v0, $a0
/* 6B4E8 8007ACE8 C0190200 */  sll        $v1, $v0, 7
/* 6B4EC 8007ACEC 21104300 */  addu       $v0, $v0, $v1
/* 6B4F0 8007ACF0 40110200 */  sll        $v0, $v0, 5
/* 6B4F4 8007ACF4 23104400 */  subu       $v0, $v0, $a0
/* 6B4F8 8007ACF8 80100200 */  sll        $v0, $v0, 2
/* 6B4FC 8007ACFC 21104600 */  addu       $v0, $v0, $a2
/* 6B500 8007AD00 8A004490 */  lbu        $a0, 0x8a($v0)
/* 6B504 8007AD04 0200E538 */  xori       $a1, $a3, 2
/* 6B508 8007AD08 2B280500 */  sltu       $a1, $zero, $a1
/* 6B50C 8007AD0C 02008238 */  xori       $v0, $a0, 2
/* 6B510 8007AD10 2B100200 */  sltu       $v0, $zero, $v0
/* 6B514 8007AD14 2428A200 */  and        $a1, $a1, $v0
/* 6B518 8007AD18 0900A010 */  beqz       $a1, .L8007AD40
/* 6B51C 8007AD1C 0A00E338 */   xori      $v1, $a3, 0xa
/* 6B520 8007AD20 0100632C */  sltiu      $v1, $v1, 1
/* 6B524 8007AD24 0A008238 */  xori       $v0, $a0, 0xa
/* 6B528 8007AD28 0100422C */  sltiu      $v0, $v0, 1
/* 6B52C 8007AD2C 25186200 */  or         $v1, $v1, $v0
/* 6B530 8007AD30 04006010 */  beqz       $v1, .L8007AD44
/* 6B534 8007AD34 04000524 */   addiu     $a1, $zero, 4
/* 6B538 8007AD38 51EB0108 */  j          .L8007AD44
/* 6B53C 8007AD3C 06000524 */   addiu     $a1, $zero, 6
.L8007AD40:
/* 6B540 8007AD40 08000524 */  addiu      $a1, $zero, 8
.L8007AD44:
/* 6B544 8007AD44 FFFF063C */  lui        $a2, 0xffff
/* 6B548 8007AD48 FF00C634 */  ori        $a2, $a2, 0xff
/* 6B54C 8007AD4C 3000A48F */  lw         $a0, 0x30($sp)
/* 6B550 8007AD50 F0FF0224 */  addiu      $v0, $zero, -0x10
/* 6B554 8007AD54 24208200 */  and        $a0, $a0, $v0
/* 6B558 8007AD58 25208500 */  or         $a0, $a0, $a1
/* 6B55C 8007AD5C 0FFF0224 */  addiu      $v0, $zero, -0xf1
/* 6B560 8007AD60 24208200 */  and        $a0, $a0, $v0
/* 6B564 8007AD64 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6B568 8007AD68 28004524 */  addiu      $a1, $v0, %lo(D_800F0028)
/* 6B56C 8007AD6C 21105E01 */  addu       $v0, $t2, $fp
/* 6B570 8007AD70 C0190200 */  sll        $v1, $v0, 7
/* 6B574 8007AD74 21104300 */  addu       $v0, $v0, $v1
/* 6B578 8007AD78 40110200 */  sll        $v0, $v0, 5
/* 6B57C 8007AD7C 23105E00 */  subu       $v0, $v0, $fp
/* 6B580 8007AD80 80100200 */  sll        $v0, $v0, 2
/* 6B584 8007AD84 21284500 */  addu       $a1, $v0, $a1
/* 6B588 8007AD88 10008434 */  ori        $a0, $a0, 0x10
/* 6B58C 8007AD8C 8800A390 */  lbu        $v1, 0x88($a1)
/* 6B590 8007AD90 24208600 */  and        $a0, $a0, $a2
/* 6B594 8007AD94 00120300 */  sll        $v0, $v1, 8
/* 6B598 8007AD98 25108200 */  or         $v0, $a0, $v0
/* 6B59C 8007AD9C 04000424 */  addiu      $a0, $zero, 4
/* 6B5A0 8007ADA0 04006414 */  bne        $v1, $a0, .L8007ADB4
/* 6B5A4 8007ADA4 3000A2AF */   sw        $v0, 0x30($sp)
/* 6B5A8 8007ADA8 24104600 */  and        $v0, $v0, $a2
/* 6B5AC 8007ADAC 00054234 */  ori        $v0, $v0, 0x500
/* 6B5B0 8007ADB0 3000A2AF */  sw         $v0, 0x30($sp)
.L8007ADB4:
/* 6B5B4 8007ADB4 8800A390 */  lbu        $v1, 0x88($a1)
/* 6B5B8 8007ADB8 07000224 */  addiu      $v0, $zero, 7
/* 6B5BC 8007ADBC 0B006214 */  bne        $v1, $v0, .L8007ADEC
/* 6B5C0 8007ADC0 0F80033C */   lui       $v1, 0x800f
/* 6B5C4 8007ADC4 3000A38F */  lw         $v1, 0x30($sp)
/* 6B5C8 8007ADC8 00000000 */  nop
/* 6B5CC 8007ADCC 0F006230 */  andi       $v0, $v1, 0xf
/* 6B5D0 8007ADD0 03004414 */  bne        $v0, $a0, .L8007ADE0
/* 6B5D4 8007ADD4 24106600 */   and       $v0, $v1, $a2
/* 6B5D8 8007ADD8 79EB0108 */  j          .L8007ADE4
/* 6B5DC 8007ADDC 00044234 */   ori       $v0, $v0, 0x400
.L8007ADE0:
/* 6B5E0 8007ADE0 00014234 */  ori        $v0, $v0, 0x100
.L8007ADE4:
/* 6B5E4 8007ADE4 3000A2AF */  sw         $v0, 0x30($sp)
/* 6B5E8 8007ADE8 0F80033C */  lui        $v1, %hi(D_800F0028)
.L8007ADEC:
/* 6B5EC 8007ADEC 28006724 */  addiu      $a3, $v1, %lo(D_800F0028)
/* 6B5F0 8007ADF0 21105E01 */  addu       $v0, $t2, $fp
/* 6B5F4 8007ADF4 C0190200 */  sll        $v1, $v0, 7
/* 6B5F8 8007ADF8 21104300 */  addu       $v0, $v0, $v1
/* 6B5FC 8007ADFC 40110200 */  sll        $v0, $v0, 5
/* 6B600 8007AE00 23105E00 */  subu       $v0, $v0, $fp
/* 6B604 8007AE04 80100200 */  sll        $v0, $v0, 2
/* 6B608 8007AE08 21284700 */  addu       $a1, $v0, $a3
/* 6B60C 8007AE0C 8800A390 */  lbu        $v1, 0x88($a1)
/* 6B610 8007AE10 05000224 */  addiu      $v0, $zero, 5
/* 6B614 8007AE14 0C006214 */  bne        $v1, $v0, .L8007AE48
/* 6B618 8007AE18 FFFF043C */   lui       $a0, 0xffff
/* 6B61C 8007AE1C FF008434 */  ori        $a0, $a0, 0xff
/* 6B620 8007AE20 3000A28F */  lw         $v0, 0x30($sp)
/* 6B624 8007AE24 F0FF0324 */  addiu      $v1, $zero, -0x10
/* 6B628 8007AE28 24104300 */  and        $v0, $v0, $v1
/* 6B62C 8007AE2C 04004234 */  ori        $v0, $v0, 4
/* 6B630 8007AE30 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 6B634 8007AE34 24104300 */  and        $v0, $v0, $v1
/* 6B638 8007AE38 20004234 */  ori        $v0, $v0, 0x20
/* 6B63C 8007AE3C 24104400 */  and        $v0, $v0, $a0
/* 6B640 8007AE40 00104234 */  ori        $v0, $v0, 0x1000
/* 6B644 8007AE44 3000A2AF */  sw         $v0, 0x30($sp)
.L8007AE48:
/* 6B648 8007AE48 8E00A384 */  lh         $v1, 0x8e($a1)
/* 6B64C 8007AE4C FFFF0224 */  addiu      $v0, $zero, -1
/* 6B650 8007AE50 3C006210 */  beq        $v1, $v0, .L8007AF44
/* 6B654 8007AE54 21580000 */   addu      $t3, $zero, $zero
/* 6B658 8007AE58 01000424 */  addiu      $a0, $zero, 1
/* 6B65C 8007AE5C 23209E00 */  subu       $a0, $a0, $fp
/* 6B660 8007AE60 80100400 */  sll        $v0, $a0, 2
/* 6B664 8007AE64 21104400 */  addu       $v0, $v0, $a0
/* 6B668 8007AE68 C0190200 */  sll        $v1, $v0, 7
/* 6B66C 8007AE6C 21104300 */  addu       $v0, $v0, $v1
/* 6B670 8007AE70 40110200 */  sll        $v0, $v0, 5
/* 6B674 8007AE74 23104400 */  subu       $v0, $v0, $a0
/* 6B678 8007AE78 80100200 */  sll        $v0, $v0, 2
/* 6B67C 8007AE7C 21104700 */  addu       $v0, $v0, $a3
/* 6B680 8007AE80 8A00A690 */  lbu        $a2, 0x8a($a1)
/* 6B684 8007AE84 8A004490 */  lbu        $a0, 0x8a($v0)
/* 6B688 8007AE88 0200C538 */  xori       $a1, $a2, 2
/* 6B68C 8007AE8C 2B280500 */  sltu       $a1, $zero, $a1
/* 6B690 8007AE90 02008238 */  xori       $v0, $a0, 2
/* 6B694 8007AE94 2B100200 */  sltu       $v0, $zero, $v0
/* 6B698 8007AE98 2428A200 */  and        $a1, $a1, $v0
/* 6B69C 8007AE9C 0900A010 */  beqz       $a1, .L8007AEC4
/* 6B6A0 8007AEA0 0A00C338 */   xori      $v1, $a2, 0xa
/* 6B6A4 8007AEA4 0100632C */  sltiu      $v1, $v1, 1
/* 6B6A8 8007AEA8 0A008238 */  xori       $v0, $a0, 0xa
/* 6B6AC 8007AEAC 0100422C */  sltiu      $v0, $v0, 1
/* 6B6B0 8007AEB0 25186200 */  or         $v1, $v1, $v0
/* 6B6B4 8007AEB4 04006010 */  beqz       $v1, .L8007AEC8
/* 6B6B8 8007AEB8 04000524 */   addiu     $a1, $zero, 4
/* 6B6BC 8007AEBC B2EB0108 */  j          .L8007AEC8
/* 6B6C0 8007AEC0 06000524 */   addiu     $a1, $zero, 6
.L8007AEC4:
/* 6B6C4 8007AEC4 08000524 */  addiu      $a1, $zero, 8
.L8007AEC8:
/* 6B6C8 8007AEC8 3000A28F */  lw         $v0, 0x30($sp)
/* 6B6CC 8007AECC F0FF0324 */  addiu      $v1, $zero, -0x10
/* 6B6D0 8007AED0 24104300 */  and        $v0, $v0, $v1
/* 6B6D4 8007AED4 25104500 */  or         $v0, $v0, $a1
/* 6B6D8 8007AED8 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 6B6DC 8007AEDC 2800A424 */  addiu      $a0, $a1, %lo(D_800F0028)
/* 6B6E0 8007AEE0 3000A2AF */  sw         $v0, 0x30($sp)
/* 6B6E4 8007AEE4 21105E01 */  addu       $v0, $t2, $fp
/* 6B6E8 8007AEE8 C0190200 */  sll        $v1, $v0, 7
/* 6B6EC 8007AEEC 21104300 */  addu       $v0, $v0, $v1
/* 6B6F0 8007AEF0 40110200 */  sll        $v0, $v0, 5
/* 6B6F4 8007AEF4 23105E00 */  subu       $v0, $v0, $fp
/* 6B6F8 8007AEF8 80100200 */  sll        $v0, $v0, 2
/* 6B6FC 8007AEFC 21104400 */  addu       $v0, $v0, $a0
/* 6B700 8007AF00 8A004490 */  lbu        $a0, 0x8a($v0)
/* 6B704 8007AF04 05000324 */  addiu      $v1, $zero, 5
/* 6B708 8007AF08 03008310 */  beq        $a0, $v1, .L8007AF18
/* 6B70C 8007AF0C 01000224 */   addiu     $v0, $zero, 1
/* 6B710 8007AF10 02008214 */  bne        $a0, $v0, .L8007AF1C
/* 6B714 8007AF14 01000524 */   addiu     $a1, $zero, 1
.L8007AF18:
/* 6B718 8007AF18 02000524 */  addiu      $a1, $zero, 2
.L8007AF1C:
/* 6B71C 8007AF1C FFFF043C */  lui        $a0, 0xffff
/* 6B720 8007AF20 FF008434 */  ori        $a0, $a0, 0xff
/* 6B724 8007AF24 00290500 */  sll        $a1, $a1, 4
/* 6B728 8007AF28 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 6B72C 8007AF2C 3000A28F */  lw         $v0, 0x30($sp)
/* 6B730 8007AF30 4C00AB8F */  lw         $t3, 0x4c($sp)
/* 6B734 8007AF34 24104300 */  and        $v0, $v0, $v1
/* 6B738 8007AF38 25104500 */  or         $v0, $v0, $a1
/* 6B73C 8007AF3C 24104400 */  and        $v0, $v0, $a0
/* 6B740 8007AF40 3000A2AF */  sw         $v0, 0x30($sp)
.L8007AF44:
/* 6B744 8007AF44 53006015 */  bnez       $t3, .L8007B094
/* 6B748 8007AF48 21600000 */   addu      $t4, $zero, $zero
/* 6B74C 8007AF4C 03000624 */  addiu      $a2, $zero, 3
/* 6B750 8007AF50 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6B754 8007AF54 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 6B758 8007AF58 21185E01 */  addu       $v1, $t2, $fp
/* 6B75C 8007AF5C C0210300 */  sll        $a0, $v1, 7
/* 6B760 8007AF60 21186400 */  addu       $v1, $v1, $a0
/* 6B764 8007AF64 40190300 */  sll        $v1, $v1, 5
/* 6B768 8007AF68 23187E00 */  subu       $v1, $v1, $fp
/* 6B76C 8007AF6C 80180300 */  sll        $v1, $v1, 2
/* 6B770 8007AF70 21386200 */  addu       $a3, $v1, $v0
.L8007AF74:
/* 6B774 8007AF74 B800A48F */  lw         $a0, 0xb8($sp)
/* 6B778 8007AF78 00000000 */  nop
/* 6B77C 8007AF7C 0000828C */  lw         $v0, ($a0)
/* 6B780 8007AF80 00000000 */  nop
/* 6B784 8007AF84 14004010 */  beqz       $v0, .L8007AFD8
/* 6B788 8007AF88 00000000 */   nop
/* 6B78C 8007AF8C ECEB0108 */  j          .L8007AFB0
/* 6B790 8007AF90 00000000 */   nop
.L8007AF94:
/* 6B794 8007AF94 0000828C */  lw         $v0, ($a0)
/* 6B798 8007AF98 00000000 */  nop
/* 6B79C 8007AF9C 21208200 */  addu       $a0, $a0, $v0
/* 6B7A0 8007AFA0 0000838C */  lw         $v1, ($a0)
/* 6B7A4 8007AFA4 00000000 */  nop
/* 6B7A8 8007AFA8 0B006010 */  beqz       $v1, .L8007AFD8
/* 6B7AC 8007AFAC 00000000 */   nop
.L8007AFB0:
/* 6B7B0 8007AFB0 04008294 */  lhu        $v0, 4($a0)
/* 6B7B4 8007AFB4 00000000 */  nop
/* 6B7B8 8007AFB8 F6FF4614 */  bne        $v0, $a2, .L8007AF94
/* 6B7BC 8007AFBC 00000000 */   nop
/* 6B7C0 8007AFC0 3000A397 */  lhu        $v1, 0x30($sp)
/* 6B7C4 8007AFC4 06008294 */  lhu        $v0, 6($a0)
/* 6B7C8 8007AFC8 00000000 */  nop
/* 6B7CC 8007AFCC F1FF6214 */  bne        $v1, $v0, .L8007AF94
/* 6B7D0 8007AFD0 00000000 */   nop
/* 6B7D4 8007AFD4 21588000 */  addu       $t3, $a0, $zero
.L8007AFD8:
/* 6B7D8 8007AFD8 2E006015 */  bnez       $t3, .L8007B094
/* 6B7DC 8007AFDC 21600000 */   addu      $t4, $zero, $zero
/* 6B7E0 8007AFE0 3000A48F */  lw         $a0, 0x30($sp)
/* 6B7E4 8007AFE4 00000000 */  nop
/* 6B7E8 8007AFE8 02110400 */  srl        $v0, $a0, 4
/* 6B7EC 8007AFEC 0F004230 */  andi       $v0, $v0, 0xf
/* 6B7F0 8007AFF0 02004328 */  slti       $v1, $v0, 2
/* 6B7F4 8007AFF4 09006014 */  bnez       $v1, .L8007B01C
/* 6B7F8 8007AFF8 3000A527 */   addiu     $a1, $sp, 0x30
/* 6B7FC 8007AFFC 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 6B800 8007B000 24188300 */  and        $v1, $a0, $v1
/* 6B804 8007B004 FFFF4224 */  addiu      $v0, $v0, -1
/* 6B808 8007B008 0F004230 */  andi       $v0, $v0, 0xf
/* 6B80C 8007B00C 00110200 */  sll        $v0, $v0, 4
/* 6B810 8007B010 25186200 */  or         $v1, $v1, $v0
/* 6B814 8007B014 23EC0108 */  j          .L8007B08C
/* 6B818 8007B018 3000A3AF */   sw        $v1, 0x30($sp)
.L8007B01C:
/* 6B81C 8007B01C 0100A390 */  lbu        $v1, 1($a1)
/* 6B820 8007B020 00000000 */  nop
/* 6B824 8007B024 0200622C */  sltiu      $v0, $v1, 2
/* 6B828 8007B028 0A004014 */  bnez       $v0, .L8007B054
/* 6B82C 8007B02C 0F008230 */   andi      $v0, $a0, 0xf
/* 6B830 8007B030 FFFF6224 */  addiu      $v0, $v1, -1
/* 6B834 8007B034 0100A2A0 */  sb         $v0, 1($a1)
/* 6B838 8007B038 FCFF4224 */  addiu      $v0, $v0, -4
/* 6B83C 8007B03C FF004230 */  andi       $v0, $v0, 0xff
/* 6B840 8007B040 0200422C */  sltiu      $v0, $v0, 2
/* 6B844 8007B044 11004010 */  beqz       $v0, .L8007B08C
/* 6B848 8007B048 00000000 */   nop
/* 6B84C 8007B04C 23EC0108 */  j          .L8007B08C
/* 6B850 8007B050 0100A6A0 */   sb        $a2, 1($a1)
.L8007B054:
/* 6B854 8007B054 02004228 */  slti       $v0, $v0, 2
/* 6B858 8007B058 0C004014 */  bnez       $v0, .L8007B08C
/* 6B85C 8007B05C 00000000 */   nop
/* 6B860 8007B060 8800E290 */  lbu        $v0, 0x88($a3)
/* 6B864 8007B064 00000000 */  nop
/* 6B868 8007B068 0100A2A0 */  sb         $v0, 1($a1)
/* 6B86C 8007B06C 3000A38F */  lw         $v1, 0x30($sp)
/* 6B870 8007B070 F0FF0224 */  addiu      $v0, $zero, -0x10
/* 6B874 8007B074 24106200 */  and        $v0, $v1, $v0
/* 6B878 8007B078 0F006330 */  andi       $v1, $v1, 0xf
/* 6B87C 8007B07C FFFF6324 */  addiu      $v1, $v1, -1
/* 6B880 8007B080 0F006330 */  andi       $v1, $v1, 0xf
/* 6B884 8007B084 25104300 */  or         $v0, $v0, $v1
/* 6B888 8007B088 3000A2AF */  sw         $v0, 0x30($sp)
.L8007B08C:
/* 6B88C 8007B08C B9FF6011 */  beqz       $t3, .L8007AF74
/* 6B890 8007B090 21600000 */   addu      $t4, $zero, $zero
.L8007B094:
/* 6B894 8007B094 FFFF0724 */  addiu      $a3, $zero, -1
/* 6B898 8007B098 21800000 */  addu       $s0, $zero, $zero
/* 6B89C 8007B09C 0F80063C */  lui        $a2, %hi(D_800F02D4)
/* 6B8A0 8007B0A0 D402C524 */  addiu      $a1, $a2, %lo(D_800F02D4)
/* 6B8A4 8007B0A4 21105E01 */  addu       $v0, $t2, $fp
/* 6B8A8 8007B0A8 C0190200 */  sll        $v1, $v0, 7
/* 6B8AC 8007B0AC 21104300 */  addu       $v0, $v0, $v1
/* 6B8B0 8007B0B0 40110200 */  sll        $v0, $v0, 5
/* 6B8B4 8007B0B4 23105E00 */  subu       $v0, $v0, $fp
/* 6B8B8 8007B0B8 80100200 */  sll        $v0, $v0, 2
/* 6B8BC 8007B0BC 21204500 */  addu       $a0, $v0, $a1
/* 6B8C0 8007B0C0 1E008624 */  addiu      $a2, $a0, 0x1e
/* 6B8C4 8007B0C4 FF000824 */  addiu      $t0, $zero, 0xff
/* 6B8C8 8007B0C8 0E00A524 */  addiu      $a1, $a1, 0xe
/* 6B8CC 8007B0CC 21284500 */  addu       $a1, $v0, $a1
/* 6B8D0 8007B0D0 3400A0AF */  sw         $zero, 0x34($sp)
/* 6B8D4 8007B0D4 3800A0AF */  sw         $zero, 0x38($sp)
/* 6B8D8 8007B0D8 3C00A0AF */  sw         $zero, 0x3c($sp)
/* 6B8DC 8007B0DC 4000A0AF */  sw         $zero, 0x40($sp)
/* 6B8E0 8007B0E0 0800638D */  lw         $v1, 8($t3)
/* 6B8E4 8007B0E4 007D0224 */  addiu      $v0, $zero, 0x7d00
/* 6B8E8 8007B0E8 040087A4 */  sh         $a3, 4($a0)
/* 6B8EC 8007B0EC 080087A4 */  sh         $a3, 8($a0)
/* 6B8F0 8007B0F0 0A0082A4 */  sh         $v0, 0xa($a0)
/* 6B8F4 8007B0F4 80180300 */  sll        $v1, $v1, 2
/* 6B8F8 8007B0F8 0C006324 */  addiu      $v1, $v1, 0xc
/* 6B8FC 8007B0FC 21186301 */  addu       $v1, $t3, $v1
/* 6B900 8007B100 5800A3AF */  sw         $v1, 0x58($sp)
.L8007B104:
/* 6B904 8007B104 0000A0A4 */  sh         $zero, ($a1)
/* 6B908 8007B108 0200A524 */  addiu      $a1, $a1, 2
/* 6B90C 8007B10C 2118D000 */  addu       $v1, $a2, $s0
/* 6B910 8007B110 01001026 */  addiu      $s0, $s0, 1
/* 6B914 8007B114 0800022A */  slti       $v0, $s0, 8
/* 6B918 8007B118 FAFF4014 */  bnez       $v0, .L8007B104
/* 6B91C 8007B11C 000068A0 */   sb        $t0, ($v1)
/* 6B920 8007B120 01001524 */  addiu      $s5, $zero, 1
/* 6B924 8007B124 21185E01 */  addu       $v1, $t2, $fp
.L8007B128:
/* 6B928 8007B128 C0110300 */  sll        $v0, $v1, 7
/* 6B92C 8007B12C 21186200 */  addu       $v1, $v1, $v0
/* 6B930 8007B130 40190300 */  sll        $v1, $v1, 5
/* 6B934 8007B134 23187E00 */  subu       $v1, $v1, $fp
/* 6B938 8007B138 80180300 */  sll        $v1, $v1, 2
/* 6B93C 8007B13C 0F800E3C */  lui        $t6, %hi(D_800F02D4)
/* 6B940 8007B140 D402C425 */  addiu      $a0, $t6, %lo(D_800F02D4)
/* 6B944 8007B144 21186400 */  addu       $v1, $v1, $a0
/* 6B948 8007B148 80101500 */  sll        $v0, $s5, 2
/* 6B94C 8007B14C 21105500 */  addu       $v0, $v0, $s5
/* 6B950 8007B150 C0100200 */  sll        $v0, $v0, 3
/* 6B954 8007B154 21906200 */  addu       $s2, $v1, $v0
/* 6B958 8007B158 007D0424 */  addiu      $a0, $zero, 0x7d00
/* 6B95C 8007B15C 0A0044A6 */  sh         $a0, 0xa($s2)
/* 6B960 8007B160 21800000 */  addu       $s0, $zero, $zero
/* 6B964 8007B164 1E004526 */  addiu      $a1, $s2, 0x1e
/* 6B968 8007B168 FF000624 */  addiu      $a2, $zero, 0xff
/* 6B96C 8007B16C 0E004426 */  addiu      $a0, $s2, 0xe
.L8007B170:
/* 6B970 8007B170 000080A4 */  sh         $zero, ($a0)
/* 6B974 8007B174 02008424 */  addiu      $a0, $a0, 2
/* 6B978 8007B178 2118B000 */  addu       $v1, $a1, $s0
/* 6B97C 8007B17C 01001026 */  addiu      $s0, $s0, 1
/* 6B980 8007B180 0800022A */  slti       $v0, $s0, 8
/* 6B984 8007B184 FAFF4014 */  bnez       $v0, .L8007B170
/* 6B988 8007B188 000066A0 */   sb        $a2, ($v1)
/* 6B98C 8007B18C 4800A38F */  lw         $v1, 0x48($sp)
/* 6B990 8007B190 3400A48F */  lw         $a0, 0x34($sp)
/* 6B994 8007B194 0800628C */  lw         $v0, 8($v1)
/* 6B998 8007B198 00000000 */  nop
/* 6B99C 8007B19C 2B108200 */  sltu       $v0, $a0, $v0
/* 6B9A0 8007B1A0 B4014010 */  beqz       $v0, .L8007B874
/* 6B9A4 8007B1A4 80100400 */   sll       $v0, $a0, 2
/* 6B9A8 8007B1A8 4400A58F */  lw         $a1, 0x44($sp)
/* 6B9AC 8007B1AC 4800A68F */  lw         $a2, 0x48($sp)
/* 6B9B0 8007B1B0 3800AE8F */  lw         $t6, 0x38($sp)
/* 6B9B4 8007B1B4 2110C200 */  addu       $v0, $a2, $v0
/* 6B9B8 8007B1B8 0800A38C */  lw         $v1, 8($a1)
/* 6B9BC 8007B1BC 0C00458C */  lw         $a1, 0xc($v0)
/* 6B9C0 8007B1C0 2B18C301 */  sltu       $v1, $t6, $v1
/* 6B9C4 8007B1C4 07006010 */  beqz       $v1, .L8007B1E4
/* 6B9C8 8007B1C8 80100E00 */   sll       $v0, $t6, 2
/* 6B9CC 8007B1CC 4400A38F */  lw         $v1, 0x44($sp)
/* 6B9D0 8007B1D0 00000000 */  nop
/* 6B9D4 8007B1D4 21106200 */  addu       $v0, $v1, $v0
/* 6B9D8 8007B1D8 0C00468C */  lw         $a2, 0xc($v0)
/* 6B9DC 8007B1DC 7AEC0108 */  j          .L8007B1E8
/* 6B9E0 8007B1E0 00000000 */   nop
.L8007B1E4:
/* 6B9E4 8007B1E4 0100A624 */  addiu      $a2, $a1, 1
.L8007B1E8:
/* 6B9E8 8007B1E8 0800628D */  lw         $v0, 8($t3)
/* 6B9EC 8007B1EC 00000000 */  nop
/* 6B9F0 8007B1F0 2B188201 */  sltu       $v1, $t4, $v0
/* 6B9F4 8007B1F4 13006010 */  beqz       $v1, .L8007B244
/* 6B9F8 8007B1F8 21384000 */   addu      $a3, $v0, $zero
/* 6B9FC 8007B1FC 5800A48F */  lw         $a0, 0x58($sp)
/* 6BA00 8007B200 00000000 */  nop
/* 6BA04 8007B204 21108C00 */  addu       $v0, $a0, $t4
/* 6BA08 8007B208 00004390 */  lbu        $v1, ($v0)
/* 6BA0C 8007B20C 00000000 */  nop
/* 6BA10 8007B210 08006014 */  bnez       $v1, .L8007B234
/* 6BA14 8007B214 80100C00 */   sll       $v0, $t4, 2
/* 6BA18 8007B218 4000AE8F */  lw         $t6, 0x40($sp)
/* 6BA1C 8007B21C 00000000 */  nop
/* 6BA20 8007B220 80100E00 */  sll        $v0, $t6, 2
/* 6BA24 8007B224 21106201 */  addu       $v0, $t3, $v0
/* 6BA28 8007B228 0C00448C */  lw         $a0, 0xc($v0)
/* 6BA2C 8007B22C 93EC0108 */  j          .L8007B24C
/* 6BA30 8007B230 2A10A400 */   slt       $v0, $a1, $a0
.L8007B234:
/* 6BA34 8007B234 21106201 */  addu       $v0, $t3, $v0
/* 6BA38 8007B238 0C00448C */  lw         $a0, 0xc($v0)
/* 6BA3C 8007B23C 92EC0108 */  j          .L8007B248
/* 6BA40 8007B240 4000ACAF */   sw        $t4, 0x40($sp)
.L8007B244:
/* 6BA44 8007B244 0100C424 */  addiu      $a0, $a2, 1
.L8007B248:
/* 6BA48 8007B248 2A10A400 */  slt        $v0, $a1, $a0
.L8007B24C:
/* 6BA4C 8007B24C 39004010 */  beqz       $v0, .L8007B334
/* 6BA50 8007B250 2A10A600 */   slt       $v0, $a1, $a2
/* 6BA54 8007B254 38004010 */  beqz       $v0, .L8007B338
/* 6BA58 8007B258 2A108600 */   slt       $v0, $a0, $a2
/* 6BA5C 8007B25C 0C00A01A */  blez       $s5, .L8007B290
/* 6BA60 8007B260 FFFF0224 */   addiu     $v0, $zero, -1
/* 6BA64 8007B264 D8FF428E */  lw         $v0, -0x28($s2)
/* 6BA68 8007B268 00000000 */  nop
/* 6BA6C 8007B26C 08004514 */  bne        $v0, $a1, .L8007B290
/* 6BA70 8007B270 FFFF0224 */   addiu     $v0, $zero, -1
/* 6BA74 8007B274 DCFF4386 */  lh         $v1, -0x24($s2)
/* 6BA78 8007B278 FDFF0224 */  addiu      $v0, $zero, -3
/* 6BA7C 8007B27C 04006214 */  bne        $v1, $v0, .L8007B290
/* 6BA80 8007B280 FFFF0224 */   addiu     $v0, $zero, -1
/* 6BA84 8007B284 D8FF5226 */  addiu      $s2, $s2, -0x28
/* 6BA88 8007B288 A6EC0108 */  j          .L8007B298
/* 6BA8C 8007B28C FFFFB526 */   addiu     $s5, $s5, -1
.L8007B290:
/* 6BA90 8007B290 080042A6 */  sh         $v0, 8($s2)
/* 6BA94 8007B294 000045AE */  sw         $a1, ($s2)
.L8007B298:
/* 6BA98 8007B298 2A10C500 */  slt        $v0, $a2, $a1
/* 6BA9C 8007B29C 1F004014 */  bnez       $v0, .L8007B31C
/* 6BAA0 8007B2A0 FDFF0224 */   addiu     $v0, $zero, -3
/* 6BAA4 8007B2A4 3400A38F */  lw         $v1, 0x34($sp)
/* 6BAA8 8007B2A8 5000A58F */  lw         $a1, 0x50($sp)
/* 6BAAC 8007B2AC 40100300 */  sll        $v0, $v1, 1
/* 6BAB0 8007B2B0 21204500 */  addu       $a0, $v0, $a1
/* 6BAB4 8007B2B4 00008390 */  lbu        $v1, ($a0)
/* 6BAB8 8007B2B8 02000224 */  addiu      $v0, $zero, 2
/* 6BABC 8007B2BC 17006214 */  bne        $v1, $v0, .L8007B31C
/* 6BAC0 8007B2C0 FDFF0224 */   addiu     $v0, $zero, -3
/* 6BAC4 8007B2C4 01008290 */  lbu        $v0, 1($a0)
/* 6BAC8 8007B2C8 00000000 */  nop
/* 6BACC 8007B2CC FFFF4424 */  addiu      $a0, $v0, -1
/* 6BAD0 8007B2D0 0500832C */  sltiu      $v1, $a0, 5
/* 6BAD4 8007B2D4 12006010 */  beqz       $v1, .L8007B320
/* 6BAD8 8007B2D8 0180023C */   lui       $v0, %hi(D_80015754)
/* 6BADC 8007B2DC 54574224 */  addiu      $v0, $v0, %lo(D_80015754)
/* 6BAE0 8007B2E0 80180400 */  sll        $v1, $a0, 2
/* 6BAE4 8007B2E4 21186200 */  addu       $v1, $v1, $v0
/* 6BAE8 8007B2E8 0000648C */  lw         $a0, ($v1)
/* 6BAEC 8007B2EC 00000000 */  nop
/* 6BAF0 8007B2F0 08008000 */  jr         $a0
/* 6BAF4 8007B2F4 00000000 */   nop
/* 6BAF8 8007B2F8 C7EC0108 */  j          .L8007B31C
/* 6BAFC 8007B2FC FBFF0224 */   addiu     $v0, $zero, -5
/* 6BB00 8007B300 C7EC0108 */  j          .L8007B31C
/* 6BB04 8007B304 FAFF0224 */   addiu     $v0, $zero, -6
/* 6BB08 8007B308 C7EC0108 */  j          .L8007B31C
/* 6BB0C 8007B30C F9FF0224 */   addiu     $v0, $zero, -7
/* 6BB10 8007B310 C7EC0108 */  j          .L8007B31C
/* 6BB14 8007B314 FEFF0224 */   addiu     $v0, $zero, -2
/* 6BB18 8007B318 F8FF0224 */  addiu      $v0, $zero, -8
.L8007B31C:
/* 6BB1C 8007B31C 040042A6 */  sh         $v0, 4($s2)
.L8007B320:
/* 6BB20 8007B320 3400A68F */  lw         $a2, 0x34($sp)
/* 6BB24 8007B324 00000000 */  nop
/* 6BB28 8007B328 0100C624 */  addiu      $a2, $a2, 1
/* 6BB2C 8007B32C 0FEE0108 */  j          .L8007B83C
/* 6BB30 8007B330 3400A6AF */   sw        $a2, 0x34($sp)
.L8007B334:
/* 6BB34 8007B334 2A108600 */  slt        $v0, $a0, $a2
.L8007B338:
/* 6BB38 8007B338 0E004014 */  bnez       $v0, .L8007B374
/* 6BB3C 8007B33C 00000000 */   nop
/* 6BB40 8007B340 3800AE8F */  lw         $t6, 0x38($sp)
/* 6BB44 8007B344 5400A38F */  lw         $v1, 0x54($sp)
/* 6BB48 8007B348 80100E00 */  sll        $v0, $t6, 2
/* 6BB4C 8007B34C 21104300 */  addu       $v0, $v0, $v1
/* 6BB50 8007B350 0100CE25 */  addiu      $t6, $t6, 1
/* 6BB54 8007B354 00004394 */  lhu        $v1, ($v0)
/* 6BB58 8007B358 FDFF0224 */  addiu      $v0, $zero, -3
/* 6BB5C 8007B35C 3800AEAF */  sw         $t6, 0x38($sp)
/* 6BB60 8007B360 000046AE */  sw         $a2, ($s2)
/* 6BB64 8007B364 040042A6 */  sh         $v0, 4($s2)
/* 6BB68 8007B368 03006324 */  addiu      $v1, $v1, 3
/* 6BB6C 8007B36C 0FEE0108 */  j          .L8007B83C
/* 6BB70 8007B370 080043A6 */   sh        $v1, 8($s2)
.L8007B374:
/* 6BB74 8007B374 5800A58F */  lw         $a1, 0x58($sp)
/* 6BB78 8007B378 00000000 */  nop
/* 6BB7C 8007B37C 2110AC00 */  addu       $v0, $a1, $t4
/* 6BB80 8007B380 00004390 */  lbu        $v1, ($v0)
/* 6BB84 8007B384 00000000 */  nop
/* 6BB88 8007B388 C8006014 */  bnez       $v1, .L8007B6AC
/* 6BB8C 8007B38C 21B84000 */   addu      $s7, $v0, $zero
/* 6BB90 8007B390 0100E224 */  addiu      $v0, $a3, 1
/* 6BB94 8007B394 42100200 */  srl        $v0, $v0, 1
/* 6BB98 8007B398 40100200 */  sll        $v0, $v0, 1
/* 6BB9C 8007B39C 2110A200 */  addu       $v0, $a1, $v0
/* 6BBA0 8007B3A0 3C00AE8F */  lw         $t6, 0x3c($sp)
/* 6BBA4 8007B3A4 3000A58F */  lw         $a1, 0x30($sp)
/* 6BBA8 8007B3A8 40180E00 */  sll        $v1, $t6, 1
/* 6BBAC 8007B3AC 21186200 */  addu       $v1, $v1, $v0
/* 6BBB0 8007B3B0 02110500 */  srl        $v0, $a1, 4
/* 6BBB4 8007B3B4 0F004230 */  andi       $v0, $v0, 0xf
/* 6BBB8 8007B3B8 00006494 */  lhu        $a0, ($v1)
/* 6BBBC 8007B3BC 02000324 */  addiu      $v1, $zero, 2
/* 6BBC0 8007B3C0 02004314 */  bne        $v0, $v1, .L8007B3CC
/* 6BBC4 8007B3C4 21300000 */   addu      $a2, $zero, $zero
/* 6BBC8 8007B3C8 2130C003 */  addu       $a2, $fp, $zero
.L8007B3CC:
/* 6BBCC 8007B3CC 0F00A330 */  andi       $v1, $a1, 0xf
/* 6BBD0 8007B3D0 04000224 */  addiu      $v0, $zero, 4
/* 6BBD4 8007B3D4 07006214 */  bne        $v1, $v0, .L8007B3F4
/* 6BBD8 8007B3D8 01008225 */   addiu     $v0, $t4, 1
/* 6BBDC 8007B3DC 00FF8330 */  andi       $v1, $a0, 0xff00
/* 6BBE0 8007B3E0 80100600 */  sll        $v0, $a2, 2
/* 6BBE4 8007B3E4 07104400 */  srav       $v0, $a0, $v0
/* 6BBE8 8007B3E8 0F004230 */  andi       $v0, $v0, 0xf
/* 6BBEC 8007B3EC 25206200 */  or         $a0, $v1, $v0
/* 6BBF0 8007B3F0 01008225 */  addiu      $v0, $t4, 1
.L8007B3F4:
/* 6BBF4 8007B3F4 021A0400 */  srl        $v1, $a0, 8
/* 6BBF8 8007B3F8 6800A2AF */  sw         $v0, 0x68($sp)
/* 6BBFC 8007B3FC 01000224 */  addiu      $v0, $zero, 1
/* 6BC00 8007B400 3C00A58F */  lw         $a1, 0x3c($sp)
/* 6BC04 8007B404 FFFFB526 */  addiu      $s5, $s5, -1
/* 6BC08 8007B408 0100A524 */  addiu      $a1, $a1, 1
/* 6BC0C 8007B40C A4006214 */  bne        $v1, $v0, .L8007B6A0
/* 6BC10 8007B410 6C00A5AF */   sw        $a1, 0x6c($sp)
/* 6BC14 8007B414 FF008230 */  andi       $v0, $a0, 0xff
/* 6BC18 8007B418 A1004010 */  beqz       $v0, .L8007B6A0
/* 6BC1C 8007B41C 21904000 */   addu      $s2, $v0, $zero
/* 6BC20 8007B420 9F00A01A */  blez       $s5, .L8007B6A0
/* 6BC24 8007B424 21B8A002 */   addu      $s7, $s5, $zero
/* 6BC28 8007B428 21485E01 */  addu       $t1, $t2, $fp
/* 6BC2C 8007B42C 80101500 */  sll        $v0, $s5, 2
/* 6BC30 8007B430 21105500 */  addu       $v0, $v0, $s5
/* 6BC34 8007B434 C0B00200 */  sll        $s6, $v0, 3
.L8007B438:
/* 6BC38 8007B438 C0110900 */  sll        $v0, $t1, 7
/* 6BC3C 8007B43C 21102201 */  addu       $v0, $t1, $v0
/* 6BC40 8007B440 40110200 */  sll        $v0, $v0, 5
/* 6BC44 8007B444 23105E00 */  subu       $v0, $v0, $fp
/* 6BC48 8007B448 80200200 */  sll        $a0, $v0, 2
/* 6BC4C 8007B44C 0F80063C */  lui        $a2, %hi(D_800F02D4)
/* 6BC50 8007B450 D402C624 */  addiu      $a2, $a2, %lo(D_800F02D4)
/* 6BC54 8007B454 21188600 */  addu       $v1, $a0, $a2
/* 6BC58 8007B458 21987600 */  addu       $s3, $v1, $s6
/* 6BC5C 8007B45C 04006286 */  lh         $v0, 4($s3)
/* 6BC60 8007B460 00000000 */  nop
/* 6BC64 8007B464 8B004004 */  bltz       $v0, .L8007B694
/* 6BC68 8007B468 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 6BC6C 8007B46C 21800000 */  addu       $s0, $zero, $zero
/* 6BC70 8007B470 12800D3C */  lui        $t5, 0x8012
/* 6BC74 8007B474 80400C00 */  sll        $t0, $t4, 2
/* 6BC78 8007B478 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 6BC7C 8007B47C 21388200 */  addu       $a3, $a0, $v0
.L8007B480:
/* 6BC80 8007B480 3000A68F */  lw         $a2, 0x30($sp)
/* 6BC84 8007B484 8900E590 */  lbu        $a1, 0x89($a3)
/* 6BC88 8007B488 21200002 */  addu       $a0, $s0, $zero
/* 6BC8C 8007B48C 7000A7AF */  sw         $a3, 0x70($sp)
/* 6BC90 8007B490 7400A8AF */  sw         $t0, 0x74($sp)
/* 6BC94 8007B494 7800A9AF */  sw         $t1, 0x78($sp)
/* 6BC98 8007B498 7C00AAAF */  sw         $t2, 0x7c($sp)
/* 6BC9C 8007B49C 8000ABAF */  sw         $t3, 0x80($sp)
/* 6BCA0 8007B4A0 8400ACAF */  sw         $t4, 0x84($sp)
/* 6BCA4 8007B4A4 8800ADAF */  sw         $t5, 0x88($sp)
/* 6BCA8 8007B4A8 E6F0010C */  jal        FUN_8007c398
/* 6BCAC 8007B4AC 0F00C630 */   andi      $a2, $a2, 0xf
/* 6BCB0 8007B4B0 21A04000 */  addu       $s4, $v0, $zero
/* 6BCB4 8007B4B4 04006386 */  lh         $v1, 4($s3)
/* 6BCB8 8007B4B8 8800AD8F */  lw         $t5, 0x88($sp)
/* 6BCBC 8007B4BC 7000A78F */  lw         $a3, 0x70($sp)
/* 6BCC0 8007B4C0 7400A88F */  lw         $t0, 0x74($sp)
/* 6BCC4 8007B4C4 7800A98F */  lw         $t1, 0x78($sp)
/* 6BCC8 8007B4C8 7C00AA8F */  lw         $t2, 0x7c($sp)
/* 6BCCC 8007B4CC 8000AB8F */  lw         $t3, 0x80($sp)
/* 6BCD0 8007B4D0 8400AC8F */  lw         $t4, 0x84($sp)
/* 6BCD4 8007B4D4 40100300 */  sll        $v0, $v1, 1
/* 6BCD8 8007B4D8 21104300 */  addu       $v0, $v0, $v1
/* 6BCDC 8007B4DC C0100200 */  sll        $v0, $v0, 3
/* 6BCE0 8007B4E0 4A86A325 */  addiu      $v1, $t5, -0x79b6
/* 6BCE4 8007B4E4 21284300 */  addu       $a1, $v0, $v1
/* 6BCE8 8007B4E8 2120B000 */  addu       $a0, $a1, $s0
/* 6BCEC 8007B4EC 00008390 */  lbu        $v1, ($a0)
/* 6BCF0 8007B4F0 01000224 */  addiu      $v0, $zero, 1
/* 6BCF4 8007B4F4 5F006214 */  bne        $v1, $v0, .L8007B674
/* 6BCF8 8007B4F8 07109202 */   srav      $v0, $s2, $s4
/* 6BCFC 8007B4FC 01004230 */  andi       $v0, $v0, 1
/* 6BD00 8007B500 5C004010 */  beqz       $v0, .L8007B674
/* 6BD04 8007B504 0300033C */   lui       $v1, 3
/* 6BD08 8007B508 0300AE88 */  lwl        $t6, 3($a1)
/* 6BD0C 8007B50C 0000AE98 */  lwr        $t6, ($a1)
/* 6BD10 8007B510 0700A288 */  lwl        $v0, 7($a1)
/* 6BD14 8007B514 0400A298 */  lwr        $v0, 4($a1)
/* 6BD18 8007B518 0B00A488 */  lwl        $a0, 0xb($a1)
/* 6BD1C 8007B51C 0800A498 */  lwr        $a0, 8($a1)
/* 6BD20 8007B520 0F00A688 */  lwl        $a2, 0xf($a1)
/* 6BD24 8007B524 0C00A698 */  lwr        $a2, 0xc($a1)
/* 6BD28 8007B528 1300AEAB */  swl        $t6, 0x13($sp)
/* 6BD2C 8007B52C 1000AEBB */  swr        $t6, 0x10($sp)
/* 6BD30 8007B530 1700A2AB */  swl        $v0, 0x17($sp)
/* 6BD34 8007B534 1400A2BB */  swr        $v0, 0x14($sp)
/* 6BD38 8007B538 1B00A4AB */  swl        $a0, 0x1b($sp)
/* 6BD3C 8007B53C 1800A4BB */  swr        $a0, 0x18($sp)
/* 6BD40 8007B540 1F00A6AB */  swl        $a2, 0x1f($sp)
/* 6BD44 8007B544 1C00A6BB */  swr        $a2, 0x1c($sp)
/* 6BD48 8007B548 1300AE88 */  lwl        $t6, 0x13($a1)
/* 6BD4C 8007B54C 1000AE98 */  lwr        $t6, 0x10($a1)
/* 6BD50 8007B550 1700A288 */  lwl        $v0, 0x17($a1)
/* 6BD54 8007B554 1400A298 */  lwr        $v0, 0x14($a1)
/* 6BD58 8007B558 2300AEAB */  swl        $t6, 0x23($sp)
/* 6BD5C 8007B55C 2000AEBB */  swr        $t6, 0x20($sp)
/* 6BD60 8007B560 2700A2AB */  swl        $v0, 0x27($sp)
/* 6BD64 8007B564 2400A2BB */  swr        $v0, 0x24($sp)
/* 6BD68 8007B568 21106801 */  addu       $v0, $t3, $t0
/* 6BD6C 8007B56C 0C00458C */  lw         $a1, 0xc($v0)
/* 6BD70 8007B570 0000648E */  lw         $a0, ($s3)
/* 6BD74 8007B574 FFFF6334 */  ori        $v1, $v1, 0xffff
/* 6BD78 8007B578 2328A400 */  subu       $a1, $a1, $a0
/* 6BD7C 8007B57C 2A186500 */  slt        $v1, $v1, $a1
/* 6BD80 8007B580 03006010 */  beqz       $v1, .L8007B590
/* 6BD84 8007B584 00000000 */   nop
/* 6BD88 8007B588 0300053C */  lui        $a1, 3
/* 6BD8C 8007B58C FFFFA534 */  ori        $a1, $a1, 0xffff
.L8007B590:
/* 6BD90 8007B590 0200A104 */  bgez       $a1, .L8007B59C
/* 6BD94 8007B594 40101000 */   sll       $v0, $s0, 1
/* 6BD98 8007B598 21280000 */  addu       $a1, $zero, $zero
.L8007B59C:
/* 6BD9C 8007B59C 1800A427 */  addiu      $a0, $sp, 0x18
/* 6BDA0 8007B5A0 21108200 */  addu       $v0, $a0, $v0
/* 6BDA4 8007B5A4 83180500 */  sra        $v1, $a1, 2
/* 6BDA8 8007B5A8 000043A4 */  sh         $v1, ($v0)
/* 6BDAC 8007B5AC 21880000 */  addu       $s1, $zero, $zero
/* 6BDB0 8007B5B0 1000A527 */  addiu      $a1, $sp, 0x10
/* 6BDB4 8007B5B4 01000624 */  addiu      $a2, $zero, 1
.L8007B5B8:
/* 6BDB8 8007B5B8 2110B100 */  addu       $v0, $a1, $s1
/* 6BDBC 8007B5BC 00004390 */  lbu        $v1, ($v0)
/* 6BDC0 8007B5C0 00000000 */  nop
/* 6BDC4 8007B5C4 06006614 */  bne        $v1, $a2, .L8007B5E0
/* 6BDC8 8007B5C8 00000000 */   nop
/* 6BDCC 8007B5CC 00008294 */  lhu        $v0, ($a0)
/* 6BDD0 8007B5D0 00000000 */  nop
/* 6BDD4 8007B5D4 02004014 */  bnez       $v0, .L8007B5E0
/* 6BDD8 8007B5D8 00000000 */   nop
/* 6BDDC 8007B5DC 000083A4 */  sh         $v1, ($a0)
.L8007B5E0:
/* 6BDE0 8007B5E0 01003126 */  addiu      $s1, $s1, 1
/* 6BDE4 8007B5E4 0800222A */  slti       $v0, $s1, 8
/* 6BDE8 8007B5E8 F3FF4014 */  bnez       $v0, .L8007B5B8
/* 6BDEC 8007B5EC 02008424 */   addiu     $a0, $a0, 2
/* 6BDF0 8007B5F0 1000A427 */  addiu      $a0, $sp, 0x10
/* 6BDF4 8007B5F4 7000A7AF */  sw         $a3, 0x70($sp)
/* 6BDF8 8007B5F8 7400A8AF */  sw         $t0, 0x74($sp)
/* 6BDFC 8007B5FC 7800A9AF */  sw         $t1, 0x78($sp)
/* 6BE00 8007B600 7C00AAAF */  sw         $t2, 0x7c($sp)
/* 6BE04 8007B604 8000ABAF */  sw         $t3, 0x80($sp)
/* 6BE08 8007B608 8400ACAF */  sw         $t4, 0x84($sp)
/* 6BE0C 8007B60C 6DF0010C */  jal        FUN_8007c1b4
/* 6BE10 8007B610 8800ADAF */   sw        $t5, 0x88($sp)
/* 6BE14 8007B614 040062A6 */  sh         $v0, 4($s3)
/* 6BE18 8007B618 00140200 */  sll        $v0, $v0, 0x10
/* 6BE1C 8007B61C 03140200 */  sra        $v0, $v0, 0x10
/* 6BE20 8007B620 FDFF0324 */  addiu      $v1, $zero, -3
/* 6BE24 8007B624 7000A78F */  lw         $a3, 0x70($sp)
/* 6BE28 8007B628 7400A88F */  lw         $t0, 0x74($sp)
/* 6BE2C 8007B62C 7800A98F */  lw         $t1, 0x78($sp)
/* 6BE30 8007B630 7C00AA8F */  lw         $t2, 0x7c($sp)
/* 6BE34 8007B634 8000AB8F */  lw         $t3, 0x80($sp)
/* 6BE38 8007B638 8400AC8F */  lw         $t4, 0x84($sp)
/* 6BE3C 8007B63C 8800AD8F */  lw         $t5, 0x88($sp)
/* 6BE40 8007B640 03004314 */  bne        $v0, $v1, .L8007B650
/* 6BE44 8007B644 25006226 */   addiu     $v0, $s3, 0x25
/* 6BE48 8007B648 A3ED0108 */  j          .L8007B68C
/* 6BE4C 8007B64C 21900000 */   addu      $s2, $zero, $zero
.L8007B650:
/* 6BE50 8007B650 07001124 */  addiu      $s1, $zero, 7
.L8007B654:
/* 6BE54 8007B654 000040A0 */  sb         $zero, ($v0)
/* 6BE58 8007B658 FFFF3126 */  addiu      $s1, $s1, -1
/* 6BE5C 8007B65C FDFF2106 */  bgez       $s1, .L8007B654
/* 6BE60 8007B660 FFFF4224 */   addiu     $v0, $v0, -1
/* 6BE64 8007B664 01000224 */  addiu      $v0, $zero, 1
/* 6BE68 8007B668 04108202 */  sllv       $v0, $v0, $s4
/* 6BE6C 8007B66C 27100200 */  nor        $v0, $zero, $v0
/* 6BE70 8007B670 24904202 */  and        $s2, $s2, $v0
.L8007B674:
/* 6BE74 8007B674 0A004012 */  beqz       $s2, .L8007B6A0
/* 6BE78 8007B678 00000000 */   nop
/* 6BE7C 8007B67C 01001026 */  addiu      $s0, $s0, 1
/* 6BE80 8007B680 0800022A */  slti       $v0, $s0, 8
/* 6BE84 8007B684 7EFF4014 */  bnez       $v0, .L8007B480
/* 6BE88 8007B688 00000000 */   nop
.L8007B68C:
/* 6BE8C 8007B68C 04004012 */  beqz       $s2, .L8007B6A0
/* 6BE90 8007B690 00000000 */   nop
.L8007B694:
/* 6BE94 8007B694 FFFFF726 */  addiu      $s7, $s7, -1
/* 6BE98 8007B698 67FFE01E */  bgtz       $s7, .L8007B438
/* 6BE9C 8007B69C D8FFD626 */   addiu     $s6, $s6, -0x28
.L8007B6A0:
/* 6BEA0 8007B6A0 6C00AE8F */  lw         $t6, 0x6c($sp)
/* 6BEA4 8007B6A4 0EEE0108 */  j          .L8007B838
/* 6BEA8 8007B6A8 3C00AEAF */   sw        $t6, 0x3c($sp)
.L8007B6AC:
/* 6BEAC 8007B6AC 1600A01A */  blez       $s5, .L8007B708
/* 6BEB0 8007B6B0 FFFF0224 */   addiu     $v0, $zero, -1
/* 6BEB4 8007B6B4 D8FF428E */  lw         $v0, -0x28($s2)
/* 6BEB8 8007B6B8 00000000 */  nop
/* 6BEBC 8007B6BC 12004414 */  bne        $v0, $a0, .L8007B708
/* 6BEC0 8007B6C0 FFFF0224 */   addiu     $v0, $zero, -1
/* 6BEC4 8007B6C4 DCFF4386 */  lh         $v1, -0x24($s2)
/* 6BEC8 8007B6C8 FDFF0224 */  addiu      $v0, $zero, -3
/* 6BECC 8007B6CC 0E006214 */  bne        $v1, $v0, .L8007B708
/* 6BED0 8007B6D0 FFFF0224 */   addiu     $v0, $zero, -1
/* 6BED4 8007B6D4 FFFFB526 */  addiu      $s5, $s5, -1
/* 6BED8 8007B6D8 0D00A01A */  blez       $s5, .L8007B710
/* 6BEDC 8007B6DC D8FF5226 */   addiu     $s2, $s2, -0x28
/* 6BEE0 8007B6E0 D8FF428E */  lw         $v0, -0x28($s2)
/* 6BEE4 8007B6E4 00000000 */  nop
/* 6BEE8 8007B6E8 0A004414 */  bne        $v0, $a0, .L8007B714
/* 6BEEC 8007B6EC 07001124 */   addiu     $s1, $zero, 7
/* 6BEF0 8007B6F0 DCFF4286 */  lh         $v0, -0x24($s2)
/* 6BEF4 8007B6F4 00000000 */  nop
/* 6BEF8 8007B6F8 06004314 */  bne        $v0, $v1, .L8007B714
/* 6BEFC 8007B6FC 00000000 */   nop
/* 6BF00 8007B700 C5ED0108 */  j          .L8007B714
/* 6BF04 8007B704 D8FF5226 */   addiu     $s2, $s2, -0x28
.L8007B708:
/* 6BF08 8007B708 080042A6 */  sh         $v0, 8($s2)
/* 6BF0C 8007B70C 000044AE */  sw         $a0, ($s2)
.L8007B710:
/* 6BF10 8007B710 07001124 */  addiu      $s1, $zero, 7
.L8007B714:
/* 6BF14 8007B714 3000A48F */  lw         $a0, 0x30($sp)
/* 6BF18 8007B718 02000324 */  addiu      $v1, $zero, 2
/* 6BF1C 8007B71C 02110400 */  srl        $v0, $a0, 4
/* 6BF20 8007B720 0F004230 */  andi       $v0, $v0, 0xf
/* 6BF24 8007B724 02004314 */  bne        $v0, $v1, .L8007B730
/* 6BF28 8007B728 21280000 */   addu      $a1, $zero, $zero
/* 6BF2C 8007B72C 2128C003 */  addu       $a1, $fp, $zero
.L8007B730:
/* 6BF30 8007B730 01008C25 */  addiu      $t4, $t4, 1
/* 6BF34 8007B734 6800ACAF */  sw         $t4, 0x68($sp)
/* 6BF38 8007B738 0F008330 */  andi       $v1, $a0, 0xf
/* 6BF3C 8007B73C 04000224 */  addiu      $v0, $zero, 4
/* 6BF40 8007B740 08006214 */  bne        $v1, $v0, .L8007B764
/* 6BF44 8007B744 1800B627 */   addiu     $s6, $sp, 0x18
/* 6BF48 8007B748 1000A327 */  addiu      $v1, $sp, 0x10
/* 6BF4C 8007B74C 21107100 */  addu       $v0, $v1, $s1
.L8007B750:
/* 6BF50 8007B750 000040A0 */  sb         $zero, ($v0)
/* 6BF54 8007B754 FFFF3126 */  addiu      $s1, $s1, -1
/* 6BF58 8007B758 0400222A */  slti       $v0, $s1, 4
/* 6BF5C 8007B75C FCFF4010 */  beqz       $v0, .L8007B750
/* 6BF60 8007B760 21107100 */   addu      $v0, $v1, $s1
.L8007B764:
/* 6BF64 8007B764 21002006 */  bltz       $s1, .L8007B7EC
/* 6BF68 8007B768 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6BF6C 8007B76C 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6BF70 8007B770 21105E01 */  addu       $v0, $t2, $fp
/* 6BF74 8007B774 C0190200 */  sll        $v1, $v0, 7
/* 6BF78 8007B778 21104300 */  addu       $v0, $v0, $v1
/* 6BF7C 8007B77C 40110200 */  sll        $v0, $v0, 5
/* 6BF80 8007B780 23105E00 */  subu       $v0, $v0, $fp
/* 6BF84 8007B784 80100200 */  sll        $v0, $v0, 2
/* 6BF88 8007B788 21A04400 */  addu       $s4, $v0, $a0
/* 6BF8C 8007B78C 80980500 */  sll        $s3, $a1, 2
/* 6BF90 8007B790 1000A227 */  addiu      $v0, $sp, 0x10
/* 6BF94 8007B794 21805100 */  addu       $s0, $v0, $s1
.L8007B798:
/* 6BF98 8007B798 3000A68F */  lw         $a2, 0x30($sp)
/* 6BF9C 8007B79C 89008592 */  lbu        $a1, 0x89($s4)
/* 6BFA0 8007B7A0 21202002 */  addu       $a0, $s1, $zero
/* 6BFA4 8007B7A4 7C00AAAF */  sw         $t2, 0x7c($sp)
/* 6BFA8 8007B7A8 8000ABAF */  sw         $t3, 0x80($sp)
/* 6BFAC 8007B7AC E6F0010C */  jal        FUN_8007c398
/* 6BFB0 8007B7B0 0F00C630 */   andi      $a2, $a2, 0xf
/* 6BFB4 8007B7B4 21105300 */  addu       $v0, $v0, $s3
/* 6BFB8 8007B7B8 0000E392 */  lbu        $v1, ($s7)
/* 6BFBC 8007B7BC 7C00AA8F */  lw         $t2, 0x7c($sp)
/* 6BFC0 8007B7C0 8000AB8F */  lw         $t3, 0x80($sp)
/* 6BFC4 8007B7C4 07184300 */  srav       $v1, $v1, $v0
/* 6BFC8 8007B7C8 01006330 */  andi       $v1, $v1, 1
/* 6BFCC 8007B7CC 03006010 */  beqz       $v1, .L8007B7DC
/* 6BFD0 8007B7D0 01000224 */   addiu     $v0, $zero, 1
/* 6BFD4 8007B7D4 F8ED0108 */  j          .L8007B7E0
/* 6BFD8 8007B7D8 000002A2 */   sb        $v0, ($s0)
.L8007B7DC:
/* 6BFDC 8007B7DC 000000A2 */  sb         $zero, ($s0)
.L8007B7E0:
/* 6BFE0 8007B7E0 FFFF3126 */  addiu      $s1, $s1, -1
/* 6BFE4 8007B7E4 ECFF2106 */  bgez       $s1, .L8007B798
/* 6BFE8 8007B7E8 FFFF1026 */   addiu     $s0, $s0, -1
.L8007B7EC:
/* 6BFEC 8007B7EC 3000A28F */  lw         $v0, 0x30($sp)
/* 6BFF0 8007B7F0 06000324 */  addiu      $v1, $zero, 6
/* 6BFF4 8007B7F4 0F004230 */  andi       $v0, $v0, 0xf
/* 6BFF8 8007B7F8 03004314 */  bne        $v0, $v1, .L8007B808
/* 6BFFC 8007B7FC 07001024 */   addiu     $s0, $zero, 7
/* 6C000 8007B800 1500A0A3 */  sb         $zero, 0x15($sp)
/* 6C004 8007B804 1700A0A3 */  sb         $zero, 0x17($sp)
.L8007B808:
/* 6C008 8007B808 0E00C226 */  addiu      $v0, $s6, 0xe
.L8007B80C:
/* 6C00C 8007B80C 000040A4 */  sh         $zero, ($v0)
/* 6C010 8007B810 FFFF1026 */  addiu      $s0, $s0, -1
/* 6C014 8007B814 FDFF0106 */  bgez       $s0, .L8007B80C
/* 6C018 8007B818 FEFF4224 */   addiu     $v0, $v0, -2
/* 6C01C 8007B81C 1000A427 */  addiu      $a0, $sp, 0x10
/* 6C020 8007B820 7C00AAAF */  sw         $t2, 0x7c($sp)
/* 6C024 8007B824 6DF0010C */  jal        FUN_8007c1b4
/* 6C028 8007B828 8000ABAF */   sw        $t3, 0x80($sp)
/* 6C02C 8007B82C 040042A6 */  sh         $v0, 4($s2)
/* 6C030 8007B830 8000AB8F */  lw         $t3, 0x80($sp)
/* 6C034 8007B834 7C00AA8F */  lw         $t2, 0x7c($sp)
.L8007B838:
/* 6C038 8007B838 6800AC8F */  lw         $t4, 0x68($sp)
.L8007B83C:
/* 6C03C 8007B83C 3F00A232 */  andi       $v0, $s5, 0x3f
/* 6C040 8007B840 08004014 */  bnez       $v0, .L8007B864
/* 6C044 8007B844 00000000 */   nop
/* 6C048 8007B848 7C00AAAF */  sw         $t2, 0x7c($sp)
/* 6C04C 8007B84C 8000ABAF */  sw         $t3, 0x80($sp)
/* 6C050 8007B850 7CAA000C */  jal        vsync_8002a9f0
/* 6C054 8007B854 8400ACAF */   sw        $t4, 0x84($sp)
/* 6C058 8007B858 8400AC8F */  lw         $t4, 0x84($sp)
/* 6C05C 8007B85C 8000AB8F */  lw         $t3, 0x80($sp)
/* 6C060 8007B860 7C00AA8F */  lw         $t2, 0x7c($sp)
.L8007B864:
/* 6C064 8007B864 0100B526 */  addiu      $s5, $s5, 1
/* 6C068 8007B868 0008A22A */  slti       $v0, $s5, 0x800
/* 6C06C 8007B86C 2EFE4014 */  bnez       $v0, .L8007B128
/* 6C070 8007B870 21185E01 */   addu      $v1, $t2, $fp
.L8007B874:
/* 6C074 8007B874 FFFF0724 */  addiu      $a3, $zero, -1
/* 6C078 8007B878 1C00A01A */  blez       $s5, .L8007B8EC
/* 6C07C 8007B87C 21300000 */   addu      $a2, $zero, $zero
/* 6C080 8007B880 0F80023C */  lui        $v0, %hi(D_800F02D4)
/* 6C084 8007B884 D4024824 */  addiu      $t0, $v0, %lo(D_800F02D4)
/* 6C088 8007B888 21185E01 */  addu       $v1, $t2, $fp
/* 6C08C 8007B88C C0110300 */  sll        $v0, $v1, 7
/* 6C090 8007B890 21186200 */  addu       $v1, $v1, $v0
/* 6C094 8007B894 40190300 */  sll        $v1, $v1, 5
/* 6C098 8007B898 23187E00 */  subu       $v1, $v1, $fp
/* 6C09C 8007B89C 80180300 */  sll        $v1, $v1, 2
/* 6C0A0 8007B8A0 21286800 */  addu       $a1, $v1, $t0
/* 6C0A4 8007B8A4 FFFF0424 */  addiu      $a0, $zero, -1
.L8007B8A8:
/* 6C0A8 8007B8A8 0800A284 */  lh         $v0, 8($a1)
/* 6C0AC 8007B8AC 00000000 */  nop
/* 6C0B0 8007B8B0 0A004004 */  bltz       $v0, .L8007B8DC
/* 6C0B4 8007B8B4 0600A4A4 */   sh        $a0, 6($a1)
/* 6C0B8 8007B8B8 0700E004 */  bltz       $a3, .L8007B8D8
/* 6C0BC 8007B8BC 0600A0A4 */   sh        $zero, 6($a1)
/* 6C0C0 8007B8C0 80100700 */  sll        $v0, $a3, 2
/* 6C0C4 8007B8C4 21104700 */  addu       $v0, $v0, $a3
/* 6C0C8 8007B8C8 C0100200 */  sll        $v0, $v0, 3
/* 6C0CC 8007B8CC 21104300 */  addu       $v0, $v0, $v1
/* 6C0D0 8007B8D0 21104800 */  addu       $v0, $v0, $t0
/* 6C0D4 8007B8D4 060046A4 */  sh         $a2, 6($v0)
.L8007B8D8:
/* 6C0D8 8007B8D8 2138C000 */  addu       $a3, $a2, $zero
.L8007B8DC:
/* 6C0DC 8007B8DC 0100C624 */  addiu      $a2, $a2, 1
/* 6C0E0 8007B8E0 2A10D500 */  slt        $v0, $a2, $s5
/* 6C0E4 8007B8E4 F0FF4014 */  bnez       $v0, .L8007B8A8
/* 6C0E8 8007B8E8 2800A524 */   addiu     $a1, $a1, 0x28
.L8007B8EC:
/* 6C0EC 8007B8EC 80101E00 */  sll        $v0, $fp, 2
/* 6C0F0 8007B8F0 21105E00 */  addu       $v0, $v0, $fp
/* 6C0F4 8007B8F4 C0190200 */  sll        $v1, $v0, 7
/* 6C0F8 8007B8F8 21104300 */  addu       $v0, $v0, $v1
/* 6C0FC 8007B8FC 40110200 */  sll        $v0, $v0, 5
/* 6C100 8007B900 23105E00 */  subu       $v0, $v0, $fp
/* 6C104 8007B904 0100DE27 */  addiu      $fp, $fp, 1
/* 6C108 8007B908 0F80033C */  lui        $v1, %hi(D_800F02D4)
/* 6C10C 8007B90C D4026524 */  addiu      $a1, $v1, %lo(D_800F02D4)
/* 6C110 8007B910 80100200 */  sll        $v0, $v0, 2
/* 6C114 8007B914 2118A200 */  addu       $v1, $a1, $v0
/* 6C118 8007B918 21104500 */  addu       $v0, $v0, $a1
/* 6C11C 8007B91C 2800648C */  lw         $a0, 0x28($v1)
/* 6C120 8007B920 0200C32B */  slti       $v1, $fp, 2
/* 6C124 8007B924 E0FC6014 */  bnez       $v1, .L8007ACA8
/* 6C128 8007B928 000044AC */   sw        $a0, ($v0)
/* 6C12C 8007B92C 21F00000 */  addu       $fp, $zero, $zero
/* 6C130 8007B930 2148A000 */  addu       $t1, $a1, $zero
/* 6C134 8007B934 FEFF0B24 */  addiu      $t3, $zero, -2
/* 6C138 8007B938 FFFF0724 */  addiu      $a3, $zero, -1
.L8007B93C:
/* 6C13C 8007B93C 21300000 */  addu       $a2, $zero, $zero
/* 6C140 8007B940 80501E00 */  sll        $t2, $fp, 2
/* 6C144 8007B944 54EE0108 */  j          .L8007B950
/* 6C148 8007B948 0100C827 */   addiu     $t0, $fp, 1
.L8007B94C:
/* 6C14C 8007B94C 0100C624 */  addiu      $a2, $a2, 1
.L8007B950:
/* 6C150 8007B950 21105E01 */  addu       $v0, $t2, $fp
/* 6C154 8007B954 C0190200 */  sll        $v1, $v0, 7
/* 6C158 8007B958 21104300 */  addu       $v0, $v0, $v1
/* 6C15C 8007B95C 40110200 */  sll        $v0, $v0, 5
/* 6C160 8007B960 23105E00 */  subu       $v0, $v0, $fp
/* 6C164 8007B964 80100200 */  sll        $v0, $v0, 2
/* 6C168 8007B968 21204900 */  addu       $a0, $v0, $t1
/* 6C16C 8007B96C 80180600 */  sll        $v1, $a2, 2
/* 6C170 8007B970 21186600 */  addu       $v1, $v1, $a2
/* 6C174 8007B974 C0180300 */  sll        $v1, $v1, 3
/* 6C178 8007B978 21288300 */  addu       $a1, $a0, $v1
/* 6C17C 8007B97C 0600A284 */  lh         $v0, 6($a1)
/* 6C180 8007B980 00000000 */  nop
/* 6C184 8007B984 06004004 */  bltz       $v0, .L8007B9A0
/* 6C188 8007B988 00000000 */   nop
/* 6C18C 8007B98C 0400E104 */  bgez       $a3, .L8007B9A0
/* 6C190 8007B990 2138C000 */   addu      $a3, $a2, $zero
/* 6C194 8007B994 0200C018 */  blez       $a2, .L8007B9A0
/* 6C198 8007B998 00000000 */   nop
/* 6C19C 8007B99C 060086A4 */  sh         $a2, 6($a0)
.L8007B9A0:
/* 6C1A0 8007B9A0 0400A284 */  lh         $v0, 4($a1)
/* 6C1A4 8007B9A4 00000000 */  nop
/* 6C1A8 8007B9A8 E8FF4B14 */  bne        $v0, $t3, .L8007B94C
/* 6C1AC 8007B9AC 00000000 */   nop
/* 6C1B0 8007B9B0 0600A284 */  lh         $v0, 6($a1)
/* 6C1B4 8007B9B4 00000000 */  nop
/* 6C1B8 8007B9B8 0D004010 */  beqz       $v0, .L8007B9F0
/* 6C1BC 8007B9BC 80100700 */   sll       $v0, $a3, 2
/* 6C1C0 8007B9C0 21104700 */  addu       $v0, $v0, $a3
/* 6C1C4 8007B9C4 C0100200 */  sll        $v0, $v0, 3
/* 6C1C8 8007B9C8 21185E01 */  addu       $v1, $t2, $fp
/* 6C1CC 8007B9CC C0210300 */  sll        $a0, $v1, 7
/* 6C1D0 8007B9D0 21186400 */  addu       $v1, $v1, $a0
/* 6C1D4 8007B9D4 40190300 */  sll        $v1, $v1, 5
/* 6C1D8 8007B9D8 23187E00 */  subu       $v1, $v1, $fp
/* 6C1DC 8007B9DC 80180300 */  sll        $v1, $v1, 2
/* 6C1E0 8007B9E0 21104300 */  addu       $v0, $v0, $v1
/* 6C1E4 8007B9E4 21104900 */  addu       $v0, $v0, $t1
/* 6C1E8 8007B9E8 060046A4 */  sh         $a2, 6($v0)
/* 6C1EC 8007B9EC 0600A0A4 */  sh         $zero, 6($a1)
.L8007B9F0:
/* 6C1F0 8007B9F0 21F00001 */  addu       $fp, $t0, $zero
/* 6C1F4 8007B9F4 0200C22B */  slti       $v0, $fp, 2
/* 6C1F8 8007B9F8 D0FF4014 */  bnez       $v0, .L8007B93C
/* 6C1FC 8007B9FC FFFF0724 */   addiu     $a3, $zero, -1
/* 6C200 8007BA00 58EF010C */  jal        FUN_8007bd60
/* 6C204 8007BA04 00000000 */   nop
/* 6C208 8007BA08 91EE010C */  jal        FUN_8007ba44
/* 6C20C 8007BA0C 00000000 */   nop
/* 6C210 8007BA10 B400BF8F */  lw         $ra, 0xb4($sp)
/* 6C214 8007BA14 B000BE8F */  lw         $fp, 0xb0($sp)
/* 6C218 8007BA18 AC00B78F */  lw         $s7, 0xac($sp)
/* 6C21C 8007BA1C A800B68F */  lw         $s6, 0xa8($sp)
/* 6C220 8007BA20 A400B58F */  lw         $s5, 0xa4($sp)
/* 6C224 8007BA24 A000B48F */  lw         $s4, 0xa0($sp)
/* 6C228 8007BA28 9C00B38F */  lw         $s3, 0x9c($sp)
/* 6C22C 8007BA2C 9800B28F */  lw         $s2, 0x98($sp)
/* 6C230 8007BA30 9400B18F */  lw         $s1, 0x94($sp)
/* 6C234 8007BA34 9000B08F */  lw         $s0, 0x90($sp)
/* 6C238 8007BA38 21100000 */  addu       $v0, $zero, $zero
/* 6C23C 8007BA3C 0800E003 */  jr         $ra
/* 6C240 8007BA40 B800BD27 */   addiu     $sp, $sp, 0xb8
