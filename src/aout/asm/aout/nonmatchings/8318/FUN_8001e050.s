.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001e050
/* E850 8001E050 88FFBD27 */  addiu      $sp, $sp, -0x78
/* E854 8001E054 0180043C */  lui        $a0, %hi(D_80010820)
/* E858 8001E058 20088424 */  addiu      $a0, $a0, %lo(D_80010820)
/* E85C 8001E05C 5000B0AF */  sw         $s0, 0x50($sp)
/* E860 8001E060 1280103C */  lui        $s0, %hi(D_801222B0)
/* E864 8001E064 5400B1AF */  sw         $s1, 0x54($sp)
/* E868 8001E068 B0221126 */  addiu      $s1, $s0, %lo(D_801222B0)
/* E86C 8001E06C 21282002 */  addu       $a1, $s1, $zero
/* E870 8001E070 7000BFAF */  sw         $ra, 0x70($sp)
/* E874 8001E074 6C00B7AF */  sw         $s7, 0x6c($sp)
/* E878 8001E078 6800B6AF */  sw         $s6, 0x68($sp)
/* E87C 8001E07C 6400B5AF */  sw         $s5, 0x64($sp)
/* E880 8001E080 6000B4AF */  sw         $s4, 0x60($sp)
/* E884 8001E084 5C00B3AF */  sw         $s3, 0x5c($sp)
/* E888 8001E088 DDB3000C */  jal        decodefile_8002cf74
/* E88C 8001E08C 5800B2AF */   sw        $s2, 0x58($sp)
/* E890 8001E090 B0220286 */  lh         $v0, 0x22b0($s0)
/* E894 8001E094 00000000 */  nop
/* E898 8001E098 07004004 */  bltz       $v0, .L8001E0B8
/* E89C 8001E09C 21A82002 */   addu      $s5, $s1, $zero
/* E8A0 8001E0A0 3000B526 */  addiu      $s5, $s5, 0x30
.L8001E0A4:
/* E8A4 8001E0A4 0000A286 */  lh         $v0, ($s5)
/* E8A8 8001E0A8 00000000 */  nop
/* E8AC 8001E0AC FDFF4104 */  bgez       $v0, .L8001E0A4
/* E8B0 8001E0B0 3000B526 */   addiu     $s5, $s5, 0x30
/* E8B4 8001E0B4 D0FFB526 */  addiu      $s5, $s5, -0x30
.L8001E0B8:
/* E8B8 8001E0B8 0180043C */  lui        $a0, %hi(D_80010838)
/* E8BC 8001E0BC 38088424 */  addiu      $a0, $a0, %lo(D_80010838)
/* E8C0 8001E0C0 DDB3000C */  jal        decodefile_8002cf74
/* E8C4 8001E0C4 2128A002 */   addu      $a1, $s5, $zero
/* E8C8 8001E0C8 0000A386 */  lh         $v1, ($s5)
/* E8CC 8001E0CC 00000000 */  nop
/* E8D0 8001E0D0 07006004 */  bltz       $v1, .L8001E0F0
/* E8D4 8001E0D4 2190A002 */   addu      $s2, $s5, $zero
/* E8D8 8001E0D8 30005226 */  addiu      $s2, $s2, 0x30
.L8001E0DC:
/* E8DC 8001E0DC 00004286 */  lh         $v0, ($s2)
/* E8E0 8001E0E0 00000000 */  nop
/* E8E4 8001E0E4 FDFF4104 */  bgez       $v0, .L8001E0DC
/* E8E8 8001E0E8 30005226 */   addiu     $s2, $s2, 0x30
/* E8EC 8001E0EC D0FF5226 */  addiu      $s2, $s2, -0x30
.L8001E0F0:
/* E8F0 8001E0F0 1280023C */  lui        $v0, %hi(D_801270D0)
/* E8F4 8001E0F4 D07052AC */  sw         $s2, %lo(D_801270D0)($v0)
/* E8F8 8001E0F8 21A00000 */  addu       $s4, $zero, $zero
/* E8FC 8001E0FC B0221326 */  addiu      $s3, $s0, 0x22b0
/* E900 8001E100 FEFF1724 */  addiu      $s7, $zero, -2
/* E904 8001E104 0180023C */  lui        $v0, %hi(D_800107E0)
/* E908 8001E108 E0075624 */  addiu      $s6, $v0, %lo(D_800107E0)
.L8001E10C:
/* E90C 8001E10C 0C006286 */  lh         $v0, 0xc($s3)
/* E910 8001E110 00000000 */  nop
/* E914 8001E114 0D005714 */  bne        $v0, $s7, .L8001E14C
/* E918 8001E118 1000A427 */   addiu     $a0, $sp, 0x10
.L8001E11C:
/* E91C 8001E11C 0180023C */  lui        $v0, %hi(D_800107E0)
/* E920 8001E120 E007438C */  lw         $v1, %lo(D_800107E0)($v0)
/* E924 8001E124 0400C68E */  lw         $a2, 4($s6)
/* E928 8001E128 0800C296 */  lhu        $v0, 8($s6)
/* E92C 8001E12C 10006526 */  addiu      $a1, $s3, 0x10
/* E930 8001E130 1000A3AF */  sw         $v1, 0x10($sp)
/* E934 8001E134 1400A6AF */  sw         $a2, 0x14($sp)
/* E938 8001E138 3F71000C */  jal        FUN_8001c4fc
/* E93C 8001E13C 1800A2A7 */   sh        $v0, 0x18($sp)
/* E940 8001E140 1000A427 */  addiu      $a0, $sp, 0x10
/* E944 8001E144 DDB3000C */  jal        decodefile_8002cf74
/* E948 8001E148 21284002 */   addu      $a1, $s2, $zero
.L8001E14C:
/* E94C 8001E14C 02008016 */  bnez       $s4, .L8001E158
/* E950 8001E150 21804002 */   addu      $s0, $s2, $zero
/* E954 8001E154 2180A002 */  addu       $s0, $s5, $zero
.L8001E158:
/* E958 8001E158 01009426 */  addiu      $s4, $s4, 1
/* E95C 8001E15C 00000286 */  lh         $v0, ($s0)
/* E960 8001E160 00000596 */  lhu        $a1, ($s0)
/* E964 8001E164 0D004004 */  bltz       $v0, .L8001E19C
/* E968 8001E168 30007126 */   addiu     $s1, $s3, 0x30
/* E96C 8001E16C 1280023C */  lui        $v0, %hi(D_801270E0)
/* E970 8001E170 E0705324 */  addiu      $s3, $v0, %lo(D_801270E0)
/* E974 8001E174 10000426 */  addiu      $a0, $s0, 0x10
.L8001E178:
/* E978 8001E178 002C0500 */  sll        $a1, $a1, 0x10
/* E97C 8001E17C 432B0500 */  sra        $a1, $a1, 0xd
/* E980 8001E180 C57B000C */  jal        FUN_8001ef14
/* E984 8001E184 2128B300 */   addu      $a1, $a1, $s3
/* E988 8001E188 30001026 */  addiu      $s0, $s0, 0x30
/* E98C 8001E18C 00000286 */  lh         $v0, ($s0)
/* E990 8001E190 00000596 */  lhu        $a1, ($s0)
/* E994 8001E194 F8FF4104 */  bgez       $v0, .L8001E178
/* E998 8001E198 10000426 */   addiu     $a0, $s0, 0x10
.L8001E19C:
/* E99C 8001E19C DBFF8012 */  beqz       $s4, .L8001E10C
/* E9A0 8001E1A0 21982002 */   addu      $s3, $s1, $zero
/* E9A4 8001E1A4 0C002286 */  lh         $v0, 0xc($s1)
/* E9A8 8001E1A8 00000000 */  nop
/* E9AC 8001E1AC DBFF5710 */  beq        $v0, $s7, .L8001E11C
/* E9B0 8001E1B0 1000A427 */   addiu     $a0, $sp, 0x10
/* E9B4 8001E1B4 7000BF8F */  lw         $ra, 0x70($sp)
/* E9B8 8001E1B8 6C00B78F */  lw         $s7, 0x6c($sp)
/* E9BC 8001E1BC 6800B68F */  lw         $s6, 0x68($sp)
/* E9C0 8001E1C0 6400B58F */  lw         $s5, 0x64($sp)
/* E9C4 8001E1C4 6000B48F */  lw         $s4, 0x60($sp)
/* E9C8 8001E1C8 5C00B38F */  lw         $s3, 0x5c($sp)
/* E9CC 8001E1CC 5800B28F */  lw         $s2, 0x58($sp)
/* E9D0 8001E1D0 5400B18F */  lw         $s1, 0x54($sp)
/* E9D4 8001E1D4 5000B08F */  lw         $s0, 0x50($sp)
/* E9D8 8001E1D8 0800E003 */  jr         $ra
/* E9DC 8001E1DC 7800BD27 */   addiu     $sp, $sp, 0x78
