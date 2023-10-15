.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009a160
/* 8A960 8009A160 50FEBD27 */  addiu      $sp, $sp, -0x1b0
/* 8A964 8009A164 A801BEAF */  sw         $fp, 0x1a8($sp)
/* 8A968 8009A168 21F0A003 */  addu       $fp, $sp, $zero
/* 8A96C 8009A16C 9001B2AF */  sw         $s2, 0x190($sp)
/* 8A970 8009A170 2190C000 */  addu       $s2, $a2, $zero
/* 8A974 8009A174 AC01BFAF */  sw         $ra, 0x1ac($sp)
/* 8A978 8009A178 A401B7AF */  sw         $s7, 0x1a4($sp)
/* 8A97C 8009A17C A001B6AF */  sw         $s6, 0x1a0($sp)
/* 8A980 8009A180 9C01B5AF */  sw         $s5, 0x19c($sp)
/* 8A984 8009A184 9801B4AF */  sw         $s4, 0x198($sp)
/* 8A988 8009A188 9401B3AF */  sw         $s3, 0x194($sp)
/* 8A98C 8009A18C 8C01B1AF */  sw         $s1, 0x18c($sp)
/* 8A990 8009A190 8801B0AF */  sw         $s0, 0x188($sp)
/* 8A994 8009A194 98FEBD27 */  addiu      $sp, $sp, -0x168
/* 8A998 8009A198 2000A227 */  addiu      $v0, $sp, 0x20
/* 8A99C 8009A19C 98FEBD27 */  addiu      $sp, $sp, -0x168
/* 8A9A0 8009A1A0 2000A627 */  addiu      $a2, $sp, 0x20
/* 8A9A4 8009A1A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8A9A8 8009A1A8 2000A827 */  addiu      $t0, $sp, 0x20
/* 8A9AC 8009A1AC C001C38F */  lw         $v1, 0x1c0($fp)
/* 8A9B0 8009A1B0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8A9B4 8009A1B4 B401C5AF */  sw         $a1, 0x1b4($fp)
/* 8A9B8 8009A1B8 FC00C2AF */  sw         $v0, 0xfc($fp)
/* 8A9BC 8009A1BC 2000A227 */  addiu      $v0, $sp, 0x20
/* 8A9C0 8009A1C0 F400C0AF */  sw         $zero, 0xf4($fp)
/* 8A9C4 8009A1C4 F800C0AF */  sw         $zero, 0xf8($fp)
/* 8A9C8 8009A1C8 0001C6AF */  sw         $a2, 0x100($fp)
/* 8A9CC 8009A1CC 0401C8AF */  sw         $t0, 0x104($fp)
/* 8A9D0 8009A1D0 B001C4AF */  sw         $a0, 0x1b0($fp)
/* 8A9D4 8009A1D4 0801C2AF */  sw         $v0, 0x108($fp)
/* 8A9D8 8009A1D8 03006228 */  slti       $v0, $v1, 3
/* 8A9DC 8009A1DC 02004010 */  beqz       $v0, .L8009A1E8
/* 8A9E0 8009A1E0 2128E000 */   addu      $a1, $a3, $zero
/* 8A9E4 8009A1E4 03000324 */  addiu      $v1, $zero, 3
.L8009A1E8:
/* 8A9E8 8009A1E8 2A206500 */  slt        $a0, $v1, $a1
/* 8A9EC 8009A1EC 16008010 */  beqz       $a0, .L8009A248
/* 8A9F0 8009A1F0 1001C4AF */   sw        $a0, 0x110($fp)
/* 8A9F4 8009A1F4 FEFF6424 */  addiu      $a0, $v1, -2
/* 8A9F8 8009A1F8 2310A300 */  subu       $v0, $a1, $v1
/* 8A9FC 8009A1FC FFFF4224 */  addiu      $v0, $v0, -1
/* 8AA00 8009A200 2A188200 */  slt        $v1, $a0, $v0
/* 8AA04 8009A204 03006010 */  beqz       $v1, .L8009A214
/* 8AA08 8009A208 00000000 */   nop
/* 8AA0C 8009A20C 89680208 */  j          .L8009A224
/* 8AA10 8009A210 00130400 */   sll       $v0, $a0, 0xc
.L8009A214:
/* 8AA14 8009A214 03004104 */  bgez       $v0, .L8009A224
/* 8AA18 8009A218 00130200 */   sll       $v0, $v0, 0xc
/* 8AA1C 8009A21C 21100000 */  addu       $v0, $zero, $zero
/* 8AA20 8009A220 00130200 */  sll        $v0, $v0, 0xc
.L8009A224:
/* 8AA24 8009A224 1A004400 */  div        $zero, $v0, $a0
/* 8AA28 8009A228 12100000 */  mflo       $v0
/* 8AA2C 8009A22C 02008014 */  bnez       $a0, .L8009A238
/* 8AA30 8009A230 00000000 */   nop
/* 8AA34 8009A234 CD010000 */  break      0, 7
.L8009A238:
/* 8AA38 8009A238 00100324 */   addiu     $v1, $zero, 0x1000
/* 8AA3C 8009A23C 23486200 */  subu       $t1, $v1, $v0
/* 8AA40 8009A240 A4680208 */  j          .L8009A290
/* 8AA44 8009A244 0C01C9AF */   sw        $t1, 0x10c($fp)
.L8009A248:
/* 8AA48 8009A248 FEFF6724 */  addiu      $a3, $v1, -2
/* 8AA4C 8009A24C FFFFA324 */  addiu      $v1, $a1, -1
/* 8AA50 8009A250 2A10E300 */  slt        $v0, $a3, $v1
/* 8AA54 8009A254 06004014 */  bnez       $v0, .L8009A270
/* 8AA58 8009A258 00130700 */   sll       $v0, $a3, 0xc
/* 8AA5C 8009A25C 21106000 */  addu       $v0, $v1, $zero
/* 8AA60 8009A260 03004104 */  bgez       $v0, .L8009A270
/* 8AA64 8009A264 00130200 */   sll       $v0, $v0, 0xc
/* 8AA68 8009A268 21100000 */  addu       $v0, $zero, $zero
/* 8AA6C 8009A26C 00130200 */  sll        $v0, $v0, 0xc
.L8009A270:
/* 8AA70 8009A270 1A004700 */  div        $zero, $v0, $a3
/* 8AA74 8009A274 12100000 */  mflo       $v0
/* 8AA78 8009A278 0200E014 */  bnez       $a3, .L8009A284
/* 8AA7C 8009A27C 00000000 */   nop
/* 8AA80 8009A280 CD010000 */  break      0, 7
.L8009A284:
/* 8AA84 8009A284 21484000 */   addu      $t1, $v0, $zero
/* 8AA88 8009A288 00100224 */  addiu      $v0, $zero, 0x1000
/* 8AA8C 8009A28C 0C01C2AF */  sw         $v0, 0x10c($fp)
.L8009A290:
/* 8AA90 8009A290 02000A24 */  addiu      $t2, $zero, 2
/* 8AA94 8009A294 1380083C */  lui        $t0, %hi(D_801280E0)
/* 8AA98 8009A298 E0800625 */  addiu      $a2, $t0, %lo(D_801280E0)
/* 8AA9C 8009A29C 70FF0324 */  addiu      $v1, $zero, -0x90
/* 8AAA0 8009A2A0 1380073C */  lui        $a3, %hi(D_801282E0)
/* 8AAA4 8009A2A4 4600C290 */  lbu        $v0, 0x46($a2)
/* 8AAA8 8009A2A8 E082E524 */  addiu      $a1, $a3, %lo(D_801282E0)
/* 8AAAC 8009A2AC E000C3AF */  sw         $v1, 0xe0($fp)
/* 8AAB0 8009A2B0 4500C490 */  lbu        $a0, 0x45($a2)
/* 8AAB4 8009A2B4 C0180200 */  sll        $v1, $v0, 3
/* 8AAB8 8009A2B8 23186200 */  subu       $v1, $v1, $v0
/* 8AABC 8009A2BC 80180300 */  sll        $v1, $v1, 2
/* 8AAC0 8009A2C0 21186500 */  addu       $v1, $v1, $a1
/* 8AAC4 8009A2C4 C0100400 */  sll        $v0, $a0, 3
/* 8AAC8 8009A2C8 23104400 */  subu       $v0, $v0, $a0
/* 8AACC 8009A2CC 80100200 */  sll        $v0, $v0, 2
/* 8AAD0 8009A2D0 1001C48F */  lw         $a0, 0x110($fp)
/* 8AAD4 8009A2D4 21104500 */  addu       $v0, $v0, $a1
/* 8AAD8 8009A2D8 E800C3AF */  sw         $v1, 0xe8($fp)
/* 8AADC 8009A2DC 13008014 */  bnez       $a0, .L8009A32C
/* 8AAE0 8009A2E0 EC00C2AF */   sw        $v0, 0xec($fp)
/* 8AAE4 8009A2E4 00100324 */  addiu      $v1, $zero, 0x1000
/* 8AAE8 8009A2E8 23186900 */  subu       $v1, $v1, $t1
/* 8AAEC 8009A2EC 80100300 */  sll        $v0, $v1, 2
/* 8AAF0 8009A2F0 21104300 */  addu       $v0, $v0, $v1
/* 8AAF4 8009A2F4 C0110200 */  sll        $v0, $v0, 7
/* 8AAF8 8009A2F8 02004104 */  bgez       $v0, .L8009A304
/* 8AAFC 8009A2FC 00000000 */   nop
/* 8AB00 8009A300 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8009A304:
/* 8AB04 8009A304 03130200 */  sra        $v0, $v0, 0xc
/* 8AB08 8009A308 18004300 */  mult       $v0, $v1
/* 8AB0C 8009A30C 12100000 */  mflo       $v0
/* 8AB10 8009A310 02004104 */  bgez       $v0, .L8009A31C
/* 8AB14 8009A314 00000000 */   nop
/* 8AB18 8009A318 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8009A31C:
/* 8AB1C 8009A31C E000C38F */  lw         $v1, 0xe0($fp)
/* 8AB20 8009A320 03130200 */  sra        $v0, $v0, 0xc
/* 8AB24 8009A324 23186200 */  subu       $v1, $v1, $v0
/* 8AB28 8009A328 E000C3AF */  sw         $v1, 0xe0($fp)
.L8009A32C:
/* 8AB2C 8009A32C E000C48F */  lw         $a0, 0xe0($fp)
/* 8AB30 8009A330 21A80000 */  addu       $s5, $zero, $zero
/* 8AB34 8009A334 50FF8424 */  addiu      $a0, $a0, -0xb0
/* 8AB38 8009A338 2801C4AF */  sw         $a0, 0x128($fp)
.L8009A33C:
/* 8AB3C 8009A33C F8FF1724 */  addiu      $s7, $zero, -8
/* 8AB40 8009A340 21A00000 */  addu       $s4, $zero, $zero
/* 8AB44 8009A344 80281500 */  sll        $a1, $s5, 2
/* 8AB48 8009A348 0100A626 */  addiu      $a2, $s5, 1
/* 8AB4C 8009A34C C0101500 */  sll        $v0, $s5, 3
/* 8AB50 8009A350 23105500 */  subu       $v0, $v0, $s5
/* 8AB54 8009A354 80100200 */  sll        $v0, $v0, 2
/* 8AB58 8009A358 21105500 */  addu       $v0, $v0, $s5
/* 8AB5C 8009A35C 80100200 */  sll        $v0, $v0, 2
/* 8AB60 8009A360 0F80073C */  lui        $a3, %hi(D_800EBFB0)
/* 8AB64 8009A364 B0BFE324 */  addiu      $v1, $a3, %lo(D_800EBFB0)
/* 8AB68 8009A368 21104300 */  addu       $v0, $v0, $v1
/* 8AB6C 8009A36C 1B80083C */  lui        $t0, %hi(D_801B2B5C)
/* 8AB70 8009A370 58FF4325 */  addiu      $v1, $t2, -0xa8
/* 8AB74 8009A374 5401C5AF */  sw         $a1, 0x154($fp)
/* 8AB78 8009A378 4401C6AF */  sw         $a2, 0x144($fp)
/* 8AB7C 8009A37C 5C2B02AD */  sw         $v0, %lo(D_801B2B5C)($t0)
/* 8AB80 8009A380 2C01C3AF */  sw         $v1, 0x12c($fp)
/* 8AB84 8009A384 0000438C */  lw         $v1, ($v0)
/* 8AB88 8009A388 28004A25 */  addiu      $t2, $t2, 0x28
/* 8AB8C 8009A38C 2F006018 */  blez       $v1, .L8009A44C
/* 8AB90 8009A390 6401CAAF */   sw        $t2, 0x164($fp)
/* 8AB94 8009A394 2110B500 */  addu       $v0, $a1, $s5
/* 8AB98 8009A398 C0100200 */  sll        $v0, $v0, 3
/* 8AB9C 8009A39C 10001624 */  addiu      $s6, $zero, 0x10
/* 8ABA0 8009A3A0 FC00C48F */  lw         $a0, 0xfc($fp)
/* 8ABA4 8009A3A4 0001C58F */  lw         $a1, 0x100($fp)
/* 8ABA8 8009A3A8 40019124 */  addiu      $s1, $a0, 0x140
/* 8ABAC 8009A3AC 21984400 */  addu       $s3, $v0, $a0
/* 8ABB0 8009A3B0 21804500 */  addu       $s0, $v0, $a1
.L8009A3B4:
/* 8ABB4 8009A3B4 1200053C */  lui        $a1, 0x12
/* 8ABB8 8009A3B8 1B80063C */  lui        $a2, %hi(D_801B2B5C)
/* 8ABBC 8009A3BC 5C2BC48C */  lw         $a0, %lo(D_801B2B5C)($a2)
/* 8ABC0 8009A3C0 C30CA534 */  ori        $a1, $a1, 0xcc3
/* 8ABC4 8009A3C4 9375010C */  jal        FUN_8005d64c
/* 8ABC8 8009A3C8 21209600 */   addu      $a0, $a0, $s6
/* 8ABCC 8009A3CC 000002AE */  sw         $v0, ($s0)
/* 8ABD0 8009A3D0 E000C78F */  lw         $a3, 0xe0($fp)
/* 8ABD4 8009A3D4 08000324 */  addiu      $v1, $zero, 8
/* 8ABD8 8009A3D8 2110F700 */  addu       $v0, $a3, $s7
/* 8ABDC 8009A3DC 0D00A316 */  bne        $s5, $v1, .L8009A414
/* 8ABE0 8009A3E0 000062AE */   sw        $v0, ($s3)
/* 8ABE4 8009A3E4 0180083C */  lui        $t0, %hi(D_80016708)
/* 8ABE8 8009A3E8 08670425 */  addiu      $a0, $t0, %lo(D_80016708)
/* 8ABEC 8009A3EC 1200053C */  lui        $a1, 0x12
/* 8ABF0 8009A3F0 9375010C */  jal        FUN_8005d64c
/* 8ABF4 8009A3F4 C30CA534 */   ori       $a1, $a1, 0xcc3
/* 8ABF8 8009A3F8 C21F0200 */  srl        $v1, $v0, 0x1f
/* 8ABFC 8009A3FC 21186200 */  addu       $v1, $v1, $v0
/* 8AC00 8009A400 0000248E */  lw         $a0, ($s1)
/* 8AC04 8009A404 43180300 */  sra        $v1, $v1, 1
/* 8AC08 8009A408 90008424 */  addiu      $a0, $a0, 0x90
/* 8AC0C 8009A40C 23208300 */  subu       $a0, $a0, $v1
/* 8AC10 8009A410 000024AE */  sw         $a0, ($s1)
.L8009A414:
/* 8AC14 8009A414 04003126 */  addiu      $s1, $s1, 4
/* 8AC18 8009A418 04007326 */  addiu      $s3, $s3, 4
/* 8AC1C 8009A41C 0000058E */  lw         $a1, ($s0)
/* 8AC20 8009A420 04001026 */  addiu      $s0, $s0, 4
/* 8AC24 8009A424 0A00D626 */  addiu      $s6, $s6, 0xa
/* 8AC28 8009A428 01009426 */  addiu      $s4, $s4, 1
/* 8AC2C 8009A42C 1B80023C */  lui        $v0, %hi(D_801B2B5C)
/* 8AC30 8009A430 5C2B438C */  lw         $v1, %lo(D_801B2B5C)($v0)
/* 8AC34 8009A434 1200E426 */  addiu      $a0, $s7, 0x12
/* 8AC38 8009A438 0000628C */  lw         $v0, ($v1)
/* 8AC3C 8009A43C 00000000 */  nop
/* 8AC40 8009A440 2A108202 */  slt        $v0, $s4, $v0
/* 8AC44 8009A444 DBFF4014 */  bnez       $v0, .L8009A3B4
/* 8AC48 8009A448 21B88500 */   addu      $s7, $a0, $a1
.L8009A44C:
/* 8AC4C 8009A44C 28000724 */  addiu      $a3, $zero, 0x28
/* 8AC50 8009A450 6401CA8F */  lw         $t2, 0x164($fp)
/* 8AC54 8009A454 4401D58F */  lw         $s5, 0x144($fp)
/* 8AC58 8009A458 0401C38F */  lw         $v1, 0x104($fp)
/* 8AC5C 8009A45C 5401C48F */  lw         $a0, 0x154($fp)
/* 8AC60 8009A460 2C01C58F */  lw         $a1, 0x12c($fp)
/* 8AC64 8009A464 21106400 */  addu       $v0, $v1, $a0
/* 8AC68 8009A468 000045AC */  sw         $a1, ($v0)
/* 8AC6C 8009A46C 0801C68F */  lw         $a2, 0x108($fp)
/* 8AC70 8009A470 0900A22A */  slti       $v0, $s5, 9
/* 8AC74 8009A474 2118C400 */  addu       $v1, $a2, $a0
/* 8AC78 8009A478 B0FF4014 */  bnez       $v0, .L8009A33C
/* 8AC7C 8009A47C 000067AC */   sw        $a3, ($v1)
/* 8AC80 8009A480 E400C0AF */  sw         $zero, 0xe4($fp)
.L8009A484:
/* 8AC84 8009A484 0F80063C */  lui        $a2, %hi(D_800F0028)
/* 8AC88 8009A488 E400C88F */  lw         $t0, 0xe4($fp)
/* 8AC8C 8009A48C 2800C424 */  addiu      $a0, $a2, %lo(D_800F0028)
/* 8AC90 8009A490 80100800 */  sll        $v0, $t0, 2
/* 8AC94 8009A494 21284000 */  addu       $a1, $v0, $zero
/* 8AC98 8009A498 01000325 */  addiu      $v1, $t0, 1
/* 8AC9C 8009A49C 21104800 */  addu       $v0, $v0, $t0
/* 8ACA0 8009A4A0 4C01C3AF */  sw         $v1, 0x14c($fp)
/* 8ACA4 8009A4A4 C0190200 */  sll        $v1, $v0, 7
/* 8ACA8 8009A4A8 21104300 */  addu       $v0, $v0, $v1
/* 8ACAC 8009A4AC 40110200 */  sll        $v0, $v0, 5
/* 8ACB0 8009A4B0 23104800 */  subu       $v0, $v0, $t0
/* 8ACB4 8009A4B4 80100200 */  sll        $v0, $v0, 2
/* 8ACB8 8009A4B8 21104400 */  addu       $v0, $v0, $a0
/* 8ACBC 8009A4BC 8A004290 */  lbu        $v0, 0x8a($v0)
/* 8ACC0 8009A4C0 07000324 */  addiu      $v1, $zero, 7
/* 8ACC4 8009A4C4 B3014310 */  beq        $v0, $v1, .L8009AB94
/* 8ACC8 8009A4C8 00000000 */   nop
/* 8ACCC 8009A4CC B1014010 */  beqz       $v0, .L8009AB94
/* 8ACD0 8009A4D0 0F80073C */   lui       $a3, %hi(D_800EBFB4)
/* 8ACD4 8009A4D4 B4BFE724 */  addiu      $a3, $a3, %lo(D_800EBFB4)
/* 8ACD8 8009A4D8 2110A700 */  addu       $v0, $a1, $a3
/* 8ACDC 8009A4DC 0000428C */  lw         $v0, ($v0)
/* 8ACE0 8009A4E0 00000000 */  nop
/* 8ACE4 8009A4E4 02004014 */  bnez       $v0, .L8009A4F0
/* 8ACE8 8009A4E8 FFFF4224 */   addiu     $v0, $v0, -1
/* 8ACEC 8009A4EC 17000224 */  addiu      $v0, $zero, 0x17
.L8009A4F0:
/* 8ACF0 8009A4F0 2000C2AF */  sw         $v0, 0x20($fp)
/* 8ACF4 8009A4F4 0F80083C */  lui        $t0, %hi(D_800EBFB0)
/* 8ACF8 8009A4F8 B0BF0625 */  addiu      $a2, $t0, %lo(D_800EBFB0)
/* 8ACFC 8009A4FC 2110C500 */  addu       $v0, $a2, $a1
/* 8AD00 8009A500 7800438C */  lw         $v1, 0x78($v0)
/* 8AD04 8009A504 00000000 */  nop
/* 8AD08 8009A508 03006010 */  beqz       $v1, .L8009A518
/* 8AD0C 8009A50C 17000424 */   addiu     $a0, $zero, 0x17
/* 8AD10 8009A510 0F000424 */  addiu      $a0, $zero, 0xf
/* 8AD14 8009A514 2110C500 */  addu       $v0, $a2, $a1
.L8009A518:
/* 8AD18 8009A518 EC00428C */  lw         $v0, 0xec($v0)
/* 8AD1C 8009A51C 17000324 */  addiu      $v1, $zero, 0x17
/* 8AD20 8009A520 02004010 */  beqz       $v0, .L8009A52C
/* 8AD24 8009A524 2400C4AF */   sw        $a0, 0x24($fp)
/* 8AD28 8009A528 04004324 */  addiu      $v1, $v0, 4
.L8009A52C:
/* 8AD2C 8009A52C 0F80043C */  lui        $a0, %hi(D_800EC110)
/* 8AD30 8009A530 10C18424 */  addiu      $a0, $a0, %lo(D_800EC110)
/* 8AD34 8009A534 2110A400 */  addu       $v0, $a1, $a0
/* 8AD38 8009A538 0000428C */  lw         $v0, ($v0)
/* 8AD3C 8009A53C 00000000 */  nop
/* 8AD40 8009A540 03004010 */  beqz       $v0, .L8009A550
/* 8AD44 8009A544 2800C3AF */   sw        $v1, 0x28($fp)
/* 8AD48 8009A548 55690208 */  j          .L8009A554
/* 8AD4C 8009A54C 07004224 */   addiu     $v0, $v0, 7
.L8009A550:
/* 8AD50 8009A550 17000224 */  addiu      $v0, $zero, 0x17
.L8009A554:
/* 8AD54 8009A554 2C00C2AF */  sw         $v0, 0x2c($fp)
/* 8AD58 8009A558 0F80063C */  lui        $a2, %hi(D_800EC184)
/* 8AD5C 8009A55C 84C1C624 */  addiu      $a2, $a2, %lo(D_800EC184)
/* 8AD60 8009A560 2110A600 */  addu       $v0, $a1, $a2
/* 8AD64 8009A564 0000448C */  lw         $a0, ($v0)
/* 8AD68 8009A568 02000324 */  addiu      $v1, $zero, 2
/* 8AD6C 8009A56C 10008310 */  beq        $a0, $v1, .L8009A5B0
/* 8AD70 8009A570 03008228 */   slti      $v0, $a0, 3
/* 8AD74 8009A574 05004010 */  beqz       $v0, .L8009A58C
/* 8AD78 8009A578 01000224 */   addiu     $v0, $zero, 1
/* 8AD7C 8009A57C 0A008210 */  beq        $a0, $v0, .L8009A5A8
/* 8AD80 8009A580 17000224 */   addiu     $v0, $zero, 0x17
/* 8AD84 8009A584 72690208 */  j          .L8009A5C8
/* 8AD88 8009A588 3000C2AF */   sw        $v0, 0x30($fp)
.L8009A58C:
/* 8AD8C 8009A58C 03000224 */  addiu      $v0, $zero, 3
/* 8AD90 8009A590 09008210 */  beq        $a0, $v0, .L8009A5B8
/* 8AD94 8009A594 04000224 */   addiu     $v0, $zero, 4
/* 8AD98 8009A598 09008210 */  beq        $a0, $v0, .L8009A5C0
/* 8AD9C 8009A59C 17000224 */   addiu     $v0, $zero, 0x17
/* 8ADA0 8009A5A0 72690208 */  j          .L8009A5C8
/* 8ADA4 8009A5A4 3000C2AF */   sw        $v0, 0x30($fp)
.L8009A5A8:
/* 8ADA8 8009A5A8 71690208 */  j          .L8009A5C4
/* 8ADAC 8009A5AC 0C000224 */   addiu     $v0, $zero, 0xc
.L8009A5B0:
/* 8ADB0 8009A5B0 71690208 */  j          .L8009A5C4
/* 8ADB4 8009A5B4 0D000224 */   addiu     $v0, $zero, 0xd
.L8009A5B8:
/* 8ADB8 8009A5B8 71690208 */  j          .L8009A5C4
/* 8ADBC 8009A5BC 0E000224 */   addiu     $v0, $zero, 0xe
.L8009A5C0:
/* 8ADC0 8009A5C0 12000224 */  addiu      $v0, $zero, 0x12
.L8009A5C4:
/* 8ADC4 8009A5C4 3000C2AF */  sw         $v0, 0x30($fp)
.L8009A5C8:
/* 8ADC8 8009A5C8 0F80073C */  lui        $a3, %hi(D_800EBFB0)
/* 8ADCC 8009A5CC B0BFE624 */  addiu      $a2, $a3, %lo(D_800EBFB0)
/* 8ADD0 8009A5D0 2110C500 */  addu       $v0, $a2, $a1
/* 8ADD4 8009A5D4 4802438C */  lw         $v1, 0x248($v0)
/* 8ADD8 8009A5D8 00000000 */  nop
/* 8ADDC 8009A5DC 03006010 */  beqz       $v1, .L8009A5EC
/* 8ADE0 8009A5E0 17000424 */   addiu     $a0, $zero, 0x17
/* 8ADE4 8009A5E4 11000424 */  addiu      $a0, $zero, 0x11
/* 8ADE8 8009A5E8 2110C500 */  addu       $v0, $a2, $a1
.L8009A5EC:
/* 8ADEC 8009A5EC BC02438C */  lw         $v1, 0x2bc($v0)
/* 8ADF0 8009A5F0 10000524 */  addiu      $a1, $zero, 0x10
/* 8ADF4 8009A5F4 02006010 */  beqz       $v1, .L8009A600
/* 8ADF8 8009A5F8 3400C4AF */   sw        $a0, 0x34($fp)
/* 8ADFC 8009A5FC 17000524 */  addiu      $a1, $zero, 0x17
.L8009A600:
/* 8AE00 8009A600 4000C727 */  addiu      $a3, $fp, 0x40
/* 8AE04 8009A604 0180023C */  lui        $v0, %hi(D_80016710)
/* 8AE08 8009A608 10674824 */  addiu      $t0, $v0, %lo(D_80016710)
/* 8AE0C 8009A60C 40000925 */  addiu      $t1, $t0, 0x40
/* 8AE10 8009A610 01800A3C */  lui        $t2, 0x8001
/* 8AE14 8009A614 E400C48F */  lw         $a0, 0xe4($fp)
/* 8AE18 8009A618 E400C68F */  lw         $a2, 0xe4($fp)
/* 8AE1C 8009A61C 9000C227 */  addiu      $v0, $fp, 0x90
/* 8AE20 8009A620 6801C2AF */  sw         $v0, 0x168($fp)
/* 8AE24 8009A624 E000C28F */  lw         $v0, 0xe0($fp)
/* 8AE28 8009A628 2000C327 */  addiu      $v1, $fp, 0x20
/* 8AE2C 8009A62C 3801C3AF */  sw         $v1, 0x138($fp)
/* 8AE30 8009A630 E000C38F */  lw         $v1, 0xe0($fp)
/* 8AE34 8009A634 C0200400 */  sll        $a0, $a0, 3
/* 8AE38 8009A638 40300600 */  sll        $a2, $a2, 1
/* 8AE3C 8009A63C 50004224 */  addiu      $v0, $v0, 0x50
/* 8AE40 8009A640 50016324 */  addiu      $v1, $v1, 0x150
/* 8AE44 8009A644 6001C4AF */  sw         $a0, 0x160($fp)
/* 8AE48 8009A648 1380043C */  lui        $a0, %hi(D_801280E0)
/* 8AE4C 8009A64C 5C01C6AF */  sw         $a2, 0x15c($fp)
/* 8AE50 8009A650 E0808624 */  addiu      $a2, $a0, %lo(D_801280E0)
/* 8AE54 8009A654 6C01C2AF */  sw         $v0, 0x16c($fp)
/* 8AE58 8009A658 7001C3AF */  sw         $v1, 0x170($fp)
/* 8AE5C 8009A65C 4C00C290 */  lbu        $v0, 0x4c($a2)
/* 8AE60 8009A660 E400C38F */  lw         $v1, 0xe4($fp)
/* 8AE64 8009A664 1380043C */  lui        $a0, %hi(D_801282E0)
/* 8AE68 8009A668 3800C5AF */  sw         $a1, 0x38($fp)
/* 8AE6C 8009A66C E0828524 */  addiu      $a1, $a0, %lo(D_801282E0)
/* 8AE70 8009A670 01006324 */  addiu      $v1, $v1, 1
/* 8AE74 8009A674 4C01C3AF */  sw         $v1, 0x14c($fp)
/* 8AE78 8009A678 C0180200 */  sll        $v1, $v0, 3
/* 8AE7C 8009A67C 23186200 */  subu       $v1, $v1, $v0
/* 8AE80 8009A680 80180300 */  sll        $v1, $v1, 2
/* 8AE84 8009A684 5800C490 */  lbu        $a0, 0x58($a2)
/* 8AE88 8009A688 21A06500 */  addu       $s4, $v1, $a1
/* 8AE8C 8009A68C C0100400 */  sll        $v0, $a0, 3
/* 8AE90 8009A690 23104400 */  subu       $v0, $v0, $a0
/* 8AE94 8009A694 80100200 */  sll        $v0, $v0, 2
/* 8AE98 8009A698 21984500 */  addu       $s3, $v0, $a1
.L8009A69C:
/* 8AE9C 8009A69C 0000058D */  lw         $a1, ($t0)
/* 8AEA0 8009A6A0 0400068D */  lw         $a2, 4($t0)
/* 8AEA4 8009A6A4 0800028D */  lw         $v0, 8($t0)
/* 8AEA8 8009A6A8 0C00038D */  lw         $v1, 0xc($t0)
/* 8AEAC 8009A6AC 0000E5AC */  sw         $a1, ($a3)
/* 8AEB0 8009A6B0 0400E6AC */  sw         $a2, 4($a3)
/* 8AEB4 8009A6B4 0800E2AC */  sw         $v0, 8($a3)
/* 8AEB8 8009A6B8 0C00E3AC */  sw         $v1, 0xc($a3)
/* 8AEBC 8009A6BC 10000825 */  addiu      $t0, $t0, 0x10
/* 8AEC0 8009A6C0 F6FF0915 */  bne        $t0, $t1, .L8009A69C
/* 8AEC4 8009A6C4 1000E724 */   addiu     $a3, $a3, 0x10
/* 8AEC8 8009A6C8 5C674325 */  addiu      $v1, $t2, 0x675c
/* 8AECC 8009A6CC 0000048D */  lw         $a0, ($t0)
/* 8AED0 8009A6D0 0400058D */  lw         $a1, 4($t0)
/* 8AED4 8009A6D4 0800068D */  lw         $a2, 8($t0)
/* 8AED8 8009A6D8 0000E4AC */  sw         $a0, ($a3)
/* 8AEDC 8009A6DC 0400E5AC */  sw         $a1, 4($a3)
/* 8AEE0 8009A6E0 0800E6AC */  sw         $a2, 8($a3)
/* 8AEE4 8009A6E4 40006424 */  addiu      $a0, $v1, 0x40
/* 8AEE8 8009A6E8 6801C28F */  lw         $v0, 0x168($fp)
.L8009A6EC:
/* 8AEEC 8009A6EC 0000658C */  lw         $a1, ($v1)
/* 8AEF0 8009A6F0 0400668C */  lw         $a2, 4($v1)
/* 8AEF4 8009A6F4 0800678C */  lw         $a3, 8($v1)
/* 8AEF8 8009A6F8 0C00688C */  lw         $t0, 0xc($v1)
/* 8AEFC 8009A6FC 000045AC */  sw         $a1, ($v0)
/* 8AF00 8009A700 040046AC */  sw         $a2, 4($v0)
/* 8AF04 8009A704 080047AC */  sw         $a3, 8($v0)
/* 8AF08 8009A708 0C0048AC */  sw         $t0, 0xc($v0)
/* 8AF0C 8009A70C 10006324 */  addiu      $v1, $v1, 0x10
/* 8AF10 8009A710 F6FF6414 */  bne        $v1, $a0, .L8009A6EC
/* 8AF14 8009A714 10004224 */   addiu     $v0, $v0, 0x10
/* 8AF18 8009A718 21A80000 */  addu       $s5, $zero, $zero
/* 8AF1C 8009A71C 48000824 */  addiu      $t0, $zero, 0x48
/* 8AF20 8009A720 0000648C */  lw         $a0, ($v1)
/* 8AF24 8009A724 0400658C */  lw         $a1, 4($v1)
/* 8AF28 8009A728 0800668C */  lw         $a2, 8($v1)
/* 8AF2C 8009A72C 000044AC */  sw         $a0, ($v0)
/* 8AF30 8009A730 040045AC */  sw         $a1, 4($v0)
/* 8AF34 8009A734 080046AC */  sw         $a2, 8($v0)
/* 8AF38 8009A738 E000C38F */  lw         $v1, 0xe0($fp)
/* 8AF3C 8009A73C 0C000224 */  addiu      $v0, $zero, 0xc
/* 8AF40 8009A740 1801C8AF */  sw         $t0, 0x118($fp)
/* 8AF44 8009A744 1C01C2AF */  sw         $v0, 0x11c($fp)
/* 8AF48 8009A748 91FF7124 */  addiu      $s1, $v1, -0x6f
.L8009A74C:
/* 8AF4C 8009A74C 80181500 */  sll        $v1, $s5, 2
/* 8AF50 8009A750 3801C48F */  lw         $a0, 0x138($fp)
/* 8AF54 8009A754 6001C58F */  lw         $a1, 0x160($fp)
/* 8AF58 8009A758 E400C68F */  lw         $a2, 0xe4($fp)
/* 8AF5C 8009A75C 21188300 */  addu       $v1, $a0, $v1
/* 8AF60 8009A760 2310A600 */  subu       $v0, $a1, $a2
/* 8AF64 8009A764 40100200 */  sll        $v0, $v0, 1
/* 8AF68 8009A768 3CFF5724 */  addiu      $s7, $v0, -0xc4
/* 8AF6C 8009A76C 0000688C */  lw         $t0, ($v1)
/* 8AF70 8009A770 6801C48F */  lw         $a0, 0x168($fp)
/* 8AF74 8009A774 06008686 */  lh         $a2, 6($s4)
/* 8AF78 8009A778 80180800 */  sll        $v1, $t0, 2
/* 8AF7C 8009A77C 2138C303 */  addu       $a3, $fp, $v1
/* 8AF80 8009A780 4000E224 */  addiu      $v0, $a3, 0x40
/* 8AF84 8009A784 21188300 */  addu       $v1, $a0, $v1
/* 8AF88 8009A788 0000458C */  lw         $a1, ($v0)
/* 8AF8C 8009A78C 17000224 */  addiu      $v0, $zero, 0x17
/* 8AF90 8009A790 04008786 */  lh         $a3, 4($s4)
/* 8AF94 8009A794 0000648C */  lw         $a0, ($v1)
/* 8AF98 8009A798 2180E500 */  addu       $s0, $a3, $a1
/* 8AF9C 8009A79C 1C000211 */  beq        $t0, $v0, .L8009A810
/* 8AFA0 8009A7A0 21B0C400 */   addu      $s6, $a2, $a0
/* 8AFA4 8009A7A4 21284002 */  addu       $a1, $s2, $zero
/* 8AFA8 8009A7A8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8AFAC 8009A7AC 1801C88F */  lw         $t0, 0x118($fp)
/* 8AFB0 8009A7B0 21300002 */  addu       $a2, $s0, $zero
/* 8AFB4 8009A7B4 1000A8AF */  sw         $t0, 0x10($sp)
/* 8AFB8 8009A7B8 1C01C28F */  lw         $v0, 0x11c($fp)
/* 8AFBC 8009A7BC 2138C002 */  addu       $a3, $s6, $zero
/* 8AFC0 8009A7C0 1400A2AF */  sw         $v0, 0x14($sp)
/* 8AFC4 8009A7C4 0C008386 */  lh         $v1, 0xc($s4)
/* 8AFC8 8009A7C8 FFFF0224 */  addiu      $v0, $zero, -1
/* 8AFCC 8009A7CC 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8AFD0 8009A7D0 1769010C */  jal        FUN_8005a45c
/* 8AFD4 8009A7D4 1800A3AF */   sw        $v1, 0x18($sp)
/* 8AFD8 8009A7D8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8AFDC 8009A7DC 16008686 */  lh         $a2, 0x16($s4)
/* 8AFE0 8009A7E0 18008786 */  lh         $a3, 0x18($s4)
/* 8AFE4 8009A7E4 396D010C */  jal        FUN_8005b4e4
/* 8AFE8 8009A7E8 21284002 */   addu      $a1, $s2, $zero
/* 8AFEC 8009A7EC 21284002 */  addu       $a1, $s2, $zero
/* 8AFF0 8009A7F0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8AFF4 8009A7F4 1801C38F */  lw         $v1, 0x118($fp)
/* 8AFF8 8009A7F8 21302002 */  addu       $a2, $s1, $zero
/* 8AFFC 8009A7FC 1000A3AF */  sw         $v1, 0x10($sp)
/* 8B000 8009A800 1C01C88F */  lw         $t0, 0x11c($fp)
/* 8B004 8009A804 2138E002 */  addu       $a3, $s7, $zero
/* 8B008 8009A808 1F6A0208 */  j          .L8009A87C
/* 8B00C 8009A80C 1400A8AF */   sw        $t0, 0x14($sp)
.L8009A810:
/* 8B010 8009A810 21284002 */  addu       $a1, $s2, $zero
/* 8B014 8009A814 01000224 */  addiu      $v0, $zero, 1
/* 8B018 8009A818 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B01C 8009A81C 04007086 */  lh         $s0, 4($s3)
/* 8B020 8009A820 FFFF0324 */  addiu      $v1, $zero, -1
/* 8B024 8009A824 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B028 8009A828 1400A2AF */  sw         $v0, 0x14($sp)
/* 8B02C 8009A82C 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 8B030 8009A830 06006786 */  lh         $a3, 6($s3)
/* 8B034 8009A834 0C006286 */  lh         $v0, 0xc($s3)
/* 8B038 8009A838 21300002 */  addu       $a2, $s0, $zero
/* 8B03C 8009A83C 0800E724 */  addiu      $a3, $a3, 8
/* 8B040 8009A840 1769010C */  jal        FUN_8005a45c
/* 8B044 8009A844 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B048 8009A848 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B04C 8009A84C 16006686 */  lh         $a2, 0x16($s3)
/* 8B050 8009A850 18006786 */  lh         $a3, 0x18($s3)
/* 8B054 8009A854 396D010C */  jal        FUN_8005b4e4
/* 8B058 8009A858 21284002 */   addu      $a1, $s2, $zero
/* 8B05C 8009A85C 21284002 */  addu       $a1, $s2, $zero
/* 8B060 8009A860 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B064 8009A864 1801C88F */  lw         $t0, 0x118($fp)
/* 8B068 8009A868 21302002 */  addu       $a2, $s1, $zero
/* 8B06C 8009A86C 1000A8AF */  sw         $t0, 0x10($sp)
/* 8B070 8009A870 1C01C28F */  lw         $v0, 0x11c($fp)
/* 8B074 8009A874 2138E002 */  addu       $a3, $s7, $zero
/* 8B078 8009A878 1400A2AF */  sw         $v0, 0x14($sp)
.L8009A87C:
/* 8B07C 8009A87C 976D010C */  jal        FUN_8005b65c
/* 8B080 8009A880 00000000 */   nop
/* 8B084 8009A884 0C01C48F */  lw         $a0, 0x10c($fp)
/* 8B088 8009A888 80000324 */  addiu      $v1, $zero, 0x80
/* 8B08C 8009A88C 18006400 */  mult       $v1, $a0
/* 8B090 8009A890 12100000 */  mflo       $v0
/* 8B094 8009A894 02004104 */  bgez       $v0, .L8009A8A0
/* 8B098 8009A898 21304000 */   addu      $a2, $v0, $zero
/* 8B09C 8009A89C FF0F4624 */  addiu      $a2, $v0, 0xfff
.L8009A8A0:
/* 8B0A0 8009A8A0 03330600 */  sra        $a2, $a2, 0xc
/* 8B0A4 8009A8A4 21284002 */  addu       $a1, $s2, $zero
/* 8B0A8 8009A8A8 1000A6AF */  sw         $a2, 0x10($sp)
/* 8B0AC 8009A8AC B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B0B0 8009A8B0 EB6C010C */  jal        FUN_8005b3ac
/* 8B0B4 8009A8B4 2138C000 */   addu      $a3, $a2, $zero
/* 8B0B8 8009A8B8 01005226 */  addiu      $s2, $s2, 1
/* 8B0BC 8009A8BC 0100B526 */  addiu      $s5, $s5, 1
/* 8B0C0 8009A8C0 0700A22A */  slti       $v0, $s5, 7
/* 8B0C4 8009A8C4 A1FF4014 */  bnez       $v0, .L8009A74C
/* 8B0C8 8009A8C8 50003126 */   addiu     $s1, $s1, 0x50
/* 8B0CC 8009A8CC 20000724 */  addiu      $a3, $zero, 0x20
/* 8B0D0 8009A8D0 6001C58F */  lw         $a1, 0x160($fp)
/* 8B0D4 8009A8D4 E400C68F */  lw         $a2, 0xe4($fp)
/* 8B0D8 8009A8D8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B0DC 8009A8DC 0C000824 */  addiu      $t0, $zero, 0xc
/* 8B0E0 8009A8E0 1801C7AF */  sw         $a3, 0x118($fp)
/* 8B0E4 8009A8E4 1C01C8AF */  sw         $t0, 0x11c($fp)
/* 8B0E8 8009A8E8 1000A7AF */  sw         $a3, 0x10($sp)
/* 8B0EC 8009A8EC 1400A8AF */  sw         $t0, 0x14($sp)
/* 8B0F0 8009A8F0 2310A600 */  subu       $v0, $a1, $a2
/* 8B0F4 8009A8F4 40800200 */  sll        $s0, $v0, 1
/* 8B0F8 8009A8F8 21284002 */  addu       $a1, $s2, $zero
/* 8B0FC 8009A8FC 04008686 */  lh         $a2, 4($s4)
/* 8B100 8009A900 FFFF0224 */  addiu      $v0, $zero, -1
/* 8B104 8009A904 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8B108 8009A908 5C01C38F */  lw         $v1, 0x15c($fp)
/* 8B10C 8009A90C E400C88F */  lw         $t0, 0xe4($fp)
/* 8B110 8009A910 06008286 */  lh         $v0, 6($s4)
/* 8B114 8009A914 2001C624 */  addiu      $a2, $a2, 0x120
/* 8B118 8009A918 21386800 */  addu       $a3, $v1, $t0
/* 8B11C 8009A91C 80380700 */  sll        $a3, $a3, 2
/* 8B120 8009A920 2400E724 */  addiu      $a3, $a3, 0x24
/* 8B124 8009A924 0C008386 */  lh         $v1, 0xc($s4)
/* 8B128 8009A928 21384700 */  addu       $a3, $v0, $a3
/* 8B12C 8009A92C 1769010C */  jal        FUN_8005a45c
/* 8B130 8009A930 1800A3AF */   sw        $v1, 0x18($sp)
/* 8B134 8009A934 0C01C38F */  lw         $v1, 0x10c($fp)
/* 8B138 8009A938 80000224 */  addiu      $v0, $zero, 0x80
/* 8B13C 8009A93C 18004300 */  mult       $v0, $v1
/* 8B140 8009A940 3CFF1726 */  addiu      $s7, $s0, -0xc4
/* 8B144 8009A944 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B148 8009A948 16008686 */  lh         $a2, 0x16($s4)
/* 8B14C 8009A94C 18008786 */  lh         $a3, 0x18($s4)
/* 8B150 8009A950 12880000 */  mflo       $s1
/* 8B154 8009A954 396D010C */  jal        FUN_8005b4e4
/* 8B158 8009A958 21284002 */   addu      $a1, $s2, $zero
/* 8B15C 8009A95C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B160 8009A960 2801C68F */  lw         $a2, 0x128($fp)
/* 8B164 8009A964 1801C88F */  lw         $t0, 0x118($fp)
/* 8B168 8009A968 21284002 */  addu       $a1, $s2, $zero
/* 8B16C 8009A96C 1000A8AF */  sw         $t0, 0x10($sp)
/* 8B170 8009A970 1C01C28F */  lw         $v0, 0x11c($fp)
/* 8B174 8009A974 2138E002 */  addu       $a3, $s7, $zero
/* 8B178 8009A978 976D010C */  jal        FUN_8005b65c
/* 8B17C 8009A97C 1400A2AF */   sw        $v0, 0x14($sp)
/* 8B180 8009A980 02002106 */  bgez       $s1, .L8009A98C
/* 8B184 8009A984 21302002 */   addu      $a2, $s1, $zero
/* 8B188 8009A988 FF0F2626 */  addiu      $a2, $s1, 0xfff
.L8009A98C:
/* 8B18C 8009A98C 03A30600 */  sra        $s4, $a2, 0xc
/* 8B190 8009A990 21284002 */  addu       $a1, $s2, $zero
/* 8B194 8009A994 21308002 */  addu       $a2, $s4, $zero
/* 8B198 8009A998 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B19C 8009A99C 21388002 */  addu       $a3, $s4, $zero
/* 8B1A0 8009A9A0 EB6C010C */  jal        FUN_8005b3ac
/* 8B1A4 8009A9A4 1000B4AF */   sw        $s4, 0x10($sp)
/* 8B1A8 8009A9A8 01005226 */  addiu      $s2, $s2, 1
/* 8B1AC 8009A9AC FF000324 */  addiu      $v1, $zero, 0xff
/* 8B1B0 8009A9B0 3AFF1726 */  addiu      $s7, $s0, -0xc6
/* 8B1B4 8009A9B4 00010424 */  addiu      $a0, $zero, 0x100
/* 8B1B8 8009A9B8 1801C4AF */  sw         $a0, 0x118($fp)
/* 8B1BC 8009A9BC B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B1C0 8009A9C0 10000524 */  addiu      $a1, $zero, 0x10
/* 8B1C4 8009A9C4 1401C3AF */  sw         $v1, 0x114($fp)
/* 8B1C8 8009A9C8 1C01C5AF */  sw         $a1, 0x11c($fp)
/* 8B1CC 8009A9CC 04007086 */  lh         $s0, 4($s3)
/* 8B1D0 8009A9D0 06007686 */  lh         $s6, 6($s3)
/* 8B1D4 8009A9D4 21284002 */  addu       $a1, $s2, $zero
/* 8B1D8 8009A9D8 1000A3AF */  sw         $v1, 0x10($sp)
/* 8B1DC 8009A9DC 1C01C68F */  lw         $a2, 0x11c($fp)
/* 8B1E0 8009A9E0 FFFF0724 */  addiu      $a3, $zero, -1
/* 8B1E4 8009A9E4 1C00A7AF */  sw         $a3, 0x1c($sp)
/* 8B1E8 8009A9E8 1400A6AF */  sw         $a2, 0x14($sp)
/* 8B1EC 8009A9EC 21300002 */  addu       $a2, $s0, $zero
/* 8B1F0 8009A9F0 0C006286 */  lh         $v0, 0xc($s3)
/* 8B1F4 8009A9F4 2138C002 */  addu       $a3, $s6, $zero
/* 8B1F8 8009A9F8 1769010C */  jal        FUN_8005a45c
/* 8B1FC 8009A9FC 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B200 8009AA00 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B204 8009AA04 16006686 */  lh         $a2, 0x16($s3)
/* 8B208 8009AA08 18006786 */  lh         $a3, 0x18($s3)
/* 8B20C 8009AA0C 396D010C */  jal        FUN_8005b4e4
/* 8B210 8009AA10 21284002 */   addu      $a1, $s2, $zero
/* 8B214 8009AA14 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B218 8009AA18 2801C68F */  lw         $a2, 0x128($fp)
/* 8B21C 8009AA1C 1801C88F */  lw         $t0, 0x118($fp)
/* 8B220 8009AA20 21284002 */  addu       $a1, $s2, $zero
/* 8B224 8009AA24 1000A8AF */  sw         $t0, 0x10($sp)
/* 8B228 8009AA28 1C01C28F */  lw         $v0, 0x11c($fp)
/* 8B22C 8009AA2C 2138E002 */  addu       $a3, $s7, $zero
/* 8B230 8009AA30 976D010C */  jal        FUN_8005b65c
/* 8B234 8009AA34 1400A2AF */   sw        $v0, 0x14($sp)
/* 8B238 8009AA38 21284002 */  addu       $a1, $s2, $zero
/* 8B23C 8009AA3C 21308002 */  addu       $a2, $s4, $zero
/* 8B240 8009AA40 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B244 8009AA44 21388002 */  addu       $a3, $s4, $zero
/* 8B248 8009AA48 EB6C010C */  jal        FUN_8005b3ac
/* 8B24C 8009AA4C 1000B4AF */   sw        $s4, 0x10($sp)
/* 8B250 8009AA50 01005226 */  addiu      $s2, $s2, 1
/* 8B254 8009AA54 00011026 */  addiu      $s0, $s0, 0x100
/* 8B258 8009AA58 21284002 */  addu       $a1, $s2, $zero
/* 8B25C 8009AA5C 21300002 */  addu       $a2, $s0, $zero
/* 8B260 8009AA60 6C01D58F */  lw         $s5, 0x16c($fp)
/* 8B264 8009AA64 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B268 8009AA68 0C006286 */  lh         $v0, 0xc($s3)
/* 8B26C 8009AA6C 1401C38F */  lw         $v1, 0x114($fp)
/* 8B270 8009AA70 2138C002 */  addu       $a3, $s6, $zero
/* 8B274 8009AA74 1000A3AF */  sw         $v1, 0x10($sp)
/* 8B278 8009AA78 1C01C88F */  lw         $t0, 0x11c($fp)
/* 8B27C 8009AA7C FFFF0324 */  addiu      $v1, $zero, -1
/* 8B280 8009AA80 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 8B284 8009AA84 1800A2AF */  sw         $v0, 0x18($sp)
/* 8B288 8009AA88 1769010C */  jal        FUN_8005a45c
/* 8B28C 8009AA8C 1400A8AF */   sw        $t0, 0x14($sp)
/* 8B290 8009AA90 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B294 8009AA94 16006686 */  lh         $a2, 0x16($s3)
/* 8B298 8009AA98 18006786 */  lh         $a3, 0x18($s3)
/* 8B29C 8009AA9C 396D010C */  jal        FUN_8005b4e4
/* 8B2A0 8009AAA0 21284002 */   addu      $a1, $s2, $zero
/* 8B2A4 8009AAA4 21284002 */  addu       $a1, $s2, $zero
/* 8B2A8 8009AAA8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B2AC 8009AAAC 1801C88F */  lw         $t0, 0x118($fp)
/* 8B2B0 8009AAB0 2130A002 */  addu       $a2, $s5, $zero
/* 8B2B4 8009AAB4 1000A8AF */  sw         $t0, 0x10($sp)
/* 8B2B8 8009AAB8 1C01C28F */  lw         $v0, 0x11c($fp)
/* 8B2BC 8009AABC 2138E002 */  addu       $a3, $s7, $zero
/* 8B2C0 8009AAC0 976D010C */  jal        FUN_8005b65c
/* 8B2C4 8009AAC4 1400A2AF */   sw        $v0, 0x14($sp)
/* 8B2C8 8009AAC8 21284002 */  addu       $a1, $s2, $zero
/* 8B2CC 8009AACC 21308002 */  addu       $a2, $s4, $zero
/* 8B2D0 8009AAD0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B2D4 8009AAD4 21388002 */  addu       $a3, $s4, $zero
/* 8B2D8 8009AAD8 EB6C010C */  jal        FUN_8005b3ac
/* 8B2DC 8009AADC 1000B4AF */   sw        $s4, 0x10($sp)
/* 8B2E0 8009AAE0 01005226 */  addiu      $s2, $s2, 1
/* 8B2E4 8009AAE4 7F000324 */  addiu      $v1, $zero, 0x7f
/* 8B2E8 8009AAE8 80000424 */  addiu      $a0, $zero, 0x80
/* 8B2EC 8009AAEC 21284002 */  addu       $a1, $s2, $zero
/* 8B2F0 8009AAF0 7001D58F */  lw         $s5, 0x170($fp)
/* 8B2F4 8009AAF4 00010626 */  addiu      $a2, $s0, 0x100
/* 8B2F8 8009AAF8 1801C4AF */  sw         $a0, 0x118($fp)
/* 8B2FC 8009AAFC B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B300 8009AB00 0C006286 */  lh         $v0, 0xc($s3)
/* 8B304 8009AB04 2138C002 */  addu       $a3, $s6, $zero
/* 8B308 8009AB08 1000A3AF */  sw         $v1, 0x10($sp)
/* 8B30C 8009AB0C 1C01C88F */  lw         $t0, 0x11c($fp)
/* 8B310 8009AB10 FFFF0324 */  addiu      $v1, $zero, -1
/* 8B314 8009AB14 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 8B318 8009AB18 1400A8AF */  sw         $t0, 0x14($sp)
/* 8B31C 8009AB1C 1769010C */  jal        FUN_8005a45c
/* 8B320 8009AB20 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B324 8009AB24 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B328 8009AB28 16006686 */  lh         $a2, 0x16($s3)
/* 8B32C 8009AB2C 18006786 */  lh         $a3, 0x18($s3)
/* 8B330 8009AB30 396D010C */  jal        FUN_8005b4e4
/* 8B334 8009AB34 21284002 */   addu      $a1, $s2, $zero
/* 8B338 8009AB38 21284002 */  addu       $a1, $s2, $zero
/* 8B33C 8009AB3C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B340 8009AB40 1801C88F */  lw         $t0, 0x118($fp)
/* 8B344 8009AB44 2130A002 */  addu       $a2, $s5, $zero
/* 8B348 8009AB48 1000A8AF */  sw         $t0, 0x10($sp)
/* 8B34C 8009AB4C 1C01C28F */  lw         $v0, 0x11c($fp)
/* 8B350 8009AB50 2138E002 */  addu       $a3, $s7, $zero
/* 8B354 8009AB54 976D010C */  jal        FUN_8005b65c
/* 8B358 8009AB58 1400A2AF */   sw        $v0, 0x14($sp)
/* 8B35C 8009AB5C 0C01C48F */  lw         $a0, 0x10c($fp)
/* 8B360 8009AB60 80000324 */  addiu      $v1, $zero, 0x80
/* 8B364 8009AB64 18006400 */  mult       $v1, $a0
/* 8B368 8009AB68 12100000 */  mflo       $v0
/* 8B36C 8009AB6C 02004104 */  bgez       $v0, .L8009AB78
/* 8B370 8009AB70 21384000 */   addu      $a3, $v0, $zero
/* 8B374 8009AB74 FF0F4724 */  addiu      $a3, $v0, 0xfff
.L8009AB78:
/* 8B378 8009AB78 033B0700 */  sra        $a3, $a3, 0xc
/* 8B37C 8009AB7C 21284002 */  addu       $a1, $s2, $zero
/* 8B380 8009AB80 1000A7AF */  sw         $a3, 0x10($sp)
/* 8B384 8009AB84 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B388 8009AB88 EB6C010C */  jal        FUN_8005b3ac
/* 8B38C 8009AB8C 21308002 */   addu      $a2, $s4, $zero
/* 8B390 8009AB90 01005226 */  addiu      $s2, $s2, 1
.L8009AB94:
/* 8B394 8009AB94 4C01C58F */  lw         $a1, 0x14c($fp)
/* 8B398 8009AB98 00000000 */  nop
/* 8B39C 8009AB9C 0200A228 */  slti       $v0, $a1, 2
/* 8B3A0 8009ABA0 38FE4014 */  bnez       $v0, .L8009A484
/* 8B3A4 8009ABA4 E400C5AF */   sw        $a1, 0xe4($fp)
/* 8B3A8 8009ABA8 1001C68F */  lw         $a2, 0x110($fp)
/* 8B3AC 8009ABAC 00000000 */  nop
/* 8B3B0 8009ABB0 4D01C014 */  bnez       $a2, .L8009B0E8
/* 8B3B4 8009ABB4 0F80063C */   lui       $a2, 0x800f
/* 8B3B8 8009ABB8 01000724 */  addiu      $a3, $zero, 1
/* 8B3BC 8009ABBC 15000824 */  addiu      $t0, $zero, 0x15
/* 8B3C0 8009ABC0 0100173C */  lui        $s7, 1
/* 8B3C4 8009ABC4 B001C28F */  lw         $v0, 0x1b0($fp)
/* 8B3C8 8009ABC8 7C42F736 */  ori        $s7, $s7, 0x427c
/* 8B3CC 8009ABCC E400C7AF */  sw         $a3, 0xe4($fp)
/* 8B3D0 8009ABD0 7801C8AF */  sw         $t0, 0x178($fp)
/* 8B3D4 8009ABD4 30005624 */  addiu      $s6, $v0, 0x30
.L8009ABD8:
/* 8B3D8 8009ABD8 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 8B3DC 8009ABDC 28006224 */  addiu      $v0, $v1, %lo(D_800F0028)
/* 8B3E0 8009ABE0 2110E202 */  addu       $v0, $s7, $v0
/* 8B3E4 8009ABE4 07000324 */  addiu      $v1, $zero, 7
/* 8B3E8 8009ABE8 E400C58F */  lw         $a1, 0xe4($fp)
/* 8B3EC 8009ABEC 8A004290 */  lbu        $v0, 0x8a($v0)
/* 8B3F0 8009ABF0 00000000 */  nop
/* 8B3F4 8009ABF4 30014310 */  beq        $v0, $v1, .L8009B0B8
/* 8B3F8 8009ABF8 80200500 */   sll       $a0, $a1, 2
/* 8B3FC 8009ABFC 2E014010 */  beqz       $v0, .L8009B0B8
/* 8B400 8009AC00 0F80073C */   lui       $a3, %hi(D_800EBFB0)
/* 8B404 8009AC04 B001C68F */  lw         $a2, 0x1b0($fp)
/* 8B408 8009AC08 1B80083C */  lui        $t0, 0x801b
/* 8B40C 8009AC0C 2118C400 */  addu       $v1, $a2, $a0
/* 8B410 8009AC10 0800758C */  lw         $s5, 8($v1)
/* 8B414 8009AC14 B0BFE324 */  addiu      $v1, $a3, %lo(D_800EBFB0)
/* 8B418 8009AC18 C0101500 */  sll        $v0, $s5, 3
/* 8B41C 8009AC1C 23105500 */  subu       $v0, $v0, $s5
/* 8B420 8009AC20 80100200 */  sll        $v0, $v0, 2
/* 8B424 8009AC24 21105500 */  addu       $v0, $v0, $s5
/* 8B428 8009AC28 80100200 */  sll        $v0, $v0, 2
/* 8B42C 8009AC2C 21104300 */  addu       $v0, $v0, $v1
/* 8B430 8009AC30 21204400 */  addu       $a0, $v0, $a0
/* 8B434 8009AC34 0400948C */  lw         $s4, 4($a0)
/* 8B438 8009AC38 0900A32A */  slti       $v1, $s5, 9
/* 8B43C 8009AC3C 1E016010 */  beqz       $v1, .L8009B0B8
/* 8B440 8009AC40 5C2B02AD */   sw        $v0, 0x2b5c($t0)
/* 8B444 8009AC44 2188C002 */  addu       $s1, $s6, $zero
/* 8B448 8009AC48 80301400 */  sll        $a2, $s4, 2
/* 8B44C 8009AC4C 80381500 */  sll        $a3, $s5, 2
/* 8B450 8009AC50 2110F500 */  addu       $v0, $a3, $s5
/* 8B454 8009AC54 C0100200 */  sll        $v0, $v0, 3
/* 8B458 8009AC58 2130C200 */  addu       $a2, $a2, $v0
/* 8B45C 8009AC5C FC00C28F */  lw         $v0, 0xfc($fp)
/* 8B460 8009AC60 0401C48F */  lw         $a0, 0x104($fp)
/* 8B464 8009AC64 21184600 */  addu       $v1, $v0, $a2
/* 8B468 8009AC68 21108700 */  addu       $v0, $a0, $a3
/* 8B46C 8009AC6C 0000648C */  lw         $a0, ($v1)
/* 8B470 8009AC70 0000458C */  lw         $a1, ($v0)
/* 8B474 8009AC74 7801C28F */  lw         $v0, 0x178($fp)
/* 8B478 8009AC78 0001C38F */  lw         $v1, 0x100($fp)
/* 8B47C 8009AC7C F7FF8824 */  addiu      $t0, $a0, -9
/* 8B480 8009AC80 2128A200 */  addu       $a1, $a1, $v0
/* 8B484 8009AC84 21306600 */  addu       $a2, $v1, $a2
/* 8B488 8009AC88 0801C48F */  lw         $a0, 0x108($fp)
/* 8B48C 8009AC8C 0000C28C */  lw         $v0, ($a2)
/* 8B490 8009AC90 21388700 */  addu       $a3, $a0, $a3
/* 8B494 8009AC94 12004624 */  addiu      $a2, $v0, 0x12
/* 8B498 8009AC98 F1D80224 */  addiu      $v0, $zero, -0x270f
/* 8B49C 8009AC9C 0000E38C */  lw         $v1, ($a3)
/* 8B4A0 8009ACA0 0000C486 */  lh         $a0, ($s6)
/* 8B4A4 8009ACA4 00000000 */  nop
/* 8B4A8 8009ACA8 05008214 */  bne        $a0, $v0, .L8009ACC0
/* 8B4AC 8009ACAC F4FF6724 */   addiu     $a3, $v1, -0xc
/* 8B4B0 8009ACB0 0000C8A6 */  sh         $t0, ($s6)
/* 8B4B4 8009ACB4 0200C5A6 */  sh         $a1, 2($s6)
/* 8B4B8 8009ACB8 0400C6A6 */  sh         $a2, 4($s6)
/* 8B4BC 8009ACBC 0600C7A6 */  sh         $a3, 6($s6)
.L8009ACC0:
/* 8B4C0 8009ACC0 0000C386 */  lh         $v1, ($s6)
/* 8B4C4 8009ACC4 00000000 */  nop
/* 8B4C8 8009ACC8 40100300 */  sll        $v0, $v1, 1
/* 8B4CC 8009ACCC 21104300 */  addu       $v0, $v0, $v1
/* 8B4D0 8009ACD0 2A186800 */  slt        $v1, $v1, $t0
/* 8B4D4 8009ACD4 02006010 */  beqz       $v1, .L8009ACE0
/* 8B4D8 8009ACD8 21104800 */   addu      $v0, $v0, $t0
/* 8B4DC 8009ACDC 03004224 */  addiu      $v0, $v0, 3
.L8009ACE0:
/* 8B4E0 8009ACE0 82100200 */  srl        $v0, $v0, 2
/* 8B4E4 8009ACE4 02002386 */  lh         $v1, 2($s1)
/* 8B4E8 8009ACE8 000022A6 */  sh         $v0, ($s1)
/* 8B4EC 8009ACEC 40100300 */  sll        $v0, $v1, 1
/* 8B4F0 8009ACF0 21104300 */  addu       $v0, $v0, $v1
/* 8B4F4 8009ACF4 2A186500 */  slt        $v1, $v1, $a1
/* 8B4F8 8009ACF8 02006010 */  beqz       $v1, .L8009AD04
/* 8B4FC 8009ACFC 21104500 */   addu      $v0, $v0, $a1
/* 8B500 8009AD00 03004224 */  addiu      $v0, $v0, 3
.L8009AD04:
/* 8B504 8009AD04 82100200 */  srl        $v0, $v0, 2
/* 8B508 8009AD08 04002386 */  lh         $v1, 4($s1)
/* 8B50C 8009AD0C 020022A6 */  sh         $v0, 2($s1)
/* 8B510 8009AD10 40100300 */  sll        $v0, $v1, 1
/* 8B514 8009AD14 21104300 */  addu       $v0, $v0, $v1
/* 8B518 8009AD18 2A186600 */  slt        $v1, $v1, $a2
/* 8B51C 8009AD1C 02006010 */  beqz       $v1, .L8009AD28
/* 8B520 8009AD20 21104600 */   addu      $v0, $v0, $a2
/* 8B524 8009AD24 03004224 */  addiu      $v0, $v0, 3
.L8009AD28:
/* 8B528 8009AD28 82100200 */  srl        $v0, $v0, 2
/* 8B52C 8009AD2C 06002386 */  lh         $v1, 6($s1)
/* 8B530 8009AD30 040022A6 */  sh         $v0, 4($s1)
/* 8B534 8009AD34 40100300 */  sll        $v0, $v1, 1
/* 8B538 8009AD38 21104300 */  addu       $v0, $v0, $v1
/* 8B53C 8009AD3C 2A186700 */  slt        $v1, $v1, $a3
/* 8B540 8009AD40 02006010 */  beqz       $v1, .L8009AD4C
/* 8B544 8009AD44 21104700 */   addu      $v0, $v0, $a3
/* 8B548 8009AD48 03004224 */  addiu      $v0, $v0, 3
.L8009AD4C:
/* 8B54C 8009AD4C 82100200 */  srl        $v0, $v0, 2
/* 8B550 8009AD50 060022A6 */  sh         $v0, 6($s1)
/* 8B554 8009AD54 E400C58F */  lw         $a1, 0xe4($fp)
/* 8B558 8009AD58 00000000 */  nop
/* 8B55C 8009AD5C 5500A014 */  bnez       $a1, .L8009AEB4
/* 8B560 8009AD60 10000424 */   addiu     $a0, $zero, 0x10
/* 8B564 8009AD64 10000624 */  addiu      $a2, $zero, 0x10
/* 8B568 8009AD68 21284002 */  addu       $a1, $s2, $zero
/* 8B56C 8009AD6C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B570 8009AD70 EC00C78F */  lw         $a3, 0xec($fp)
/* 8B574 8009AD74 01000224 */  addiu      $v0, $zero, 1
/* 8B578 8009AD78 F000C6AF */  sw         $a2, 0xf0($fp)
/* 8B57C 8009AD7C 0400E784 */  lh         $a3, 4($a3)
/* 8B580 8009AD80 FFFF1424 */  addiu      $s4, $zero, -1
/* 8B584 8009AD84 F400C7AF */  sw         $a3, 0xf4($fp)
/* 8B588 8009AD88 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B58C 8009AD8C 1400A6AF */  sw         $a2, 0x14($sp)
/* 8B590 8009AD90 04002286 */  lh         $v0, 4($s1)
/* 8B594 8009AD94 2130E000 */  addu       $a2, $a3, $zero
/* 8B598 8009AD98 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8B59C 8009AD9C EC00C88F */  lw         $t0, 0xec($fp)
/* 8B5A0 8009ADA0 FCFF5324 */  addiu      $s3, $v0, -4
/* 8B5A4 8009ADA4 06000785 */  lh         $a3, 6($t0)
/* 8B5A8 8009ADA8 0C000285 */  lh         $v0, 0xc($t0)
/* 8B5AC 8009ADAC 4000E724 */  addiu      $a3, $a3, 0x40
/* 8B5B0 8009ADB0 1769010C */  jal        FUN_8005a45c
/* 8B5B4 8009ADB4 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B5B8 8009ADB8 EC00C28F */  lw         $v0, 0xec($fp)
/* 8B5BC 8009ADBC B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B5C0 8009ADC0 16004684 */  lh         $a2, 0x16($v0)
/* 8B5C4 8009ADC4 18004784 */  lh         $a3, 0x18($v0)
/* 8B5C8 8009ADC8 396D010C */  jal        FUN_8005b4e4
/* 8B5CC 8009ADCC 21284002 */   addu      $a1, $s2, $zero
/* 8B5D0 8009ADD0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B5D4 8009ADD4 1000B3AF */  sw         $s3, 0x10($sp)
/* 8B5D8 8009ADD8 F000C38F */  lw         $v1, 0xf0($fp)
/* 8B5DC 8009ADDC 21284002 */  addu       $a1, $s2, $zero
/* 8B5E0 8009ADE0 1400A3AF */  sw         $v1, 0x14($sp)
/* 8B5E4 8009ADE4 00002686 */  lh         $a2, ($s1)
/* 8B5E8 8009ADE8 02002786 */  lh         $a3, 2($s1)
/* 8B5EC 8009ADEC 976D010C */  jal        FUN_8005b65c
/* 8B5F0 8009ADF0 0400C624 */   addiu     $a2, $a2, 4
/* 8B5F4 8009ADF4 0C01D08F */  lw         $s0, 0x10c($fp)
/* 8B5F8 8009ADF8 00000000 */  nop
/* 8B5FC 8009ADFC 02000106 */  bgez       $s0, .L8009AE08
/* 8B600 8009AE00 00000000 */   nop
/* 8B604 8009AE04 1F001026 */  addiu      $s0, $s0, 0x1f
.L8009AE08:
/* 8B608 8009AE08 21284002 */  addu       $a1, $s2, $zero
/* 8B60C 8009AE0C 43811000 */  sra        $s0, $s0, 5
/* 8B610 8009AE10 21300002 */  addu       $a2, $s0, $zero
/* 8B614 8009AE14 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B618 8009AE18 21380002 */  addu       $a3, $s0, $zero
/* 8B61C 8009AE1C EB6C010C */  jal        FUN_8005b3ac
/* 8B620 8009AE20 1000B0AF */   sw        $s0, 0x10($sp)
/* 8B624 8009AE24 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B628 8009AE28 F000C68F */  lw         $a2, 0xf0($fp)
/* 8B62C 8009AE2C 01005226 */  addiu      $s2, $s2, 1
/* 8B630 8009AE30 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8B634 8009AE34 1000A6AF */  sw         $a2, 0x10($sp)
/* 8B638 8009AE38 1400A6AF */  sw         $a2, 0x14($sp)
/* 8B63C 8009AE3C EC00C78F */  lw         $a3, 0xec($fp)
/* 8B640 8009AE40 21284002 */  addu       $a1, $s2, $zero
/* 8B644 8009AE44 0400E284 */  lh         $v0, 4($a3)
/* 8B648 8009AE48 0600E384 */  lh         $v1, 6($a3)
/* 8B64C 8009AE4C 08004224 */  addiu      $v0, $v0, 8
/* 8B650 8009AE50 40006324 */  addiu      $v1, $v1, 0x40
/* 8B654 8009AE54 21304000 */  addu       $a2, $v0, $zero
/* 8B658 8009AE58 F400C2AF */  sw         $v0, 0xf4($fp)
/* 8B65C 8009AE5C F800C3AF */  sw         $v1, 0xf8($fp)
/* 8B660 8009AE60 0C00E284 */  lh         $v0, 0xc($a3)
/* 8B664 8009AE64 21386000 */  addu       $a3, $v1, $zero
/* 8B668 8009AE68 1769010C */  jal        FUN_8005a45c
/* 8B66C 8009AE6C 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B670 8009AE70 EC00C88F */  lw         $t0, 0xec($fp)
/* 8B674 8009AE74 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B678 8009AE78 16000685 */  lh         $a2, 0x16($t0)
/* 8B67C 8009AE7C 18000785 */  lh         $a3, 0x18($t0)
/* 8B680 8009AE80 396D010C */  jal        FUN_8005b4e4
/* 8B684 8009AE84 21284002 */   addu      $a1, $s2, $zero
/* 8B688 8009AE88 21284002 */  addu       $a1, $s2, $zero
/* 8B68C 8009AE8C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B690 8009AE90 00002686 */  lh         $a2, ($s1)
/* 8B694 8009AE94 04002286 */  lh         $v0, 4($s1)
/* 8B698 8009AE98 F000C38F */  lw         $v1, 0xf0($fp)
/* 8B69C 8009AE9C 2130C200 */  addu       $a2, $a2, $v0
/* 8B6A0 8009AEA0 1000A3AF */  sw         $v1, 0x10($sp)
/* 8B6A4 8009AEA4 1400A3AF */  sw         $v1, 0x14($sp)
/* 8B6A8 8009AEA8 02002786 */  lh         $a3, 2($s1)
/* 8B6AC 8009AEAC 256C0208 */  j          .L8009B094
/* 8B6B0 8009AEB0 F8FFC624 */   addiu     $a2, $a2, -8
.L8009AEB4:
/* 8B6B4 8009AEB4 F000C4AF */  sw         $a0, 0xf0($fp)
/* 8B6B8 8009AEB8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B6BC 8009AEBC 08001324 */  addiu      $s3, $zero, 8
/* 8B6C0 8009AEC0 1000B3AF */  sw         $s3, 0x10($sp)
/* 8B6C4 8009AEC4 F000C68F */  lw         $a2, 0xf0($fp)
/* 8B6C8 8009AEC8 00000000 */  nop
/* 8B6CC 8009AECC 1400A6AF */  sw         $a2, 0x14($sp)
/* 8B6D0 8009AED0 EC00C78F */  lw         $a3, 0xec($fp)
/* 8B6D4 8009AED4 21284002 */  addu       $a1, $s2, $zero
/* 8B6D8 8009AED8 0400E684 */  lh         $a2, 4($a3)
/* 8B6DC 8009AEDC FFFF1424 */  addiu      $s4, $zero, -1
/* 8B6E0 8009AEE0 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8B6E4 8009AEE4 0600E784 */  lh         $a3, 6($a3)
/* 8B6E8 8009AEE8 EC00C88F */  lw         $t0, 0xec($fp)
/* 8B6EC 8009AEEC 1800C624 */  addiu      $a2, $a2, 0x18
/* 8B6F0 8009AEF0 0C000285 */  lh         $v0, 0xc($t0)
/* 8B6F4 8009AEF4 4000E724 */  addiu      $a3, $a3, 0x40
/* 8B6F8 8009AEF8 1769010C */  jal        FUN_8005a45c
/* 8B6FC 8009AEFC 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B700 8009AF00 EC00C28F */  lw         $v0, 0xec($fp)
/* 8B704 8009AF04 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B708 8009AF08 16004684 */  lh         $a2, 0x16($v0)
/* 8B70C 8009AF0C 18004784 */  lh         $a3, 0x18($v0)
/* 8B710 8009AF10 396D010C */  jal        FUN_8005b4e4
/* 8B714 8009AF14 21284002 */   addu      $a1, $s2, $zero
/* 8B718 8009AF18 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B71C 8009AF1C 1000B3AF */  sw         $s3, 0x10($sp)
/* 8B720 8009AF20 F000C38F */  lw         $v1, 0xf0($fp)
/* 8B724 8009AF24 21284002 */  addu       $a1, $s2, $zero
/* 8B728 8009AF28 1400A3AF */  sw         $v1, 0x14($sp)
/* 8B72C 8009AF2C 00002686 */  lh         $a2, ($s1)
/* 8B730 8009AF30 02002786 */  lh         $a3, 2($s1)
/* 8B734 8009AF34 976D010C */  jal        FUN_8005b65c
/* 8B738 8009AF38 F8FFC624 */   addiu     $a2, $a2, -8
/* 8B73C 8009AF3C 0C01D08F */  lw         $s0, 0x10c($fp)
/* 8B740 8009AF40 00000000 */  nop
/* 8B744 8009AF44 02000106 */  bgez       $s0, .L8009AF50
/* 8B748 8009AF48 00000000 */   nop
/* 8B74C 8009AF4C 1F001026 */  addiu      $s0, $s0, 0x1f
.L8009AF50:
/* 8B750 8009AF50 21284002 */  addu       $a1, $s2, $zero
/* 8B754 8009AF54 43811000 */  sra        $s0, $s0, 5
/* 8B758 8009AF58 21300002 */  addu       $a2, $s0, $zero
/* 8B75C 8009AF5C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B760 8009AF60 21380002 */  addu       $a3, $s0, $zero
/* 8B764 8009AF64 EB6C010C */  jal        FUN_8005b3ac
/* 8B768 8009AF68 1000B0AF */   sw        $s0, 0x10($sp)
/* 8B76C 8009AF6C EC00C58F */  lw         $a1, 0xec($fp)
/* 8B770 8009AF70 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B774 8009AF74 0400A684 */  lh         $a2, 4($a1)
/* 8B778 8009AF78 01005226 */  addiu      $s2, $s2, 1
/* 8B77C 8009AF7C 1000B3AF */  sw         $s3, 0x10($sp)
/* 8B780 8009AF80 F000C78F */  lw         $a3, 0xf0($fp)
/* 8B784 8009AF84 21284002 */  addu       $a1, $s2, $zero
/* 8B788 8009AF88 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8B78C 8009AF8C 1400A7AF */  sw         $a3, 0x14($sp)
/* 8B790 8009AF90 EC00C88F */  lw         $t0, 0xec($fp)
/* 8B794 8009AF94 2000C624 */  addiu      $a2, $a2, 0x20
/* 8B798 8009AF98 06000785 */  lh         $a3, 6($t0)
/* 8B79C 8009AF9C 0C000285 */  lh         $v0, 0xc($t0)
/* 8B7A0 8009AFA0 4000E724 */  addiu      $a3, $a3, 0x40
/* 8B7A4 8009AFA4 1769010C */  jal        FUN_8005a45c
/* 8B7A8 8009AFA8 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B7AC 8009AFAC EC00C28F */  lw         $v0, 0xec($fp)
/* 8B7B0 8009AFB0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B7B4 8009AFB4 16004684 */  lh         $a2, 0x16($v0)
/* 8B7B8 8009AFB8 18004784 */  lh         $a3, 0x18($v0)
/* 8B7BC 8009AFBC 396D010C */  jal        FUN_8005b4e4
/* 8B7C0 8009AFC0 21284002 */   addu      $a1, $s2, $zero
/* 8B7C4 8009AFC4 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B7C8 8009AFC8 1000B3AF */  sw         $s3, 0x10($sp)
/* 8B7CC 8009AFCC F000C38F */  lw         $v1, 0xf0($fp)
/* 8B7D0 8009AFD0 00000000 */  nop
/* 8B7D4 8009AFD4 1400A3AF */  sw         $v1, 0x14($sp)
/* 8B7D8 8009AFD8 00002686 */  lh         $a2, ($s1)
/* 8B7DC 8009AFDC 02002786 */  lh         $a3, 2($s1)
/* 8B7E0 8009AFE0 976D010C */  jal        FUN_8005b65c
/* 8B7E4 8009AFE4 21284002 */   addu      $a1, $s2, $zero
/* 8B7E8 8009AFE8 21284002 */  addu       $a1, $s2, $zero
/* 8B7EC 8009AFEC 21300002 */  addu       $a2, $s0, $zero
/* 8B7F0 8009AFF0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B7F4 8009AFF4 21380002 */  addu       $a3, $s0, $zero
/* 8B7F8 8009AFF8 EB6C010C */  jal        FUN_8005b3ac
/* 8B7FC 8009AFFC 1000B0AF */   sw        $s0, 0x10($sp)
/* 8B800 8009B000 01005226 */  addiu      $s2, $s2, 1
/* 8B804 8009B004 EC00C68F */  lw         $a2, 0xec($fp)
/* 8B808 8009B008 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B80C 8009B00C 0400C384 */  lh         $v1, 4($a2)
/* 8B810 8009B010 01000224 */  addiu      $v0, $zero, 1
/* 8B814 8009B014 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B818 8009B018 F000C78F */  lw         $a3, 0xf0($fp)
/* 8B81C 8009B01C 21284002 */  addu       $a1, $s2, $zero
/* 8B820 8009B020 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8B824 8009B024 28006324 */  addiu      $v1, $v1, 0x28
/* 8B828 8009B028 1400A7AF */  sw         $a3, 0x14($sp)
/* 8B82C 8009B02C F400C3AF */  sw         $v1, 0xf4($fp)
/* 8B830 8009B030 0600C284 */  lh         $v0, 6($a2)
/* 8B834 8009B034 04002386 */  lh         $v1, 4($s1)
/* 8B838 8009B038 F400C68F */  lw         $a2, 0xf4($fp)
/* 8B83C 8009B03C EC00C88F */  lw         $t0, 0xec($fp)
/* 8B840 8009B040 40004224 */  addiu      $v0, $v0, 0x40
/* 8B844 8009B044 F800C2AF */  sw         $v0, 0xf8($fp)
/* 8B848 8009B048 0C000285 */  lh         $v0, 0xc($t0)
/* 8B84C 8009B04C F800C78F */  lw         $a3, 0xf8($fp)
/* 8B850 8009B050 F4FF7324 */  addiu      $s3, $v1, -0xc
/* 8B854 8009B054 1769010C */  jal        FUN_8005a45c
/* 8B858 8009B058 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B85C 8009B05C EC00C28F */  lw         $v0, 0xec($fp)
/* 8B860 8009B060 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B864 8009B064 16004684 */  lh         $a2, 0x16($v0)
/* 8B868 8009B068 18004784 */  lh         $a3, 0x18($v0)
/* 8B86C 8009B06C 396D010C */  jal        FUN_8005b4e4
/* 8B870 8009B070 21284002 */   addu      $a1, $s2, $zero
/* 8B874 8009B074 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B878 8009B078 1000B3AF */  sw         $s3, 0x10($sp)
/* 8B87C 8009B07C F000C38F */  lw         $v1, 0xf0($fp)
/* 8B880 8009B080 21284002 */  addu       $a1, $s2, $zero
/* 8B884 8009B084 1400A3AF */  sw         $v1, 0x14($sp)
/* 8B888 8009B088 00002686 */  lh         $a2, ($s1)
/* 8B88C 8009B08C 02002786 */  lh         $a3, 2($s1)
/* 8B890 8009B090 0800C624 */  addiu      $a2, $a2, 8
.L8009B094:
/* 8B894 8009B094 976D010C */  jal        FUN_8005b65c
/* 8B898 8009B098 00000000 */   nop
/* 8B89C 8009B09C 21284002 */  addu       $a1, $s2, $zero
/* 8B8A0 8009B0A0 21300002 */  addu       $a2, $s0, $zero
/* 8B8A4 8009B0A4 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B8A8 8009B0A8 2138C000 */  addu       $a3, $a2, $zero
/* 8B8AC 8009B0AC EB6C010C */  jal        FUN_8005b3ac
/* 8B8B0 8009B0B0 1000B0AF */   sw        $s0, 0x10($sp)
/* 8B8B4 8009B0B4 01005226 */  addiu      $s2, $s2, 1
.L8009B0B8:
/* 8B8B8 8009B0B8 F8FFD626 */  addiu      $s6, $s6, -8
/* 8B8BC 8009B0BC FEFF023C */  lui        $v0, 0xfffe
/* 8B8C0 8009B0C0 84BD4234 */  ori        $v0, $v0, 0xbd84
/* 8B8C4 8009B0C4 21B8E202 */  addu       $s7, $s7, $v0
/* 8B8C8 8009B0C8 7801C48F */  lw         $a0, 0x178($fp)
/* 8B8CC 8009B0CC E400C58F */  lw         $a1, 0xe4($fp)
/* 8B8D0 8009B0D0 EEFF8424 */  addiu      $a0, $a0, -0x12
/* 8B8D4 8009B0D4 FFFFA524 */  addiu      $a1, $a1, -1
/* 8B8D8 8009B0D8 7801C4AF */  sw         $a0, 0x178($fp)
/* 8B8DC 8009B0DC BEFEA104 */  bgez       $a1, .L8009ABD8
/* 8B8E0 8009B0E0 E400C5AF */   sw        $a1, 0xe4($fp)
/* 8B8E4 8009B0E4 0F80063C */  lui        $a2, %hi(D_800F0028)
.L8009B0E8:
/* 8B8E8 8009B0E8 2800C224 */  addiu      $v0, $a2, %lo(D_800F0028)
/* 8B8EC 8009B0EC 20004480 */  lb         $a0, 0x20($v0)
/* 8B8F0 8009B0F0 02000324 */  addiu      $v1, $zero, 2
/* 8B8F4 8009B0F4 73008310 */  beq        $a0, $v1, .L8009B2C4
/* 8B8F8 8009B0F8 1380073C */   lui       $a3, %hi(D_801280E0)
/* 8B8FC 8009B0FC E080E224 */  addiu      $v0, $a3, %lo(D_801280E0)
/* 8B900 8009B100 50004390 */  lbu        $v1, 0x50($v0)
/* 8B904 8009B104 1380083C */  lui        $t0, %hi(D_801282E0)
/* 8B908 8009B108 E400C0AF */  sw         $zero, 0xe4($fp)
/* 8B90C 8009B10C C0100300 */  sll        $v0, $v1, 3
/* 8B910 8009B110 23104300 */  subu       $v0, $v0, $v1
/* 8B914 8009B114 80100200 */  sll        $v0, $v0, 2
/* 8B918 8009B118 E0820325 */  addiu      $v1, $t0, %lo(D_801282E0)
/* 8B91C 8009B11C 21804300 */  addu       $s0, $v0, $v1
.L8009B120:
/* 8B920 8009B120 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 8B924 8009B124 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 8B928 8009B128 E400C38F */  lw         $v1, 0xe4($fp)
/* 8B92C 8009B12C E400C68F */  lw         $a2, 0xe4($fp)
/* 8B930 8009B130 80280300 */  sll        $a1, $v1, 2
/* 8B934 8009B134 2110A300 */  addu       $v0, $a1, $v1
/* 8B938 8009B138 C0190200 */  sll        $v1, $v0, 7
/* 8B93C 8009B13C 21104300 */  addu       $v0, $v0, $v1
/* 8B940 8009B140 40110200 */  sll        $v0, $v0, 5
/* 8B944 8009B144 23104600 */  subu       $v0, $v0, $a2
/* 8B948 8009B148 80100200 */  sll        $v0, $v0, 2
/* 8B94C 8009B14C 21104400 */  addu       $v0, $v0, $a0
/* 8B950 8009B150 8A004290 */  lbu        $v0, 0x8a($v0)
/* 8B954 8009B154 07000324 */  addiu      $v1, $zero, 7
/* 8B958 8009B158 54004310 */  beq        $v0, $v1, .L8009B2AC
/* 8B95C 8009B15C 00000000 */   nop
/* 8B960 8009B160 52004010 */  beqz       $v0, .L8009B2AC
/* 8B964 8009B164 1B80043C */   lui       $a0, %hi(D_801B2B48)
/* 8B968 8009B168 0F80073C */  lui        $a3, %hi(D_800EBFB0)
/* 8B96C 8009B16C B0BFE224 */  addiu      $v0, $a3, %lo(D_800EBFB0)
/* 8B970 8009B170 21104500 */  addu       $v0, $v0, $a1
/* 8B974 8009B174 3003438C */  lw         $v1, 0x330($v0)
/* 8B978 8009B178 482B8424 */  addiu      $a0, $a0, %lo(D_801B2B48)
/* 8B97C 8009B17C 80180300 */  sll        $v1, $v1, 2
/* 8B980 8009B180 21186400 */  addu       $v1, $v1, $a0
/* 8B984 8009B184 0000638C */  lw         $v1, ($v1)
/* 8B988 8009B188 00000000 */  nop
/* 8B98C 8009B18C FFFF6324 */  addiu      $v1, $v1, -1
/* 8B990 8009B190 0700622C */  sltiu      $v0, $v1, 7
/* 8B994 8009B194 10004010 */  beqz       $v0, .L8009B1D8
/* 8B998 8009B198 0180023C */   lui       $v0, %hi(D_800167C4)
/* 8B99C 8009B19C C4674224 */  addiu      $v0, $v0, %lo(D_800167C4)
/* 8B9A0 8009B1A0 80180300 */  sll        $v1, $v1, 2
/* 8B9A4 8009B1A4 21186200 */  addu       $v1, $v1, $v0
/* 8B9A8 8009B1A8 0000648C */  lw         $a0, ($v1)
/* 8B9AC 8009B1AC 00000000 */  nop
/* 8B9B0 8009B1B0 08008000 */  jr         $a0
/* 8B9B4 8009B1B4 00000000 */   nop
/* 8B9B8 8009B1B8 776C0208 */  j          .L8009B1DC
/* 8B9BC 8009B1BC 03000324 */   addiu     $v1, $zero, 3
/* 8B9C0 8009B1C0 776C0208 */  j          .L8009B1DC
/* 8B9C4 8009B1C4 01000324 */   addiu     $v1, $zero, 1
/* 8B9C8 8009B1C8 776C0208 */  j          .L8009B1DC
/* 8B9CC 8009B1CC 02000324 */   addiu     $v1, $zero, 2
/* 8B9D0 8009B1D0 776C0208 */  j          .L8009B1DC
/* 8B9D4 8009B1D4 04000324 */   addiu     $v1, $zero, 4
.L8009B1D8:
/* 8B9D8 8009B1D8 21180000 */  addu       $v1, $zero, $zero
.L8009B1DC:
/* 8B9DC 8009B1DC 20000824 */  addiu      $t0, $zero, 0x20
/* 8B9E0 8009B1E0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8B9E4 8009B1E4 40190300 */  sll        $v1, $v1, 5
/* 8B9E8 8009B1E8 F000C8AF */  sw         $t0, 0xf0($fp)
/* 8B9EC 8009B1EC 04000286 */  lh         $v0, 4($s0)
/* 8B9F0 8009B1F0 50006324 */  addiu      $v1, $v1, 0x50
/* 8B9F4 8009B1F4 F400C2AF */  sw         $v0, 0xf4($fp)
/* 8B9F8 8009B1F8 FFFF0224 */  addiu      $v0, $zero, -1
/* 8B9FC 8009B1FC 1000A8AF */  sw         $t0, 0x10($sp)
/* 8BA00 8009B200 1400A8AF */  sw         $t0, 0x14($sp)
/* 8BA04 8009B204 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8BA08 8009B208 06000286 */  lh         $v0, 6($s0)
/* 8BA0C 8009B20C F400C68F */  lw         $a2, 0xf4($fp)
/* 8BA10 8009B210 21104300 */  addu       $v0, $v0, $v1
/* 8BA14 8009B214 F800C2AF */  sw         $v0, 0xf8($fp)
/* 8BA18 8009B218 0C000286 */  lh         $v0, 0xc($s0)
/* 8BA1C 8009B21C F800C78F */  lw         $a3, 0xf8($fp)
/* 8BA20 8009B220 21284002 */  addu       $a1, $s2, $zero
/* 8BA24 8009B224 1769010C */  jal        FUN_8005a45c
/* 8BA28 8009B228 1800A2AF */   sw        $v0, 0x18($sp)
/* 8BA2C 8009B22C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8BA30 8009B230 16000686 */  lh         $a2, 0x16($s0)
/* 8BA34 8009B234 18000786 */  lh         $a3, 0x18($s0)
/* 8BA38 8009B238 396D010C */  jal        FUN_8005b4e4
/* 8BA3C 8009B23C 21284002 */   addu      $a1, $s2, $zero
/* 8BA40 8009B240 E000C38F */  lw         $v1, 0xe0($fp)
/* 8BA44 8009B244 E400C48F */  lw         $a0, 0xe4($fp)
/* 8BA48 8009B248 00000000 */  nop
/* 8BA4C 8009B24C 02008010 */  beqz       $a0, .L8009B258
/* 8BA50 8009B250 98FF6624 */   addiu     $a2, $v1, -0x68
/* 8BA54 8009B254 68016624 */  addiu      $a2, $v1, 0x168
.L8009B258:
/* 8BA58 8009B258 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8BA5C 8009B25C 0401C88F */  lw         $t0, 0x104($fp)
/* 8BA60 8009B260 F000C28F */  lw         $v0, 0xf0($fp)
/* 8BA64 8009B264 2000078D */  lw         $a3, 0x20($t0)
/* 8BA68 8009B268 21284002 */  addu       $a1, $s2, $zero
/* 8BA6C 8009B26C 1000A2AF */  sw         $v0, 0x10($sp)
/* 8BA70 8009B270 1400A2AF */  sw         $v0, 0x14($sp)
/* 8BA74 8009B274 976D010C */  jal        FUN_8005b65c
/* 8BA78 8009B278 0300E724 */   addiu     $a3, $a3, 3
/* 8BA7C 8009B27C 0C01C68F */  lw         $a2, 0x10c($fp)
/* 8BA80 8009B280 00000000 */  nop
/* 8BA84 8009B284 0200C104 */  bgez       $a2, .L8009B290
/* 8BA88 8009B288 00000000 */   nop
/* 8BA8C 8009B28C 1F00C624 */  addiu      $a2, $a2, 0x1f
.L8009B290:
/* 8BA90 8009B290 43310600 */  sra        $a2, $a2, 5
/* 8BA94 8009B294 21284002 */  addu       $a1, $s2, $zero
/* 8BA98 8009B298 1000A6AF */  sw         $a2, 0x10($sp)
/* 8BA9C 8009B29C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8BAA0 8009B2A0 EB6C010C */  jal        FUN_8005b3ac
/* 8BAA4 8009B2A4 2138C000 */   addu      $a3, $a2, $zero
/* 8BAA8 8009B2A8 01005226 */  addiu      $s2, $s2, 1
.L8009B2AC:
/* 8BAAC 8009B2AC E400C38F */  lw         $v1, 0xe4($fp)
/* 8BAB0 8009B2B0 00000000 */  nop
/* 8BAB4 8009B2B4 01006324 */  addiu      $v1, $v1, 1
/* 8BAB8 8009B2B8 02006228 */  slti       $v0, $v1, 2
/* 8BABC 8009B2BC 98FF4014 */  bnez       $v0, .L8009B120
/* 8BAC0 8009B2C0 E400C3AF */   sw        $v1, 0xe4($fp)
.L8009B2C4:
/* 8BAC4 8009B2C4 21A80000 */  addu       $s5, $zero, $zero
.L8009B2C8:
/* 8BAC8 8009B2C8 C0101500 */  sll        $v0, $s5, 3
/* 8BACC 8009B2CC 23105500 */  subu       $v0, $v0, $s5
/* 8BAD0 8009B2D0 80100200 */  sll        $v0, $v0, 2
/* 8BAD4 8009B2D4 21105500 */  addu       $v0, $v0, $s5
/* 8BAD8 8009B2D8 80100200 */  sll        $v0, $v0, 2
/* 8BADC 8009B2DC 0F80043C */  lui        $a0, %hi(D_800EBFB0)
/* 8BAE0 8009B2E0 B0BF8324 */  addiu      $v1, $a0, %lo(D_800EBFB0)
/* 8BAE4 8009B2E4 21184300 */  addu       $v1, $v0, $v1
/* 8BAE8 8009B2E8 1B80053C */  lui        $a1, %hi(D_801B2B5C)
/* 8BAEC 8009B2EC 08000224 */  addiu      $v0, $zero, 8
/* 8BAF0 8009B2F0 6C00A216 */  bne        $s5, $v0, .L8009B4A4
/* 8BAF4 8009B2F4 5C2BA3AC */   sw        $v1, %lo(D_801B2B5C)($a1)
/* 8BAF8 8009B2F8 0F80063C */  lui        $a2, %hi(D_800F0028)
/* 8BAFC 8009B2FC 2800C624 */  addiu      $a2, $a2, %lo(D_800F0028)
/* 8BB00 8009B300 8A00C290 */  lbu        $v0, 0x8a($a2)
/* 8BB04 8009B304 07000724 */  addiu      $a3, $zero, 7
/* 8BB08 8009B308 09004710 */  beq        $v0, $a3, .L8009B330
/* 8BB0C 8009B30C 21A00000 */   addu      $s4, $zero, $zero
/* 8BB10 8009B310 08004010 */  beqz       $v0, .L8009B334
/* 8BB14 8009B314 1080033C */   lui       $v1, 0x8010
/* 8BB18 8009B318 B001C88F */  lw         $t0, 0x1b0($fp)
/* 8BB1C 8009B31C 00000000 */  nop
/* 8BB20 8009B320 0800028D */  lw         $v0, 8($t0)
/* 8BB24 8009B324 00000000 */  nop
/* 8BB28 8009B328 21005514 */  bne        $v0, $s5, .L8009B3B0
/* 8BB2C 8009B32C 0F80033C */   lui       $v1, 0x800f
.L8009B330:
/* 8BB30 8009B330 1080033C */  lui        $v1, %hi(D_80100028)
.L8009B334:
/* 8BB34 8009B334 28006324 */  addiu      $v1, $v1, %lo(D_80100028)
/* 8BB38 8009B338 06436290 */  lbu        $v0, 0x4306($v1)
/* 8BB3C 8009B33C 07000424 */  addiu      $a0, $zero, 7
/* 8BB40 8009B340 09004410 */  beq        $v0, $a0, .L8009B368
/* 8BB44 8009B344 00000000 */   nop
/* 8BB48 8009B348 08004010 */  beqz       $v0, .L8009B36C
/* 8BB4C 8009B34C 0F80023C */   lui       $v0, 0x800f
/* 8BB50 8009B350 B001C58F */  lw         $a1, 0x1b0($fp)
/* 8BB54 8009B354 00000000 */  nop
/* 8BB58 8009B358 0C00A28C */  lw         $v0, 0xc($a1)
/* 8BB5C 8009B35C 00000000 */  nop
/* 8BB60 8009B360 13005514 */  bne        $v0, $s5, .L8009B3B0
/* 8BB64 8009B364 0F80033C */   lui       $v1, 0x800f
.L8009B368:
/* 8BB68 8009B368 0F80023C */  lui        $v0, %hi(D_800F001C)
.L8009B36C:
/* 8BB6C 8009B36C 1C00448C */  lw         $a0, %lo(D_800F001C)($v0)
/* 8BB70 8009B370 8888023C */  lui        $v0, 0x8888
/* 8BB74 8009B374 89884234 */  ori        $v0, $v0, 0x8889
/* 8BB78 8009B378 00230400 */  sll        $a0, $a0, 0xc
/* 8BB7C 8009B37C 19008200 */  multu      $a0, $v0
/* 8BB80 8009B380 21480000 */  addu       $t1, $zero, $zero
/* 8BB84 8009B384 8001C9AF */  sw         $t1, 0x180($fp)
/* 8BB88 8009B388 10200000 */  mfhi       $a0
/* 8BB8C 8009B38C F4F1000C */  jal        rsin
/* 8BB90 8009B390 02210400 */   srl       $a0, $a0, 4
/* 8BB94 8009B394 8001C98F */  lw         $t1, 0x180($fp)
/* 8BB98 8009B398 02004104 */  bgez       $v0, .L8009B3A4
/* 8BB9C 8009B39C 00000000 */   nop
/* 8BBA0 8009B3A0 3F004224 */  addiu      $v0, $v0, 0x3f
.L8009B3A4:
/* 8BBA4 8009B3A4 83110200 */  sra        $v0, $v0, 6
/* 8BBA8 8009B3A8 066D0208 */  j          .L8009B418
/* 8BBAC 8009B3AC 40005024 */   addiu     $s0, $v0, 0x40
.L8009B3B0:
/* 8BBB0 8009B3B0 28006224 */  addiu      $v0, $v1, 0x28
/* 8BBB4 8009B3B4 8A004290 */  lbu        $v0, 0x8a($v0)
/* 8BBB8 8009B3B8 07000324 */  addiu      $v1, $zero, 7
/* 8BBBC 8009B3BC 15004310 */  beq        $v0, $v1, .L8009B414
/* 8BBC0 8009B3C0 21480000 */   addu      $t1, $zero, $zero
/* 8BBC4 8009B3C4 14004010 */  beqz       $v0, .L8009B418
/* 8BBC8 8009B3C8 80001024 */   addiu     $s0, $zero, 0x80
/* 8BBCC 8009B3CC B001C48F */  lw         $a0, 0x1b0($fp)
/* 8BBD0 8009B3D0 00000000 */  nop
/* 8BBD4 8009B3D4 0800828C */  lw         $v0, 8($a0)
/* 8BBD8 8009B3D8 00000000 */  nop
/* 8BBDC 8009B3DC 0E005510 */  beq        $v0, $s5, .L8009B418
/* 8BBE0 8009B3E0 1080053C */   lui       $a1, %hi(D_80100028)
/* 8BBE4 8009B3E4 2800A524 */  addiu      $a1, $a1, %lo(D_80100028)
/* 8BBE8 8009B3E8 0643A290 */  lbu        $v0, 0x4306($a1)
/* 8BBEC 8009B3EC 00000000 */  nop
/* 8BBF0 8009B3F0 09004310 */  beq        $v0, $v1, .L8009B418
/* 8BBF4 8009B3F4 00000000 */   nop
/* 8BBF8 8009B3F8 08004010 */  beqz       $v0, .L8009B41C
/* 8BBFC 8009B3FC 1200033C */   lui       $v1, 0x12
/* 8BC00 8009B400 0C00828C */  lw         $v0, 0xc($a0)
/* 8BC04 8009B404 00000000 */  nop
/* 8BC08 8009B408 04005514 */  bne        $v0, $s5, .L8009B41C
/* 8BC0C 8009B40C 04000924 */   addiu     $t1, $zero, 4
/* 8BC10 8009B410 21480000 */  addu       $t1, $zero, $zero
.L8009B414:
/* 8BC14 8009B414 80001024 */  addiu      $s0, $zero, 0x80
.L8009B418:
/* 8BC18 8009B418 1200033C */  lui        $v1, 0x12
.L8009B41C:
/* 8BC1C 8009B41C C30C6334 */  ori        $v1, $v1, 0xcc3
/* 8BC20 8009B420 0F002231 */  andi       $v0, $t1, 0xf
/* 8BC24 8009B424 00160200 */  sll        $v0, $v0, 0x18
/* 8BC28 8009B428 25384300 */  or         $a3, $v0, $v1
/* 8BC2C 8009B42C 80201500 */  sll        $a0, $s5, 2
/* 8BC30 8009B430 0C01C28F */  lw         $v0, 0x10c($fp)
/* 8BC34 8009B434 0401C58F */  lw         $a1, 0x104($fp)
/* 8BC38 8009B438 FC00C68F */  lw         $a2, 0xfc($fp)
/* 8BC3C 8009B43C 80181400 */  sll        $v1, $s4, 2
/* 8BC40 8009B440 5401C4AF */  sw         $a0, 0x154($fp)
/* 8BC44 8009B444 18000202 */  mult       $s0, $v0
/* 8BC48 8009B448 21109500 */  addu       $v0, $a0, $s5
/* 8BC4C 8009B44C C0100200 */  sll        $v0, $v0, 3
/* 8BC50 8009B450 21186200 */  addu       $v1, $v1, $v0
/* 8BC54 8009B454 2120A400 */  addu       $a0, $a1, $a0
/* 8BC58 8009B458 0000858C */  lw         $a1, ($a0)
/* 8BC5C 8009B45C 2120C300 */  addu       $a0, $a2, $v1
/* 8BC60 8009B460 C0101400 */  sll        $v0, $s4, 3
/* 8BC64 8009B464 1B80063C */  lui        $a2, %hi(D_801B2B5C)
/* 8BC68 8009B468 10004224 */  addiu      $v0, $v0, 0x10
/* 8BC6C 8009B46C 5C2BC38C */  lw         $v1, %lo(D_801B2B5C)($a2)
/* 8BC70 8009B470 0E00A524 */  addiu      $a1, $a1, 0xe
/* 8BC74 8009B474 12400000 */  mflo       $t0
/* 8BC78 8009B478 02000105 */  bgez       $t0, .L8009B484
/* 8BC7C 8009B47C 21306200 */   addu      $a2, $v1, $v0
/* 8BC80 8009B480 FF0F0825 */  addiu      $t0, $t0, 0xfff
.L8009B484:
/* 8BC84 8009B484 03130800 */  sra        $v0, $t0, 0xc
/* 8BC88 8009B488 1000A2AF */  sw         $v0, 0x10($sp)
/* 8BC8C 8009B48C 0000848C */  lw         $a0, ($a0)
/* 8BC90 8009B490 0100A826 */  addiu      $t0, $s5, 1
/* 8BC94 8009B494 A974010C */  jal        FUN_8005d2a4
/* 8BC98 8009B498 4401C8AF */   sw        $t0, 0x144($fp)
/* 8BC9C 8009B49C FF6E0208 */  j          .L8009BBFC
/* 8BCA0 8009B4A0 0F80053C */   lui       $a1, 0x800f
.L8009B4A4:
/* 8BCA4 8009B4A4 21A00000 */  addu       $s4, $zero, $zero
/* 8BCA8 8009B4A8 80101500 */  sll        $v0, $s5, 2
/* 8BCAC 8009B4AC 0100A426 */  addiu      $a0, $s5, 1
/* 8BCB0 8009B4B0 2000C527 */  addiu      $a1, $fp, 0x20
/* 8BCB4 8009B4B4 0300A632 */  andi       $a2, $s5, 3
/* 8BCB8 8009B4B8 2400C827 */  addiu      $t0, $fp, 0x24
/* 8BCBC 8009B4BC 5401C2AF */  sw         $v0, 0x154($fp)
/* 8BCC0 8009B4C0 4401C4AF */  sw         $a0, 0x144($fp)
/* 8BCC4 8009B4C4 3801C5AF */  sw         $a1, 0x138($fp)
/* 8BCC8 8009B4C8 0000628C */  lw         $v0, ($v1)
/* 8BCCC 8009B4CC E000C78F */  lw         $a3, 0xe0($fp)
/* 8BCD0 8009B4D0 E000C48F */  lw         $a0, 0xe0($fp)
/* 8BCD4 8009B4D4 2800C327 */  addiu      $v1, $fp, 0x28
/* 8BCD8 8009B4D8 5001C6AF */  sw         $a2, 0x150($fp)
/* 8BCDC 8009B4DC 3C01C8AF */  sw         $t0, 0x13c($fp)
/* 8BCE0 8009B4E0 4001C3AF */  sw         $v1, 0x140($fp)
/* 8BCE4 8009B4E4 80FFE724 */  addiu      $a3, $a3, -0x80
/* 8BCE8 8009B4E8 C8FF8424 */  addiu      $a0, $a0, -0x38
/* 8BCEC 8009B4EC 3001C7AF */  sw         $a3, 0x130($fp)
/* 8BCF0 8009B4F0 C7004018 */  blez       $v0, .L8009B810
/* 8BCF4 8009B4F4 3401C4AF */   sw        $a0, 0x134($fp)
/* 8BCF8 8009B4F8 0100073C */  lui        $a3, 1
/* 8BCFC 8009B4FC 0401C58F */  lw         $a1, 0x104($fp)
/* 8BD00 8009B500 5401C68F */  lw         $a2, 0x154($fp)
/* 8BD04 8009B504 7C42E734 */  ori        $a3, $a3, 0x427c
/* 8BD08 8009B508 7401C7AF */  sw         $a3, 0x174($fp)
/* 8BD0C 8009B50C 2128A600 */  addu       $a1, $a1, $a2
/* 8BD10 8009B510 2110D500 */  addu       $v0, $a2, $s5
/* 8BD14 8009B514 C0100200 */  sll        $v0, $v0, 3
/* 8BD18 8009B518 2401C5AF */  sw         $a1, 0x124($fp)
/* 8BD1C 8009B51C 2001C2AF */  sw         $v0, 0x120($fp)
/* 8BD20 8009B520 21480000 */  addu       $t1, $zero, $zero
.L8009B524:
/* 8BD24 8009B524 80001024 */  addiu      $s0, $zero, 0x80
/* 8BD28 8009B528 01008826 */  addiu      $t0, $s4, 1
/* 8BD2C 8009B52C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 8BD30 8009B530 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 8BD34 8009B534 8A005124 */  addiu      $s1, $v0, 0x8a
/* 8BD38 8009B538 21B00000 */  addu       $s6, $zero, $zero
/* 8BD3C 8009B53C 2001C48F */  lw         $a0, 0x120($fp)
/* 8BD40 8009B540 80181400 */  sll        $v1, $s4, 2
/* 8BD44 8009B544 E400C0AF */  sw         $zero, 0xe4($fp)
/* 8BD48 8009B548 4801C8AF */  sw         $t0, 0x148($fp)
/* 8BD4C 8009B54C 5801C3AF */  sw         $v1, 0x158($fp)
/* 8BD50 8009B550 21B86400 */  addu       $s7, $v1, $a0
.L8009B554:
/* 8BD54 8009B554 00002292 */  lbu        $v0, ($s1)
/* 8BD58 8009B558 07000624 */  addiu      $a2, $zero, 7
/* 8BD5C 8009B55C 60004610 */  beq        $v0, $a2, .L8009B6E0
/* 8BD60 8009B560 2128C002 */   addu      $a1, $s6, $zero
/* 8BD64 8009B564 5E004010 */  beqz       $v0, .L8009B6E0
/* 8BD68 8009B568 00000000 */   nop
/* 8BD6C 8009B56C 5C004610 */  beq        $v0, $a2, .L8009B6E0
/* 8BD70 8009B570 00000000 */   nop
/* 8BD74 8009B574 0C004010 */  beqz       $v0, .L8009B5A8
/* 8BD78 8009B578 07000824 */   addiu     $t0, $zero, 7
/* 8BD7C 8009B57C B001C78F */  lw         $a3, 0x1b0($fp)
/* 8BD80 8009B580 00000000 */  nop
/* 8BD84 8009B584 2110F600 */  addu       $v0, $a3, $s6
/* 8BD88 8009B588 0800438C */  lw         $v1, 8($v0)
/* 8BD8C 8009B58C 00000000 */  nop
/* 8BD90 8009B590 04007514 */  bne        $v1, $s5, .L8009B5A4
/* 8BD94 8009B594 00000000 */   nop
/* 8BD98 8009B598 21480000 */  addu       $t1, $zero, $zero
/* 8BD9C 8009B59C C06D0208 */  j          .L8009B700
/* 8BDA0 8009B5A0 80001024 */   addiu     $s0, $zero, 0x80
.L8009B5A4:
/* 8BDA4 8009B5A4 00002292 */  lbu        $v0, ($s1)
.L8009B5A8:
/* 8BDA8 8009B5A8 00000000 */  nop
/* 8BDAC 8009B5AC 4C004810 */  beq        $v0, $t0, .L8009B6E0
/* 8BDB0 8009B5B0 00000000 */   nop
/* 8BDB4 8009B5B4 4A004010 */  beqz       $v0, .L8009B6E0
/* 8BDB8 8009B5B8 1B80033C */   lui       $v1, %hi(D_801B2B5C)
/* 8BDBC 8009B5BC 5C2B628C */  lw         $v0, %lo(D_801B2B5C)($v1)
/* 8BDC0 8009B5C0 00000000 */  nop
/* 8BDC4 8009B5C4 21104500 */  addu       $v0, $v0, $a1
/* 8BDC8 8009B5C8 0400438C */  lw         $v1, 4($v0)
/* 8BDCC 8009B5CC 00000000 */  nop
/* 8BDD0 8009B5D0 43007414 */  bne        $v1, $s4, .L8009B6E0
/* 8BDD4 8009B5D4 01000424 */   addiu     $a0, $zero, 1
/* 8BDD8 8009B5D8 04000624 */  addiu      $a2, $zero, 4
/* 8BDDC 8009B5DC E400C58F */  lw         $a1, 0xe4($fp)
/* 8BDE0 8009B5E0 0001C78F */  lw         $a3, 0x100($fp)
/* 8BDE4 8009B5E4 01000824 */  addiu      $t0, $zero, 1
/* 8BDE8 8009B5E8 F000C6AF */  sw         $a2, 0xf0($fp)
/* 8BDEC 8009B5EC 0410A400 */  sllv       $v0, $a0, $a1
/* 8BDF0 8009B5F0 25482201 */  or         $t1, $t1, $v0
/* 8BDF4 8009B5F4 2110F700 */  addu       $v0, $a3, $s7
/* 8BDF8 8009B5F8 21284002 */  addu       $a1, $s2, $zero
/* 8BDFC 8009B5FC B401C48F */  lw         $a0, 0x1b4($fp)
/* 8BE00 8009B600 0000538C */  lw         $s3, ($v0)
/* 8BE04 8009B604 FFFF0224 */  addiu      $v0, $zero, -1
/* 8BE08 8009B608 1000A8AF */  sw         $t0, 0x10($sp)
/* 8BE0C 8009B60C 1400A6AF */  sw         $a2, 0x14($sp)
/* 8BE10 8009B610 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8BE14 8009B614 E400C28F */  lw         $v0, 0xe4($fp)
/* 8BE18 8009B618 EC00C38F */  lw         $v1, 0xec($fp)
/* 8BE1C 8009B61C 00310200 */  sll        $a2, $v0, 4
/* 8BE20 8009B620 3000C624 */  addiu      $a2, $a2, 0x30
/* 8BE24 8009B624 04006284 */  lh         $v0, 4($v1)
/* 8BE28 8009B628 06006784 */  lh         $a3, 6($v1)
/* 8BE2C 8009B62C 21304600 */  addu       $a2, $v0, $a2
/* 8BE30 8009B630 0C006284 */  lh         $v0, 0xc($v1)
/* 8BE34 8009B634 4C00E724 */  addiu      $a3, $a3, 0x4c
/* 8BE38 8009B638 1800A2AF */  sw         $v0, 0x18($sp)
/* 8BE3C 8009B63C 1769010C */  jal        FUN_8005a45c
/* 8BE40 8009B640 8001C9AF */   sw        $t1, 0x180($fp)
/* 8BE44 8009B644 EC00C58F */  lw         $a1, 0xec($fp)
/* 8BE48 8009B648 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8BE4C 8009B64C 1600A684 */  lh         $a2, 0x16($a1)
/* 8BE50 8009B650 1800A784 */  lh         $a3, 0x18($a1)
/* 8BE54 8009B654 396D010C */  jal        FUN_8005b4e4
/* 8BE58 8009B658 21284002 */   addu      $a1, $s2, $zero
/* 8BE5C 8009B65C 80001024 */  addiu      $s0, $zero, 0x80
/* 8BE60 8009B660 2401C68F */  lw         $a2, 0x124($fp)
/* 8BE64 8009B664 FC00C88F */  lw         $t0, 0xfc($fp)
/* 8BE68 8009B668 8001C98F */  lw         $t1, 0x180($fp)
/* 8BE6C 8009B66C E400C38F */  lw         $v1, 0xe4($fp)
/* 8BE70 8009B670 0000C28C */  lw         $v0, ($a2)
/* 8BE74 8009B674 21301701 */  addu       $a2, $t0, $s7
/* 8BE78 8009B678 02006010 */  beqz       $v1, .L8009B684
/* 8BE7C 8009B67C 02004724 */   addiu     $a3, $v0, 2
/* 8BE80 8009B680 20004724 */  addiu      $a3, $v0, 0x20
.L8009B684:
/* 8BE84 8009B684 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8BE88 8009B688 1000B3AF */  sw         $s3, 0x10($sp)
/* 8BE8C 8009B68C F000C88F */  lw         $t0, 0xf0($fp)
/* 8BE90 8009B690 00000000 */  nop
/* 8BE94 8009B694 1400A8AF */  sw         $t0, 0x14($sp)
/* 8BE98 8009B698 0000C68C */  lw         $a2, ($a2)
/* 8BE9C 8009B69C 21284002 */  addu       $a1, $s2, $zero
/* 8BEA0 8009B6A0 976D010C */  jal        FUN_8005b65c
/* 8BEA4 8009B6A4 8001C9AF */   sw        $t1, 0x180($fp)
/* 8BEA8 8009B6A8 0C01C68F */  lw         $a2, 0x10c($fp)
/* 8BEAC 8009B6AC 8001C98F */  lw         $t1, 0x180($fp)
/* 8BEB0 8009B6B0 0200C104 */  bgez       $a2, .L8009B6BC
/* 8BEB4 8009B6B4 00000000 */   nop
/* 8BEB8 8009B6B8 1F00C624 */  addiu      $a2, $a2, 0x1f
.L8009B6BC:
/* 8BEBC 8009B6BC 43310600 */  sra        $a2, $a2, 5
/* 8BEC0 8009B6C0 21284002 */  addu       $a1, $s2, $zero
/* 8BEC4 8009B6C4 1000A6AF */  sw         $a2, 0x10($sp)
/* 8BEC8 8009B6C8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8BECC 8009B6CC 2138C000 */  addu       $a3, $a2, $zero
/* 8BED0 8009B6D0 EB6C010C */  jal        FUN_8005b3ac
/* 8BED4 8009B6D4 8001C9AF */   sw        $t1, 0x180($fp)
/* 8BED8 8009B6D8 01005226 */  addiu      $s2, $s2, 1
/* 8BEDC 8009B6DC 8001C98F */  lw         $t1, 0x180($fp)
.L8009B6E0:
/* 8BEE0 8009B6E0 0400D626 */  addiu      $s6, $s6, 4
/* 8BEE4 8009B6E4 7401C28F */  lw         $v0, 0x174($fp)
/* 8BEE8 8009B6E8 E400C38F */  lw         $v1, 0xe4($fp)
/* 8BEEC 8009B6EC 21882202 */  addu       $s1, $s1, $v0
/* 8BEF0 8009B6F0 01006324 */  addiu      $v1, $v1, 1
/* 8BEF4 8009B6F4 02006228 */  slti       $v0, $v1, 2
/* 8BEF8 8009B6F8 96FF4014 */  bnez       $v0, .L8009B554
/* 8BEFC 8009B6FC E400C3AF */   sw        $v1, 0xe4($fp)
.L8009B700:
/* 8BF00 8009B700 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 8BF04 8009B704 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 8BF08 8009B708 8A008290 */  lbu        $v0, 0x8a($a0)
/* 8BF0C 8009B70C 07000524 */  addiu      $a1, $zero, 7
/* 8BF10 8009B710 09004510 */  beq        $v0, $a1, .L8009B738
/* 8BF14 8009B714 1080073C */   lui       $a3, %hi(D_80100028)
/* 8BF18 8009B718 08004010 */  beqz       $v0, .L8009B73C
/* 8BF1C 8009B71C 2800E724 */   addiu     $a3, $a3, %lo(D_80100028)
/* 8BF20 8009B720 B001C68F */  lw         $a2, 0x1b0($fp)
/* 8BF24 8009B724 00000000 */  nop
/* 8BF28 8009B728 0800C28C */  lw         $v0, 8($a2)
/* 8BF2C 8009B72C 00000000 */  nop
/* 8BF30 8009B730 11005510 */  beq        $v0, $s5, .L8009B778
/* 8BF34 8009B734 1080073C */   lui       $a3, %hi(D_80100028)
.L8009B738:
/* 8BF38 8009B738 2800E724 */  addiu      $a3, $a3, %lo(D_80100028)
.L8009B73C:
/* 8BF3C 8009B73C 0643E290 */  lbu        $v0, 0x4306($a3)
/* 8BF40 8009B740 07000824 */  addiu      $t0, $zero, 7
/* 8BF44 8009B744 09004810 */  beq        $v0, $t0, .L8009B76C
/* 8BF48 8009B748 00000000 */   nop
/* 8BF4C 8009B74C 07004010 */  beqz       $v0, .L8009B76C
/* 8BF50 8009B750 00000000 */   nop
/* 8BF54 8009B754 B001C38F */  lw         $v1, 0x1b0($fp)
/* 8BF58 8009B758 00000000 */  nop
/* 8BF5C 8009B75C 0C00628C */  lw         $v0, 0xc($v1)
/* 8BF60 8009B760 00000000 */  nop
/* 8BF64 8009B764 05005510 */  beq        $v0, $s5, .L8009B77C
/* 8BF68 8009B768 1200033C */   lui       $v1, 0x12
.L8009B76C:
/* 8BF6C 8009B76C 03002015 */  bnez       $t1, .L8009B77C
/* 8BF70 8009B770 1200033C */   lui       $v1, 0x12
/* 8BF74 8009B774 04000924 */  addiu      $t1, $zero, 4
.L8009B778:
/* 8BF78 8009B778 1200033C */  lui        $v1, 0x12
.L8009B77C:
/* 8BF7C 8009B77C C30C6334 */  ori        $v1, $v1, 0xcc3
/* 8BF80 8009B780 0C01C28F */  lw         $v0, 0x10c($fp)
/* 8BF84 8009B784 2001C58F */  lw         $a1, 0x120($fp)
/* 8BF88 8009B788 2401C68F */  lw         $a2, 0x124($fp)
/* 8BF8C 8009B78C 18000202 */  mult       $s0, $v0
/* 8BF90 8009B790 0F002231 */  andi       $v0, $t1, 0xf
/* 8BF94 8009B794 00160200 */  sll        $v0, $v0, 0x18
/* 8BF98 8009B798 25384300 */  or         $a3, $v0, $v1
/* 8BF9C 8009B79C 5801C38F */  lw         $v1, 0x158($fp)
/* 8BFA0 8009B7A0 FC00C28F */  lw         $v0, 0xfc($fp)
/* 8BFA4 8009B7A4 21206500 */  addu       $a0, $v1, $a1
/* 8BFA8 8009B7A8 0000C38C */  lw         $v1, ($a2)
/* 8BFAC 8009B7AC 21204400 */  addu       $a0, $v0, $a0
/* 8BFB0 8009B7B0 0E006524 */  addiu      $a1, $v1, 0xe
/* 8BFB4 8009B7B4 5801C38F */  lw         $v1, 0x158($fp)
/* 8BFB8 8009B7B8 1B80063C */  lui        $a2, %hi(D_801B2B5C)
/* 8BFBC 8009B7BC 21107400 */  addu       $v0, $v1, $s4
/* 8BFC0 8009B7C0 40100200 */  sll        $v0, $v0, 1
/* 8BFC4 8009B7C4 5C2BC38C */  lw         $v1, %lo(D_801B2B5C)($a2)
/* 8BFC8 8009B7C8 10004224 */  addiu      $v0, $v0, 0x10
/* 8BFCC 8009B7CC 12400000 */  mflo       $t0
/* 8BFD0 8009B7D0 02000105 */  bgez       $t0, .L8009B7DC
/* 8BFD4 8009B7D4 21306200 */   addu      $a2, $v1, $v0
/* 8BFD8 8009B7D8 FF0F0825 */  addiu      $t0, $t0, 0xfff
.L8009B7DC:
/* 8BFDC 8009B7DC 03130800 */  sra        $v0, $t0, 0xc
/* 8BFE0 8009B7E0 1000A2AF */  sw         $v0, 0x10($sp)
/* 8BFE4 8009B7E4 0000848C */  lw         $a0, ($a0)
/* 8BFE8 8009B7E8 A974010C */  jal        FUN_8005d2a4
/* 8BFEC 8009B7EC 00000000 */   nop
/* 8BFF0 8009B7F0 1B80073C */  lui        $a3, %hi(D_801B2B5C)
/* 8BFF4 8009B7F4 5C2BE38C */  lw         $v1, %lo(D_801B2B5C)($a3)
/* 8BFF8 8009B7F8 4801D48F */  lw         $s4, 0x148($fp)
/* 8BFFC 8009B7FC 0000628C */  lw         $v0, ($v1)
/* 8C000 8009B800 00000000 */  nop
/* 8C004 8009B804 2A108202 */  slt        $v0, $s4, $v0
/* 8C008 8009B808 46FF4014 */  bnez       $v0, .L8009B524
/* 8C00C 8009B80C 21480000 */   addu      $t1, $zero, $zero
.L8009B810:
/* 8C010 8009B810 48001324 */  addiu      $s3, $zero, 0x48
/* 8C014 8009B814 20000824 */  addiu      $t0, $zero, 0x20
/* 8C018 8009B818 0180033C */  lui        $v1, %hi(D_800167A8)
/* 8C01C 8009B81C A8676224 */  addiu      $v0, $v1, %lo(D_800167A8)
/* 8C020 8009B820 5001C38F */  lw         $v1, 0x150($fp)
/* 8C024 8009B824 0800458C */  lw         $a1, 8($v0)
/* 8C028 8009B828 0C00468C */  lw         $a2, 0xc($v0)
/* 8C02C 8009B82C 1000478C */  lw         $a3, 0x10($v0)
/* 8C030 8009B830 0180043C */  lui        $a0, %hi(D_800167A8)
/* 8C034 8009B834 F000C8AF */  sw         $t0, 0xf0($fp)
/* 8C038 8009B838 1400488C */  lw         $t0, 0x14($v0)
/* 8C03C 8009B83C 18007300 */  mult       $v1, $s3
/* 8C040 8009B840 A867838C */  lw         $v1, %lo(D_800167A8)($a0)
/* 8C044 8009B844 0400448C */  lw         $a0, 4($v0)
/* 8C048 8009B848 EC00C28F */  lw         $v0, 0xec($fp)
/* 8C04C 8009B84C 00000000 */  nop
/* 8C050 8009B850 04004984 */  lh         $t1, 4($v0)
/* 8C054 8009B854 2400C4AF */  sw         $a0, 0x24($fp)
/* 8C058 8009B858 EC00C48F */  lw         $a0, 0xec($fp)
/* 8C05C 8009B85C 2000C3AF */  sw         $v1, 0x20($fp)
/* 8C060 8009B860 2800C5AF */  sw         $a1, 0x28($fp)
/* 8C064 8009B864 2C00C6AF */  sw         $a2, 0x2c($fp)
/* 8C068 8009B868 3000C7AF */  sw         $a3, 0x30($fp)
/* 8C06C 8009B86C 3400C8AF */  sw         $t0, 0x34($fp)
/* 8C070 8009B870 12500000 */  mflo       $t2
/* 8C074 8009B874 21482A01 */  addu       $t1, $t1, $t2
/* 8C078 8009B878 F400C9AF */  sw         $t1, 0xf4($fp)
/* 8C07C 8009B87C 06008384 */  lh         $v1, 6($a0)
/* 8C080 8009B880 0200A106 */  bgez       $s5, .L8009B88C
/* 8C084 8009B884 2110A002 */   addu      $v0, $s5, $zero
/* 8C088 8009B888 0300A226 */  addiu      $v0, $s5, 3
.L8009B88C:
/* 8C08C 8009B88C 83100200 */  sra        $v0, $v0, 2
/* 8C090 8009B890 40110200 */  sll        $v0, $v0, 5
/* 8C094 8009B894 21186200 */  addu       $v1, $v1, $v0
/* 8C098 8009B898 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 8C09C 8009B89C 2800A524 */  addiu      $a1, $a1, %lo(D_800F0028)
/* 8C0A0 8009B8A0 F800C3AF */  sw         $v1, 0xf8($fp)
/* 8C0A4 8009B8A4 8A00A290 */  lbu        $v0, 0x8a($a1)
/* 8C0A8 8009B8A8 07000624 */  addiu      $a2, $zero, 7
/* 8C0AC 8009B8AC 09004610 */  beq        $v0, $a2, .L8009B8D4
/* 8C0B0 8009B8B0 21800000 */   addu      $s0, $zero, $zero
/* 8C0B4 8009B8B4 08004010 */  beqz       $v0, .L8009B8D8
/* 8C0B8 8009B8B8 1080083C */   lui       $t0, 0x8010
/* 8C0BC 8009B8BC B001C78F */  lw         $a3, 0x1b0($fp)
/* 8C0C0 8009B8C0 00000000 */  nop
/* 8C0C4 8009B8C4 0800E28C */  lw         $v0, 8($a3)
/* 8C0C8 8009B8C8 00000000 */  nop
/* 8C0CC 8009B8CC 10005510 */  beq        $v0, $s5, .L8009B910
/* 8C0D0 8009B8D0 00000000 */   nop
.L8009B8D4:
/* 8C0D4 8009B8D4 1080083C */  lui        $t0, %hi(D_80100028)
.L8009B8D8:
/* 8C0D8 8009B8D8 28000825 */  addiu      $t0, $t0, %lo(D_80100028)
/* 8C0DC 8009B8DC 06430291 */  lbu        $v0, 0x4306($t0)
/* 8C0E0 8009B8E0 07000324 */  addiu      $v1, $zero, 7
/* 8C0E4 8009B8E4 09004310 */  beq        $v0, $v1, .L8009B90C
/* 8C0E8 8009B8E8 00000000 */   nop
/* 8C0EC 8009B8EC 07004010 */  beqz       $v0, .L8009B90C
/* 8C0F0 8009B8F0 00000000 */   nop
/* 8C0F4 8009B8F4 B001C48F */  lw         $a0, 0x1b0($fp)
/* 8C0F8 8009B8F8 00000000 */  nop
/* 8C0FC 8009B8FC 0C00828C */  lw         $v0, 0xc($a0)
/* 8C100 8009B900 00000000 */  nop
/* 8C104 8009B904 02005510 */  beq        $v0, $s5, .L8009B910
/* 8C108 8009B908 00000000 */   nop
.L8009B90C:
/* 8C10C 8009B90C 01001024 */  addiu      $s0, $zero, 1
.L8009B910:
/* 8C110 8009B910 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C114 8009B914 F400C68F */  lw         $a2, 0xf4($fp)
/* 8C118 8009B918 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C11C 8009B91C 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C120 8009B920 F000C88F */  lw         $t0, 0xf0($fp)
/* 8C124 8009B924 00000000 */  nop
/* 8C128 8009B928 1400A8AF */  sw         $t0, 0x14($sp)
/* 8C12C 8009B92C EC00C28F */  lw         $v0, 0xec($fp)
/* 8C130 8009B930 21284002 */  addu       $a1, $s2, $zero
/* 8C134 8009B934 0C004384 */  lh         $v1, 0xc($v0)
/* 8C138 8009B938 FFFF0224 */  addiu      $v0, $zero, -1
/* 8C13C 8009B93C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8C140 8009B940 1769010C */  jal        FUN_8005a45c
/* 8C144 8009B944 1800A3AF */   sw        $v1, 0x18($sp)
/* 8C148 8009B948 EC00C38F */  lw         $v1, 0xec($fp)
/* 8C14C 8009B94C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C150 8009B950 16006684 */  lh         $a2, 0x16($v1)
/* 8C154 8009B954 18006784 */  lh         $a3, 0x18($v1)
/* 8C158 8009B958 396D010C */  jal        FUN_8005b4e4
/* 8C15C 8009B95C 21284002 */   addu      $a1, $s2, $zero
/* 8C160 8009B960 0401C68F */  lw         $a2, 0x104($fp)
/* 8C164 8009B964 5401C78F */  lw         $a3, 0x154($fp)
/* 8C168 8009B968 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C16C 8009B96C 2110C700 */  addu       $v0, $a2, $a3
/* 8C170 8009B970 0000478C */  lw         $a3, ($v0)
/* 8C174 8009B974 3001C68F */  lw         $a2, 0x130($fp)
/* 8C178 8009B978 21284002 */  addu       $a1, $s2, $zero
/* 8C17C 8009B97C 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C180 8009B980 F000C88F */  lw         $t0, 0xf0($fp)
/* 8C184 8009B984 0400E724 */  addiu      $a3, $a3, 4
/* 8C188 8009B988 976D010C */  jal        FUN_8005b65c
/* 8C18C 8009B98C 1400A8AF */   sw        $t0, 0x14($sp)
/* 8C190 8009B990 40101000 */  sll        $v0, $s0, 1
/* 8C194 8009B994 21105000 */  addu       $v0, $v0, $s0
/* 8C198 8009B998 80200200 */  sll        $a0, $v0, 2
/* 8C19C 8009B99C 3801C28F */  lw         $v0, 0x138($fp)
/* 8C1A0 8009B9A0 00000000 */  nop
/* 8C1A4 8009B9A4 21184400 */  addu       $v1, $v0, $a0
/* 8C1A8 8009B9A8 0000628C */  lw         $v0, ($v1)
/* 8C1AC 8009B9AC 0C01C38F */  lw         $v1, 0x10c($fp)
/* 8C1B0 8009B9B0 00000000 */  nop
/* 8C1B4 8009B9B4 18004300 */  mult       $v0, $v1
/* 8C1B8 8009B9B8 12300000 */  mflo       $a2
/* 8C1BC 8009B9BC 0200C104 */  bgez       $a2, .L8009B9C8
/* 8C1C0 8009B9C0 00000000 */   nop
/* 8C1C4 8009B9C4 FF0FC624 */  addiu      $a2, $a2, 0xfff
.L8009B9C8:
/* 8C1C8 8009B9C8 3C01C58F */  lw         $a1, 0x13c($fp)
/* 8C1CC 8009B9CC 00000000 */  nop
/* 8C1D0 8009B9D0 2110A400 */  addu       $v0, $a1, $a0
/* 8C1D4 8009B9D4 0000438C */  lw         $v1, ($v0)
/* 8C1D8 8009B9D8 0C01C28F */  lw         $v0, 0x10c($fp)
/* 8C1DC 8009B9DC 00000000 */  nop
/* 8C1E0 8009B9E0 18006200 */  mult       $v1, $v0
/* 8C1E4 8009B9E4 12380000 */  mflo       $a3
/* 8C1E8 8009B9E8 0200E104 */  bgez       $a3, .L8009B9F4
/* 8C1EC 8009B9EC 03330600 */   sra       $a2, $a2, 0xc
/* 8C1F0 8009B9F0 FF0FE724 */  addiu      $a3, $a3, 0xfff
.L8009B9F4:
/* 8C1F4 8009B9F4 4001C38F */  lw         $v1, 0x140($fp)
/* 8C1F8 8009B9F8 00000000 */  nop
/* 8C1FC 8009B9FC 21106400 */  addu       $v0, $v1, $a0
/* 8C200 8009BA00 0000438C */  lw         $v1, ($v0)
/* 8C204 8009BA04 0C01C48F */  lw         $a0, 0x10c($fp)
/* 8C208 8009BA08 00000000 */  nop
/* 8C20C 8009BA0C 18006400 */  mult       $v1, $a0
/* 8C210 8009BA10 12100000 */  mflo       $v0
/* 8C214 8009BA14 02004104 */  bgez       $v0, .L8009BA20
/* 8C218 8009BA18 033B0700 */   sra       $a3, $a3, 0xc
/* 8C21C 8009BA1C FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8009BA20:
/* 8C220 8009BA20 21284002 */  addu       $a1, $s2, $zero
/* 8C224 8009BA24 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C228 8009BA28 03130200 */  sra        $v0, $v0, 0xc
/* 8C22C 8009BA2C EB6C010C */  jal        FUN_8005b3ac
/* 8C230 8009BA30 1000A2AF */   sw        $v0, 0x10($sp)
/* 8C234 8009BA34 01005226 */  addiu      $s2, $s2, 1
/* 8C238 8009BA38 20001324 */  addiu      $s3, $zero, 0x20
/* 8C23C 8009BA3C 21800000 */  addu       $s0, $zero, $zero
/* 8C240 8009BA40 0F80063C */  lui        $a2, %hi(D_800F0028)
/* 8C244 8009BA44 EC00C58F */  lw         $a1, 0xec($fp)
/* 8C248 8009BA48 2800C624 */  addiu      $a2, $a2, %lo(D_800F0028)
/* 8C24C 8009BA4C F000D3AF */  sw         $s3, 0xf0($fp)
/* 8C250 8009BA50 0400A284 */  lh         $v0, 4($a1)
/* 8C254 8009BA54 07000724 */  addiu      $a3, $zero, 7
/* 8C258 8009BA58 20014224 */  addiu      $v0, $v0, 0x120
/* 8C25C 8009BA5C F400C2AF */  sw         $v0, 0xf4($fp)
/* 8C260 8009BA60 0600A384 */  lh         $v1, 6($a1)
/* 8C264 8009BA64 8A00C490 */  lbu        $a0, 0x8a($a2)
/* 8C268 8009BA68 20006324 */  addiu      $v1, $v1, 0x20
/* 8C26C 8009BA6C 09008710 */  beq        $a0, $a3, .L8009BA94
/* 8C270 8009BA70 F800C3AF */   sw        $v1, 0xf8($fp)
/* 8C274 8009BA74 08008010 */  beqz       $a0, .L8009BA98
/* 8C278 8009BA78 1080033C */   lui       $v1, 0x8010
/* 8C27C 8009BA7C B001C88F */  lw         $t0, 0x1b0($fp)
/* 8C280 8009BA80 00000000 */  nop
/* 8C284 8009BA84 0800028D */  lw         $v0, 8($t0)
/* 8C288 8009BA88 00000000 */  nop
/* 8C28C 8009BA8C 10005510 */  beq        $v0, $s5, .L8009BAD0
/* 8C290 8009BA90 00000000 */   nop
.L8009BA94:
/* 8C294 8009BA94 1080033C */  lui        $v1, %hi(D_80100028)
.L8009BA98:
/* 8C298 8009BA98 28006324 */  addiu      $v1, $v1, %lo(D_80100028)
/* 8C29C 8009BA9C 06436290 */  lbu        $v0, 0x4306($v1)
/* 8C2A0 8009BAA0 07000424 */  addiu      $a0, $zero, 7
/* 8C2A4 8009BAA4 09004410 */  beq        $v0, $a0, .L8009BACC
/* 8C2A8 8009BAA8 00000000 */   nop
/* 8C2AC 8009BAAC 07004010 */  beqz       $v0, .L8009BACC
/* 8C2B0 8009BAB0 00000000 */   nop
/* 8C2B4 8009BAB4 B001C58F */  lw         $a1, 0x1b0($fp)
/* 8C2B8 8009BAB8 00000000 */  nop
/* 8C2BC 8009BABC 0C00A28C */  lw         $v0, 0xc($a1)
/* 8C2C0 8009BAC0 00000000 */  nop
/* 8C2C4 8009BAC4 02005510 */  beq        $v0, $s5, .L8009BAD0
/* 8C2C8 8009BAC8 00000000 */   nop
.L8009BACC:
/* 8C2CC 8009BACC 01001024 */  addiu      $s0, $zero, 1
.L8009BAD0:
/* 8C2D0 8009BAD0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C2D4 8009BAD4 F400C68F */  lw         $a2, 0xf4($fp)
/* 8C2D8 8009BAD8 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C2DC 8009BADC 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C2E0 8009BAE0 F000C88F */  lw         $t0, 0xf0($fp)
/* 8C2E4 8009BAE4 00000000 */  nop
/* 8C2E8 8009BAE8 1400A8AF */  sw         $t0, 0x14($sp)
/* 8C2EC 8009BAEC EC00C28F */  lw         $v0, 0xec($fp)
/* 8C2F0 8009BAF0 21284002 */  addu       $a1, $s2, $zero
/* 8C2F4 8009BAF4 0C004384 */  lh         $v1, 0xc($v0)
/* 8C2F8 8009BAF8 FFFF0224 */  addiu      $v0, $zero, -1
/* 8C2FC 8009BAFC 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8C300 8009BB00 1769010C */  jal        FUN_8005a45c
/* 8C304 8009BB04 1800A3AF */   sw        $v1, 0x18($sp)
/* 8C308 8009BB08 EC00C38F */  lw         $v1, 0xec($fp)
/* 8C30C 8009BB0C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C310 8009BB10 16006684 */  lh         $a2, 0x16($v1)
/* 8C314 8009BB14 18006784 */  lh         $a3, 0x18($v1)
/* 8C318 8009BB18 396D010C */  jal        FUN_8005b4e4
/* 8C31C 8009BB1C 21284002 */   addu      $a1, $s2, $zero
/* 8C320 8009BB20 0401C68F */  lw         $a2, 0x104($fp)
/* 8C324 8009BB24 5401C78F */  lw         $a3, 0x154($fp)
/* 8C328 8009BB28 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C32C 8009BB2C 2110C700 */  addu       $v0, $a2, $a3
/* 8C330 8009BB30 0000478C */  lw         $a3, ($v0)
/* 8C334 8009BB34 3401C68F */  lw         $a2, 0x134($fp)
/* 8C338 8009BB38 21284002 */  addu       $a1, $s2, $zero
/* 8C33C 8009BB3C 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C340 8009BB40 F000C88F */  lw         $t0, 0xf0($fp)
/* 8C344 8009BB44 0400E724 */  addiu      $a3, $a3, 4
/* 8C348 8009BB48 976D010C */  jal        FUN_8005b65c
/* 8C34C 8009BB4C 1400A8AF */   sw        $t0, 0x14($sp)
/* 8C350 8009BB50 40101000 */  sll        $v0, $s0, 1
/* 8C354 8009BB54 21105000 */  addu       $v0, $v0, $s0
/* 8C358 8009BB58 80200200 */  sll        $a0, $v0, 2
/* 8C35C 8009BB5C 3801C28F */  lw         $v0, 0x138($fp)
/* 8C360 8009BB60 00000000 */  nop
/* 8C364 8009BB64 21184400 */  addu       $v1, $v0, $a0
/* 8C368 8009BB68 0000628C */  lw         $v0, ($v1)
/* 8C36C 8009BB6C 0C01C38F */  lw         $v1, 0x10c($fp)
/* 8C370 8009BB70 00000000 */  nop
/* 8C374 8009BB74 18004300 */  mult       $v0, $v1
/* 8C378 8009BB78 12300000 */  mflo       $a2
/* 8C37C 8009BB7C 0200C104 */  bgez       $a2, .L8009BB88
/* 8C380 8009BB80 00000000 */   nop
/* 8C384 8009BB84 FF0FC624 */  addiu      $a2, $a2, 0xfff
.L8009BB88:
/* 8C388 8009BB88 3C01C58F */  lw         $a1, 0x13c($fp)
/* 8C38C 8009BB8C 00000000 */  nop
/* 8C390 8009BB90 2110A400 */  addu       $v0, $a1, $a0
/* 8C394 8009BB94 0000438C */  lw         $v1, ($v0)
/* 8C398 8009BB98 0C01C28F */  lw         $v0, 0x10c($fp)
/* 8C39C 8009BB9C 00000000 */  nop
/* 8C3A0 8009BBA0 18006200 */  mult       $v1, $v0
/* 8C3A4 8009BBA4 12380000 */  mflo       $a3
/* 8C3A8 8009BBA8 0200E104 */  bgez       $a3, .L8009BBB4
/* 8C3AC 8009BBAC 03330600 */   sra       $a2, $a2, 0xc
/* 8C3B0 8009BBB0 FF0FE724 */  addiu      $a3, $a3, 0xfff
.L8009BBB4:
/* 8C3B4 8009BBB4 4001C38F */  lw         $v1, 0x140($fp)
/* 8C3B8 8009BBB8 00000000 */  nop
/* 8C3BC 8009BBBC 21106400 */  addu       $v0, $v1, $a0
/* 8C3C0 8009BBC0 0000438C */  lw         $v1, ($v0)
/* 8C3C4 8009BBC4 0C01C48F */  lw         $a0, 0x10c($fp)
/* 8C3C8 8009BBC8 00000000 */  nop
/* 8C3CC 8009BBCC 18006400 */  mult       $v1, $a0
/* 8C3D0 8009BBD0 12100000 */  mflo       $v0
/* 8C3D4 8009BBD4 02004104 */  bgez       $v0, .L8009BBE0
/* 8C3D8 8009BBD8 033B0700 */   sra       $a3, $a3, 0xc
/* 8C3DC 8009BBDC FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8009BBE0:
/* 8C3E0 8009BBE0 03130200 */  sra        $v0, $v0, 0xc
/* 8C3E4 8009BBE4 1000A2AF */  sw         $v0, 0x10($sp)
/* 8C3E8 8009BBE8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C3EC 8009BBEC EB6C010C */  jal        FUN_8005b3ac
/* 8C3F0 8009BBF0 21284002 */   addu      $a1, $s2, $zero
/* 8C3F4 8009BBF4 01005226 */  addiu      $s2, $s2, 1
/* 8C3F8 8009BBF8 0F80053C */  lui        $a1, %hi(D_800F0028)
.L8009BBFC:
/* 8C3FC 8009BBFC 2800A524 */  addiu      $a1, $a1, %lo(D_800F0028)
/* 8C400 8009BC00 8A00A290 */  lbu        $v0, 0x8a($a1)
/* 8C404 8009BC04 07000624 */  addiu      $a2, $zero, 7
/* 8C408 8009BC08 09004610 */  beq        $v0, $a2, .L8009BC30
/* 8C40C 8009BC0C 21180000 */   addu      $v1, $zero, $zero
/* 8C410 8009BC10 08004010 */  beqz       $v0, .L8009BC34
/* 8C414 8009BC14 1080083C */   lui       $t0, 0x8010
/* 8C418 8009BC18 B001C78F */  lw         $a3, 0x1b0($fp)
/* 8C41C 8009BC1C 00000000 */  nop
/* 8C420 8009BC20 0800E28C */  lw         $v0, 8($a3)
/* 8C424 8009BC24 00000000 */  nop
/* 8C428 8009BC28 26105500 */  xor        $v0, $v0, $s5
/* 8C42C 8009BC2C 0100432C */  sltiu      $v1, $v0, 1
.L8009BC30:
/* 8C430 8009BC30 1080083C */  lui        $t0, %hi(D_80100028)
.L8009BC34:
/* 8C434 8009BC34 28000825 */  addiu      $t0, $t0, %lo(D_80100028)
/* 8C438 8009BC38 06430291 */  lbu        $v0, 0x4306($t0)
/* 8C43C 8009BC3C 07000424 */  addiu      $a0, $zero, 7
/* 8C440 8009BC40 0A004410 */  beq        $v0, $a0, .L8009BC6C
/* 8C444 8009BC44 00000000 */   nop
/* 8C448 8009BC48 09004010 */  beqz       $v0, .L8009BC70
/* 8C44C 8009BC4C 01000224 */   addiu     $v0, $zero, 1
/* 8C450 8009BC50 B001C58F */  lw         $a1, 0x1b0($fp)
/* 8C454 8009BC54 00000000 */  nop
/* 8C458 8009BC58 0C00A28C */  lw         $v0, 0xc($a1)
/* 8C45C 8009BC5C 00000000 */  nop
/* 8C460 8009BC60 03005514 */  bne        $v0, $s5, .L8009BC70
/* 8C464 8009BC64 01000224 */   addiu     $v0, $zero, 1
/* 8C468 8009BC68 02006334 */  ori        $v1, $v1, 2
.L8009BC6C:
/* 8C46C 8009BC6C 01000224 */  addiu      $v0, $zero, 1
.L8009BC70:
/* 8C470 8009BC70 15006210 */  beq        $v1, $v0, .L8009BCC8
/* 8C474 8009BC74 02006228 */   slti      $v0, $v1, 2
/* 8C478 8009BC78 05004010 */  beqz       $v0, .L8009BC90
/* 8C47C 8009BC7C 02000224 */   addiu     $v0, $zero, 2
/* 8C480 8009BC80 09006010 */  beqz       $v1, .L8009BCA8
/* 8C484 8009BC84 28000424 */   addiu     $a0, $zero, 0x28
/* 8C488 8009BC88 52700208 */  j          .L8009C148
/* 8C48C 8009BC8C F000C4AF */   sw        $a0, 0xf0($fp)
.L8009BC90:
/* 8C490 8009BC90 44006210 */  beq        $v1, $v0, .L8009BDA4
/* 8C494 8009BC94 03000224 */   addiu     $v0, $zero, 3
/* 8C498 8009BC98 A2006210 */  beq        $v1, $v0, .L8009BF24
/* 8C49C 8009BC9C 28000424 */   addiu     $a0, $zero, 0x28
/* 8C4A0 8009BCA0 52700208 */  j          .L8009C148
/* 8C4A4 8009BCA4 F000C4AF */   sw        $a0, 0xf0($fp)
.L8009BCA8:
/* 8C4A8 8009BCA8 E800C68F */  lw         $a2, 0xe8($fp)
/* 8C4AC 8009BCAC E800C78F */  lw         $a3, 0xe8($fp)
/* 8C4B0 8009BCB0 0400C684 */  lh         $a2, 4($a2)
/* 8C4B4 8009BCB4 00000000 */  nop
/* 8C4B8 8009BCB8 F400C6AF */  sw         $a2, 0xf4($fp)
/* 8C4BC 8009BCBC 0600E784 */  lh         $a3, 6($a3)
/* 8C4C0 8009BCC0 50700208 */  j          .L8009C140
/* 8C4C4 8009BCC4 F800C7AF */   sw        $a3, 0xf8($fp)
.L8009BCC8:
/* 8C4C8 8009BCC8 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C4CC 8009BCCC E800C28F */  lw         $v0, 0xe8($fp)
/* 8C4D0 8009BCD0 28000824 */  addiu      $t0, $zero, 0x28
/* 8C4D4 8009BCD4 F000C8AF */  sw         $t0, 0xf0($fp)
/* 8C4D8 8009BCD8 06004284 */  lh         $v0, 6($v0)
/* 8C4DC 8009BCDC 48001324 */  addiu      $s3, $zero, 0x48
/* 8C4E0 8009BCE0 F800C2AF */  sw         $v0, 0xf8($fp)
/* 8C4E4 8009BCE4 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C4E8 8009BCE8 1400A8AF */  sw         $t0, 0x14($sp)
/* 8C4EC 8009BCEC E800C38F */  lw         $v1, 0xe8($fp)
/* 8C4F0 8009BCF0 21284002 */  addu       $a1, $s2, $zero
/* 8C4F4 8009BCF4 04006684 */  lh         $a2, 4($v1)
/* 8C4F8 8009BCF8 FFFF0224 */  addiu      $v0, $zero, -1
/* 8C4FC 8009BCFC 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8C500 8009BD00 0C006284 */  lh         $v0, 0xc($v1)
/* 8C504 8009BD04 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C508 8009BD08 4001C624 */  addiu      $a2, $a2, 0x140
/* 8C50C 8009BD0C 1769010C */  jal        FUN_8005a45c
/* 8C510 8009BD10 1800A2AF */   sw        $v0, 0x18($sp)
/* 8C514 8009BD14 E800C58F */  lw         $a1, 0xe8($fp)
/* 8C518 8009BD18 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C51C 8009BD1C 1600A684 */  lh         $a2, 0x16($a1)
/* 8C520 8009BD20 1800A784 */  lh         $a3, 0x18($a1)
/* 8C524 8009BD24 396D010C */  jal        FUN_8005b4e4
/* 8C528 8009BD28 21284002 */   addu      $a1, $s2, $zero
/* 8C52C 8009BD2C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C530 8009BD30 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C534 8009BD34 F000C68F */  lw         $a2, 0xf0($fp)
/* 8C538 8009BD38 00000000 */  nop
/* 8C53C 8009BD3C 1400A6AF */  sw         $a2, 0x14($sp)
/* 8C540 8009BD40 0401C78F */  lw         $a3, 0x104($fp)
/* 8C544 8009BD44 5401C88F */  lw         $t0, 0x154($fp)
/* 8C548 8009BD48 2801C68F */  lw         $a2, 0x128($fp)
/* 8C54C 8009BD4C 2110E800 */  addu       $v0, $a3, $t0
/* 8C550 8009BD50 0000478C */  lw         $a3, ($v0)
/* 8C554 8009BD54 976D010C */  jal        FUN_8005b65c
/* 8C558 8009BD58 21284002 */   addu      $a1, $s2, $zero
/* 8C55C 8009BD5C 0C01C28F */  lw         $v0, 0x10c($fp)
/* 8C560 8009BD60 00000000 */  nop
/* 8C564 8009BD64 02004104 */  bgez       $v0, .L8009BD70
/* 8C568 8009BD68 00000000 */   nop
/* 8C56C 8009BD6C 1F004224 */  addiu      $v0, $v0, 0x1f
.L8009BD70:
/* 8C570 8009BD70 21284002 */  addu       $a1, $s2, $zero
/* 8C574 8009BD74 43110200 */  sra        $v0, $v0, 5
/* 8C578 8009BD78 21304000 */  addu       $a2, $v0, $zero
/* 8C57C 8009BD7C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C580 8009BD80 2138C000 */  addu       $a3, $a2, $zero
/* 8C584 8009BD84 EB6C010C */  jal        FUN_8005b3ac
/* 8C588 8009BD88 1000A2AF */   sw        $v0, 0x10($sp)
/* 8C58C 8009BD8C E800C38F */  lw         $v1, 0xe8($fp)
/* 8C590 8009BD90 01005226 */  addiu      $s2, $s2, 1
/* 8C594 8009BD94 04006284 */  lh         $v0, 4($v1)
/* 8C598 8009BD98 06006484 */  lh         $a0, 6($v1)
/* 8C59C 8009BD9C C66F0208 */  j          .L8009BF18
/* 8C5A0 8009BDA0 86014224 */   addiu     $v0, $v0, 0x186
.L8009BDA4:
/* 8C5A4 8009BDA4 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C5A8 8009BDA8 E800C68F */  lw         $a2, 0xe8($fp)
/* 8C5AC 8009BDAC 28000524 */  addiu      $a1, $zero, 0x28
/* 8C5B0 8009BDB0 F000C5AF */  sw         $a1, 0xf0($fp)
/* 8C5B4 8009BDB4 0600C684 */  lh         $a2, 6($a2)
/* 8C5B8 8009BDB8 37000224 */  addiu      $v0, $zero, 0x37
/* 8C5BC 8009BDBC F800C6AF */  sw         $a2, 0xf8($fp)
/* 8C5C0 8009BDC0 1000A2AF */  sw         $v0, 0x10($sp)
/* 8C5C4 8009BDC4 F000C78F */  lw         $a3, 0xf0($fp)
/* 8C5C8 8009BDC8 00000000 */  nop
/* 8C5CC 8009BDCC 1400A7AF */  sw         $a3, 0x14($sp)
/* 8C5D0 8009BDD0 E800C88F */  lw         $t0, 0xe8($fp)
/* 8C5D4 8009BDD4 21284002 */  addu       $a1, $s2, $zero
/* 8C5D8 8009BDD8 04001385 */  lh         $s3, 4($t0)
/* 8C5DC 8009BDDC FFFF1424 */  addiu      $s4, $zero, -1
/* 8C5E0 8009BDE0 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8C5E4 8009BDE4 0C000285 */  lh         $v0, 0xc($t0)
/* 8C5E8 8009BDE8 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C5EC 8009BDEC 88016626 */  addiu      $a2, $s3, 0x188
/* 8C5F0 8009BDF0 1769010C */  jal        FUN_8005a45c
/* 8C5F4 8009BDF4 1800A2AF */   sw        $v0, 0x18($sp)
/* 8C5F8 8009BDF8 E800C28F */  lw         $v0, 0xe8($fp)
/* 8C5FC 8009BDFC B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C600 8009BE00 16004684 */  lh         $a2, 0x16($v0)
/* 8C604 8009BE04 18004784 */  lh         $a3, 0x18($v0)
/* 8C608 8009BE08 396D010C */  jal        FUN_8005b4e4
/* 8C60C 8009BE0C 21284002 */   addu      $a1, $s2, $zero
/* 8C610 8009BE10 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C614 8009BE14 38000224 */  addiu      $v0, $zero, 0x38
/* 8C618 8009BE18 1000A2AF */  sw         $v0, 0x10($sp)
/* 8C61C 8009BE1C F000C38F */  lw         $v1, 0xf0($fp)
/* 8C620 8009BE20 21284002 */  addu       $a1, $s2, $zero
/* 8C624 8009BE24 1400A3AF */  sw         $v1, 0x14($sp)
/* 8C628 8009BE28 0401C68F */  lw         $a2, 0x104($fp)
/* 8C62C 8009BE2C 5401C78F */  lw         $a3, 0x154($fp)
/* 8C630 8009BE30 E000C88F */  lw         $t0, 0xe0($fp)
/* 8C634 8009BE34 2188C700 */  addu       $s1, $a2, $a3
/* 8C638 8009BE38 0000278E */  lw         $a3, ($s1)
/* 8C63C 8009BE3C 976D010C */  jal        FUN_8005b65c
/* 8C640 8009BE40 88010625 */   addiu     $a2, $t0, 0x188
/* 8C644 8009BE44 0C01D08F */  lw         $s0, 0x10c($fp)
/* 8C648 8009BE48 00000000 */  nop
/* 8C64C 8009BE4C 02000106 */  bgez       $s0, .L8009BE58
/* 8C650 8009BE50 00000000 */   nop
/* 8C654 8009BE54 1F001026 */  addiu      $s0, $s0, 0x1f
.L8009BE58:
/* 8C658 8009BE58 21284002 */  addu       $a1, $s2, $zero
/* 8C65C 8009BE5C 43811000 */  sra        $s0, $s0, 5
/* 8C660 8009BE60 21300002 */  addu       $a2, $s0, $zero
/* 8C664 8009BE64 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C668 8009BE68 21380002 */  addu       $a3, $s0, $zero
/* 8C66C 8009BE6C EB6C010C */  jal        FUN_8005b3ac
/* 8C670 8009BE70 1000B0AF */   sw        $s0, 0x10($sp)
/* 8C674 8009BE74 01005226 */  addiu      $s2, $s2, 1
/* 8C678 8009BE78 21284002 */  addu       $a1, $s2, $zero
/* 8C67C 8009BE7C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C680 8009BE80 E800C38F */  lw         $v1, 0xe8($fp)
/* 8C684 8009BE84 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C688 8009BE88 0C006284 */  lh         $v0, 0xc($v1)
/* 8C68C 8009BE8C 10000824 */  addiu      $t0, $zero, 0x10
/* 8C690 8009BE90 1000A8AF */  sw         $t0, 0x10($sp)
/* 8C694 8009BE94 F000C38F */  lw         $v1, 0xf0($fp)
/* 8C698 8009BE98 C0016626 */  addiu      $a2, $s3, 0x1c0
/* 8C69C 8009BE9C 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8C6A0 8009BEA0 1400A3AF */  sw         $v1, 0x14($sp)
/* 8C6A4 8009BEA4 1769010C */  jal        FUN_8005a45c
/* 8C6A8 8009BEA8 1800A2AF */   sw        $v0, 0x18($sp)
/* 8C6AC 8009BEAC E800C58F */  lw         $a1, 0xe8($fp)
/* 8C6B0 8009BEB0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C6B4 8009BEB4 1600A684 */  lh         $a2, 0x16($a1)
/* 8C6B8 8009BEB8 1800A784 */  lh         $a3, 0x18($a1)
/* 8C6BC 8009BEBC 396D010C */  jal        FUN_8005b4e4
/* 8C6C0 8009BEC0 21284002 */   addu      $a1, $s2, $zero
/* 8C6C4 8009BEC4 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C6C8 8009BEC8 10000624 */  addiu      $a2, $zero, 0x10
/* 8C6CC 8009BECC 1000A6AF */  sw         $a2, 0x10($sp)
/* 8C6D0 8009BED0 F000C78F */  lw         $a3, 0xf0($fp)
/* 8C6D4 8009BED4 21284002 */  addu       $a1, $s2, $zero
/* 8C6D8 8009BED8 1400A7AF */  sw         $a3, 0x14($sp)
/* 8C6DC 8009BEDC E000C88F */  lw         $t0, 0xe0($fp)
/* 8C6E0 8009BEE0 0000278E */  lw         $a3, ($s1)
/* 8C6E4 8009BEE4 976D010C */  jal        FUN_8005b65c
/* 8C6E8 8009BEE8 C0010625 */   addiu     $a2, $t0, 0x1c0
/* 8C6EC 8009BEEC 21284002 */  addu       $a1, $s2, $zero
/* 8C6F0 8009BEF0 21300002 */  addu       $a2, $s0, $zero
/* 8C6F4 8009BEF4 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C6F8 8009BEF8 2138C000 */  addu       $a3, $a2, $zero
/* 8C6FC 8009BEFC EB6C010C */  jal        FUN_8005b3ac
/* 8C700 8009BF00 1000B0AF */   sw        $s0, 0x10($sp)
/* 8C704 8009BF04 E800C38F */  lw         $v1, 0xe8($fp)
/* 8C708 8009BF08 01005226 */  addiu      $s2, $s2, 1
/* 8C70C 8009BF0C 04006284 */  lh         $v0, 4($v1)
/* 8C710 8009BF10 06006484 */  lh         $a0, 6($v1)
/* 8C714 8009BF14 88014224 */  addiu      $v0, $v0, 0x188
.L8009BF18:
/* 8C718 8009BF18 F800C4AF */  sw         $a0, 0xf8($fp)
/* 8C71C 8009BF1C 50700208 */  j          .L8009C140
/* 8C720 8009BF20 F400C2AF */   sw        $v0, 0xf4($fp)
.L8009BF24:
/* 8C724 8009BF24 48001324 */  addiu      $s3, $zero, 0x48
/* 8C728 8009BF28 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C72C 8009BF2C 28000524 */  addiu      $a1, $zero, 0x28
/* 8C730 8009BF30 F000C5AF */  sw         $a1, 0xf0($fp)
/* 8C734 8009BF34 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C738 8009BF38 F000C68F */  lw         $a2, 0xf0($fp)
/* 8C73C 8009BF3C 00000000 */  nop
/* 8C740 8009BF40 1400A6AF */  sw         $a2, 0x14($sp)
/* 8C744 8009BF44 E800C78F */  lw         $a3, 0xe8($fp)
/* 8C748 8009BF48 21284002 */  addu       $a1, $s2, $zero
/* 8C74C 8009BF4C 0400E684 */  lh         $a2, 4($a3)
/* 8C750 8009BF50 FFFF1424 */  addiu      $s4, $zero, -1
/* 8C754 8009BF54 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8C758 8009BF58 0600E784 */  lh         $a3, 6($a3)
/* 8C75C 8009BF5C E800C88F */  lw         $t0, 0xe8($fp)
/* 8C760 8009BF60 4001C624 */  addiu      $a2, $a2, 0x140
/* 8C764 8009BF64 0C000285 */  lh         $v0, 0xc($t0)
/* 8C768 8009BF68 2800E724 */  addiu      $a3, $a3, 0x28
/* 8C76C 8009BF6C 1769010C */  jal        FUN_8005a45c
/* 8C770 8009BF70 1800A2AF */   sw        $v0, 0x18($sp)
/* 8C774 8009BF74 E800C28F */  lw         $v0, 0xe8($fp)
/* 8C778 8009BF78 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C77C 8009BF7C 16004684 */  lh         $a2, 0x16($v0)
/* 8C780 8009BF80 18004784 */  lh         $a3, 0x18($v0)
/* 8C784 8009BF84 396D010C */  jal        FUN_8005b4e4
/* 8C788 8009BF88 21284002 */   addu      $a1, $s2, $zero
/* 8C78C 8009BF8C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C790 8009BF90 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C794 8009BF94 F000C38F */  lw         $v1, 0xf0($fp)
/* 8C798 8009BF98 00000000 */  nop
/* 8C79C 8009BF9C 1400A3AF */  sw         $v1, 0x14($sp)
/* 8C7A0 8009BFA0 0401C68F */  lw         $a2, 0x104($fp)
/* 8C7A4 8009BFA4 5401C78F */  lw         $a3, 0x154($fp)
/* 8C7A8 8009BFA8 00000000 */  nop
/* 8C7AC 8009BFAC 2198C700 */  addu       $s3, $a2, $a3
/* 8C7B0 8009BFB0 0000678E */  lw         $a3, ($s3)
/* 8C7B4 8009BFB4 2801C68F */  lw         $a2, 0x128($fp)
/* 8C7B8 8009BFB8 976D010C */  jal        FUN_8005b65c
/* 8C7BC 8009BFBC 21284002 */   addu      $a1, $s2, $zero
/* 8C7C0 8009BFC0 0C01D08F */  lw         $s0, 0x10c($fp)
/* 8C7C4 8009BFC4 00000000 */  nop
/* 8C7C8 8009BFC8 02000106 */  bgez       $s0, .L8009BFD4
/* 8C7CC 8009BFCC 00000000 */   nop
/* 8C7D0 8009BFD0 1F001026 */  addiu      $s0, $s0, 0x1f
.L8009BFD4:
/* 8C7D4 8009BFD4 21284002 */  addu       $a1, $s2, $zero
/* 8C7D8 8009BFD8 43811000 */  sra        $s0, $s0, 5
/* 8C7DC 8009BFDC 21300002 */  addu       $a2, $s0, $zero
/* 8C7E0 8009BFE0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C7E4 8009BFE4 21380002 */  addu       $a3, $s0, $zero
/* 8C7E8 8009BFE8 EB6C010C */  jal        FUN_8005b3ac
/* 8C7EC 8009BFEC 1000B0AF */   sw        $s0, 0x10($sp)
/* 8C7F0 8009BFF0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C7F4 8009BFF4 37000224 */  addiu      $v0, $zero, 0x37
/* 8C7F8 8009BFF8 1000A2AF */  sw         $v0, 0x10($sp)
/* 8C7FC 8009BFFC F000C88F */  lw         $t0, 0xf0($fp)
/* 8C800 8009C000 01005226 */  addiu      $s2, $s2, 1
/* 8C804 8009C004 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8C808 8009C008 1400A8AF */  sw         $t0, 0x14($sp)
/* 8C80C 8009C00C E800C38F */  lw         $v1, 0xe8($fp)
/* 8C810 8009C010 21284002 */  addu       $a1, $s2, $zero
/* 8C814 8009C014 06006284 */  lh         $v0, 6($v1)
/* 8C818 8009C018 04007184 */  lh         $s1, 4($v1)
/* 8C81C 8009C01C 28004224 */  addiu      $v0, $v0, 0x28
/* 8C820 8009C020 F800C2AF */  sw         $v0, 0xf8($fp)
/* 8C824 8009C024 0C006284 */  lh         $v0, 0xc($v1)
/* 8C828 8009C028 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C82C 8009C02C 88012626 */  addiu      $a2, $s1, 0x188
/* 8C830 8009C030 1769010C */  jal        FUN_8005a45c
/* 8C834 8009C034 1800A2AF */   sw        $v0, 0x18($sp)
/* 8C838 8009C038 E800C58F */  lw         $a1, 0xe8($fp)
/* 8C83C 8009C03C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C840 8009C040 1600A684 */  lh         $a2, 0x16($a1)
/* 8C844 8009C044 1800A784 */  lh         $a3, 0x18($a1)
/* 8C848 8009C048 396D010C */  jal        FUN_8005b4e4
/* 8C84C 8009C04C 21284002 */   addu      $a1, $s2, $zero
/* 8C850 8009C050 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C854 8009C054 38000224 */  addiu      $v0, $zero, 0x38
/* 8C858 8009C058 1000A2AF */  sw         $v0, 0x10($sp)
/* 8C85C 8009C05C F000C68F */  lw         $a2, 0xf0($fp)
/* 8C860 8009C060 21284002 */  addu       $a1, $s2, $zero
/* 8C864 8009C064 1400A6AF */  sw         $a2, 0x14($sp)
/* 8C868 8009C068 E000C88F */  lw         $t0, 0xe0($fp)
/* 8C86C 8009C06C 0000678E */  lw         $a3, ($s3)
/* 8C870 8009C070 976D010C */  jal        FUN_8005b65c
/* 8C874 8009C074 88010625 */   addiu     $a2, $t0, 0x188
/* 8C878 8009C078 21284002 */  addu       $a1, $s2, $zero
/* 8C87C 8009C07C 21300002 */  addu       $a2, $s0, $zero
/* 8C880 8009C080 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C884 8009C084 21380002 */  addu       $a3, $s0, $zero
/* 8C888 8009C088 EB6C010C */  jal        FUN_8005b3ac
/* 8C88C 8009C08C 1000B0AF */   sw        $s0, 0x10($sp)
/* 8C890 8009C090 01005226 */  addiu      $s2, $s2, 1
/* 8C894 8009C094 21284002 */  addu       $a1, $s2, $zero
/* 8C898 8009C098 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C89C 8009C09C E800C38F */  lw         $v1, 0xe8($fp)
/* 8C8A0 8009C0A0 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C8A4 8009C0A4 0C006284 */  lh         $v0, 0xc($v1)
/* 8C8A8 8009C0A8 10000824 */  addiu      $t0, $zero, 0x10
/* 8C8AC 8009C0AC 1000A8AF */  sw         $t0, 0x10($sp)
/* 8C8B0 8009C0B0 F000C38F */  lw         $v1, 0xf0($fp)
/* 8C8B4 8009C0B4 C0012626 */  addiu      $a2, $s1, 0x1c0
/* 8C8B8 8009C0B8 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8C8BC 8009C0BC 1400A3AF */  sw         $v1, 0x14($sp)
/* 8C8C0 8009C0C0 1769010C */  jal        FUN_8005a45c
/* 8C8C4 8009C0C4 1800A2AF */   sw        $v0, 0x18($sp)
/* 8C8C8 8009C0C8 E800C58F */  lw         $a1, 0xe8($fp)
/* 8C8CC 8009C0CC B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C8D0 8009C0D0 1600A684 */  lh         $a2, 0x16($a1)
/* 8C8D4 8009C0D4 1800A784 */  lh         $a3, 0x18($a1)
/* 8C8D8 8009C0D8 396D010C */  jal        FUN_8005b4e4
/* 8C8DC 8009C0DC 21284002 */   addu      $a1, $s2, $zero
/* 8C8E0 8009C0E0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C8E4 8009C0E4 10000624 */  addiu      $a2, $zero, 0x10
/* 8C8E8 8009C0E8 1000A6AF */  sw         $a2, 0x10($sp)
/* 8C8EC 8009C0EC F000C78F */  lw         $a3, 0xf0($fp)
/* 8C8F0 8009C0F0 21284002 */  addu       $a1, $s2, $zero
/* 8C8F4 8009C0F4 1400A7AF */  sw         $a3, 0x14($sp)
/* 8C8F8 8009C0F8 E000C88F */  lw         $t0, 0xe0($fp)
/* 8C8FC 8009C0FC 0000678E */  lw         $a3, ($s3)
/* 8C900 8009C100 976D010C */  jal        FUN_8005b65c
/* 8C904 8009C104 C0010625 */   addiu     $a2, $t0, 0x1c0
/* 8C908 8009C108 21284002 */  addu       $a1, $s2, $zero
/* 8C90C 8009C10C 21300002 */  addu       $a2, $s0, $zero
/* 8C910 8009C110 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C914 8009C114 2138C000 */  addu       $a3, $a2, $zero
/* 8C918 8009C118 EB6C010C */  jal        FUN_8005b3ac
/* 8C91C 8009C11C 1000B0AF */   sw        $s0, 0x10($sp)
/* 8C920 8009C120 E800C38F */  lw         $v1, 0xe8($fp)
/* 8C924 8009C124 01005226 */  addiu      $s2, $s2, 1
/* 8C928 8009C128 04006284 */  lh         $v0, 4($v1)
/* 8C92C 8009C12C 06006384 */  lh         $v1, 6($v1)
/* 8C930 8009C130 88014224 */  addiu      $v0, $v0, 0x188
/* 8C934 8009C134 28006324 */  addiu      $v1, $v1, 0x28
/* 8C938 8009C138 F400C2AF */  sw         $v0, 0xf4($fp)
/* 8C93C 8009C13C F800C3AF */  sw         $v1, 0xf8($fp)
.L8009C140:
/* 8C940 8009C140 28000424 */  addiu      $a0, $zero, 0x28
/* 8C944 8009C144 F000C4AF */  sw         $a0, 0xf0($fp)
.L8009C148:
/* 8C948 8009C148 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C94C 8009C14C F400C68F */  lw         $a2, 0xf4($fp)
/* 8C950 8009C150 F800C78F */  lw         $a3, 0xf8($fp)
/* 8C954 8009C154 01000224 */  addiu      $v0, $zero, 1
/* 8C958 8009C158 1000A2AF */  sw         $v0, 0x10($sp)
/* 8C95C 8009C15C F000C88F */  lw         $t0, 0xf0($fp)
/* 8C960 8009C160 00000000 */  nop
/* 8C964 8009C164 1400A8AF */  sw         $t0, 0x14($sp)
/* 8C968 8009C168 E800C28F */  lw         $v0, 0xe8($fp)
/* 8C96C 8009C16C 21284002 */  addu       $a1, $s2, $zero
/* 8C970 8009C170 0C004384 */  lh         $v1, 0xc($v0)
/* 8C974 8009C174 FFFF0224 */  addiu      $v0, $zero, -1
/* 8C978 8009C178 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8C97C 8009C17C 1769010C */  jal        FUN_8005a45c
/* 8C980 8009C180 1800A3AF */   sw        $v1, 0x18($sp)
/* 8C984 8009C184 E800C38F */  lw         $v1, 0xe8($fp)
/* 8C988 8009C188 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C98C 8009C18C 16006684 */  lh         $a2, 0x16($v1)
/* 8C990 8009C190 18006784 */  lh         $a3, 0x18($v1)
/* 8C994 8009C194 396D010C */  jal        FUN_8005b4e4
/* 8C998 8009C198 21284002 */   addu      $a1, $s2, $zero
/* 8C99C 8009C19C B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C9A0 8009C1A0 80021324 */  addiu      $s3, $zero, 0x280
/* 8C9A4 8009C1A4 1000B3AF */  sw         $s3, 0x10($sp)
/* 8C9A8 8009C1A8 F000C68F */  lw         $a2, 0xf0($fp)
/* 8C9AC 8009C1AC 00000000 */  nop
/* 8C9B0 8009C1B0 1400A6AF */  sw         $a2, 0x14($sp)
/* 8C9B4 8009C1B4 0401C78F */  lw         $a3, 0x104($fp)
/* 8C9B8 8009C1B8 5401C88F */  lw         $t0, 0x154($fp)
/* 8C9BC 8009C1BC 2801C68F */  lw         $a2, 0x128($fp)
/* 8C9C0 8009C1C0 2110E800 */  addu       $v0, $a3, $t0
/* 8C9C4 8009C1C4 0000478C */  lw         $a3, ($v0)
/* 8C9C8 8009C1C8 976D010C */  jal        FUN_8005b65c
/* 8C9CC 8009C1CC 21284002 */   addu      $a1, $s2, $zero
/* 8C9D0 8009C1D0 0C01C68F */  lw         $a2, 0x10c($fp)
/* 8C9D4 8009C1D4 00000000 */  nop
/* 8C9D8 8009C1D8 0200C104 */  bgez       $a2, .L8009C1E4
/* 8C9DC 8009C1DC 00000000 */   nop
/* 8C9E0 8009C1E0 1F00C624 */  addiu      $a2, $a2, 0x1f
.L8009C1E4:
/* 8C9E4 8009C1E4 43310600 */  sra        $a2, $a2, 5
/* 8C9E8 8009C1E8 21284002 */  addu       $a1, $s2, $zero
/* 8C9EC 8009C1EC 1000A6AF */  sw         $a2, 0x10($sp)
/* 8C9F0 8009C1F0 B401C48F */  lw         $a0, 0x1b4($fp)
/* 8C9F4 8009C1F4 EB6C010C */  jal        FUN_8005b3ac
/* 8C9F8 8009C1F8 2138C000 */   addu      $a3, $a2, $zero
/* 8C9FC 8009C1FC 4401D58F */  lw         $s5, 0x144($fp)
/* 8CA00 8009C200 00000000 */  nop
/* 8CA04 8009C204 0900A22A */  slti       $v0, $s5, 9
/* 8CA08 8009C208 2FFC4014 */  bnez       $v0, .L8009B2C8
/* 8CA0C 8009C20C 01005226 */   addiu     $s2, $s2, 1
/* 8CA10 8009C210 21104002 */  addu       $v0, $s2, $zero
/* 8CA14 8009C214 21E8C003 */  addu       $sp, $fp, $zero
/* 8CA18 8009C218 AC01BF8F */  lw         $ra, 0x1ac($sp)
/* 8CA1C 8009C21C A801BE8F */  lw         $fp, 0x1a8($sp)
/* 8CA20 8009C220 A401B78F */  lw         $s7, 0x1a4($sp)
/* 8CA24 8009C224 A001B68F */  lw         $s6, 0x1a0($sp)
/* 8CA28 8009C228 9C01B58F */  lw         $s5, 0x19c($sp)
/* 8CA2C 8009C22C 9801B48F */  lw         $s4, 0x198($sp)
/* 8CA30 8009C230 9401B38F */  lw         $s3, 0x194($sp)
/* 8CA34 8009C234 9001B28F */  lw         $s2, 0x190($sp)
/* 8CA38 8009C238 8C01B18F */  lw         $s1, 0x18c($sp)
/* 8CA3C 8009C23C 8801B08F */  lw         $s0, 0x188($sp)
/* 8CA40 8009C240 0800E003 */  jr         $ra
/* 8CA44 8009C244 B001BD27 */   addiu     $sp, $sp, 0x1b0
