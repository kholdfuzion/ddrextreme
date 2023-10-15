.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002b0c0
/* 1B8C0 8002B0C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1B8C4 8002B0C4 0E80023C */  lui        $v0, 0x800e
/* 1B8C8 8002B0C8 1400B1AF */  sw         $s1, 0x14($sp)
/* 1B8CC 8002B0CC 0E80113C */  lui        $s1, 0x800e
/* 1B8D0 8002B0D0 1000B0AF */  sw         $s0, 0x10($sp)
/* 1B8D4 8002B0D4 1480103C */  lui        $s0, %hi(D_80142BE0)
/* 1B8D8 8002B0D8 1800B2AF */  sw         $s2, 0x18($sp)
/* 1B8DC 8002B0DC E02B1226 */  addiu      $s2, $s0, %lo(D_80142BE0)
/* 1B8E0 8002B0E0 10000524 */  addiu      $a1, $zero, 0x10
/* 1B8E4 8002B0E4 21304002 */  addu       $a2, $s2, $zero
/* 1B8E8 8002B0E8 21380000 */  addu       $a3, $zero, $zero
/* 1B8EC 8002B0EC 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 1B8F0 8002B0F0 288D40AC */  sw         $zero, -0x72d8($v0)
/* 1B8F4 8002B0F4 96AB000C */  jal        FUN_8002ae58
/* 1B8F8 8002B0F8 2C8D20AE */   sw        $zero, -0x72d4($s1)
/* 1B8FC 8002B0FC E02B038E */  lw         $v1, 0x2be0($s0)
/* 1B900 8002B100 0400428E */  lw         $v0, 4($s2)
/* 1B904 8002B104 0800448E */  lw         $a0, 8($s2)
/* 1B908 8002B108 25186200 */  or         $v1, $v1, $v0
/* 1B90C 8002B10C 0C00428E */  lw         $v0, 0xc($s2)
/* 1B910 8002B110 25186400 */  or         $v1, $v1, $a0
/* 1B914 8002B114 25186200 */  or         $v1, $v1, $v0
/* 1B918 8002B118 10006010 */  beqz       $v1, .L8002B15C
/* 1B91C 8002B11C 21280000 */   addu      $a1, $zero, $zero
/* 1B920 8002B120 21304002 */  addu       $a2, $s2, $zero
/* 1B924 8002B124 0100A524 */  addiu      $a1, $a1, 1
.L8002B128:
/* 1B928 8002B128 0008A22C */  sltiu      $v0, $a1, 0x800
/* 1B92C 8002B12C 0B004010 */  beqz       $v0, .L8002B15C
/* 1B930 8002B130 1000C624 */   addiu     $a2, $a2, 0x10
/* 1B934 8002B134 0000C28C */  lw         $v0, ($a2)
/* 1B938 8002B138 0400C38C */  lw         $v1, 4($a2)
/* 1B93C 8002B13C 0800C48C */  lw         $a0, 8($a2)
/* 1B940 8002B140 25104300 */  or         $v0, $v0, $v1
/* 1B944 8002B144 0C00C38C */  lw         $v1, 0xc($a2)
/* 1B948 8002B148 25104400 */  or         $v0, $v0, $a0
/* 1B94C 8002B14C 25104300 */  or         $v0, $v0, $v1
/* 1B950 8002B150 F5FF4014 */  bnez       $v0, .L8002B128
/* 1B954 8002B154 0100A524 */   addiu     $a1, $a1, 1
/* 1B958 8002B158 FFFFA524 */  addiu      $a1, $a1, -1
.L8002B15C:
/* 1B95C 8002B15C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 1B960 8002B160 1800B28F */  lw         $s2, 0x18($sp)
/* 1B964 8002B164 2C8D25AE */  sw         $a1, -0x72d4($s1)
/* 1B968 8002B168 1400B18F */  lw         $s1, 0x14($sp)
/* 1B96C 8002B16C 1000B08F */  lw         $s0, 0x10($sp)
/* 1B970 8002B170 0800E003 */  jr         $ra
/* 1B974 8002B174 2000BD27 */   addiu     $sp, $sp, 0x20
