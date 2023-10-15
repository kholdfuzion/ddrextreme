.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_133_OBJ_21C
/* 3B91C 8004B11C 2000201A */  blez       $s1, .L8004B1A0
/* 3B920 8004B120 80101100 */   sll       $v0, $s1, 2
/* 3B924 8004B124 1780033C */  lui        $v1, %hi(D_8016EE1C)
/* 3B928 8004B128 1CEE6324 */  addiu      $v1, $v1, %lo(D_8016EE1C)
/* 3B92C 8004B12C 21804300 */  addu       $s0, $v0, $v1
.L8004B130:
/* 3B930 8004B130 0000058E */  lw         $a1, ($s0)
/* 3B934 8004B134 21204002 */  addu       $a0, $s2, $zero
/* 3B938 8004B138 702C010C */  jal        GsMulCoord3
/* 3B93C 8004B13C 0400A524 */   addiu     $a1, $a1, 4
/* 3B940 8004B140 0000028E */  lw         $v0, ($s0)
/* 3B944 8004B144 FFFF3126 */  addiu      $s1, $s1, -1
/* 3B948 8004B148 0000438E */  lw         $v1, ($s2)
/* 3B94C 8004B14C 0400448E */  lw         $a0, 4($s2)
/* 3B950 8004B150 0800458E */  lw         $a1, 8($s2)
/* 3B954 8004B154 0C00468E */  lw         $a2, 0xc($s2)
/* 3B958 8004B158 240043AC */  sw         $v1, 0x24($v0)
/* 3B95C 8004B15C 280044AC */  sw         $a0, 0x28($v0)
/* 3B960 8004B160 2C0045AC */  sw         $a1, 0x2c($v0)
/* 3B964 8004B164 300046AC */  sw         $a2, 0x30($v0)
/* 3B968 8004B168 1000438E */  lw         $v1, 0x10($s2)
/* 3B96C 8004B16C 1400448E */  lw         $a0, 0x14($s2)
/* 3B970 8004B170 1800458E */  lw         $a1, 0x18($s2)
/* 3B974 8004B174 1C00468E */  lw         $a2, 0x1c($s2)
/* 3B978 8004B178 340043AC */  sw         $v1, 0x34($v0)
/* 3B97C 8004B17C 380044AC */  sw         $a0, 0x38($v0)
/* 3B980 8004B180 3C0045AC */  sw         $a1, 0x3c($v0)
/* 3B984 8004B184 400046AC */  sw         $a2, 0x40($v0)
/* 3B988 8004B188 0000038E */  lw         $v1, ($s0)
/* 3B98C 8004B18C 1380023C */  lui        $v0, %hi(D_801290A8)
/* 3B990 8004B190 A890428C */  lw         $v0, %lo(D_801290A8)($v0)
/* 3B994 8004B194 FCFF1026 */  addiu      $s0, $s0, -4
/* 3B998 8004B198 E5FF201E */  bgtz       $s1, .L8004B130
/* 3B99C 8004B19C 000062AC */   sw        $v0, ($v1)
.L8004B1A0:
/* 3B9A0 8004B1A0 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 3B9A4 8004B1A4 1800B28F */  lw         $s2, 0x18($sp)
/* 3B9A8 8004B1A8 1400B18F */  lw         $s1, 0x14($sp)
/* 3B9AC 8004B1AC 1000B08F */  lw         $s0, 0x10($sp)
/* 3B9B0 8004B1B0 0800E003 */  jr         $ra
/* 3B9B4 8004B1B4 2000BD27 */   addiu     $sp, $sp, 0x20
/* 3B9B8 8004B1B8 00000000 */  nop
/* 3B9BC 8004B1BC 00000000 */  nop
