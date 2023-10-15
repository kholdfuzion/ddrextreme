.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009c248
/* 8CA48 8009C248 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 8CA4C 8009C24C 6000B0AF */  sw         $s0, 0x60($sp)
/* 8CA50 8009C250 21808000 */  addu       $s0, $a0, $zero
/* 8CA54 8009C254 21280000 */  addu       $a1, $zero, $zero
/* 8CA58 8009C258 38000624 */  addiu      $a2, $zero, 0x38
/* 8CA5C 8009C25C 8400BFAF */  sw         $ra, 0x84($sp)
/* 8CA60 8009C260 8000BEAF */  sw         $fp, 0x80($sp)
/* 8CA64 8009C264 7C00B7AF */  sw         $s7, 0x7c($sp)
/* 8CA68 8009C268 7800B6AF */  sw         $s6, 0x78($sp)
/* 8CA6C 8009C26C 7400B5AF */  sw         $s5, 0x74($sp)
/* 8CA70 8009C270 7000B4AF */  sw         $s4, 0x70($sp)
/* 8CA74 8009C274 6C00B3AF */  sw         $s3, 0x6c($sp)
/* 8CA78 8009C278 6800B2AF */  sw         $s2, 0x68($sp)
/* 8CA7C 8009C27C F6A2000C */  jal        memset
/* 8CA80 8009C280 6400B1AF */   sw        $s1, 0x64($sp)
/* 8CA84 8009C284 0F80033C */  lui        $v1, %hi(D_800F001C)
/* 8CA88 8009C288 FFFF0224 */  addiu      $v0, $zero, -1
/* 8CA8C 8009C28C 1C00658C */  lw         $a1, %lo(D_800F001C)($v1)
/* 8CA90 8009C290 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 8CA94 8009C294 140002AE */  sw         $v0, 0x14($s0)
/* 8CA98 8009C298 180002AE */  sw         $v0, 0x18($s0)
/* 8CA9C 8009C29C 1C0002AE */  sw         $v0, 0x1c($s0)
/* 8CAA0 8009C2A0 28008224 */  addiu      $v0, $a0, %lo(D_800F0028)
/* 8CAA4 8009C2A4 100005AE */  sw         $a1, 0x10($s0)
/* 8CAA8 8009C2A8 20004380 */  lb         $v1, 0x20($v0)
/* 8CAAC 8009C2AC 02000524 */  addiu      $a1, $zero, 2
/* 8CAB0 8009C2B0 19006514 */  bne        $v1, $a1, .L8009C318
/* 8CAB4 8009C2B4 21B08000 */   addu      $s6, $a0, $zero
/* 8CAB8 8009C2B8 0F80023C */  lui        $v0, %hi(D_800EC2DC)
/* 8CABC 8009C2BC DCC24224 */  addiu      $v0, $v0, %lo(D_800EC2DC)
/* 8CAC0 8009C2C0 0F80033C */  lui        $v1, %hi(D_800EC520)
/* 8CAC4 8009C2C4 20C56324 */  addiu      $v1, $v1, %lo(D_800EC520)
/* 8CAC8 8009C2C8 70006524 */  addiu      $a1, $v1, 0x70
/* 8CACC 8009C2CC 1B80063C */  lui        $a2, 0x801b
/* 8CAD0 8009C2D0 28001E26 */  addiu      $fp, $s0, 0x28
.L8009C2D4:
/* 8CAD4 8009C2D4 0000648C */  lw         $a0, ($v1)
/* 8CAD8 8009C2D8 0400678C */  lw         $a3, 4($v1)
/* 8CADC 8009C2DC 0800688C */  lw         $t0, 8($v1)
/* 8CAE0 8009C2E0 0C00698C */  lw         $t1, 0xc($v1)
/* 8CAE4 8009C2E4 000044AC */  sw         $a0, ($v0)
/* 8CAE8 8009C2E8 040047AC */  sw         $a3, 4($v0)
/* 8CAEC 8009C2EC 080048AC */  sw         $t0, 8($v0)
/* 8CAF0 8009C2F0 0C0049AC */  sw         $t1, 0xc($v0)
/* 8CAF4 8009C2F4 10006324 */  addiu      $v1, $v1, 0x10
/* 8CAF8 8009C2F8 F6FF6514 */  bne        $v1, $a1, .L8009C2D4
/* 8CAFC 8009C2FC 10004224 */   addiu     $v0, $v0, 0x10
/* 8CB00 8009C300 00006A8C */  lw         $t2, ($v1)
/* 8CB04 8009C304 00000000 */  nop
/* 8CB08 8009C308 00004AAC */  sw         $t2, ($v0)
/* 8CB0C 8009C30C 01000224 */  addiu      $v0, $zero, 1
/* 8CB10 8009C310 68710208 */  j          .L8009C5A0
/* 8CB14 8009C314 482BC2AC */   sw        $v0, 0x2b48($a2)
.L8009C318:
/* 8CB18 8009C318 2800A927 */  addiu      $t1, $sp, 0x28
/* 8CB1C 8009C31C 0180033C */  lui        $v1, %hi(D_800167E0)
/* 8CB20 8009C320 E0676224 */  addiu      $v0, $v1, %lo(D_800167E0)
/* 8CB24 8009C324 0180043C */  lui        $a0, %hi(D_800167F4)
/* 8CB28 8009C328 F4678424 */  addiu      $a0, $a0, %lo(D_800167F4)
/* 8CB2C 8009C32C E067658C */  lw         $a1, 0x67e0($v1)
/* 8CB30 8009C330 0400468C */  lw         $a2, 4($v0)
/* 8CB34 8009C334 0800438C */  lw         $v1, 8($v0)
/* 8CB38 8009C338 0C00478C */  lw         $a3, 0xc($v0)
/* 8CB3C 8009C33C 1000488C */  lw         $t0, 0x10($v0)
/* 8CB40 8009C340 03008230 */  andi       $v0, $a0, 3
/* 8CB44 8009C344 21902001 */  addu       $s2, $t1, $zero
/* 8CB48 8009C348 1000A5AF */  sw         $a1, 0x10($sp)
/* 8CB4C 8009C34C 1400A6AF */  sw         $a2, 0x14($sp)
/* 8CB50 8009C350 1800A3AF */  sw         $v1, 0x18($sp)
/* 8CB54 8009C354 1C00A7AF */  sw         $a3, 0x1c($sp)
/* 8CB58 8009C358 1A004010 */  beqz       $v0, .L8009C3C4
/* 8CB5C 8009C35C 2000A8AF */   sw        $t0, 0x20($sp)
/* 8CB60 8009C360 30008224 */  addiu      $v0, $a0, 0x30
/* 8CB64 8009C364 1B80063C */  lui        $a2, 0x801b
/* 8CB68 8009C368 0180073C */  lui        $a3, 0x8001
/* 8CB6C 8009C36C 28001E26 */  addiu      $fp, $s0, 0x28
.L8009C370:
/* 8CB70 8009C370 03008888 */  lwl        $t0, 3($a0)
/* 8CB74 8009C374 00008898 */  lwr        $t0, ($a0)
/* 8CB78 8009C378 07008A88 */  lwl        $t2, 7($a0)
/* 8CB7C 8009C37C 04008A98 */  lwr        $t2, 4($a0)
/* 8CB80 8009C380 0B008388 */  lwl        $v1, 0xb($a0)
/* 8CB84 8009C384 08008398 */  lwr        $v1, 8($a0)
/* 8CB88 8009C388 0F008588 */  lwl        $a1, 0xf($a0)
/* 8CB8C 8009C38C 0C008598 */  lwr        $a1, 0xc($a0)
/* 8CB90 8009C390 030028A9 */  swl        $t0, 3($t1)
/* 8CB94 8009C394 000028B9 */  swr        $t0, ($t1)
/* 8CB98 8009C398 07002AA9 */  swl        $t2, 7($t1)
/* 8CB9C 8009C39C 04002AB9 */  swr        $t2, 4($t1)
/* 8CBA0 8009C3A0 0B0023A9 */  swl        $v1, 0xb($t1)
/* 8CBA4 8009C3A4 080023B9 */  swr        $v1, 8($t1)
/* 8CBA8 8009C3A8 0F0025A9 */  swl        $a1, 0xf($t1)
/* 8CBAC 8009C3AC 0C0025B9 */  swr        $a1, 0xc($t1)
/* 8CBB0 8009C3B0 10008424 */  addiu      $a0, $a0, 0x10
/* 8CBB4 8009C3B4 EEFF8214 */  bne        $a0, $v0, .L8009C370
/* 8CBB8 8009C3B8 10002925 */   addiu     $t1, $t1, 0x10
/* 8CBBC 8009C3BC 01710208 */  j          .L8009C404
/* 8CBC0 8009C3C0 2800C526 */   addiu     $a1, $s6, 0x28
.L8009C3C4:
/* 8CBC4 8009C3C4 30008224 */  addiu      $v0, $a0, 0x30
/* 8CBC8 8009C3C8 1B80063C */  lui        $a2, 0x801b
/* 8CBCC 8009C3CC 0180073C */  lui        $a3, 0x8001
/* 8CBD0 8009C3D0 28001E26 */  addiu      $fp, $s0, 0x28
.L8009C3D4:
/* 8CBD4 8009C3D4 0000888C */  lw         $t0, ($a0)
/* 8CBD8 8009C3D8 04008A8C */  lw         $t2, 4($a0)
/* 8CBDC 8009C3DC 0800838C */  lw         $v1, 8($a0)
/* 8CBE0 8009C3E0 0C00858C */  lw         $a1, 0xc($a0)
/* 8CBE4 8009C3E4 000028AD */  sw         $t0, ($t1)
/* 8CBE8 8009C3E8 04002AAD */  sw         $t2, 4($t1)
/* 8CBEC 8009C3EC 080023AD */  sw         $v1, 8($t1)
/* 8CBF0 8009C3F0 0C0025AD */  sw         $a1, 0xc($t1)
/* 8CBF4 8009C3F4 10008424 */  addiu      $a0, $a0, 0x10
/* 8CBF8 8009C3F8 F6FF8214 */  bne        $a0, $v0, .L8009C3D4
/* 8CBFC 8009C3FC 10002925 */   addiu     $t1, $t1, 0x10
/* 8CC00 8009C400 2800C526 */  addiu      $a1, $s6, 0x28
.L8009C404:
/* 8CC04 8009C404 00008880 */  lb         $t0, ($a0)
/* 8CC08 8009C408 01008A80 */  lb         $t2, 1($a0)
/* 8CC0C 8009C40C 000028A1 */  sb         $t0, ($t1)
/* 8CC10 8009C410 01002AA1 */  sb         $t2, 1($t1)
/* 8CC14 8009C414 8A00A390 */  lbu        $v1, 0x8a($a1)
/* 8CC18 8009C418 02000224 */  addiu      $v0, $zero, 2
/* 8CC1C 8009C41C 07006210 */  beq        $v1, $v0, .L8009C43C
/* 8CC20 8009C420 0100023C */   lui       $v0, 1
/* 8CC24 8009C424 2110A200 */  addu       $v0, $a1, $v0
/* 8CC28 8009C428 06434390 */  lbu        $v1, 0x4306($v0)
/* 8CC2C 8009C42C 00000000 */  nop
/* 8CC30 8009C430 02006338 */  xori       $v1, $v1, 2
/* 8CC34 8009C434 10710208 */  j          .L8009C440
/* 8CC38 8009C438 0100742C */   sltiu     $s4, $v1, 1
.L8009C43C:
/* 8CC3C 8009C43C 01001424 */  addiu      $s4, $zero, 1
.L8009C440:
/* 8CC40 8009C440 482BC424 */  addiu      $a0, $a2, 0x2b48
/* 8CC44 8009C444 21280000 */  addu       $a1, $zero, $zero
/* 8CC48 8009C448 0F80083C */  lui        $t0, %hi(D_800EBFB0)
/* 8CC4C 8009C44C B0BF0225 */  addiu      $v0, $t0, %lo(D_800EBFB0)
/* 8CC50 8009C450 3803438C */  lw         $v1, 0x338($v0)
/* 8CC54 8009C454 2C0340AC */  sw         $zero, 0x32c($v0)
/* 8CC58 8009C458 300340AC */  sw         $zero, 0x330($v0)
/* 8CC5C 8009C45C 340340AC */  sw         $zero, 0x334($v0)
/* 8CC60 8009C460 9866E824 */  addiu      $t0, $a3, 0x6698
/* 8CC64 8009C464 03000989 */  lwl        $t1, 3($t0)
/* 8CC68 8009C468 00000999 */  lwr        $t1, ($t0)
/* 8CC6C 8009C46C 04000A81 */  lb         $t2, 4($t0)
/* 8CC70 8009C470 030069A8 */  swl        $t1, 3($v1)
/* 8CC74 8009C474 000069B8 */  swr        $t1, ($v1)
/* 8CC78 8009C478 04006AA0 */  sb         $t2, 4($v1)
/* 8CC7C 8009C47C F6A2000C */  jal        memset
/* 8CC80 8009C480 14000624 */   addiu     $a2, $zero, 0x14
/* 8CC84 8009C484 2800C426 */  addiu      $a0, $s6, 0x28
/* 8CC88 8009C488 8A008390 */  lbu        $v1, 0x8a($a0)
/* 8CC8C 8009C48C 02000224 */  addiu      $v0, $zero, 2
/* 8CC90 8009C490 07006210 */  beq        $v1, $v0, .L8009C4B0
/* 8CC94 8009C494 0100023C */   lui       $v0, 1
/* 8CC98 8009C498 21108200 */  addu       $v0, $a0, $v0
/* 8CC9C 8009C49C 06434390 */  lbu        $v1, 0x4306($v0)
/* 8CCA0 8009C4A0 00000000 */  nop
/* 8CCA4 8009C4A4 02006338 */  xori       $v1, $v1, 2
/* 8CCA8 8009C4A8 2D710208 */  j          .L8009C4B4
/* 8CCAC 8009C4AC 0100702C */   sltiu     $s0, $v1, 1
.L8009C4B0:
/* 8CCB0 8009C4B0 01001024 */  addiu      $s0, $zero, 1
.L8009C4B4:
/* 8CCB4 8009C4B4 0500022A */  slti       $v0, $s0, 5
/* 8CCB8 8009C4B8 2F004010 */  beqz       $v0, .L8009C578
/* 8CCBC 8009C4BC 07001724 */   addiu     $s7, $zero, 7
/* 8CCC0 8009C4C0 0F80023C */  lui        $v0, %hi(D_800EBFB0)
/* 8CCC4 8009C4C4 B0BF5324 */  addiu      $s3, $v0, %lo(D_800EBFB0)
/* 8CCC8 8009C4C8 1B80033C */  lui        $v1, %hi(D_801B2B48)
/* 8CCCC 8009C4CC 482B7524 */  addiu      $s5, $v1, %lo(D_801B2B48)
/* 8CCD0 8009C4D0 1000A427 */  addiu      $a0, $sp, 0x10
/* 8CCD4 8009C4D4 80101000 */  sll        $v0, $s0, 2
/* 8CCD8 8009C4D8 21888200 */  addu       $s1, $a0, $v0
/* 8CCDC 8009C4DC 21105000 */  addu       $v0, $v0, $s0
/* 8CCE0 8009C4E0 40100200 */  sll        $v0, $v0, 1
/* 8CCE4 8009C4E4 21905200 */  addu       $s2, $v0, $s2
.L8009C4E8:
/* 8CCE8 8009C4E8 0000238E */  lw         $v1, ($s1)
/* 8CCEC 8009C4EC 00000000 */  nop
/* 8CCF0 8009C4F0 03007714 */  bne        $v1, $s7, .L8009C500
/* 8CCF4 8009C4F4 FFFF6624 */   addiu     $a2, $v1, -1
/* 8CCF8 8009C4F8 44710208 */  j          .L8009C510
/* 8CCFC 8009C4FC 21300000 */   addu      $a2, $zero, $zero
.L8009C500:
/* 8CD00 8009C500 06000224 */  addiu      $v0, $zero, 6
/* 8CD04 8009C504 03006214 */  bne        $v1, $v0, .L8009C514
/* 8CD08 8009C508 2800C226 */   addiu     $v0, $s6, 0x28
/* 8CD0C 8009C50C 03000624 */  addiu      $a2, $zero, 3
.L8009C510:
/* 8CD10 8009C510 2800C226 */  addiu      $v0, $s6, 0x28
.L8009C514:
/* 8CD14 8009C514 0400448C */  lw         $a0, 4($v0)
/* 8CD18 8009C518 3DA3020C */  jal        FUN_800a8cf4
/* 8CD1C 8009C51C 21288002 */   addu      $a1, $s4, $zero
/* 8CD20 8009C520 10004010 */  beqz       $v0, .L8009C564
/* 8CD24 8009C524 21284002 */   addu      $a1, $s2, $zero
/* 8CD28 8009C528 2C03628E */  lw         $v0, 0x32c($s3)
/* 8CD2C 8009C52C 00000000 */  nop
/* 8CD30 8009C530 80200200 */  sll        $a0, $v0, 2
/* 8CD34 8009C534 21208200 */  addu       $a0, $a0, $v0
/* 8CD38 8009C538 40200400 */  sll        $a0, $a0, 1
/* 8CD3C 8009C53C 3C036226 */  addiu      $v0, $s3, 0x33c
/* 8CD40 8009C540 057C000C */  jal        strcpy
/* 8CD44 8009C544 21208200 */   addu      $a0, $a0, $v0
/* 8CD48 8009C548 2C03638E */  lw         $v1, 0x32c($s3)
/* 8CD4C 8009C54C 0000248E */  lw         $a0, ($s1)
/* 8CD50 8009C550 80100300 */  sll        $v0, $v1, 2
/* 8CD54 8009C554 21105500 */  addu       $v0, $v0, $s5
/* 8CD58 8009C558 01006324 */  addiu      $v1, $v1, 1
/* 8CD5C 8009C55C 000044AC */  sw         $a0, ($v0)
/* 8CD60 8009C560 2C0363AE */  sw         $v1, 0x32c($s3)
.L8009C564:
/* 8CD64 8009C564 04003126 */  addiu      $s1, $s1, 4
/* 8CD68 8009C568 01001026 */  addiu      $s0, $s0, 1
/* 8CD6C 8009C56C 0500022A */  slti       $v0, $s0, 5
/* 8CD70 8009C570 DDFF4014 */  bnez       $v0, .L8009C4E8
/* 8CD74 8009C574 0A005226 */   addiu     $s2, $s2, 0xa
.L8009C578:
/* 8CD78 8009C578 0F80093C */  lui        $t1, %hi(D_800EBFB0)
/* 8CD7C 8009C57C B0BF2425 */  addiu      $a0, $t1, %lo(D_800EBFB0)
/* 8CD80 8009C580 2C03838C */  lw         $v1, 0x32c($a0)
/* 8CD84 8009C584 01800A3C */  lui        $t2, %hi(D_80016828)
/* 8CD88 8009C588 80100300 */  sll        $v0, $v1, 2
/* 8CD8C 8009C58C 21104300 */  addu       $v0, $v0, $v1
/* 8CD90 8009C590 40100200 */  sll        $v0, $v0, 1
/* 8CD94 8009C594 28684391 */  lbu        $v1, %lo(D_80016828)($t2)
/* 8CD98 8009C598 21208200 */  addu       $a0, $a0, $v0
/* 8CD9C 8009C59C 3C0383A0 */  sb         $v1, 0x33c($a0)
.L8009C5A0:
/* 8CDA0 8009C5A0 21800000 */  addu       $s0, $zero, $zero
/* 8CDA4 8009C5A4 0F80023C */  lui        $v0, %hi(D_800EBFB0)
/* 8CDA8 8009C5A8 B0BF4824 */  addiu      $t0, $v0, %lo(D_800EBFB0)
/* 8CDAC 8009C5AC 10000925 */  addiu      $t1, $t0, 0x10
/* 8CDB0 8009C5B0 C0181000 */  sll        $v1, $s0, 3
.L8009C5B4:
/* 8CDB4 8009C5B4 23107000 */  subu       $v0, $v1, $s0
/* 8CDB8 8009C5B8 80100200 */  sll        $v0, $v0, 2
/* 8CDBC 8009C5BC 21105000 */  addu       $v0, $v0, $s0
/* 8CDC0 8009C5C0 80100200 */  sll        $v0, $v0, 2
/* 8CDC4 8009C5C4 21104800 */  addu       $v0, $v0, $t0
/* 8CDC8 8009C5C8 000040AC */  sw         $zero, ($v0)
/* 8CDCC 8009C5CC 01000726 */  addiu      $a3, $s0, 1
/* 8CDD0 8009C5D0 77710208 */  j          .L8009C5DC
/* 8CDD4 8009C5D4 21306000 */   addu      $a2, $v1, $zero
.L8009C5D8:
/* 8CDD8 8009C5D8 0000A2AC */  sw         $v0, ($a1)
.L8009C5DC:
/* 8CDDC 8009C5DC 2310D000 */  subu       $v0, $a2, $s0
/* 8CDE0 8009C5E0 80100200 */  sll        $v0, $v0, 2
/* 8CDE4 8009C5E4 21105000 */  addu       $v0, $v0, $s0
/* 8CDE8 8009C5E8 80100200 */  sll        $v0, $v0, 2
/* 8CDEC 8009C5EC 21284800 */  addu       $a1, $v0, $t0
/* 8CDF0 8009C5F0 0000A48C */  lw         $a0, ($a1)
/* 8CDF4 8009C5F4 00000000 */  nop
/* 8CDF8 8009C5F8 80180400 */  sll        $v1, $a0, 2
/* 8CDFC 8009C5FC 21186400 */  addu       $v1, $v1, $a0
/* 8CE00 8009C600 40180300 */  sll        $v1, $v1, 1
/* 8CE04 8009C604 21186200 */  addu       $v1, $v1, $v0
/* 8CE08 8009C608 21186900 */  addu       $v1, $v1, $t1
/* 8CE0C 8009C60C 00006290 */  lbu        $v0, ($v1)
/* 8CE10 8009C610 00000000 */  nop
/* 8CE14 8009C614 F0FF4014 */  bnez       $v0, .L8009C5D8
/* 8CE18 8009C618 01008224 */   addiu     $v0, $a0, 1
/* 8CE1C 8009C61C 2180E000 */  addu       $s0, $a3, $zero
/* 8CE20 8009C620 0900022E */  sltiu      $v0, $s0, 9
/* 8CE24 8009C624 E3FF4014 */  bnez       $v0, .L8009C5B4
/* 8CE28 8009C628 C0181000 */   sll       $v1, $s0, 3
/* 8CE2C 8009C62C 2800C426 */  addiu      $a0, $s6, 0x28
/* 8CE30 8009C630 8A008290 */  lbu        $v0, 0x8a($a0)
/* 8CE34 8009C634 02000524 */  addiu      $a1, $zero, 2
/* 8CE38 8009C638 06004510 */  beq        $v0, $a1, .L8009C654
/* 8CE3C 8009C63C 0100023C */   lui       $v0, 1
/* 8CE40 8009C640 21108200 */  addu       $v0, $a0, $v0
/* 8CE44 8009C644 06434390 */  lbu        $v1, 0x4306($v0)
/* 8CE48 8009C648 00000000 */  nop
/* 8CE4C 8009C64C 05006514 */  bne        $v1, $a1, .L8009C664
/* 8CE50 8009C650 21500000 */   addu      $t2, $zero, $zero
.L8009C654:
/* 8CE54 8009C654 0F80033C */  lui        $v1, %hi(D_800EBFB0)
/* 8CE58 8009C658 B0BF6224 */  addiu      $v0, $v1, %lo(D_800EBFB0)
/* 8CE5C 8009C65C 5C0145AC */  sw         $a1, 0x15c($v0)
/* 8CE60 8009C660 21500000 */  addu       $t2, $zero, $zero
.L8009C664:
/* 8CE64 8009C664 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 8CE68 8009C668 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 8CE6C 8009C66C 90006E24 */  addiu      $t6, $v1, 0x90
/* 8CE70 8009C670 21680000 */  addu       $t5, $zero, $zero
/* 8CE74 8009C674 0F80023C */  lui        $v0, %hi(D_800EBFB0)
/* 8CE78 8009C678 B0BF4F24 */  addiu      $t7, $v0, %lo(D_800EBFB0)
/* 8CE7C 8009C67C D401EC25 */  addiu      $t4, $t7, 0x1d4
/* 8CE80 8009C680 6001EB25 */  addiu      $t3, $t7, 0x160
/* 8CE84 8009C684 21900000 */  addu       $s2, $zero, $zero
/* 8CE88 8009C688 21880000 */  addu       $s1, $zero, $zero
/* 8CE8C 8009C68C 0F80023C */  lui        $v0, %hi(D_800EC594)
/* 8CE90 8009C690 94C55624 */  addiu      $s6, $v0, %lo(D_800EC594)
/* 8CE94 8009C694 21986000 */  addu       $s3, $v1, $zero
/* 8CE98 8009C698 0400F525 */  addiu      $s5, $t7, 4
/* 8CE9C 8009C69C 0F80023C */  lui        $v0, %hi(D_800EC5AC)
/* 8CEA0 8009C6A0 ACC55424 */  addiu      $s4, $v0, %lo(D_800EC5AC)
/* 8CEA4 8009C6A4 0100093C */  lui        $t1, 1
/* 8CEA8 8009C6A8 7C422935 */  ori        $t1, $t1, 0x427c
.L8009C6AC:
/* 8CEAC 8009C6AC FAFFC391 */  lbu        $v1, -6($t6)
/* 8CEB0 8009C6B0 07000224 */  addiu      $v0, $zero, 7
/* 8CEB4 8009C6B4 54006210 */  beq        $v1, $v0, .L8009C808
/* 8CEB8 8009C6B8 80280A00 */   sll       $a1, $t2, 2
/* 8CEBC 8009C6BC 52006010 */  beqz       $v1, .L8009C808
/* 8CEC0 8009C6C0 21800000 */   addu      $s0, $zero, $zero
/* 8CEC4 8009C6C4 2128B500 */  addu       $a1, $a1, $s5
/* 8CEC8 8009C6C8 21103302 */  addu       $v0, $s1, $s3
/* 8CECC 8009C6CC 9000438C */  lw         $v1, 0x90($v0)
/* 8CED0 8009C6D0 2120C002 */  addu       $a0, $s6, $zero
/* 8CED4 8009C6D4 A4FE60AD */  sw         $zero, -0x15c($t3)
/* 8CED8 8009C6D8 C2190300 */  srl        $v1, $v1, 7
/* 8CEDC 8009C6DC 1F006330 */  andi       $v1, $v1, 0x1f
.L8009C6E0:
/* 8CEE0 8009C6E0 0000828C */  lw         $v0, ($a0)
/* 8CEE4 8009C6E4 00000000 */  nop
/* 8CEE8 8009C6E8 02004314 */  bne        $v0, $v1, .L8009C6F4
/* 8CEEC 8009C6EC 00000000 */   nop
/* 8CEF0 8009C6F0 0000B0AC */  sw         $s0, ($a1)
.L8009C6F4:
/* 8CEF4 8009C6F4 01001026 */  addiu      $s0, $s0, 1
/* 8CEF8 8009C6F8 0600022E */  sltiu      $v0, $s0, 6
/* 8CEFC 8009C6FC F8FF4014 */  bnez       $v0, .L8009C6E0
/* 8CF00 8009C700 04008424 */   addiu     $a0, $a0, 4
/* 8CF04 8009C704 21800000 */  addu       $s0, $zero, $zero
/* 8CF08 8009C708 6001E225 */  addiu      $v0, $t7, 0x160
/* 8CF0C 8009C70C 2140A201 */  addu       $t0, $t5, $v0
/* 8CF10 8009C710 21308002 */  addu       $a2, $s4, $zero
/* 8CF14 8009C714 21105302 */  addu       $v0, $s2, $s3
/* 8CF18 8009C718 2128ED01 */  addu       $a1, $t7, $t5
/* 8CF1C 8009C71C 2120A000 */  addu       $a0, $a1, $zero
/* 8CF20 8009C720 0000C38D */  lw         $v1, ($t6)
/* 8CF24 8009C724 89004790 */  lbu        $a3, 0x89($v0)
/* 8CF28 8009C728 42110300 */  srl        $v0, $v1, 5
/* 8CF2C 8009C72C 03004230 */  andi       $v0, $v0, 3
/* 8CF30 8009C730 03006330 */  andi       $v1, $v1, 3
/* 8CF34 8009C734 7800A2AC */  sw         $v0, 0x78($a1)
/* 8CF38 8009C738 EC0083AC */  sw         $v1, 0xec($a0)
/* 8CF3C 8009C73C 000060AD */  sw         $zero, ($t3)
.L8009C740:
/* 8CF40 8009C740 0000C28C */  lw         $v0, ($a2)
/* 8CF44 8009C744 00000000 */  nop
/* 8CF48 8009C748 02004714 */  bne        $v0, $a3, .L8009C754
/* 8CF4C 8009C74C 00000000 */   nop
/* 8CF50 8009C750 000010AD */  sw         $s0, ($t0)
.L8009C754:
/* 8CF54 8009C754 01001026 */  addiu      $s0, $s0, 1
/* 8CF58 8009C758 0C00022E */  sltiu      $v0, $s0, 0xc
/* 8CF5C 8009C75C F8FF4014 */  bnez       $v0, .L8009C740
/* 8CF60 8009C760 0400C624 */   addiu     $a2, $a2, 4
/* 8CF64 8009C764 0000628D */  lw         $v0, ($t3)
/* 8CF68 8009C768 00000000 */  nop
/* 8CF6C 8009C76C 05004228 */  slti       $v0, $v0, 5
/* 8CF70 8009C770 02004014 */  bnez       $v0, .L8009C77C
/* 8CF74 8009C774 04000224 */   addiu     $v0, $zero, 4
/* 8CF78 8009C778 000062AD */  sw         $v0, ($t3)
.L8009C77C:
/* 8CF7C 8009C77C 0000C38D */  lw         $v1, ($t6)
/* 8CF80 8009C780 00000000 */  nop
/* 8CF84 8009C784 82100300 */  srl        $v0, $v1, 2
/* 8CF88 8009C788 01004230 */  andi       $v0, $v0, 1
/* 8CF8C 8009C78C 03004010 */  beqz       $v0, .L8009C79C
/* 8CF90 8009C790 01000224 */   addiu     $v0, $zero, 1
/* 8CF94 8009C794 FA710208 */  j          .L8009C7E8
/* 8CF98 8009C798 000082AD */   sw        $v0, ($t4)
.L8009C79C:
/* 8CF9C 8009C79C C2130300 */  srl        $v0, $v1, 0xf
/* 8CFA0 8009C7A0 03004230 */  andi       $v0, $v0, 3
/* 8CFA4 8009C7A4 04004014 */  bnez       $v0, .L8009C7B8
/* 8CFA8 8009C7A8 42140300 */   srl       $v0, $v1, 0x11
/* 8CFAC 8009C7AC 02000224 */  addiu      $v0, $zero, 2
/* 8CFB0 8009C7B0 FA710208 */  j          .L8009C7E8
/* 8CFB4 8009C7B4 000082AD */   sw        $v0, ($t4)
.L8009C7B8:
/* 8CFB8 8009C7B8 03004230 */  andi       $v0, $v0, 3
/* 8CFBC 8009C7BC 03004010 */  beqz       $v0, .L8009C7CC
/* 8CFC0 8009C7C0 03000224 */   addiu     $v0, $zero, 3
/* 8CFC4 8009C7C4 FA710208 */  j          .L8009C7E8
/* 8CFC8 8009C7C8 000082AD */   sw        $v0, ($t4)
.L8009C7CC:
/* 8CFCC 8009C7CC C2140300 */  srl        $v0, $v1, 0x13
/* 8CFD0 8009C7D0 01004230 */  andi       $v0, $v0, 1
/* 8CFD4 8009C7D4 03004010 */  beqz       $v0, .L8009C7E4
/* 8CFD8 8009C7D8 04000224 */   addiu     $v0, $zero, 4
/* 8CFDC 8009C7DC FA710208 */  j          .L8009C7E8
/* 8CFE0 8009C7E0 000082AD */   sw        $v0, ($t4)
.L8009C7E4:
/* 8CFE4 8009C7E4 000080AD */  sw         $zero, ($t4)
.L8009C7E8:
/* 8CFE8 8009C7E8 0000C28D */  lw         $v0, ($t6)
/* 8CFEC 8009C7EC 2120ED01 */  addu       $a0, $t7, $t5
/* 8CFF0 8009C7F0 021B0200 */  srl        $v1, $v0, 0xc
/* 8CFF4 8009C7F4 03006330 */  andi       $v1, $v1, 3
/* 8CFF8 8009C7F8 82130200 */  srl        $v0, $v0, 0xe
/* 8CFFC 8009C7FC 01004230 */  andi       $v0, $v0, 1
/* 8D000 8009C800 480283AC */  sw         $v1, 0x248($a0)
/* 8D004 8009C804 5C0162AD */  sw         $v0, 0x15c($t3)
.L8009C808:
/* 8D008 8009C808 2170C901 */  addu       $t6, $t6, $t1
/* 8D00C 8009C80C 0400AD25 */  addiu      $t5, $t5, 4
/* 8D010 8009C810 04008C25 */  addiu      $t4, $t4, 4
/* 8D014 8009C814 04006B25 */  addiu      $t3, $t3, 4
/* 8D018 8009C818 21904902 */  addu       $s2, $s2, $t1
/* 8D01C 8009C81C 01004A25 */  addiu      $t2, $t2, 1
/* 8D020 8009C820 02004229 */  slti       $v0, $t2, 2
/* 8D024 8009C824 A1FF4014 */  bnez       $v0, .L8009C6AC
/* 8D028 8009C828 21882902 */   addu      $s1, $s1, $t1
/* 8D02C 8009C82C 21500000 */  addu       $t2, $zero, $zero
/* 8D030 8009C830 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 8D034 8009C834 28004C24 */  addiu      $t4, $v0, %lo(D_800F0028)
/* 8D038 8009C838 20008E81 */  lb         $t6, 0x20($t4)
/* 8D03C 8009C83C 1B80023C */  lui        $v0, %hi(D_801B2B48)
/* 8D040 8009C840 482B4D24 */  addiu      $t5, $v0, %lo(D_801B2B48)
/* 8D044 8009C844 88008925 */  addiu      $t1, $t4, 0x88
/* 8D048 8009C848 21400000 */  addu       $t0, $zero, $zero
/* 8D04C 8009C84C 0F80023C */  lui        $v0, %hi(D_800EBFB0)
/* 8D050 8009C850 B0BF4224 */  addiu      $v0, $v0, %lo(D_800EBFB0)
/* 8D054 8009C854 30034B24 */  addiu      $t3, $v0, 0x330
/* 8D058 8009C858 21306001 */  addu       $a2, $t3, $zero
/* 8D05C 8009C85C 02000F24 */  addiu      $t7, $zero, 2
/* 8D060 8009C860 0100073C */  lui        $a3, 1
/* 8D064 8009C864 7C42E734 */  ori        $a3, $a3, 0x427c
.L8009C868:
/* 8D068 8009C868 0600CF15 */  bne        $t6, $t7, .L8009C884
/* 8D06C 8009C86C 21800000 */   addu      $s0, $zero, $zero
/* 8D070 8009C870 22008281 */  lb         $v0, 0x22($t4)
/* 8D074 8009C874 00000000 */  nop
/* 8D078 8009C878 2B100200 */  sltu       $v0, $zero, $v0
/* 8D07C 8009C87C 2F720208 */  j          .L8009C8BC
/* 8D080 8009C880 0000C2AC */   sw        $v0, ($a2)
.L8009C884:
/* 8D084 8009C884 0000C0AC */  sw         $zero, ($a2)
/* 8D088 8009C888 25720208 */  j          .L8009C894
/* 8D08C 8009C88C 21280001 */   addu      $a1, $t0, $zero
.L8009C890:
/* 8D090 8009C890 01001026 */  addiu      $s0, $s0, 1
.L8009C894:
/* 8D094 8009C894 0500022A */  slti       $v0, $s0, 5
/* 8D098 8009C898 08004010 */  beqz       $v0, .L8009C8BC
/* 8D09C 8009C89C 80101000 */   sll       $v0, $s0, 2
/* 8D0A0 8009C8A0 21104D00 */  addu       $v0, $v0, $t5
/* 8D0A4 8009C8A4 00002491 */  lbu        $a0, ($t1)
/* 8D0A8 8009C8A8 0000438C */  lw         $v1, ($v0)
/* 8D0AC 8009C8AC 00000000 */  nop
/* 8D0B0 8009C8B0 F7FF8314 */  bne        $a0, $v1, .L8009C890
/* 8D0B4 8009C8B4 2110AB00 */   addu      $v0, $a1, $t3
/* 8D0B8 8009C8B8 000050AC */  sw         $s0, ($v0)
.L8009C8BC:
/* 8D0BC 8009C8BC 21482701 */  addu       $t1, $t1, $a3
/* 8D0C0 8009C8C0 04000825 */  addiu      $t0, $t0, 4
/* 8D0C4 8009C8C4 01004A25 */  addiu      $t2, $t2, 1
/* 8D0C8 8009C8C8 02004229 */  slti       $v0, $t2, 2
/* 8D0CC 8009C8CC E6FF4014 */  bnez       $v0, .L8009C868
/* 8D0D0 8009C8D0 0400C624 */   addiu     $a2, $a2, 4
/* 8D0D4 8009C8D4 F1D80224 */  addiu      $v0, $zero, -0x270f
/* 8D0D8 8009C8D8 01000A24 */  addiu      $t2, $zero, 1
/* 8D0DC 8009C8DC 0800C427 */  addiu      $a0, $fp, 8
.L8009C8E0:
/* 8D0E0 8009C8E0 000082A4 */  sh         $v0, ($a0)
/* 8D0E4 8009C8E4 FFFF4A25 */  addiu      $t2, $t2, -1
/* 8D0E8 8009C8E8 FDFF4105 */  bgez       $t2, .L8009C8E0
/* 8D0EC 8009C8EC F8FF8424 */   addiu     $a0, $a0, -8
/* 8D0F0 8009C8F0 8400BF8F */  lw         $ra, 0x84($sp)
/* 8D0F4 8009C8F4 8000BE8F */  lw         $fp, 0x80($sp)
/* 8D0F8 8009C8F8 7C00B78F */  lw         $s7, 0x7c($sp)
/* 8D0FC 8009C8FC 7800B68F */  lw         $s6, 0x78($sp)
/* 8D100 8009C900 7400B58F */  lw         $s5, 0x74($sp)
/* 8D104 8009C904 7000B48F */  lw         $s4, 0x70($sp)
/* 8D108 8009C908 6C00B38F */  lw         $s3, 0x6c($sp)
/* 8D10C 8009C90C 6800B28F */  lw         $s2, 0x68($sp)
/* 8D110 8009C910 6400B18F */  lw         $s1, 0x64($sp)
/* 8D114 8009C914 6000B08F */  lw         $s0, 0x60($sp)
/* 8D118 8009C918 0800E003 */  jr         $ra
/* 8D11C 8009C91C 8800BD27 */   addiu     $sp, $sp, 0x88
