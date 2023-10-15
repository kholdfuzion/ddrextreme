.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel flashromcheck_80039fc8
/* 2A7C8 80039FC8 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 2A7CC 80039FCC 5400B1AF */  sw         $s1, 0x54($sp)
/* 2A7D0 80039FD0 21888000 */  addu       $s1, $a0, $zero
/* 2A7D4 80039FD4 7400BFAF */  sw         $ra, 0x74($sp)
/* 2A7D8 80039FD8 7000BEAF */  sw         $fp, 0x70($sp)
/* 2A7DC 80039FDC 6C00B7AF */  sw         $s7, 0x6c($sp)
/* 2A7E0 80039FE0 6800B6AF */  sw         $s6, 0x68($sp)
/* 2A7E4 80039FE4 6400B5AF */  sw         $s5, 0x64($sp)
/* 2A7E8 80039FE8 6000B4AF */  sw         $s4, 0x60($sp)
/* 2A7EC 80039FEC 5C00B3AF */  sw         $s3, 0x5c($sp)
/* 2A7F0 80039FF0 5800B2AF */  sw         $s2, 0x58($sp)
/* 2A7F4 80039FF4 7DC4000C */  jal        get_astruct_800311f4
/* 2A7F8 80039FF8 5000B0AF */   sw        $s0, 0x50($sp)
/* 2A7FC 80039FFC 21B84000 */  addu       $s7, $v0, $zero
/* 2A800 8003A000 2800A327 */  addiu      $v1, $sp, 0x28
/* 2A804 8003A004 0180023C */  lui        $v0, %hi(D_80012694)
/* 2A808 8003A008 94264224 */  addiu      $v0, $v0, %lo(D_80012694)
/* 2A80C 8003A00C 20004424 */  addiu      $a0, $v0, 0x20
/* 2A810 8003A010 21906000 */  addu       $s2, $v1, $zero
/* 2A814 8003A014 2000B027 */  addiu      $s0, $sp, 0x20
/* 2A818 8003A018 01801E3C */  lui        $fp, 0x8001
.L8003A01C:
/* 2A81C 8003A01C 0000458C */  lw         $a1, ($v0)
/* 2A820 8003A020 0400468C */  lw         $a2, 4($v0)
/* 2A824 8003A024 0800478C */  lw         $a3, 8($v0)
/* 2A828 8003A028 0C00488C */  lw         $t0, 0xc($v0)
/* 2A82C 8003A02C 000065AC */  sw         $a1, ($v1)
/* 2A830 8003A030 040066AC */  sw         $a2, 4($v1)
/* 2A834 8003A034 080067AC */  sw         $a3, 8($v1)
/* 2A838 8003A038 0C0068AC */  sw         $t0, 0xc($v1)
/* 2A83C 8003A03C 10004224 */  addiu      $v0, $v0, 0x10
/* 2A840 8003A040 F6FF4414 */  bne        $v0, $a0, .L8003A01C
/* 2A844 8003A044 10006324 */   addiu     $v1, $v1, 0x10
/* 2A848 8003A048 21200000 */  addu       $a0, $zero, $zero
/* 2A84C 8003A04C B0FF0524 */  addiu      $a1, $zero, -0x50
/* 2A850 8003A050 A0FF0624 */  addiu      $a2, $zero, -0x60
/* 2A854 8003A054 00100724 */  addiu      $a3, $zero, 0x1000
/* 2A858 8003A058 0000498C */  lw         $t1, ($v0)
/* 2A85C 8003A05C 00000000 */  nop
/* 2A860 8003A060 000069AC */  sw         $t1, ($v1)
/* 2A864 8003A064 00100324 */  addiu      $v1, $zero, 0x1000
/* 2A868 8003A068 0180023C */  lui        $v0, %hi(D_800126B8)
/* 2A86C 8003A06C B8264224 */  addiu      $v0, $v0, %lo(D_800126B8)
/* 2A870 8003A070 1000A3AF */  sw         $v1, 0x10($sp)
/* 2A874 8003A074 290A010C */  jal        PrintText_800428a4
/* 2A878 8003A078 1400A2AF */   sw        $v0, 0x14($sp)
/* 2A87C 8003A07C 7CAA000C */  jal        vsync_8002a9f0
/* 2A880 8003A080 00000000 */   nop
/* 2A884 8003A084 80101100 */  sll        $v0, $s1, 2
/* 2A888 8003A088 BC0EE426 */  addiu      $a0, $s7, 0xebc
/* 2A88C 8003A08C 01001124 */  addiu      $s1, $zero, 1
/* 2A890 8003A090 04000326 */  addiu      $v1, $s0, 4
.L8003A094:
/* 2A894 8003A094 000060AC */  sw         $zero, ($v1)
/* 2A898 8003A098 FFFF3126 */  addiu      $s1, $s1, -1
/* 2A89C 8003A09C FDFF2106 */  bgez       $s1, .L8003A094
/* 2A8A0 8003A0A0 FCFF6324 */   addiu     $v1, $v1, -4
/* 2A8A4 8003A0A4 02001124 */  addiu      $s1, $zero, 2
/* 2A8A8 8003A0A8 21100202 */  addu       $v0, $s0, $v0
/* 2A8AC 8003A0AC 000051AC */  sw         $s1, ($v0)
/* 2A8B0 8003A0B0 21880000 */  addu       $s1, $zero, $zero
/* 2A8B4 8003A0B4 21988000 */  addu       $s3, $a0, $zero
/* 2A8B8 8003A0B8 0180163C */  lui        $s6, 0x8001
/* 2A8BC 8003A0BC 0180153C */  lui        $s5, 0x8001
/* 2A8C0 8003A0C0 0180143C */  lui        $s4, 0x8001
.L8003A0C4:
/* 2A8C4 8003A0C4 07000424 */  addiu      $a0, $zero, 7
/* 2A8C8 8003A0C8 0C000524 */  addiu      $a1, $zero, 0xc
/* 2A8CC 8003A0CC 05003026 */  addiu      $s0, $s1, 5
/* 2A8D0 8003A0D0 21300002 */  addu       $a2, $s0, $zero
/* 2A8D4 8003A0D4 0000428E */  lw         $v0, ($s2)
/* 2A8D8 8003A0D8 C826C727 */  addiu      $a3, $fp, 0x26c8
/* 2A8DC 8003A0DC A50A010C */  jal        FUN_80042a94
/* 2A8E0 8003A0E0 1000A2AF */   sw        $v0, 0x10($sp)
/* 2A8E4 8003A0E4 0000638E */  lw         $v1, ($s3)
/* 2A8E8 8003A0E8 00000000 */  nop
/* 2A8EC 8003A0EC 08006014 */  bnez       $v1, .L8003A110
/* 2A8F0 8003A0F0 01000224 */   addiu     $v0, $zero, 1
/* 2A8F4 8003A0F4 07000424 */  addiu      $a0, $zero, 7
/* 2A8F8 8003A0F8 14000524 */  addiu      $a1, $zero, 0x14
/* 2A8FC 8003A0FC 21300002 */  addu       $a2, $s0, $zero
/* 2A900 8003A100 A50A010C */  jal        FUN_80042a94
/* 2A904 8003A104 CC26C726 */   addiu     $a3, $s6, 0x26cc
/* 2A908 8003A108 52E80008 */  j          .L8003A148
/* 2A90C 8003A10C 04007326 */   addiu     $s3, $s3, 4
.L8003A110:
/* 2A910 8003A110 08006214 */  bne        $v1, $v0, .L8003A134
/* 2A914 8003A114 02000424 */   addiu     $a0, $zero, 2
/* 2A918 8003A118 04000424 */  addiu      $a0, $zero, 4
/* 2A91C 8003A11C 14000524 */  addiu      $a1, $zero, 0x14
/* 2A920 8003A120 21300002 */  addu       $a2, $s0, $zero
/* 2A924 8003A124 A50A010C */  jal        FUN_80042a94
/* 2A928 8003A128 D026A726 */   addiu     $a3, $s5, 0x26d0
/* 2A92C 8003A12C 52E80008 */  j          .L8003A148
/* 2A930 8003A130 04007326 */   addiu     $s3, $s3, 4
.L8003A134:
/* 2A934 8003A134 14000524 */  addiu      $a1, $zero, 0x14
/* 2A938 8003A138 21300002 */  addu       $a2, $s0, $zero
/* 2A93C 8003A13C A50A010C */  jal        FUN_80042a94
/* 2A940 8003A140 D4268726 */   addiu     $a3, $s4, 0x26d4
/* 2A944 8003A144 04007326 */  addiu      $s3, $s3, 4
.L8003A148:
/* 2A948 8003A148 01003126 */  addiu      $s1, $s1, 1
/* 2A94C 8003A14C 0900222A */  slti       $v0, $s1, 9
/* 2A950 8003A150 DCFF4014 */  bnez       $v0, .L8003A0C4
/* 2A954 8003A154 04005226 */   addiu     $s2, $s2, 4
/* 2A958 8003A158 0400E386 */  lh         $v1, 4($s7)
/* 2A95C 8003A15C 00000000 */  nop
/* 2A960 8003A160 0900622C */  sltiu      $v0, $v1, 9
/* 2A964 8003A164 15014010 */  beqz       $v0, .L8003A5BC
/* 2A968 8003A168 0180023C */   lui       $v0, %hi(D_80012858)
/* 2A96C 8003A16C 58284224 */  addiu      $v0, $v0, %lo(D_80012858)
/* 2A970 8003A170 80180300 */  sll        $v1, $v1, 2
/* 2A974 8003A174 21186200 */  addu       $v1, $v1, $v0
/* 2A978 8003A178 0000648C */  lw         $a0, ($v1)
/* 2A97C 8003A17C 00000000 */  nop
/* 2A980 8003A180 08008000 */  jr         $a0
/* 2A984 8003A184 00000000 */   nop
/* 2A988 8003A188 04000424 */  addiu      $a0, $zero, 4
/* 2A98C 8003A18C 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2A990 8003A190 08000624 */  addiu      $a2, $zero, 8
/* 2A994 8003A194 00100724 */  addiu      $a3, $zero, 0x1000
/* 2A998 8003A198 00101024 */  addiu      $s0, $zero, 0x1000
/* 2A99C 8003A19C 0180023C */  lui        $v0, %hi(D_800126D8)
/* 2A9A0 8003A1A0 D8264224 */  addiu      $v0, $v0, %lo(D_800126D8)
/* 2A9A4 8003A1A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2A9A8 8003A1A8 290A010C */  jal        PrintText_800428a4
/* 2A9AC 8003A1AC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2A9B0 8003A1B0 34000524 */  addiu      $a1, $zero, 0x34
/* 2A9B4 8003A1B4 10000624 */  addiu      $a2, $zero, 0x10
/* 2A9B8 8003A1B8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2A9BC 8003A1BC 0180023C */  lui        $v0, %hi(D_800126F8)
/* 2A9C0 8003A1C0 2000A48F */  lw         $a0, 0x20($sp)
/* 2A9C4 8003A1C4 F8264224 */  addiu      $v0, $v0, %lo(D_800126F8)
/* 2A9C8 8003A1C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2A9CC 8003A1CC 290A010C */  jal        PrintText_800428a4
/* 2A9D0 8003A1D0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2A9D4 8003A1D4 21200000 */  addu       $a0, $zero, $zero
/* 2A9D8 8003A1D8 4C000524 */  addiu      $a1, $zero, 0x4c
/* 2A9DC 8003A1DC 10000624 */  addiu      $a2, $zero, 0x10
/* 2A9E0 8003A1E0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2A9E4 8003A1E4 0180023C */  lui        $v0, %hi(D_800126FC)
/* 2A9E8 8003A1E8 FC264224 */  addiu      $v0, $v0, %lo(D_800126FC)
/* 2A9EC 8003A1EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2A9F0 8003A1F0 290A010C */  jal        PrintText_800428a4
/* 2A9F4 8003A1F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2A9F8 8003A1F8 54000524 */  addiu      $a1, $zero, 0x54
/* 2A9FC 8003A1FC 10000624 */  addiu      $a2, $zero, 0x10
/* 2AA00 8003A200 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AA04 8003A204 0180023C */  lui        $v0, %hi(D_80012700)
/* 2AA08 8003A208 2400A48F */  lw         $a0, 0x24($sp)
/* 2AA0C 8003A20C 00274224 */  addiu      $v0, $v0, %lo(D_80012700)
/* 2AA10 8003A210 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AA14 8003A214 290A010C */  jal        PrintText_800428a4
/* 2AA18 8003A218 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AA1C 8003A21C 21200000 */  addu       $a0, $zero, $zero
/* 2AA20 8003A220 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2AA24 8003A224 52000624 */  addiu      $a2, $zero, 0x52
/* 2AA28 8003A228 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AA2C 8003A22C 0180023C */  lui        $v0, %hi(D_80012704)
/* 2AA30 8003A230 04274224 */  addiu      $v0, $v0, %lo(D_80012704)
/* 2AA34 8003A234 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AA38 8003A238 290A010C */  jal        PrintText_800428a4
/* 2AA3C 8003A23C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AA40 8003A240 21200000 */  addu       $a0, $zero, $zero
/* 2AA44 8003A244 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2AA48 8003A248 5A000624 */  addiu      $a2, $zero, 0x5a
/* 2AA4C 8003A24C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AA50 8003A250 0180023C */  lui        $v0, %hi(D_80012724)
/* 2AA54 8003A254 57E90008 */  j          .L8003A55C
/* 2AA58 8003A258 24274224 */   addiu     $v0, $v0, %lo(D_80012724)
/* 2AA5C 8003A25C 21200000 */  addu       $a0, $zero, $zero
/* 2AA60 8003A260 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2AA64 8003A264 08000624 */  addiu      $a2, $zero, 8
/* 2AA68 8003A268 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AA6C 8003A26C 00101024 */  addiu      $s0, $zero, 0x1000
/* 2AA70 8003A270 0180023C */  lui        $v0, %hi(D_80012748)
/* 2AA74 8003A274 48274224 */  addiu      $v0, $v0, %lo(D_80012748)
/* 2AA78 8003A278 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AA7C 8003A27C 290A010C */  jal        PrintText_800428a4
/* 2AA80 8003A280 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AA84 8003A284 21200000 */  addu       $a0, $zero, $zero
/* 2AA88 8003A288 C4FF0524 */  addiu      $a1, $zero, -0x3c
/* 2AA8C 8003A28C 10000624 */  addiu      $a2, $zero, 0x10
/* 2AA90 8003A290 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AA94 8003A294 0180023C */  lui        $v0, %hi(D_80012760)
/* 2AA98 8003A298 60274224 */  addiu      $v0, $v0, %lo(D_80012760)
/* 2AA9C 8003A29C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AAA0 8003A2A0 1400A2AF */  sw         $v0, 0x14($sp)
/* 2AAA4 8003A2A4 1800A0AF */  sw         $zero, 0x18($sp)
.L8003A2A8:
/* 2AAA8 8003A2A8 290A010C */  jal        PrintText_800428a4
/* 2AAAC 8003A2AC 00000000 */   nop
/* 2AAB0 8003A2B0 21200000 */  addu       $a0, $zero, $zero
/* 2AAB4 8003A2B4 DCFF0524 */  addiu      $a1, $zero, -0x24
/* 2AAB8 8003A2B8 10000624 */  addiu      $a2, $zero, 0x10
/* 2AABC 8003A2BC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AAC0 8003A2C0 0180023C */  lui        $v0, %hi(D_80012764)
/* 2AAC4 8003A2C4 64274224 */  addiu      $v0, $v0, %lo(D_80012764)
/* 2AAC8 8003A2C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AACC 8003A2CC 290A010C */  jal        PrintText_800428a4
/* 2AAD0 8003A2D0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AAD4 8003A2D4 7470000C */  jal        getcoinslot1_8001c1d0
/* 2AAD8 8003A2D8 00000000 */   nop
/* 2AADC 8003A2DC 52004014 */  bnez       $v0, .L8003A428
/* 2AAE0 8003A2E0 0180023C */   lui       $v0, 0x8001
/* 2AAE4 8003A2E4 0DE90008 */  j          .L8003A434
/* 2AAE8 8003A2E8 0180023C */   lui       $v0, 0x8001
/* 2AAEC 8003A2EC 21200000 */  addu       $a0, $zero, $zero
/* 2AAF0 8003A2F0 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2AAF4 8003A2F4 08000624 */  addiu      $a2, $zero, 8
/* 2AAF8 8003A2F8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AAFC 8003A2FC 00101024 */  addiu      $s0, $zero, 0x1000
/* 2AB00 8003A300 0180023C */  lui        $v0, %hi(D_80012748)
/* 2AB04 8003A304 48274224 */  addiu      $v0, $v0, %lo(D_80012748)
/* 2AB08 8003A308 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AB0C 8003A30C 290A010C */  jal        PrintText_800428a4
/* 2AB10 8003A310 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AB14 8003A314 0180033C */  lui        $v1, %hi(D_80012760)
/* 2AB18 8003A318 0E80023C */  lui        $v0, %hi(D_800D8F3C)
/* 2AB1C 8003A31C 3C8F448C */  lw         $a0, %lo(D_800D8F3C)($v0)
/* 2AB20 8003A320 60276324 */  addiu      $v1, $v1, %lo(D_80012760)
/* 2AB24 8003A324 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AB28 8003A328 40100400 */  sll        $v0, $a0, 1
/* 2AB2C 8003A32C 21104400 */  addu       $v0, $v0, $a0
/* 2AB30 8003A330 C0100200 */  sll        $v0, $v0, 3
/* 2AB34 8003A334 21104400 */  addu       $v0, $v0, $a0
/* 2AB38 8003A338 80100200 */  sll        $v0, $v0, 2
/* 2AB3C 8003A33C 02004104 */  bgez       $v0, .L8003A348
/* 2AB40 8003A340 1400A3AF */   sw        $v1, 0x14($sp)
/* 2AB44 8003A344 7F004224 */  addiu      $v0, $v0, 0x7f
.L8003A348:
/* 2AB48 8003A348 21200000 */  addu       $a0, $zero, $zero
/* 2AB4C 8003A34C C4FF0524 */  addiu      $a1, $zero, -0x3c
/* 2AB50 8003A350 10000624 */  addiu      $a2, $zero, 0x10
/* 2AB54 8003A354 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AB58 8003A358 C3110200 */  sra        $v0, $v0, 7
/* 2AB5C 8003A35C AAE80008 */  j          .L8003A2A8
/* 2AB60 8003A360 1800A2AF */   sw        $v0, 0x18($sp)
/* 2AB64 8003A364 21200000 */  addu       $a0, $zero, $zero
/* 2AB68 8003A368 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2AB6C 8003A36C 08000624 */  addiu      $a2, $zero, 8
/* 2AB70 8003A370 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AB74 8003A374 00101024 */  addiu      $s0, $zero, 0x1000
/* 2AB78 8003A378 0180023C */  lui        $v0, %hi(D_800127B8)
/* 2AB7C 8003A37C B8274224 */  addiu      $v0, $v0, %lo(D_800127B8)
/* 2AB80 8003A380 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AB84 8003A384 290A010C */  jal        PrintText_800428a4
/* 2AB88 8003A388 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AB8C 8003A38C 4992083C */  lui        $t0, 0x9249
/* 2AB90 8003A390 0E80023C */  lui        $v0, %hi(D_800D8F3C)
/* 2AB94 8003A394 3C8F448C */  lw         $a0, %lo(D_800D8F3C)($v0)
/* 2AB98 8003A398 93240835 */  ori        $t0, $t0, 0x2493
/* 2AB9C 8003A39C 00FC8424 */  addiu      $a0, $a0, -0x400
/* 2ABA0 8003A3A0 40180400 */  sll        $v1, $a0, 1
/* 2ABA4 8003A3A4 21186400 */  addu       $v1, $v1, $a0
/* 2ABA8 8003A3A8 C0180300 */  sll        $v1, $v1, 3
/* 2ABAC 8003A3AC 21186400 */  addu       $v1, $v1, $a0
/* 2ABB0 8003A3B0 80180300 */  sll        $v1, $v1, 2
/* 2ABB4 8003A3B4 18006800 */  mult       $v1, $t0
/* 2ABB8 8003A3B8 C4FF0524 */  addiu      $a1, $zero, -0x3c
/* 2ABBC 8003A3BC 10000624 */  addiu      $a2, $zero, 0x10
/* 2ABC0 8003A3C0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ABC4 8003A3C4 0180023C */  lui        $v0, %hi(D_80012760)
/* 2ABC8 8003A3C8 60274224 */  addiu      $v0, $v0, %lo(D_80012760)
/* 2ABCC 8003A3CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ABD0 8003A3D0 1400A2AF */  sw         $v0, 0x14($sp)
/* 2ABD4 8003A3D4 21200000 */  addu       $a0, $zero, $zero
/* 2ABD8 8003A3D8 10400000 */  mfhi       $t0
/* 2ABDC 8003A3DC 21400301 */  addu       $t0, $t0, $v1
/* 2ABE0 8003A3E0 C3410800 */  sra        $t0, $t0, 7
/* 2ABE4 8003A3E4 C31F0300 */  sra        $v1, $v1, 0x1f
/* 2ABE8 8003A3E8 23400301 */  subu       $t0, $t0, $v1
/* 2ABEC 8003A3EC 290A010C */  jal        PrintText_800428a4
/* 2ABF0 8003A3F0 1800A8AF */   sw        $t0, 0x18($sp)
/* 2ABF4 8003A3F4 21200000 */  addu       $a0, $zero, $zero
/* 2ABF8 8003A3F8 DCFF0524 */  addiu      $a1, $zero, -0x24
/* 2ABFC 8003A3FC 10000624 */  addiu      $a2, $zero, 0x10
/* 2AC00 8003A400 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AC04 8003A404 0180023C */  lui        $v0, %hi(D_80012764)
/* 2AC08 8003A408 64274224 */  addiu      $v0, $v0, %lo(D_80012764)
/* 2AC0C 8003A40C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AC10 8003A410 290A010C */  jal        PrintText_800428a4
/* 2AC14 8003A414 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AC18 8003A418 7470000C */  jal        getcoinslot1_8001c1d0
/* 2AC1C 8003A41C 00000000 */   nop
/* 2AC20 8003A420 03004010 */  beqz       $v0, .L8003A430
/* 2AC24 8003A424 0180023C */   lui       $v0, %hi(D_80012770)
.L8003A428:
/* 2AC28 8003A428 0EE90008 */  j          .L8003A438
/* 2AC2C 8003A42C 70274324 */   addiu     $v1, $v0, %lo(D_80012770)
.L8003A430:
/* 2AC30 8003A430 0180023C */  lui        $v0, %hi(D_80012794)
.L8003A434:
/* 2AC34 8003A434 94274324 */  addiu      $v1, $v0, %lo(D_80012794)
.L8003A438:
/* 2AC38 8003A438 21200000 */  addu       $a0, $zero, $zero
/* 2AC3C 8003A43C 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2AC40 8003A440 5A000624 */  addiu      $a2, $zero, 0x5a
/* 2AC44 8003A444 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AC48 8003A448 00100224 */  addiu      $v0, $zero, 0x1000
/* 2AC4C 8003A44C 1000A2AF */  sw         $v0, 0x10($sp)
/* 2AC50 8003A450 290A010C */  jal        PrintText_800428a4
/* 2AC54 8003A454 1400A3AF */   sw        $v1, 0x14($sp)
/* 2AC58 8003A458 6FE90008 */  j          .L8003A5BC
/* 2AC5C 8003A45C 00000000 */   nop
/* 2AC60 8003A460 02000424 */  addiu      $a0, $zero, 2
/* 2AC64 8003A464 C4FF0524 */  addiu      $a1, $zero, -0x3c
/* 2AC68 8003A468 10000624 */  addiu      $a2, $zero, 0x10
/* 2AC6C 8003A46C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AC70 8003A470 00100324 */  addiu      $v1, $zero, 0x1000
/* 2AC74 8003A474 0180023C */  lui        $v0, %hi(D_800127D0)
/* 2AC78 8003A478 D0274224 */  addiu      $v0, $v0, %lo(D_800127D0)
/* 2AC7C 8003A47C 58E90008 */  j          .L8003A560
/* 2AC80 8003A480 1000A3AF */   sw        $v1, 0x10($sp)
/* 2AC84 8003A484 02000424 */  addiu      $a0, $zero, 2
/* 2AC88 8003A488 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2AC8C 8003A48C 08000624 */  addiu      $a2, $zero, 8
/* 2AC90 8003A490 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AC94 8003A494 00101024 */  addiu      $s0, $zero, 0x1000
/* 2AC98 8003A498 0180023C */  lui        $v0, %hi(D_800127E0)
/* 2AC9C 8003A49C 4EE90008 */  j          .L8003A538
/* 2ACA0 8003A4A0 E0274224 */   addiu     $v0, $v0, %lo(D_800127E0)
/* 2ACA4 8003A4A4 02000424 */  addiu      $a0, $zero, 2
/* 2ACA8 8003A4A8 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2ACAC 8003A4AC 08000624 */  addiu      $a2, $zero, 8
/* 2ACB0 8003A4B0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ACB4 8003A4B4 00101024 */  addiu      $s0, $zero, 0x1000
/* 2ACB8 8003A4B8 0180023C */  lui        $v0, %hi(D_8001281C)
/* 2ACBC 8003A4BC 1C284224 */  addiu      $v0, $v0, %lo(D_8001281C)
/* 2ACC0 8003A4C0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ACC4 8003A4C4 290A010C */  jal        PrintText_800428a4
/* 2ACC8 8003A4C8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2ACCC 8003A4CC 02000424 */  addiu      $a0, $zero, 2
/* 2ACD0 8003A4D0 C4FF0524 */  addiu      $a1, $zero, -0x3c
/* 2ACD4 8003A4D4 10000624 */  addiu      $a2, $zero, 0x10
/* 2ACD8 8003A4D8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ACDC 8003A4DC 0180023C */  lui        $v0, %hi(D_80012834)
/* 2ACE0 8003A4E0 34284224 */  addiu      $v0, $v0, %lo(D_80012834)
/* 2ACE4 8003A4E4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ACE8 8003A4E8 290A010C */  jal        PrintText_800428a4
/* 2ACEC 8003A4EC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2ACF0 8003A4F0 04000424 */  addiu      $a0, $zero, 4
/* 2ACF4 8003A4F4 FCFF0524 */  addiu      $a1, $zero, -4
/* 2ACF8 8003A4F8 10000624 */  addiu      $a2, $zero, 0x10
/* 2ACFC 8003A4FC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AD00 8003A500 0180023C */  lui        $v0, %hi(D_80012760)
/* 2AD04 8003A504 0E80033C */  lui        $v1, %hi(D_800D8F3C)
/* 2AD08 8003A508 3C8F688C */  lw         $t0, %lo(D_800D8F3C)($v1)
/* 2AD0C 8003A50C 60274224 */  addiu      $v0, $v0, %lo(D_80012760)
/* 2AD10 8003A510 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AD14 8003A514 1400A2AF */  sw         $v0, 0x14($sp)
/* 2AD18 8003A518 290A010C */  jal        PrintText_800428a4
/* 2AD1C 8003A51C 1800A8AF */   sw        $t0, 0x18($sp)
/* 2AD20 8003A520 02000424 */  addiu      $a0, $zero, 2
/* 2AD24 8003A524 1C000524 */  addiu      $a1, $zero, 0x1c
/* 2AD28 8003A528 10000624 */  addiu      $a2, $zero, 0x10
/* 2AD2C 8003A52C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AD30 8003A530 0180023C */  lui        $v0, %hi(D_8001283C)
/* 2AD34 8003A534 3C284224 */  addiu      $v0, $v0, %lo(D_8001283C)
.L8003A538:
/* 2AD38 8003A538 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AD3C 8003A53C 290A010C */  jal        PrintText_800428a4
/* 2AD40 8003A540 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AD44 8003A544 21200000 */  addu       $a0, $zero, $zero
/* 2AD48 8003A548 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2AD4C 8003A54C 5A000624 */  addiu      $a2, $zero, 0x5a
/* 2AD50 8003A550 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AD54 8003A554 0180023C */  lui        $v0, %hi(D_800127FC)
/* 2AD58 8003A558 FC274224 */  addiu      $v0, $v0, %lo(D_800127FC)
.L8003A55C:
/* 2AD5C 8003A55C 1000B0AF */  sw         $s0, 0x10($sp)
.L8003A560:
/* 2AD60 8003A560 290A010C */  jal        PrintText_800428a4
/* 2AD64 8003A564 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AD68 8003A568 6FE90008 */  j          .L8003A5BC
/* 2AD6C 8003A56C 00000000 */   nop
/* 2AD70 8003A570 21200000 */  addu       $a0, $zero, $zero
/* 2AD74 8003A574 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2AD78 8003A578 08000624 */  addiu      $a2, $zero, 8
/* 2AD7C 8003A57C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AD80 8003A580 00101024 */  addiu      $s0, $zero, 0x1000
/* 2AD84 8003A584 0180023C */  lui        $v0, %hi(D_80012844)
/* 2AD88 8003A588 44284224 */  addiu      $v0, $v0, %lo(D_80012844)
/* 2AD8C 8003A58C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AD90 8003A590 290A010C */  jal        PrintText_800428a4
/* 2AD94 8003A594 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AD98 8003A598 21200000 */  addu       $a0, $zero, $zero
/* 2AD9C 8003A59C 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2ADA0 8003A5A0 5A000624 */  addiu      $a2, $zero, 0x5a
/* 2ADA4 8003A5A4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ADA8 8003A5A8 0180023C */  lui        $v0, %hi(D_800127FC)
/* 2ADAC 8003A5AC FC274224 */  addiu      $v0, $v0, %lo(D_800127FC)
/* 2ADB0 8003A5B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ADB4 8003A5B4 290A010C */  jal        PrintText_800428a4
/* 2ADB8 8003A5B8 1400A2AF */   sw        $v0, 0x14($sp)
.L8003A5BC:
/* 2ADBC 8003A5BC 7CAA000C */  jal        vsync_8002a9f0
/* 2ADC0 8003A5C0 00000000 */   nop
/* 2ADC4 8003A5C4 7400BF8F */  lw         $ra, 0x74($sp)
/* 2ADC8 8003A5C8 7000BE8F */  lw         $fp, 0x70($sp)
/* 2ADCC 8003A5CC 6C00B78F */  lw         $s7, 0x6c($sp)
/* 2ADD0 8003A5D0 6800B68F */  lw         $s6, 0x68($sp)
/* 2ADD4 8003A5D4 6400B58F */  lw         $s5, 0x64($sp)
/* 2ADD8 8003A5D8 6000B48F */  lw         $s4, 0x60($sp)
/* 2ADDC 8003A5DC 5C00B38F */  lw         $s3, 0x5c($sp)
/* 2ADE0 8003A5E0 5800B28F */  lw         $s2, 0x58($sp)
/* 2ADE4 8003A5E4 5400B18F */  lw         $s1, 0x54($sp)
/* 2ADE8 8003A5E8 5000B08F */  lw         $s0, 0x50($sp)
/* 2ADEC 8003A5EC 0800E003 */  jr         $ra
/* 2ADF0 8003A5F0 7800BD27 */   addiu     $sp, $sp, 0x78
