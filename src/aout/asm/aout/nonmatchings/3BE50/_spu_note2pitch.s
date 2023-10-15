.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_note2pitch
/* A9CD4 800B94D4 2138E500 */  addu       $a3, $a3, $a1
/* A9CD8 800B94D8 AA2A053C */  lui        $a1, 0x2aaa
/* A9CDC 800B94DC ABAAA534 */  ori        $a1, $a1, 0xaaab
/* A9CE0 800B94E0 FFFFE330 */  andi       $v1, $a3, 0xffff
/* A9CE4 800B94E4 C2110300 */  srl        $v0, $v1, 7
/* A9CE8 800B94E8 2130C200 */  addu       $a2, $a2, $v0
/* A9CEC 800B94EC 2330C400 */  subu       $a2, $a2, $a0
/* A9CF0 800B94F0 00340600 */  sll        $a2, $a2, 0x10
/* A9CF4 800B94F4 03240600 */  sra        $a0, $a2, 0x10
/* A9CF8 800B94F8 18008500 */  mult       $a0, $a1
/* A9CFC 800B94FC 7F006730 */  andi       $a3, $v1, 0x7f
/* A9D00 800B9500 C3370600 */  sra        $a2, $a2, 0x1f
/* A9D04 800B9504 10400000 */  mfhi       $t0
/* A9D08 800B9508 43100800 */  sra        $v0, $t0, 1
/* A9D0C 800B950C 23284600 */  subu       $a1, $v0, $a2
/* A9D10 800B9510 FEFFA624 */  addiu      $a2, $a1, -2
/* A9D14 800B9514 40100500 */  sll        $v0, $a1, 1
/* A9D18 800B9518 21104500 */  addu       $v0, $v0, $a1
/* A9D1C 800B951C 80100200 */  sll        $v0, $v0, 2
/* A9D20 800B9520 23208200 */  subu       $a0, $a0, $v0
/* A9D24 800B9524 00140400 */  sll        $v0, $a0, 0x10
/* A9D28 800B9528 03004104 */  bgez       $v0, .L800B9538
/* A9D2C 800B952C 21188000 */   addu      $v1, $a0, $zero
/* A9D30 800B9530 0C008324 */  addiu      $v1, $a0, 0xc
/* A9D34 800B9534 FDFFA624 */  addiu      $a2, $a1, -3
.L800B9538:
/* A9D38 800B9538 001C0300 */  sll        $v1, $v1, 0x10
/* A9D3C 800B953C C31B0300 */  sra        $v1, $v1, 0xf
/* A9D40 800B9540 FFFFE230 */  andi       $v0, $a3, 0xffff
/* A9D44 800B9544 40100200 */  sll        $v0, $v0, 1
/* A9D48 800B9548 0F80013C */  lui        $at, %hi(D_800ECC60)
/* A9D4C 800B954C 21082300 */  addu       $at, $at, $v1
/* A9D50 800B9550 60CC2394 */  lhu        $v1, %lo(D_800ECC60)($at)
/* A9D54 800B9554 0F80013C */  lui        $at, %hi(D_800ECC78)
/* A9D58 800B9558 21082200 */  addu       $at, $at, $v0
/* A9D5C 800B955C 78CC2294 */  lhu        $v0, %lo(D_800ECC78)($at)
/* A9D60 800B9560 00000000 */  nop
/* A9D64 800B9564 18006200 */  mult       $v1, $v0
/* A9D68 800B9568 00140600 */  sll        $v0, $a2, 0x10
/* A9D6C 800B956C 03140200 */  sra        $v0, $v0, 0x10
/* A9D70 800B9570 12400000 */  mflo       $t0
/* A9D74 800B9574 03004004 */  bltz       $v0, .L800B9584
/* A9D78 800B9578 032C0800 */   sra       $a1, $t0, 0x10
/* A9D7C 800B957C 67E50208 */  j          S_N2P_OBJ_C8
/* A9D80 800B9580 FF3F0524 */   addiu     $a1, $zero, 0x3fff
.L800B9584:
/* A9D84 800B9584 23200200 */  negu       $a0, $v0
/* A9D88 800B9588 FFFF8324 */  addiu      $v1, $a0, -1
/* A9D8C 800B958C 01000224 */  addiu      $v0, $zero, 1
/* A9D90 800B9590 04106200 */  sllv       $v0, $v0, $v1
/* A9D94 800B9594 2128A200 */  addu       $a1, $a1, $v0
/* A9D98 800B9598 06288500 */  srlv       $a1, $a1, $a0
