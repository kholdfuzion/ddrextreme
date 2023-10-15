.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001fbe0
/* 103E0 8001FBE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 103E4 8001FBE4 1400B1AF */  sw         $s1, 0x14($sp)
/* 103E8 8001FBE8 21888000 */  addu       $s1, $a0, $zero
/* 103EC 8001FBEC 1800BFAF */  sw         $ra, 0x18($sp)
/* 103F0 8001FBF0 D5C1020C */  jal        FUN_800b0754
/* 103F4 8001FBF4 1000B0AF */   sw        $s0, 0x10($sp)
/* 103F8 8001FBF8 B8C1020C */  jal        FUN_800b06e0
/* 103FC 8001FBFC FE000424 */   addiu     $a0, $zero, 0xfe
/* 10400 8001FC00 0F80103C */  lui        $s0, 0x800f
/* 10404 8001FC04 1380023C */  lui        $v0, %hi(D_80128FE8)
/* 10408 8001FC08 E88F4524 */  addiu      $a1, $v0, %lo(D_80128FE8)
/* 1040C 8001FC0C 1380033C */  lui        $v1, %hi(D_80128FE0)
/* 10410 8001FC10 E08F6324 */  addiu      $v1, $v1, %lo(D_80128FE0)
/* 10414 8001FC14 1380023C */  lui        $v0, %hi(D_80128FD8)
/* 10418 8001FC18 D88F4224 */  addiu      $v0, $v0, %lo(D_80128FD8)
/* 1041C 8001FC1C 01000424 */  addiu      $a0, $zero, 1
.L8001FC20:
/* 10420 8001FC20 0000A0AC */  sw         $zero, ($a1)
/* 10424 8001FC24 0400A524 */  addiu      $a1, $a1, 4
/* 10428 8001FC28 000060AC */  sw         $zero, ($v1)
/* 1042C 8001FC2C 04006324 */  addiu      $v1, $v1, 4
/* 10430 8001FC30 000040AC */  sw         $zero, ($v0)
/* 10434 8001FC34 FFFF8424 */  addiu      $a0, $a0, -1
/* 10438 8001FC38 F9FF8104 */  bgez       $a0, .L8001FC20
/* 1043C 8001FC3C 04004224 */   addiu     $v0, $v0, 4
/* 10440 8001FC40 F8000424 */  addiu      $a0, $zero, 0xf8
/* 10444 8001FC44 0200033C */  lui        $v1, 2
/* 10448 8001FC48 20866334 */  ori        $v1, $v1, 0x8620
/* 1044C 8001FC4C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 10450 8001FC50 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 10454 8001FC54 21104300 */  addu       $v0, $v0, $v1
.L8001FC58:
/* 10458 8001FC58 000040A0 */  sb         $zero, ($v0)
/* 1045C 8001FC5C FFFF8424 */  addiu      $a0, $a0, -1
/* 10460 8001FC60 FDFF8104 */  bgez       $a0, .L8001FC58
/* 10464 8001FC64 FFFF4224 */   addiu     $v0, $v0, -1
/* 10468 8001FC68 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1046C 8001FC6C 50BA4224 */  addiu      $v0, $v0, %lo(D_8014BA50)
/* 10470 8001FC70 10004384 */  lh         $v1, 0x10($v0)
/* 10474 8001FC74 28000526 */  addiu      $a1, $s0, 0x28
/* 10478 8001FC78 0A006010 */  beqz       $v1, .L8001FCA4
/* 1047C 8001FC7C 1300A0A0 */   sb        $zero, 0x13($a1)
/* 10480 8001FC80 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 10484 8001FC84 A8FF448C */  lw         $a0, %lo(D_800EFFA8)($v0)
/* 10488 8001FC88 00000000 */  nop
/* 1048C 8001FC8C 18008394 */  lhu        $v1, 0x18($a0)
/* 10490 8001FC90 00000000 */  nop
/* 10494 8001FC94 00106330 */  andi       $v1, $v1, 0x1000
/* 10498 8001FC98 02006010 */  beqz       $v1, .L8001FCA4
/* 1049C 8001FC9C 01000224 */   addiu     $v0, $zero, 1
/* 104A0 8001FCA0 1300A2A0 */  sb         $v0, 0x13($a1)
.L8001FCA4:
/* 104A4 8001FCA4 08AB020C */  jal        FUN_800aac20
/* 104A8 8001FCA8 00000000 */   nop
/* 104AC 8001FCAC 09D1010C */  jal        FUN_80074424
/* 104B0 8001FCB0 00000000 */   nop
/* 104B4 8001FCB4 0F000924 */  addiu      $t1, $zero, 0xf
/* 104B8 8001FCB8 01000824 */  addiu      $t0, $zero, 1
/* 104BC 8001FCBC 28000226 */  addiu      $v0, $s0, 0x28
/* 104C0 8001FCC0 21284000 */  addu       $a1, $v0, $zero
/* 104C4 8001FCC4 FFFF0D24 */  addiu      $t5, $zero, -1
/* 104C8 8001FCC8 FCFF0C24 */  addiu      $t4, $zero, -4
/* 104CC 8001FCCC FBFF0B24 */  addiu      $t3, $zero, -5
/* 104D0 8001FCD0 F7FF0A24 */  addiu      $t2, $zero, -9
/* 104D4 8001FCD4 0100063C */  lui        $a2, 1
/* 104D8 8001FCD8 7C42C634 */  ori        $a2, $a2, 0x427c
/* 104DC 8001FCDC 01000724 */  addiu      $a3, $zero, 1
/* 104E0 8001FCE0 FFFF0324 */  addiu      $v1, $zero, -1
/* 104E4 8001FCE4 FFFF0424 */  addiu      $a0, $zero, -1
/* 104E8 8001FCE8 0F0040A0 */  sb         $zero, 0xf($v0)
/* 104EC 8001FCEC 100040A0 */  sb         $zero, 0x10($v0)
/* 104F0 8001FCF0 0C0043A0 */  sb         $v1, 0xc($v0)
/* 104F4 8001FCF4 1E0044A4 */  sh         $a0, 0x1e($v0)
/* 104F8 8001FCF8 080040A0 */  sb         $zero, 8($v0)
/* 104FC 8001FCFC 090040A0 */  sb         $zero, 9($v0)
/* 10500 8001FD00 0A0040A0 */  sb         $zero, 0xa($v0)
/* 10504 8001FD04 0B0040A0 */  sb         $zero, 0xb($v0)
.L8001FD08:
/* 10508 8001FD08 FFFFE724 */  addiu      $a3, $a3, -1
/* 1050C 8001FD0C 7FF00224 */  addiu      $v0, $zero, -0xf81
/* 10510 8001FD10 9000A48C */  lw         $a0, 0x90($a1)
/* 10514 8001FD14 FFCF0324 */  addiu      $v1, $zero, -0x3001
/* 10518 8001FD18 3C00A0A0 */  sb         $zero, 0x3c($a1)
/* 1051C 8001FD1C 3D00A9A0 */  sb         $t1, 0x3d($a1)
/* 10520 8001FD20 3E00A0A0 */  sb         $zero, 0x3e($a1)
/* 10524 8001FD24 3F00A9A0 */  sb         $t1, 0x3f($a1)
/* 10528 8001FD28 4300A0A0 */  sb         $zero, 0x43($a1)
/* 1052C 8001FD2C 4400A0A0 */  sb         $zero, 0x44($a1)
/* 10530 8001FD30 4500A0A0 */  sb         $zero, 0x45($a1)
/* 10534 8001FD34 8800A8A0 */  sb         $t0, 0x88($a1)
/* 10538 8001FD38 8900A8A0 */  sb         $t0, 0x89($a1)
/* 1053C 8001FD3C 8A00A0A0 */  sb         $zero, 0x8a($a1)
/* 10540 8001FD40 8B00A0A0 */  sb         $zero, 0x8b($a1)
/* 10544 8001FD44 8C00A0A0 */  sb         $zero, 0x8c($a1)
/* 10548 8001FD48 8E00ADA4 */  sh         $t5, 0x8e($a1)
/* 1054C 8001FD4C 24208C00 */  and        $a0, $a0, $t4
/* 10550 8001FD50 24208B00 */  and        $a0, $a0, $t3
/* 10554 8001FD54 24208A00 */  and        $a0, $a0, $t2
/* 10558 8001FD58 24208200 */  and        $a0, $a0, $v0
/* 1055C 8001FD5C 00018434 */  ori        $a0, $a0, 0x100
/* 10560 8001FD60 9FFF0224 */  addiu      $v0, $zero, -0x61
/* 10564 8001FD64 24208200 */  and        $a0, $a0, $v0
/* 10568 8001FD68 24208300 */  and        $a0, $a0, $v1
/* 1056C 8001FD6C 00408434 */  ori        $a0, $a0, 0x4000
/* 10570 8001FD70 9000A4AC */  sw         $a0, 0x90($a1)
/* 10574 8001FD74 E4FFE104 */  bgez       $a3, .L8001FD08
/* 10578 8001FD78 2128A600 */   addu      $a1, $a1, $a2
/* 1057C 8001FD7C 21202002 */  addu       $a0, $s1, $zero
/* 10580 8001FD80 1F000224 */  addiu      $v0, $zero, 0x1f
/* 10584 8001FD84 280002A6 */  sh         $v0, 0x28($s0)
/* 10588 8001FD88 0E80023C */  lui        $v0, %hi(D_800D88D0)
/* 1058C 8001FD8C 000020AE */  sw         $zero, ($s1)
/* 10590 8001FD90 D088438C */  lw         $v1, %lo(D_800D88D0)($v0)
/* 10594 8001FD94 00000000 */  nop
/* 10598 8001FD98 09F86000 */  jalr       $v1
/* 1059C 8001FD9C 21280000 */   addu      $a1, $zero, $zero
/* 105A0 8001FDA0 1800BF8F */  lw         $ra, 0x18($sp)
/* 105A4 8001FDA4 1400B18F */  lw         $s1, 0x14($sp)
/* 105A8 8001FDA8 1000B08F */  lw         $s0, 0x10($sp)
/* 105AC 8001FDAC 0800E003 */  jr         $ra
/* 105B0 8001FDB0 2000BD27 */   addiu     $sp, $sp, 0x20
