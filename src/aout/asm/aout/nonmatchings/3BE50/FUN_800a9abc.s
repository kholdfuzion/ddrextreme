.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9abc
/* 9A2BC 800A9ABC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9A2C0 800A9AC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 9A2C4 800A9AC4 21808000 */  addu       $s0, $a0, $zero
/* 9A2C8 800A9AC8 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 9A2CC 800A9ACC A8FF4224 */  addiu      $v0, $v0, %lo(D_800EFFA8)
/* 9A2D0 800A9AD0 1400B1AF */  sw         $s1, 0x14($sp)
/* 9A2D4 800A9AD4 2188A000 */  addu       $s1, $a1, $zero
/* 9A2D8 800A9AD8 1800BFAF */  sw         $ra, 0x18($sp)
/* 9A2DC 800A9ADC 5C004494 */  lhu        $a0, 0x5c($v0)
/* 9A2E0 800A9AE0 58004584 */  lh         $a1, 0x58($v0)
/* 9A2E4 800A9AE4 54004684 */  lh         $a2, 0x54($v0)
/* 9A2E8 800A9AE8 6C078424 */  addiu      $a0, $a0, 0x76c
/* 9A2EC 800A9AEC 00240400 */  sll        $a0, $a0, 0x10
/* 9A2F0 800A9AF0 44B2000C */  jal        FUN_8002c910
/* 9A2F4 800A9AF4 03240400 */   sra       $a0, $a0, 0x10
/* 9A2F8 800A9AF8 CCCC033C */  lui        $v1, 0xcccc
/* 9A2FC 800A9AFC CDCC6334 */  ori        $v1, $v1, 0xcccd
/* 9A300 800A9B00 19004300 */  multu      $v0, $v1
/* 9A304 800A9B04 10100000 */  mfhi       $v0
/* 9A308 800A9B08 AAAA033C */  lui        $v1, 0xaaaa
/* 9A30C 800A9B0C ABAA6334 */  ori        $v1, $v1, 0xaaab
/* 9A310 800A9B10 82100200 */  srl        $v0, $v0, 2
/* 9A314 800A9B14 19004300 */  multu      $v0, $v1
/* 9A318 800A9B18 10180000 */  mfhi       $v1
/* 9A31C 800A9B1C 42280300 */  srl        $a1, $v1, 1
/* 9A320 800A9B20 40200500 */  sll        $a0, $a1, 1
/* 9A324 800A9B24 21208500 */  addu       $a0, $a0, $a1
/* 9A328 800A9B28 23284400 */  subu       $a1, $v0, $a0
/* 9A32C 800A9B2C 1580033C */  lui        $v1, %hi(D_8014BAAC)
/* 9A330 800A9B30 ACBA6724 */  addiu      $a3, $v1, %lo(D_8014BAAC)
/* 9A334 800A9B34 00140500 */  sll        $v0, $a1, 0x10
/* 9A338 800A9B38 03140200 */  sra        $v0, $v0, 0x10
/* 9A33C 800A9B3C ACBA65A4 */  sh         $a1, -0x4554($v1)
/* 9A340 800A9B40 0200E484 */  lh         $a0, 2($a3)
/* 9A344 800A9B44 00000000 */  nop
/* 9A348 800A9B48 10004410 */  beq        $v0, $a0, .L800A9B8C
/* 9A34C 800A9B4C 21306000 */   addu      $a2, $v1, $zero
/* 9A350 800A9B50 2140C000 */  addu       $t0, $a2, $zero
/* 9A354 800A9B54 0400E324 */  addiu      $v1, $a3, 4
/* 9A358 800A9B58 21280000 */  addu       $a1, $zero, $zero
/* 9A35C 800A9B5C FF000424 */  addiu      $a0, $zero, 0xff
.L800A9B60:
/* 9A360 800A9B60 ACBA0285 */  lh         $v0, -0x4554($t0)
/* 9A364 800A9B64 FFFF8424 */  addiu      $a0, $a0, -1
/* 9A368 800A9B68 40100200 */  sll        $v0, $v0, 1
/* 9A36C 800A9B6C 21104500 */  addu       $v0, $v0, $a1
/* 9A370 800A9B70 0600A524 */  addiu      $a1, $a1, 6
/* 9A374 800A9B74 21104300 */  addu       $v0, $v0, $v1
/* 9A378 800A9B78 F9FF8104 */  bgez       $a0, .L800A9B60
/* 9A37C 800A9B7C 000040A4 */   sh        $zero, ($v0)
/* 9A380 800A9B80 ACBAC394 */  lhu        $v1, -0x4554($a2)
/* 9A384 800A9B84 ACBAC224 */  addiu      $v0, $a2, -0x4554
/* 9A388 800A9B88 020043A4 */  sh         $v1, 2($v0)
.L800A9B8C:
/* 9A38C 800A9B8C 0001022E */  sltiu      $v0, $s0, 0x100
/* 9A390 800A9B90 11004010 */  beqz       $v0, .L800A9BD8
/* 9A394 800A9B94 ACBAC424 */   addiu     $a0, $a2, -0x4554
/* 9A398 800A9B98 40101000 */  sll        $v0, $s0, 1
/* 9A39C 800A9B9C 21105000 */  addu       $v0, $v0, $s0
/* 9A3A0 800A9BA0 ACBAC384 */  lh         $v1, -0x4554($a2)
/* 9A3A4 800A9BA4 04008424 */  addiu      $a0, $a0, 4
/* 9A3A8 800A9BA8 21104300 */  addu       $v0, $v0, $v1
/* 9A3AC 800A9BAC 40100200 */  sll        $v0, $v0, 1
/* 9A3B0 800A9BB0 21204400 */  addu       $a0, $v0, $a0
/* 9A3B4 800A9BB4 00008394 */  lhu        $v1, ($a0)
/* 9A3B8 800A9BB8 50C30534 */  ori        $a1, $zero, 0xc350
/* 9A3BC 800A9BBC 21187100 */  addu       $v1, $v1, $s1
/* 9A3C0 800A9BC0 2A10A300 */  slt        $v0, $a1, $v1
/* 9A3C4 800A9BC4 03004010 */  beqz       $v0, .L800A9BD4
/* 9A3C8 800A9BC8 00000000 */   nop
/* 9A3CC 800A9BCC F6A60208 */  j          .L800A9BD8
/* 9A3D0 800A9BD0 000085A4 */   sh        $a1, ($a0)
.L800A9BD4:
/* 9A3D4 800A9BD4 000083A4 */  sh         $v1, ($a0)
.L800A9BD8:
/* 9A3D8 800A9BD8 1800BF8F */  lw         $ra, 0x18($sp)
/* 9A3DC 800A9BDC 1400B18F */  lw         $s1, 0x14($sp)
/* 9A3E0 800A9BE0 1000B08F */  lw         $s0, 0x10($sp)
/* 9A3E4 800A9BE4 21100000 */  addu       $v0, $zero, $zero
/* 9A3E8 800A9BE8 0800E003 */  jr         $ra
/* 9A3EC 800A9BEC 2000BD27 */   addiu     $sp, $sp, 0x20
