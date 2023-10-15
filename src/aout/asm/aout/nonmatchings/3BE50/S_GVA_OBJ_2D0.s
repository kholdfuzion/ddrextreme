.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GVA_OBJ_2D0
/* AA524 800B9D24 40101100 */  sll        $v0, $s1, 1
/* AA528 800B9D28 0F80013C */  lui        $at, %hi(D_800EC7AC)
/* AA52C 800B9D2C 21082200 */  addu       $at, $at, $v0
/* AA530 800B9D30 ACC72294 */  lhu        $v0, %lo(D_800EC7AC)($at)
/* AA534 800B9D34 40181200 */  sll        $v1, $s2, 1
/* AA538 800B9D38 180002A6 */  sh         $v0, 0x18($s0)
/* AA53C 800B9D3C 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* AA540 800B9D40 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* AA544 800B9D44 0F80043C */  lui        $a0, %hi(D_800EC818)
/* AA548 800B9D48 18C8848C */  lw         $a0, %lo(D_800EC818)($a0)
/* AA54C 800B9D4C 21186200 */  addu       $v1, $v1, $v0
/* AA550 800B9D50 0C006294 */  lhu        $v0, 0xc($v1)
/* AA554 800B9D54 00000000 */  nop
/* AA558 800B9D58 1A0002A6 */  sh         $v0, 0x1a($s0)
/* AA55C 800B9D5C 06006294 */  lhu        $v0, 6($v1)
/* AA560 800B9D60 00000000 */  nop
/* AA564 800B9D64 04108200 */  sllv       $v0, $v0, $a0
/* AA568 800B9D68 1C0002AE */  sw         $v0, 0x1c($s0)
/* AA56C 800B9D6C 0E006294 */  lhu        $v0, 0xe($v1)
/* AA570 800B9D70 00000000 */  nop
/* AA574 800B9D74 04108200 */  sllv       $v0, $v0, $a0
/* AA578 800B9D78 200002AE */  sw         $v0, 0x20($s0)
/* AA57C 800B9D7C 08006594 */  lhu        $a1, 8($v1)
/* AA580 800B9D80 0A006494 */  lhu        $a0, 0xa($v1)
/* AA584 800B9D84 0080A230 */  andi       $v0, $a1, 0x8000
/* AA588 800B9D88 02004014 */  bnez       $v0, .L800B9D94
/* AA58C 800B9D8C 05000224 */   addiu     $v0, $zero, 5
/* AA590 800B9D90 01000224 */  addiu      $v0, $zero, 1
.L800B9D94:
/* AA594 800B9D94 240002AE */  sw         $v0, 0x24($s0)
/* AA598 800B9D98 00E08330 */  andi       $v1, $a0, 0xe000
/* AA59C 800B9D9C 00C00234 */  ori        $v0, $zero, 0xc000
/* AA5A0 800B9DA0 03006214 */  bne        $v1, $v0, .L800B9DB0
/* AA5A4 800B9DA4 00800234 */   ori       $v0, $zero, 0x8000
/* AA5A8 800B9DA8 73E70208 */  j          S_GVA_OBJ_378
/* AA5AC 800B9DAC 07000224 */   addiu     $v0, $zero, 7
.L800B9DB0:
/* AA5B0 800B9DB0 03006214 */  bne        $v1, $v0, .L800B9DC0
/* AA5B4 800B9DB4 00400224 */   addiu     $v0, $zero, 0x4000
/* AA5B8 800B9DB8 73E70208 */  j          S_GVA_OBJ_378
/* AA5BC 800B9DBC 05000224 */   addiu     $v0, $zero, 5
.L800B9DC0:
/* AA5C0 800B9DC0 02006214 */  bne        $v1, $v0, S_GVA_OBJ_378
/* AA5C4 800B9DC4 01000224 */   addiu     $v0, $zero, 1
/* AA5C8 800B9DC8 03000224 */  addiu      $v0, $zero, 3
