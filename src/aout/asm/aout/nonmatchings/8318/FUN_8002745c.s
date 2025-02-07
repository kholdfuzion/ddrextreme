.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002745c
/* 17C5C 8002745C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17C60 80027460 0800822C */  sltiu      $v0, $a0, 8
/* 17C64 80027464 1400BFAF */  sw         $ra, 0x14($sp)
/* 17C68 80027468 77004010 */  beqz       $v0, .L80027648
/* 17C6C 8002746C 1000B0AF */   sw        $s0, 0x10($sp)
/* 17C70 80027470 0180023C */  lui        $v0, %hi(D_80010E38)
/* 17C74 80027474 380E4224 */  addiu      $v0, $v0, %lo(D_80010E38)
/* 17C78 80027478 80180400 */  sll        $v1, $a0, 2
/* 17C7C 8002747C 21186200 */  addu       $v1, $v1, $v0
/* 17C80 80027480 0000648C */  lw         $a0, ($v1)
/* 17C84 80027484 00000000 */  nop
/* 17C88 80027488 08008000 */  jr         $a0
/* 17C8C 8002748C 00000000 */   nop
/* 17C90 80027490 939D0008 */  j          .L8002764C
/* 17C94 80027494 07000224 */   addiu     $v0, $zero, 7
/* 17C98 80027498 939D0008 */  j          .L8002764C
/* 17C9C 8002749C 01000224 */   addiu     $v0, $zero, 1
/* 17CA0 800274A0 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 17CA4 800274A4 21804000 */  addu       $s0, $v0, $zero
/* 17CA8 800274A8 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 17CAC 800274AC 8A008390 */  lbu        $v1, 0x8a($a0)
/* 17CB0 800274B0 07000224 */  addiu      $v0, $zero, 7
/* 17CB4 800274B4 08006210 */  beq        $v1, $v0, .L800274D8
/* 17CB8 800274B8 28000226 */   addiu     $v0, $s0, 0x28
/* 17CBC 800274BC 05006010 */  beqz       $v1, .L800274D4
/* 17CC0 800274C0 03000224 */   addiu     $v0, $zero, 3
/* 17CC4 800274C4 88008390 */  lbu        $v1, 0x88($a0)
/* 17CC8 800274C8 00000000 */  nop
/* 17CCC 800274CC 5F006214 */  bne        $v1, $v0, .L8002764C
/* 17CD0 800274D0 02000224 */   addiu     $v0, $zero, 2
.L800274D4:
/* 17CD4 800274D4 28000226 */  addiu      $v0, $s0, 0x28
.L800274D8:
/* 17CD8 800274D8 0100033C */  lui        $v1, 1
/* 17CDC 800274DC 21204300 */  addu       $a0, $v0, $v1
/* 17CE0 800274E0 06438390 */  lbu        $v1, 0x4306($a0)
/* 17CE4 800274E4 07000224 */  addiu      $v0, $zero, 7
/* 17CE8 800274E8 07006210 */  beq        $v1, $v0, .L80027508
/* 17CEC 800274EC 00000000 */   nop
/* 17CF0 800274F0 05006010 */  beqz       $v1, .L80027508
/* 17CF4 800274F4 03000324 */   addiu     $v1, $zero, 3
/* 17CF8 800274F8 04438490 */  lbu        $a0, 0x4304($a0)
/* 17CFC 800274FC 00000000 */  nop
/* 17D00 80027500 52008314 */  bne        $a0, $v1, .L8002764C
/* 17D04 80027504 02000224 */   addiu     $v0, $zero, 2
.L80027508:
/* 17D08 80027508 939D0008 */  j          .L8002764C
/* 17D0C 8002750C 04000224 */   addiu     $v0, $zero, 4
/* 17D10 80027510 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 17D14 80027514 21804000 */  addu       $s0, $v0, $zero
/* 17D18 80027518 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 17D1C 8002751C 20008380 */  lb         $v1, 0x20($a0)
/* 17D20 80027520 01000224 */  addiu      $v0, $zero, 1
/* 17D24 80027524 16006210 */  beq        $v1, $v0, .L80027580
/* 17D28 80027528 28000326 */   addiu     $v1, $s0, 0x28
/* 17D2C 8002752C 17008280 */  lb         $v0, 0x17($a0)
/* 17D30 80027530 00000000 */  nop
/* 17D34 80027534 12004014 */  bnez       $v0, .L80027580
/* 17D38 80027538 00000000 */   nop
/* 17D3C 8002753C 0AF8010C */  jal        FUN_8007e028
/* 17D40 80027540 21200000 */   addu      $a0, $zero, $zero
/* 17D44 80027544 05004010 */  beqz       $v0, .L8002755C
/* 17D48 80027548 00000000 */   nop
/* 17D4C 8002754C 62B3000C */  jal        FUN_8002cd88
/* 17D50 80027550 21200000 */   addu      $a0, $zero, $zero
/* 17D54 80027554 3D004014 */  bnez       $v0, .L8002764C
/* 17D58 80027558 05000224 */   addiu     $v0, $zero, 5
.L8002755C:
/* 17D5C 8002755C 0AF8010C */  jal        FUN_8007e028
/* 17D60 80027560 01000424 */   addiu     $a0, $zero, 1
/* 17D64 80027564 06004010 */  beqz       $v0, .L80027580
/* 17D68 80027568 28000326 */   addiu     $v1, $s0, 0x28
/* 17D6C 8002756C 62B3000C */  jal        FUN_8002cd88
/* 17D70 80027570 01000424 */   addiu     $a0, $zero, 1
/* 17D74 80027574 35004014 */  bnez       $v0, .L8002764C
/* 17D78 80027578 05000224 */   addiu     $v0, $zero, 5
/* 17D7C 8002757C 28000326 */  addiu      $v1, $s0, 0x28
.L80027580:
/* 17D80 80027580 26006280 */  lb         $v0, 0x26($v1)
/* 17D84 80027584 00000000 */  nop
/* 17D88 80027588 30004010 */  beqz       $v0, .L8002764C
/* 17D8C 8002758C 06000224 */   addiu     $v0, $zero, 6
/* 17D90 80027590 27006280 */  lb         $v0, 0x27($v1)
/* 17D94 80027594 00000000 */  nop
/* 17D98 80027598 2C004014 */  bnez       $v0, .L8002764C
/* 17D9C 8002759C 06000224 */   addiu     $v0, $zero, 6
/* 17DA0 800275A0 8E006484 */  lh         $a0, 0x8e($v1)
/* 17DA4 800275A4 FFFF0224 */  addiu      $v0, $zero, -1
/* 17DA8 800275A8 28008214 */  bne        $a0, $v0, .L8002764C
/* 17DAC 800275AC 06000224 */   addiu     $v0, $zero, 6
/* 17DB0 800275B0 0100023C */  lui        $v0, 1
/* 17DB4 800275B4 21106200 */  addu       $v0, $v1, $v0
/* 17DB8 800275B8 0A434384 */  lh         $v1, 0x430a($v0)
/* 17DBC 800275BC 00000000 */  nop
/* 17DC0 800275C0 17006410 */  beq        $v1, $a0, .L80027620
/* 17DC4 800275C4 1380023C */   lui       $v0, 0x8013
/* 17DC8 800275C8 939D0008 */  j          .L8002764C
/* 17DCC 800275CC 06000224 */   addiu     $v0, $zero, 6
/* 17DD0 800275D0 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 17DD4 800275D4 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 17DD8 800275D8 26008380 */  lb         $v1, 0x26($a0)
/* 17DDC 800275DC 00000000 */  nop
/* 17DE0 800275E0 1A006010 */  beqz       $v1, .L8002764C
/* 17DE4 800275E4 06000224 */   addiu     $v0, $zero, 6
/* 17DE8 800275E8 27008280 */  lb         $v0, 0x27($a0)
/* 17DEC 800275EC 00000000 */  nop
/* 17DF0 800275F0 16004014 */  bnez       $v0, .L8002764C
/* 17DF4 800275F4 06000224 */   addiu     $v0, $zero, 6
/* 17DF8 800275F8 8E008584 */  lh         $a1, 0x8e($a0)
/* 17DFC 800275FC FFFF0224 */  addiu      $v0, $zero, -1
/* 17E00 80027600 1200A214 */  bne        $a1, $v0, .L8002764C
/* 17E04 80027604 06000224 */   addiu     $v0, $zero, 6
/* 17E08 80027608 0100023C */  lui        $v0, 1
/* 17E0C 8002760C 21108200 */  addu       $v0, $a0, $v0
/* 17E10 80027610 0A434384 */  lh         $v1, 0x430a($v0)
/* 17E14 80027614 00000000 */  nop
/* 17E18 80027618 09006514 */  bne        $v1, $a1, .L80027640
/* 17E1C 8002761C 1380023C */   lui       $v0, %hi(D_80129DA8)
.L80027620:
/* 17E20 80027620 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 17E24 80027624 B40D438C */  lw         $v1, 0xdb4($v0)
/* 17E28 80027628 0FFF0424 */  addiu      $a0, $zero, -0xf1
/* 17E2C 8002762C 24186400 */  and        $v1, $v1, $a0
/* 17E30 80027630 EDC1020C */  jal        FUN_800b07b4
/* 17E34 80027634 B40D43AC */   sw        $v1, 0xdb4($v0)
/* 17E38 80027638 939D0008 */  j          .L8002764C
/* 17E3C 8002763C 03000224 */   addiu     $v0, $zero, 3
.L80027640:
/* 17E40 80027640 939D0008 */  j          .L8002764C
/* 17E44 80027644 06000224 */   addiu     $v0, $zero, 6
.L80027648:
/* 17E48 80027648 08000224 */  addiu      $v0, $zero, 8
.L8002764C:
/* 17E4C 8002764C 1400BF8F */  lw         $ra, 0x14($sp)
/* 17E50 80027650 1000B08F */  lw         $s0, 0x10($sp)
/* 17E54 80027654 0800E003 */  jr         $ra
/* 17E58 80027658 1800BD27 */   addiu     $sp, $sp, 0x18
