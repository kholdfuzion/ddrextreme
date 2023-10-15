.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B0BBC
/* A13BC 800B0BBC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* A13C0 800B0BC0 1400B1AF */  sw         $s1, 0x14($sp)
/* A13C4 800B0BC4 1D80113C */  lui        $s1, 0x801d
/* A13C8 800B0BC8 1800B2AF */  sw         $s2, 0x18($sp)
/* A13CC 800B0BCC 1D80123C */  lui        $s2, 0x801d
/* A13D0 800B0BD0 2C00B7AF */  sw         $s7, 0x2c($sp)
/* A13D4 800B0BD4 1D80173C */  lui        $s7, 0x801d
/* A13D8 800B0BD8 2800B6AF */  sw         $s6, 0x28($sp)
/* A13DC 800B0BDC 01001624 */  addiu      $s6, $zero, 1
/* A13E0 800B0BE0 3000BFAF */  sw         $ra, 0x30($sp)
/* A13E4 800B0BE4 2400B5AF */  sw         $s5, 0x24($sp)
/* A13E8 800B0BE8 2000B4AF */  sw         $s4, 0x20($sp)
/* A13EC 800B0BEC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A13F0 800B0BF0 00C30208 */  j          .L800B0C00
/* A13F4 800B0BF4 1000B0AF */   sw        $s0, 0x10($sp)
.L800B0BF8:
/* A13F8 800B0BF8 BFC2020C */  jal        ChangeTh
/* A13FC 800B0BFC 00FF043C */   lui       $a0, 0xff00
.L800B0C00:
/* A1400 800B0C00 8823238E */  lw         $v1, 0x2388($s1)
/* A1404 800B0C04 8C23428E */  lw         $v0, 0x238c($s2)
/* A1408 800B0C08 00000000 */  nop
/* A140C 800B0C0C FAFF6210 */  beq        $v1, $v0, .L800B0BF8
/* A1410 800B0C10 00000000 */   nop
/* A1414 800B0C14 1F006210 */  beq        $v1, $v0, .L800B0C94
/* A1418 800B0C18 A024F6AE */   sw        $s6, 0x24a0($s7)
/* A141C 800B0C1C 1D80153C */  lui        $s5, 0x801d
/* A1420 800B0C20 1D80023C */  lui        $v0, %hi(D_801D2398)
/* A1424 800B0C24 98235424 */  addiu      $s4, $v0, %lo(D_801D2398)
/* A1428 800B0C28 0180133C */  lui        $s3, 0x8001
.L800B0C2C:
/* A142C 800B0C2C 8823238E */  lw         $v1, 0x2388($s1)
/* A1430 800B0C30 00000000 */  nop
/* A1434 800B0C34 00110300 */  sll        $v0, $v1, 4
/* A1438 800B0C38 01006324 */  addiu      $v1, $v1, 1
/* A143C 800B0C3C 21805400 */  addu       $s0, $v0, $s4
/* A1440 800B0C40 1000622C */  sltiu      $v0, $v1, 0x10
/* A1444 800B0C44 02004014 */  bnez       $v0, .L800B0C50
/* A1448 800B0C48 9824B0AE */   sw        $s0, 0x2498($s5)
/* A144C 800B0C4C 21180000 */  addu       $v1, $zero, $zero
.L800B0C50:
/* A1450 800B0C50 0000048E */  lw         $a0, ($s0)
/* A1454 800B0C54 0800058E */  lw         $a1, 8($s0)
/* A1458 800B0C58 0400068E */  lw         $a2, 4($s0)
/* A145C 800B0C5C 882323AE */  sw         $v1, 0x2388($s1)
/* A1460 800B0C60 32C4020C */  jal        FUN_800b10c8
/* A1464 800B0C64 0C0016A6 */   sh        $s6, 0xc($s0)
/* A1468 800B0C68 FFFF0324 */  addiu      $v1, $zero, -1
/* A146C 800B0C6C 04004314 */  bne        $v0, $v1, .L800B0C80
/* A1470 800B0C70 DC706426 */   addiu     $a0, $s3, 0x70dc
/* A1474 800B0C74 FFFF0524 */  addiu      $a1, $zero, -1
/* A1478 800B0C78 58AA000C */  jal        error_8002a960
/* A147C 800B0C7C 01000624 */   addiu     $a2, $zero, 1
.L800B0C80:
/* A1480 800B0C80 8823248E */  lw         $a0, 0x2388($s1)
/* A1484 800B0C84 8C23438E */  lw         $v1, 0x238c($s2)
/* A1488 800B0C88 02000224 */  addiu      $v0, $zero, 2
/* A148C 800B0C8C E7FF8314 */  bne        $a0, $v1, .L800B0C2C
/* A1490 800B0C90 0C0002A6 */   sh        $v0, 0xc($s0)
.L800B0C94:
/* A1494 800B0C94 1D6E000C */  jal        FUN_8001b874
/* A1498 800B0C98 00000000 */   nop
/* A149C 800B0C9C A024E0AE */  sw         $zero, 0x24a0($s7)
/* A14A0 800B0CA0 00F3043C */  lui        $a0, 0xf300
/* A14A4 800B0CA4 00028434 */  ori        $a0, $a0, 0x200
/* A14A8 800B0CA8 A9C3020C */  jal        DeliverEvent
/* A14AC 800B0CAC 01000524 */   addiu     $a1, $zero, 1
/* A14B0 800B0CB0 216E000C */  jal        FUN_8001b884
/* A14B4 800B0CB4 00000000 */   nop
/* A14B8 800B0CB8 00C30208 */  j          .L800B0C00
/* A14BC 800B0CBC 00000000 */   nop
