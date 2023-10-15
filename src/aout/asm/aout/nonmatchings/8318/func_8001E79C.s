.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001E79C
/* EF9C 8001E79C 78FDBD27 */  addiu      $sp, $sp, -0x288
/* EFA0 8001E7A0 7C02B1AF */  sw         $s1, 0x27c($sp)
/* EFA4 8001E7A4 21888000 */  addu       $s1, $a0, $zero
/* EFA8 8001E7A8 2130A000 */  addu       $a2, $a1, $zero
/* EFAC 8001E7AC 1002A327 */  addiu      $v1, $sp, 0x210
/* EFB0 8001E7B0 0180023C */  lui        $v0, %hi(D_800108A0)
/* EFB4 8001E7B4 A0084224 */  addiu      $v0, $v0, %lo(D_800108A0)
/* EFB8 8001E7B8 40004424 */  addiu      $a0, $v0, 0x40
/* EFBC 8001E7BC 21386000 */  addu       $a3, $v1, $zero
/* EFC0 8001E7C0 8002BFAF */  sw         $ra, 0x280($sp)
/* EFC4 8001E7C4 7802B0AF */  sw         $s0, 0x278($sp)
.L8001E7C8:
/* EFC8 8001E7C8 0000458C */  lw         $a1, ($v0)
/* EFCC 8001E7CC 0400488C */  lw         $t0, 4($v0)
/* EFD0 8001E7D0 0800498C */  lw         $t1, 8($v0)
/* EFD4 8001E7D4 0C004A8C */  lw         $t2, 0xc($v0)
/* EFD8 8001E7D8 000065AC */  sw         $a1, ($v1)
/* EFDC 8001E7DC 040068AC */  sw         $t0, 4($v1)
/* EFE0 8001E7E0 080069AC */  sw         $t1, 8($v1)
/* EFE4 8001E7E4 0C006AAC */  sw         $t2, 0xc($v1)
/* EFE8 8001E7E8 10004224 */  addiu      $v0, $v0, 0x10
/* EFEC 8001E7EC F6FF4414 */  bne        $v0, $a0, .L8001E7C8
/* EFF0 8001E7F0 10006324 */   addiu     $v1, $v1, 0x10
/* EFF4 8001E7F4 21202002 */  addu       $a0, $s1, $zero
/* EFF8 8001E7F8 1000A527 */  addiu      $a1, $sp, 0x10
/* EFFC 8001E7FC 00004B8C */  lw         $t3, ($v0)
/* F000 8001E800 0400488C */  lw         $t0, 4($v0)
/* F004 8001E804 00006BAC */  sw         $t3, ($v1)
/* F008 8001E808 040068AC */  sw         $t0, 4($v1)
/* F00C 8001E80C C0100600 */  sll        $v0, $a2, 3
/* F010 8001E810 21104600 */  addu       $v0, $v0, $a2
/* F014 8001E814 80100200 */  sll        $v0, $v0, 2
/* F018 8001E818 9B61000C */  jal        StoreImage
/* F01C 8001E81C 2180E200 */   addu      $s0, $a3, $v0
/* F020 8001E820 D860000C */  jal        DrawSync
/* F024 8001E824 21200000 */   addu      $a0, $zero, $zero
/* F028 8001E828 04002386 */  lh         $v1, 4($s1)
/* F02C 8001E82C 06002286 */  lh         $v0, 6($s1)
/* F030 8001E830 00000000 */  nop
/* F034 8001E834 18006200 */  mult       $v1, $v0
/* F038 8001E838 12180000 */  mflo       $v1
/* F03C 8001E83C 61006018 */  blez       $v1, .L8001E9C4
/* F040 8001E840 21500000 */   addu      $t2, $zero, $zero
/* F044 8001E844 1F000B24 */  addiu      $t3, $zero, 0x1f
/* F048 8001E848 21606000 */  addu       $t4, $v1, $zero
.L8001E84C:
/* F04C 8001E84C 40180A00 */  sll        $v1, $t2, 1
/* F050 8001E850 1000A227 */  addiu      $v0, $sp, 0x10
/* F054 8001E854 21484300 */  addu       $t1, $v0, $v1
/* F058 8001E858 00002895 */  lhu        $t0, ($t1)
/* F05C 8001E85C 00000000 */  nop
/* F060 8001E860 1F000831 */  andi       $t0, $t0, 0x1f
/* F064 8001E864 5802A8AF */  sw         $t0, 0x258($sp)
/* F068 8001E868 00002795 */  lhu        $a3, ($t1)
/* F06C 8001E86C 00000000 */  nop
/* F070 8001E870 42390700 */  srl        $a3, $a3, 5
/* F074 8001E874 1F00E730 */  andi       $a3, $a3, 0x1f
/* F078 8001E878 5C02A7AF */  sw         $a3, 0x25c($sp)
/* F07C 8001E87C 00002695 */  lhu        $a2, ($t1)
/* F080 8001E880 00000000 */  nop
/* F084 8001E884 82320600 */  srl        $a2, $a2, 0xa
/* F088 8001E888 1F00C630 */  andi       $a2, $a2, 0x1f
/* F08C 8001E88C 6002A6AF */  sw         $a2, 0x260($sp)
/* F090 8001E890 0000058E */  lw         $a1, ($s0)
/* F094 8001E894 00000000 */  nop
/* F098 8001E898 1800A800 */  mult       $a1, $t0
/* F09C 8001E89C 12280000 */  mflo       $a1
/* F0A0 8001E8A0 0400038E */  lw         $v1, 4($s0)
/* F0A4 8001E8A4 00000000 */  nop
/* F0A8 8001E8A8 18006700 */  mult       $v1, $a3
/* F0AC 8001E8AC 12180000 */  mflo       $v1
/* F0B0 8001E8B0 0800028E */  lw         $v0, 8($s0)
/* F0B4 8001E8B4 00000000 */  nop
/* F0B8 8001E8B8 18004600 */  mult       $v0, $a2
/* F0BC 8001E8BC 2128A300 */  addu       $a1, $a1, $v1
/* F0C0 8001E8C0 12100000 */  mflo       $v0
/* F0C4 8001E8C4 2128A200 */  addu       $a1, $a1, $v0
/* F0C8 8001E8C8 032B0500 */  sra        $a1, $a1, 0xc
/* F0CC 8001E8CC 6802A5AF */  sw         $a1, 0x268($sp)
/* F0D0 8001E8D0 0C00028E */  lw         $v0, 0xc($s0)
/* F0D4 8001E8D4 00000000 */  nop
/* F0D8 8001E8D8 18004800 */  mult       $v0, $t0
/* F0DC 8001E8DC 12100000 */  mflo       $v0
/* F0E0 8001E8E0 1000048E */  lw         $a0, 0x10($s0)
/* F0E4 8001E8E4 00000000 */  nop
/* F0E8 8001E8E8 18008700 */  mult       $a0, $a3
/* F0EC 8001E8EC 12200000 */  mflo       $a0
/* F0F0 8001E8F0 1400038E */  lw         $v1, 0x14($s0)
/* F0F4 8001E8F4 00000000 */  nop
/* F0F8 8001E8F8 18006600 */  mult       $v1, $a2
/* F0FC 8001E8FC 21104400 */  addu       $v0, $v0, $a0
/* F100 8001E900 12180000 */  mflo       $v1
/* F104 8001E904 21104300 */  addu       $v0, $v0, $v1
/* F108 8001E908 03130200 */  sra        $v0, $v0, 0xc
/* F10C 8001E90C 6C02A2AF */  sw         $v0, 0x26c($sp)
/* F110 8001E910 1800038E */  lw         $v1, 0x18($s0)
/* F114 8001E914 00000000 */  nop
/* F118 8001E918 18006800 */  mult       $v1, $t0
/* F11C 8001E91C 12180000 */  mflo       $v1
/* F120 8001E920 1C00048E */  lw         $a0, 0x1c($s0)
/* F124 8001E924 00000000 */  nop
/* F128 8001E928 18008700 */  mult       $a0, $a3
/* F12C 8001E92C 12200000 */  mflo       $a0
/* F130 8001E930 2000028E */  lw         $v0, 0x20($s0)
/* F134 8001E934 00000000 */  nop
/* F138 8001E938 18004600 */  mult       $v0, $a2
/* F13C 8001E93C 2000A528 */  slti       $a1, $a1, 0x20
/* F140 8001E940 21186400 */  addu       $v1, $v1, $a0
/* F144 8001E944 12100000 */  mflo       $v0
/* F148 8001E948 21186200 */  addu       $v1, $v1, $v0
/* F14C 8001E94C 031B0300 */  sra        $v1, $v1, 0xc
/* F150 8001E950 0200A014 */  bnez       $a1, .L8001E95C
/* F154 8001E954 7002A3AF */   sw        $v1, 0x270($sp)
/* F158 8001E958 6802ABAF */  sw         $t3, 0x268($sp)
.L8001E95C:
/* F15C 8001E95C 6C02A28F */  lw         $v0, 0x26c($sp)
/* F160 8001E960 00000000 */  nop
/* F164 8001E964 20004228 */  slti       $v0, $v0, 0x20
/* F168 8001E968 02004014 */  bnez       $v0, .L8001E974
/* F16C 8001E96C 00000000 */   nop
/* F170 8001E970 6C02ABAF */  sw         $t3, 0x26c($sp)
.L8001E974:
/* F174 8001E974 7002A28F */  lw         $v0, 0x270($sp)
/* F178 8001E978 00000000 */  nop
/* F17C 8001E97C 20004228 */  slti       $v0, $v0, 0x20
/* F180 8001E980 02004014 */  bnez       $v0, .L8001E98C
/* F184 8001E984 00000000 */   nop
/* F188 8001E988 7002ABAF */  sw         $t3, 0x270($sp)
.L8001E98C:
/* F18C 8001E98C 01004A25 */  addiu      $t2, $t2, 1
/* F190 8001E990 00002595 */  lhu        $a1, ($t1)
/* F194 8001E994 7002A397 */  lhu        $v1, 0x270($sp)
/* F198 8001E998 6C02A497 */  lhu        $a0, 0x26c($sp)
/* F19C 8001E99C 6802A297 */  lhu        $v0, 0x268($sp)
/* F1A0 8001E9A0 0080A530 */  andi       $a1, $a1, 0x8000
/* F1A4 8001E9A4 801A0300 */  sll        $v1, $v1, 0xa
/* F1A8 8001E9A8 40210400 */  sll        $a0, $a0, 5
/* F1AC 8001E9AC 25186400 */  or         $v1, $v1, $a0
/* F1B0 8001E9B0 25104300 */  or         $v0, $v0, $v1
/* F1B4 8001E9B4 2528A200 */  or         $a1, $a1, $v0
/* F1B8 8001E9B8 2A104C01 */  slt        $v0, $t2, $t4
/* F1BC 8001E9BC A3FF4014 */  bnez       $v0, .L8001E84C
/* F1C0 8001E9C0 000025A5 */   sh        $a1, ($t1)
.L8001E9C4:
/* F1C4 8001E9C4 21202002 */  addu       $a0, $s1, $zero
/* F1C8 8001E9C8 8361000C */  jal        LoadImage
/* F1CC 8001E9CC 1000A527 */   addiu     $a1, $sp, 0x10
/* F1D0 8001E9D0 D860000C */  jal        DrawSync
/* F1D4 8001E9D4 21200000 */   addu      $a0, $zero, $zero
/* F1D8 8001E9D8 8002BF8F */  lw         $ra, 0x280($sp)
/* F1DC 8001E9DC 7C02B18F */  lw         $s1, 0x27c($sp)
/* F1E0 8001E9E0 7802B08F */  lw         $s0, 0x278($sp)
/* F1E4 8001E9E4 0800E003 */  jr         $ra
/* F1E8 8001E9E8 8802BD27 */   addiu     $sp, $sp, 0x288
