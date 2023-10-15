.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004f48c
/* 3FC8C 8004F48C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3FC90 8004F490 2000BFAF */  sw         $ra, 0x20($sp)
/* 3FC94 8004F494 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 3FC98 8004F498 7470000C */  jal        getcoinslot1_8001c1d0
/* 3FC9C 8004F49C 1800B0AF */   sw        $s0, 0x18($sp)
/* 3FCA0 8004F4A0 05004010 */  beqz       $v0, .L8004F4B8
/* 3FCA4 8004F4A4 00000000 */   nop
/* 3FCA8 8004F4A8 214C010C */  jal        FUN_80053084
/* 3FCAC 8004F4AC 00000000 */   nop
/* 3FCB0 8004F4B0 303D0108 */  j          .L8004F4C0
/* 3FCB4 8004F4B4 00000000 */   nop
.L8004F4B8:
/* 3FCB8 8004F4B8 B84B010C */  jal        FUN_80052ee0
/* 3FCBC 8004F4BC 00000000 */   nop
.L8004F4C0:
/* 3FCC0 8004F4C0 1C33010C */  jal        FUN_8004cc70
/* 3FCC4 8004F4C4 1380103C */   lui       $s0, 0x8013
/* 3FCC8 8004F4C8 06000424 */  addiu      $a0, $zero, 6
/* 3FCCC 8004F4CC FA56010C */  jal        FUN_80055be8
/* 3FCD0 8004F4D0 0F000524 */   addiu     $a1, $zero, 0xf
/* 3FCD4 8004F4D4 06000424 */  addiu      $a0, $zero, 6
/* 3FCD8 8004F4D8 946B010C */  jal        FUN_8005ae50
/* 3FCDC 8004F4DC FFFF0524 */   addiu     $a1, $zero, -1
/* 3FCE0 8004F4E0 06000424 */  addiu      $a0, $zero, 6
/* 3FCE4 8004F4E4 80000524 */  addiu      $a1, $zero, 0x80
/* 3FCE8 8004F4E8 80000624 */  addiu      $a2, $zero, 0x80
/* 3FCEC 8004F4EC 646B010C */  jal        FUN_8005ad90
/* 3FCF0 8004F4F0 80000724 */   addiu     $a3, $zero, 0x80
/* 3FCF4 8004F4F4 E0801026 */  addiu      $s0, $s0, -0x7f20
/* 3FCF8 8004F4F8 1380113C */  lui        $s1, %hi(D_801282E0)
/* 3FCFC 8004F4FC 84000292 */  lbu        $v0, 0x84($s0)
/* 3FD00 8004F500 E0823126 */  addiu      $s1, $s1, %lo(D_801282E0)
/* 3FD04 8004F504 C0180200 */  sll        $v1, $v0, 3
/* 3FD08 8004F508 23186200 */  subu       $v1, $v1, $v0
/* 3FD0C 8004F50C 80180300 */  sll        $v1, $v1, 2
/* 3FD10 8004F510 21187100 */  addu       $v1, $v1, $s1
/* 3FD14 8004F514 21384000 */  addu       $a3, $v0, $zero
/* 3FD18 8004F518 C0100700 */  sll        $v0, $a3, 3
/* 3FD1C 8004F51C 23104700 */  subu       $v0, $v0, $a3
/* 3FD20 8004F520 80100200 */  sll        $v0, $v0, 2
/* 3FD24 8004F524 21105100 */  addu       $v0, $v0, $s1
/* 3FD28 8004F528 04006584 */  lh         $a1, 4($v1)
/* 3FD2C 8004F52C 06006684 */  lh         $a2, 6($v1)
/* 3FD30 8004F530 08006784 */  lh         $a3, 8($v1)
/* 3FD34 8004F534 0A006884 */  lh         $t0, 0xa($v1)
/* 3FD38 8004F538 0C004984 */  lh         $t1, 0xc($v0)
/* 3FD3C 8004F53C 06000424 */  addiu      $a0, $zero, 6
/* 3FD40 8004F540 1000A8AF */  sw         $t0, 0x10($sp)
/* 3FD44 8004F544 D16B010C */  jal        FUN_8005af44
/* 3FD48 8004F548 1400A9AF */   sw        $t1, 0x14($sp)
/* 3FD4C 8004F54C 84000392 */  lbu        $v1, 0x84($s0)
/* 3FD50 8004F550 00000000 */  nop
/* 3FD54 8004F554 C0100300 */  sll        $v0, $v1, 3
/* 3FD58 8004F558 23104300 */  subu       $v0, $v0, $v1
/* 3FD5C 8004F55C 80100200 */  sll        $v0, $v0, 2
/* 3FD60 8004F560 21105100 */  addu       $v0, $v0, $s1
/* 3FD64 8004F564 16004584 */  lh         $a1, 0x16($v0)
/* 3FD68 8004F568 18004684 */  lh         $a2, 0x18($v0)
/* 3FD6C 8004F56C 0C6C010C */  jal        FUN_8005b030
/* 3FD70 8004F570 06000424 */   addiu     $a0, $zero, 6
/* 3FD74 8004F574 07000424 */  addiu      $a0, $zero, 7
/* 3FD78 8004F578 FA56010C */  jal        FUN_80055be8
/* 3FD7C 8004F57C 0F000524 */   addiu     $a1, $zero, 0xf
/* 3FD80 8004F580 07000424 */  addiu      $a0, $zero, 7
/* 3FD84 8004F584 946B010C */  jal        FUN_8005ae50
/* 3FD88 8004F588 FFFF0524 */   addiu     $a1, $zero, -1
/* 3FD8C 8004F58C 07000424 */  addiu      $a0, $zero, 7
/* 3FD90 8004F590 80000524 */  addiu      $a1, $zero, 0x80
/* 3FD94 8004F594 80000624 */  addiu      $a2, $zero, 0x80
/* 3FD98 8004F598 646B010C */  jal        FUN_8005ad90
/* 3FD9C 8004F59C 80000724 */   addiu     $a3, $zero, 0x80
/* 3FDA0 8004F5A0 84000292 */  lbu        $v0, 0x84($s0)
/* 3FDA4 8004F5A4 00000000 */  nop
/* 3FDA8 8004F5A8 C0180200 */  sll        $v1, $v0, 3
/* 3FDAC 8004F5AC 23186200 */  subu       $v1, $v1, $v0
/* 3FDB0 8004F5B0 80180300 */  sll        $v1, $v1, 2
/* 3FDB4 8004F5B4 21187100 */  addu       $v1, $v1, $s1
/* 3FDB8 8004F5B8 21384000 */  addu       $a3, $v0, $zero
/* 3FDBC 8004F5BC C0100700 */  sll        $v0, $a3, 3
/* 3FDC0 8004F5C0 23104700 */  subu       $v0, $v0, $a3
/* 3FDC4 8004F5C4 80100200 */  sll        $v0, $v0, 2
/* 3FDC8 8004F5C8 21105100 */  addu       $v0, $v0, $s1
/* 3FDCC 8004F5CC 04006584 */  lh         $a1, 4($v1)
/* 3FDD0 8004F5D0 06006684 */  lh         $a2, 6($v1)
/* 3FDD4 8004F5D4 08006784 */  lh         $a3, 8($v1)
/* 3FDD8 8004F5D8 0A006884 */  lh         $t0, 0xa($v1)
/* 3FDDC 8004F5DC 0C004984 */  lh         $t1, 0xc($v0)
/* 3FDE0 8004F5E0 07000424 */  addiu      $a0, $zero, 7
/* 3FDE4 8004F5E4 1000A8AF */  sw         $t0, 0x10($sp)
/* 3FDE8 8004F5E8 D16B010C */  jal        FUN_8005af44
/* 3FDEC 8004F5EC 1400A9AF */   sw        $t1, 0x14($sp)
/* 3FDF0 8004F5F0 84000392 */  lbu        $v1, 0x84($s0)
/* 3FDF4 8004F5F4 00000000 */  nop
/* 3FDF8 8004F5F8 C0100300 */  sll        $v0, $v1, 3
/* 3FDFC 8004F5FC 23104300 */  subu       $v0, $v0, $v1
/* 3FE00 8004F600 80100200 */  sll        $v0, $v0, 2
/* 3FE04 8004F604 21105100 */  addu       $v0, $v0, $s1
/* 3FE08 8004F608 16004584 */  lh         $a1, 0x16($v0)
/* 3FE0C 8004F60C 18004684 */  lh         $a2, 0x18($v0)
/* 3FE10 8004F610 0C6C010C */  jal        FUN_8005b030
/* 3FE14 8004F614 07000424 */   addiu     $a0, $zero, 7
/* 3FE18 8004F618 06000424 */  addiu      $a0, $zero, 6
/* 3FE1C 8004F61C 08000524 */  addiu      $a1, $zero, 8
/* 3FE20 8004F620 19000624 */  addiu      $a2, $zero, 0x19
/* 3FE24 8004F624 30010724 */  addiu      $a3, $zero, 0x130
/* 3FE28 8004F628 B0001024 */  addiu      $s0, $zero, 0xb0
/* 3FE2C 8004F62C 766C010C */  jal        FUN_8005b1d8
/* 3FE30 8004F630 1000B0AF */   sw        $s0, 0x10($sp)
/* 3FE34 8004F634 07000424 */  addiu      $a0, $zero, 7
/* 3FE38 8004F638 08000524 */  addiu      $a1, $zero, 8
/* 3FE3C 8004F63C 19000624 */  addiu      $a2, $zero, 0x19
/* 3FE40 8004F640 30010724 */  addiu      $a3, $zero, 0x130
/* 3FE44 8004F644 766C010C */  jal        FUN_8005b1d8
/* 3FE48 8004F648 1000B0AF */   sw        $s0, 0x10($sp)
/* 3FE4C 8004F64C 2000BF8F */  lw         $ra, 0x20($sp)
/* 3FE50 8004F650 1C00B18F */  lw         $s1, 0x1c($sp)
/* 3FE54 8004F654 1800B08F */  lw         $s0, 0x18($sp)
/* 3FE58 8004F658 0800E003 */  jr         $ra
/* 3FE5C 8004F65C 2800BD27 */   addiu     $sp, $sp, 0x28
