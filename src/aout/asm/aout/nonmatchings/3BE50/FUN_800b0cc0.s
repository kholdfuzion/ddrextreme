.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0cc0
/* A14C0 800B0CC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A14C4 800B0CC4 1000B0AF */  sw         $s0, 0x10($sp)
/* A14C8 800B0CC8 21808000 */  addu       $s0, $a0, $zero
/* A14CC 800B0CCC 1D80043C */  lui        $a0, %hi(D_801D24A0)
/* A14D0 800B0CD0 A0248424 */  addiu      $a0, $a0, %lo(D_801D24A0)
/* A14D4 800B0CD4 21280000 */  addu       $a1, $zero, $zero
/* A14D8 800B0CD8 1400BFAF */  sw         $ra, 0x14($sp)
/* A14DC 800B0CDC F6A2000C */  jal        memset
/* A14E0 800B0CE0 08000624 */   addiu     $a2, $zero, 8
/* A14E4 800B0CE4 25000016 */  bnez       $s0, .L800B0D7C
/* A14E8 800B0CE8 21100000 */   addu      $v0, $zero, $zero
/* A14EC 800B0CEC 1D80023C */  lui        $v0, %hi(D_801D238C)
/* A14F0 800B0CF0 1D80033C */  lui        $v1, %hi(D_801D2388)
/* A14F4 800B0CF4 1D80043C */  lui        $a0, 0x801d
/* A14F8 800B0CF8 8C2340AC */  sw         $zero, %lo(D_801D238C)($v0)
/* A14FC 800B0CFC 1D80023C */  lui        $v0, %hi(D_801D2398)
/* A1500 800B0D00 98234224 */  addiu      $v0, $v0, %lo(D_801D2398)
/* A1504 800B0D04 882360AC */  sw         $zero, %lo(D_801D2388)($v1)
/* A1508 800B0D08 1D6E000C */  jal        FUN_8001b874
/* A150C 800B0D0C 982482AC */   sw        $v0, 0x2498($a0)
/* A1510 800B0D10 C3C2020C */  jal        FUN_800b0b0c
/* A1514 800B0D14 1D80103C */   lui       $s0, 0x801d
/* A1518 800B0D18 0B80043C */  lui        $a0, %hi(func_800B0BBC)
/* A151C 800B0D1C BC0B8424 */  addiu      $a0, $a0, %lo(func_800B0BBC)
/* A1520 800B0D20 1D80053C */  lui        $a1, %hi(D_801D2CB4)
/* A1524 800B0D24 B42CA524 */  addiu      $a1, $a1, %lo(D_801D2CB4)
/* A1528 800B0D28 BBC2020C */  jal        OpenTh
/* A152C 800B0D2C 21304000 */   addu      $a2, $v0, $zero
/* A1530 800B0D30 216E000C */  jal        FUN_8001b884
/* A1534 800B0D34 A82402AE */   sw        $v0, 0x24a8($s0)
/* A1538 800B0D38 A824038E */  lw         $v1, 0x24a8($s0)
/* A153C 800B0D3C FFFF0224 */  addiu      $v0, $zero, -1
/* A1540 800B0D40 0A006210 */  beq        $v1, $v0, .L800B0D6C
/* A1544 800B0D44 FFFF0524 */   addiu     $a1, $zero, -1
/* A1548 800B0D48 21280000 */  addu       $a1, $zero, $zero
/* A154C 800B0D4C FFFF6330 */  andi       $v1, $v1, 0xffff
/* A1550 800B0D50 40100300 */  sll        $v0, $v1, 1
/* A1554 800B0D54 21104300 */  addu       $v0, $v0, $v1
/* A1558 800B0D58 80110200 */  sll        $v0, $v0, 6
/* A155C 800B0D5C 1001048C */  lw         $a0, 0x110($zero)
/* A1560 800B0D60 04040324 */  addiu      $v1, $zero, 0x404
/* A1564 800B0D64 21104400 */  addu       $v0, $v0, $a0
/* A1568 800B0D68 940043AC */  sw         $v1, 0x94($v0)
.L800B0D6C:
/* A156C 800B0D6C FFFF0324 */  addiu      $v1, $zero, -1
/* A1570 800B0D70 0200A310 */  beq        $a1, $v1, .L800B0D7C
/* A1574 800B0D74 FFFF0224 */   addiu     $v0, $zero, -1
/* A1578 800B0D78 21100000 */  addu       $v0, $zero, $zero
.L800B0D7C:
/* A157C 800B0D7C 1400BF8F */  lw         $ra, 0x14($sp)
/* A1580 800B0D80 1000B08F */  lw         $s0, 0x10($sp)
/* A1584 800B0D84 0800E003 */  jr         $ra
/* A1588 800B0D88 1800BD27 */   addiu     $sp, $sp, 0x18
