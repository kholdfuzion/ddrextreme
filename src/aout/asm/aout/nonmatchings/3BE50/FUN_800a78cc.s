.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a78cc
/* 980CC 800A78CC 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 980D0 800A78D0 6800B0AF */  sw         $s0, 0x68($sp)
/* 980D4 800A78D4 1B80103C */  lui        $s0, %hi(D_801B2F58)
/* 980D8 800A78D8 7000B2AF */  sw         $s2, 0x70($sp)
/* 980DC 800A78DC 582F1226 */  addiu      $s2, $s0, %lo(D_801B2F58)
/* 980E0 800A78E0 21284002 */  addu       $a1, $s2, $zero
/* 980E4 800A78E4 8C00BFAF */  sw         $ra, 0x8c($sp)
/* 980E8 800A78E8 8800BEAF */  sw         $fp, 0x88($sp)
/* 980EC 800A78EC 8400B7AF */  sw         $s7, 0x84($sp)
/* 980F0 800A78F0 8000B6AF */  sw         $s6, 0x80($sp)
/* 980F4 800A78F4 7C00B5AF */  sw         $s5, 0x7c($sp)
/* 980F8 800A78F8 7800B4AF */  sw         $s4, 0x78($sp)
/* 980FC 800A78FC 7400B3AF */  sw         $s3, 0x74($sp)
/* 98100 800A7900 6C00B1AF */  sw         $s1, 0x6c($sp)
/* 98104 800A7904 DDB3000C */  jal        decodefile_8002cf74
/* 98108 800A7908 9000A4AF */   sw        $a0, 0x90($sp)
/* 9810C 800A790C 582F0292 */  lbu        $v0, 0x2f58($s0)
/* 98110 800A7910 00000000 */  nop
/* 98114 800A7914 0B004010 */  beqz       $v0, .L800A7944
/* 98118 800A7918 21880000 */   addu      $s1, $zero, $zero
/* 9811C 800A791C 21284002 */  addu       $a1, $s2, $zero
/* 98120 800A7920 01003126 */  addiu      $s1, $s1, 1
.L800A7924:
/* 98124 800A7924 9001222A */  slti       $v0, $s1, 0x190
/* 98128 800A7928 06004010 */  beqz       $v0, .L800A7944
/* 9812C 800A792C 8000A524 */   addiu     $a1, $a1, 0x80
/* 98130 800A7930 0000A290 */  lbu        $v0, ($a1)
/* 98134 800A7934 00000000 */  nop
/* 98138 800A7938 FAFF4014 */  bnez       $v0, .L800A7924
/* 9813C 800A793C 01003126 */   addiu     $s1, $s1, 1
/* 98140 800A7940 FFFF3126 */  addiu      $s1, $s1, -1
.L800A7944:
/* 98144 800A7944 1C80023C */  lui        $v0, %hi(D_801BF778)
/* 98148 800A7948 78F751AC */  sw         $s1, %lo(D_801BF778)($v0)
/* 9814C 800A794C FFFF0424 */  addiu      $a0, $zero, -1
/* 98150 800A7950 1C80023C */  lui        $v0, %hi(D_801BFB98)
/* 98154 800A7954 98FB4224 */  addiu      $v0, $v0, %lo(D_801BFB98)
/* 98158 800A7958 1C80033C */  lui        $v1, %hi(D_801BFB78)
/* 9815C 800A795C 78FB6324 */  addiu      $v1, $v1, %lo(D_801BFB78)
/* 98160 800A7960 05001124 */  addiu      $s1, $zero, 5
.L800A7964:
/* 98164 800A7964 000044AC */  sw         $a0, ($v0)
/* 98168 800A7968 04004224 */  addiu      $v0, $v0, 4
/* 9816C 800A796C 000060AC */  sw         $zero, ($v1)
/* 98170 800A7970 FFFF3126 */  addiu      $s1, $s1, -1
/* 98174 800A7974 FBFF2106 */  bgez       $s1, .L800A7964
/* 98178 800A7978 04006324 */   addiu     $v1, $v1, 4
/* 9817C 800A797C 1C80043C */  lui        $a0, %hi(D_801BF778)
/* 98180 800A7980 78F7838C */  lw         $v1, %lo(D_801BF778)($a0)
/* 98184 800A7984 00000000 */  nop
/* 98188 800A7988 11006018 */  blez       $v1, .L800A79D0
/* 9818C 800A798C C0290300 */   sll       $a1, $v1, 7
/* 98190 800A7990 1B80023C */  lui        $v0, %hi(D_801B2F58)
/* 98194 800A7994 582F4224 */  addiu      $v0, $v0, %lo(D_801B2F58)
/* 98198 800A7998 80004624 */  addiu      $a2, $v0, 0x80
/* 9819C 800A799C 7C004424 */  addiu      $a0, $v0, 0x7c
/* 981A0 800A79A0 21886000 */  addu       $s1, $v1, $zero
.L800A79A4:
/* 981A4 800A79A4 FFFF3126 */  addiu      $s1, $s1, -1
/* 981A8 800A79A8 FCFF828C */  lw         $v0, -4($a0)
/* 981AC 800A79AC 0000838C */  lw         $v1, ($a0)
/* 981B0 800A79B0 21104600 */  addu       $v0, $v0, $a2
/* 981B4 800A79B4 2110A200 */  addu       $v0, $a1, $v0
/* 981B8 800A79B8 21186600 */  addu       $v1, $v1, $a2
/* 981BC 800A79BC 2118A300 */  addu       $v1, $a1, $v1
/* 981C0 800A79C0 FCFF82AC */  sw         $v0, -4($a0)
/* 981C4 800A79C4 000083AC */  sw         $v1, ($a0)
/* 981C8 800A79C8 F6FF2016 */  bnez       $s1, .L800A79A4
/* 981CC 800A79CC 80008424 */   addiu     $a0, $a0, 0x80
.L800A79D0:
/* 981D0 800A79D0 7CAA000C */  jal        vsync_8002a9f0
/* 981D4 800A79D4 F8001124 */   addiu     $s1, $zero, 0xf8
/* 981D8 800A79D8 1C80023C */  lui        $v0, %hi(D_801BF788)
/* 981DC 800A79DC 88F74224 */  addiu      $v0, $v0, %lo(D_801BF788)
/* 981E0 800A79E0 E0034224 */  addiu      $v0, $v0, 0x3e0
.L800A79E4:
/* 981E4 800A79E4 000040AC */  sw         $zero, ($v0)
/* 981E8 800A79E8 FFFF3126 */  addiu      $s1, $s1, -1
/* 981EC 800A79EC FDFF2106 */  bgez       $s1, .L800A79E4
/* 981F0 800A79F0 FCFF4224 */   addiu     $v0, $v0, -4
/* 981F4 800A79F4 1C80033C */  lui        $v1, %hi(D_801BF778)
/* 981F8 800A79F8 78F7628C */  lw         $v0, %lo(D_801BF778)($v1)
/* 981FC 800A79FC 00000000 */  nop
/* 98200 800A7A00 4A004018 */  blez       $v0, .L800A7B2C
/* 98204 800A7A04 21880000 */   addu      $s1, $zero, $zero
/* 98208 800A7A08 1B80043C */  lui        $a0, %hi(D_801B2F58)
.L800A7A0C:
/* 9820C 800A7A0C 582F8624 */  addiu      $a2, $a0, %lo(D_801B2F58)
/* 98210 800A7A10 C0191100 */  sll        $v1, $s1, 7
/* 98214 800A7A14 21206600 */  addu       $a0, $v1, $a2
/* 98218 800A7A18 01003126 */  addiu      $s1, $s1, 1
/* 9821C 800A7A1C 08008594 */  lhu        $a1, 8($a0)
/* 98220 800A7A20 21B86000 */  addu       $s7, $v1, $zero
/* 98224 800A7A24 F900A22C */  sltiu      $v0, $a1, 0xf9
/* 98228 800A7A28 37004010 */  beqz       $v0, .L800A7B08
/* 9822C 800A7A2C 5800B1AF */   sw        $s1, 0x58($sp)
/* 98230 800A7A30 06008380 */  lb         $v1, 6($a0)
/* 98234 800A7A34 05000224 */  addiu      $v0, $zero, 5
/* 98238 800A7A38 33006214 */  bne        $v1, $v0, .L800A7B08
/* 9823C 800A7A3C 00140500 */   sll       $v0, $a1, 0x10
/* 98240 800A7A40 83130200 */  sra        $v0, $v0, 0xe
/* 98244 800A7A44 1C80033C */  lui        $v1, %hi(D_801BF788)
/* 98248 800A7A48 88F76324 */  addiu      $v1, $v1, %lo(D_801BF788)
/* 9824C 800A7A4C 21104300 */  addu       $v0, $v0, $v1
/* 98250 800A7A50 000044AC */  sw         $a0, ($v0)
/* 98254 800A7A54 21A80000 */  addu       $s5, $zero, $zero
/* 98258 800A7A58 1C80023C */  lui        $v0, %hi(D_801BFB78)
/* 9825C 800A7A5C 78FB4924 */  addiu      $t1, $v0, %lo(D_801BFB78)
/* 98260 800A7A60 21F0C000 */  addu       $fp, $a2, $zero
/* 98264 800A7A64 1C80023C */  lui        $v0, %hi(D_801BFB98)
/* 98268 800A7A68 98FB4824 */  addiu      $t0, $v0, %lo(D_801BFB98)
.L800A7A6C:
/* 9826C 800A7A6C 21980000 */  addu       $s3, $zero, $zero
/* 98270 800A7A70 0100B626 */  addiu      $s6, $s5, 1
.L800A7A74:
/* 98274 800A7A74 21900000 */  addu       $s2, $zero, $zero
/* 98278 800A7A78 01007426 */  addiu      $s4, $s3, 1
/* 9827C 800A7A7C 21882001 */  addu       $s1, $t1, $zero
/* 98280 800A7A80 21800001 */  addu       $s0, $t0, $zero
.L800A7A84:
/* 98284 800A7A84 2120FE02 */  addu       $a0, $s7, $fp
/* 98288 800A7A88 2128A002 */  addu       $a1, $s5, $zero
/* 9828C 800A7A8C 21306002 */  addu       $a2, $s3, $zero
/* 98290 800A7A90 21384002 */  addu       $a3, $s2, $zero
/* 98294 800A7A94 6000A8AF */  sw         $t0, 0x60($sp)
/* 98298 800A7A98 D0A4020C */  jal        FUN_800a9340
/* 9829C 800A7A9C 6400A9AF */   sw        $t1, 0x64($sp)
/* 982A0 800A7AA0 21204000 */  addu       $a0, $v0, $zero
/* 982A4 800A7AA4 0000238E */  lw         $v1, ($s1)
/* 982A8 800A7AA8 6000A88F */  lw         $t0, 0x60($sp)
/* 982AC 800A7AAC 6400A98F */  lw         $t1, 0x64($sp)
/* 982B0 800A7AB0 2A186400 */  slt        $v1, $v1, $a0
/* 982B4 800A7AB4 02006010 */  beqz       $v1, .L800A7AC0
/* 982B8 800A7AB8 00000000 */   nop
/* 982BC 800A7ABC 000024AE */  sw         $a0, ($s1)
.L800A7AC0:
/* 982C0 800A7AC0 0000038E */  lw         $v1, ($s0)
/* 982C4 800A7AC4 FFFF0224 */  addiu      $v0, $zero, -1
/* 982C8 800A7AC8 03006210 */  beq        $v1, $v0, .L800A7AD8
/* 982CC 800A7ACC 2A108300 */   slt       $v0, $a0, $v1
/* 982D0 800A7AD0 02004010 */  beqz       $v0, .L800A7ADC
/* 982D4 800A7AD4 00000000 */   nop
.L800A7AD8:
/* 982D8 800A7AD8 000004AE */  sw         $a0, ($s0)
.L800A7ADC:
/* 982DC 800A7ADC 04003126 */  addiu      $s1, $s1, 4
/* 982E0 800A7AE0 01005226 */  addiu      $s2, $s2, 1
/* 982E4 800A7AE4 0500422A */  slti       $v0, $s2, 5
/* 982E8 800A7AE8 E6FF4014 */  bnez       $v0, .L800A7A84
/* 982EC 800A7AEC 04001026 */   addiu     $s0, $s0, 4
/* 982F0 800A7AF0 21988002 */  addu       $s3, $s4, $zero
/* 982F4 800A7AF4 0300622A */  slti       $v0, $s3, 3
/* 982F8 800A7AF8 DEFF4014 */  bnez       $v0, .L800A7A74
/* 982FC 800A7AFC 0200C22A */   slti      $v0, $s6, 2
/* 98300 800A7B00 DAFF4014 */  bnez       $v0, .L800A7A6C
/* 98304 800A7B04 21A8C002 */   addu      $s5, $s6, $zero
.L800A7B08:
/* 98308 800A7B08 1C80043C */  lui        $a0, %hi(D_801BF778)
/* 9830C 800A7B0C 78F7828C */  lw         $v0, %lo(D_801BF778)($a0)
/* 98310 800A7B10 5800B18F */  lw         $s1, 0x58($sp)
/* 98314 800A7B14 00000000 */  nop
/* 98318 800A7B18 2A102202 */  slt        $v0, $s1, $v0
/* 9831C 800A7B1C BBFF4014 */  bnez       $v0, .L800A7A0C
/* 98320 800A7B20 1B80043C */   lui       $a0, 0x801b
/* 98324 800A7B24 1C80033C */  lui        $v1, %hi(D_801BF778)
/* 98328 800A7B28 78F7628C */  lw         $v0, %lo(D_801BF778)($v1)
.L800A7B2C:
/* 9832C 800A7B2C 00000000 */  nop
/* 98330 800A7B30 50004018 */  blez       $v0, .L800A7C74
/* 98334 800A7B34 21880000 */   addu      $s1, $zero, $zero
/* 98338 800A7B38 1800B627 */  addiu      $s6, $sp, 0x18
/* 9833C 800A7B3C 0180023C */  lui        $v0, %hi(D_80016BD0)
/* 98340 800A7B40 D06B5524 */  addiu      $s5, $v0, %lo(D_80016BD0)
/* 98344 800A7B44 30001424 */  addiu      $s4, $zero, 0x30
/* 98348 800A7B48 3800B327 */  addiu      $s3, $sp, 0x38
/* 9834C 800A7B4C C0191100 */  sll        $v1, $s1, 7
.L800A7B50:
/* 98350 800A7B50 1B80043C */  lui        $a0, %hi(D_801B2F58)
/* 98354 800A7B54 582F8224 */  addiu      $v0, $a0, %lo(D_801B2F58)
/* 98358 800A7B58 21906200 */  addu       $s2, $v1, $v0
/* 9835C 800A7B5C 21204002 */  addu       $a0, $s2, $zero
/* 98360 800A7B60 C59D020C */  jal        FUN_800a7714
/* 98364 800A7B64 1800A527 */   addiu     $a1, $sp, 0x18
/* 98368 800A7B68 7CAA000C */  jal        vsync_8002a9f0
/* 9836C 800A7B6C 00000000 */   nop
/* 98370 800A7B70 3800A427 */  addiu      $a0, $sp, 0x38
/* 98374 800A7B74 2128A002 */  addu       $a1, $s5, $zero
/* 98378 800A7B78 4D000624 */  addiu      $a2, $zero, 0x4d
/* 9837C 800A7B7C 30000724 */  addiu      $a3, $zero, 0x30
/* 98380 800A7B80 1000B4AF */  sw         $s4, 0x10($sp)
/* 98384 800A7B84 8E81000C */  jal        sprintf
/* 98388 800A7B88 1400B6AF */   sw        $s6, 0x14($sp)
/* 9838C 800A7B8C 7CAA000C */  jal        vsync_8002a9f0
/* 98390 800A7B90 00000000 */   nop
/* 98394 800A7B94 8EA4020C */  jal        FUN_800a9238
/* 98398 800A7B98 21206002 */   addu      $a0, $s3, $zero
/* 9839C 800A7B9C 7CAA000C */  jal        vsync_8002a9f0
/* 983A0 800A7BA0 21804000 */   addu      $s0, $v0, $zero
/* 983A4 800A7BA4 11000006 */  bltz       $s0, .L800A7BEC
/* 983A8 800A7BA8 2128A002 */   addu      $a1, $s5, $zero
/* 983AC 800A7BAC 21206002 */  addu       $a0, $s3, $zero
/* 983B0 800A7BB0 53000624 */  addiu      $a2, $zero, 0x53
/* 983B4 800A7BB4 30000724 */  addiu      $a3, $zero, 0x30
/* 983B8 800A7BB8 0C0050A6 */  sh         $s0, 0xc($s2)
/* 983BC 800A7BBC 0E0050A6 */  sh         $s0, 0xe($s2)
/* 983C0 800A7BC0 1000B4AF */  sw         $s4, 0x10($sp)
/* 983C4 800A7BC4 8E81000C */  jal        sprintf
/* 983C8 800A7BC8 1400B6AF */   sw        $s6, 0x14($sp)
/* 983CC 800A7BCC 8EA4020C */  jal        FUN_800a9238
/* 983D0 800A7BD0 21206002 */   addu      $a0, $s3, $zero
/* 983D4 800A7BD4 7CAA000C */  jal        vsync_8002a9f0
/* 983D8 800A7BD8 21804000 */   addu      $s0, $v0, $zero
/* 983DC 800A7BDC 20000006 */  bltz       $s0, .L800A7C60
/* 983E0 800A7BE0 1C80033C */   lui       $v1, 0x801c
.L800A7BE4:
/* 983E4 800A7BE4 179F0208 */  j          .L800A7C5C
/* 983E8 800A7BE8 0E0050A6 */   sh        $s0, 0xe($s2)
.L800A7BEC:
/* 983EC 800A7BEC 21206002 */  addu       $a0, $s3, $zero
/* 983F0 800A7BF0 53000624 */  addiu      $a2, $zero, 0x53
/* 983F4 800A7BF4 30000724 */  addiu      $a3, $zero, 0x30
/* 983F8 800A7BF8 1000B4AF */  sw         $s4, 0x10($sp)
/* 983FC 800A7BFC 8E81000C */  jal        sprintf
/* 98400 800A7C00 1400B6AF */   sw        $s6, 0x14($sp)
/* 98404 800A7C04 8EA4020C */  jal        FUN_800a9238
/* 98408 800A7C08 21206002 */   addu      $a0, $s3, $zero
/* 9840C 800A7C0C 7CAA000C */  jal        vsync_8002a9f0
/* 98410 800A7C10 21804000 */   addu      $s0, $v0, $zero
/* 98414 800A7C14 F3FF0106 */  bgez       $s0, .L800A7BE4
/* 98418 800A7C18 21206002 */   addu      $a0, $s3, $zero
/* 9841C 800A7C1C 2128A002 */  addu       $a1, $s5, $zero
/* 98420 800A7C20 45000624 */  addiu      $a2, $zero, 0x45
/* 98424 800A7C24 30000724 */  addiu      $a3, $zero, 0x30
/* 98428 800A7C28 1000B4AF */  sw         $s4, 0x10($sp)
/* 9842C 800A7C2C 8E81000C */  jal        sprintf
/* 98430 800A7C30 1400B6AF */   sw        $s6, 0x14($sp)
/* 98434 800A7C34 8EA4020C */  jal        FUN_800a9238
/* 98438 800A7C38 21206002 */   addu      $a0, $s3, $zero
/* 9843C 800A7C3C 7CAA000C */  jal        vsync_8002a9f0
/* 98440 800A7C40 21804000 */   addu      $s0, $v0, $zero
/* 98444 800A7C44 04000006 */  bltz       $s0, .L800A7C58
/* 98448 800A7C48 00000000 */   nop
/* 9844C 800A7C4C 0E0050A6 */  sh         $s0, 0xe($s2)
/* 98450 800A7C50 179F0208 */  j          .L800A7C5C
/* 98454 800A7C54 0C0050A6 */   sh        $s0, 0xc($s2)
.L800A7C58:
/* 98458 800A7C58 0E0040A6 */  sh         $zero, 0xe($s2)
.L800A7C5C:
/* 9845C 800A7C5C 1C80033C */  lui        $v1, %hi(D_801BF778)
.L800A7C60:
/* 98460 800A7C60 78F7628C */  lw         $v0, %lo(D_801BF778)($v1)
/* 98464 800A7C64 01003126 */  addiu      $s1, $s1, 1
/* 98468 800A7C68 2A102202 */  slt        $v0, $s1, $v0
/* 9846C 800A7C6C B8FF4014 */  bnez       $v0, .L800A7B50
/* 98470 800A7C70 C0191100 */   sll       $v1, $s1, 7
.L800A7C74:
/* 98474 800A7C74 9000A48F */  lw         $a0, 0x90($sp)
/* 98478 800A7C78 00000000 */  nop
/* 9847C 800A7C7C 00008290 */  lbu        $v0, ($a0)
/* 98480 800A7C80 00000000 */  nop
/* 98484 800A7C84 09004010 */  beqz       $v0, .L800A7CAC
/* 98488 800A7C88 21880000 */   addu      $s1, $zero, $zero
.L800A7C8C:
/* 9848C 800A7C8C 9000A38F */  lw         $v1, 0x90($sp)
/* 98490 800A7C90 01003126 */  addiu      $s1, $s1, 1
/* 98494 800A7C94 21107100 */  addu       $v0, $v1, $s1
/* 98498 800A7C98 00004390 */  lbu        $v1, ($v0)
/* 9849C 800A7C9C 00000000 */  nop
/* 984A0 800A7CA0 FAFF6014 */  bnez       $v1, .L800A7C8C
/* 984A4 800A7CA4 00000000 */   nop
/* 984A8 800A7CA8 9000A48F */  lw         $a0, 0x90($sp)
.L800A7CAC:
/* 984AC 800A7CAC 00000000 */  nop
/* 984B0 800A7CB0 21109100 */  addu       $v0, $a0, $s1
/* 984B4 800A7CB4 00004490 */  lbu        $a0, ($v0)
/* 984B8 800A7CB8 2F000324 */  addiu      $v1, $zero, 0x2f
/* 984BC 800A7CBC 0C008310 */  beq        $a0, $v1, .L800A7CF0
/* 984C0 800A7CC0 00000000 */   nop
/* 984C4 800A7CC4 0A002006 */  bltz       $s1, .L800A7CF0
/* 984C8 800A7CC8 2F000424 */   addiu     $a0, $zero, 0x2f
.L800A7CCC:
/* 984CC 800A7CCC 9000A38F */  lw         $v1, 0x90($sp)
/* 984D0 800A7CD0 FFFF3126 */  addiu      $s1, $s1, -1
/* 984D4 800A7CD4 21107100 */  addu       $v0, $v1, $s1
/* 984D8 800A7CD8 00004390 */  lbu        $v1, ($v0)
/* 984DC 800A7CDC 00000000 */  nop
/* 984E0 800A7CE0 03006410 */  beq        $v1, $a0, .L800A7CF0
/* 984E4 800A7CE4 00000000 */   nop
/* 984E8 800A7CE8 F8FF2106 */  bgez       $s1, .L800A7CCC
/* 984EC 800A7CEC 00000000 */   nop
.L800A7CF0:
/* 984F0 800A7CF0 0B00201A */  blez       $s1, .L800A7D20
/* 984F4 800A7CF4 21280000 */   addu      $a1, $zero, $zero
/* 984F8 800A7CF8 1C80023C */  lui        $v0, %hi(D_801BF758)
/* 984FC 800A7CFC 58F74624 */  addiu      $a2, $v0, %lo(D_801BF758)
.L800A7D00:
/* 98500 800A7D00 9000A38F */  lw         $v1, 0x90($sp)
/* 98504 800A7D04 2120A600 */  addu       $a0, $a1, $a2
/* 98508 800A7D08 21106500 */  addu       $v0, $v1, $a1
/* 9850C 800A7D0C 0100A524 */  addiu      $a1, $a1, 1
/* 98510 800A7D10 00004390 */  lbu        $v1, ($v0)
/* 98514 800A7D14 2A10B100 */  slt        $v0, $a1, $s1
/* 98518 800A7D18 F9FF4014 */  bnez       $v0, .L800A7D00
/* 9851C 800A7D1C 000083A0 */   sb        $v1, ($a0)
.L800A7D20:
/* 98520 800A7D20 1C80023C */  lui        $v0, %hi(D_801BF758)
/* 98524 800A7D24 58F74224 */  addiu      $v0, $v0, %lo(D_801BF758)
/* 98528 800A7D28 2120A200 */  addu       $a0, $a1, $v0
/* 9852C 800A7D2C 2F000324 */  addiu      $v1, $zero, 0x2f
/* 98530 800A7D30 8C00BF8F */  lw         $ra, 0x8c($sp)
/* 98534 800A7D34 8800BE8F */  lw         $fp, 0x88($sp)
/* 98538 800A7D38 8400B78F */  lw         $s7, 0x84($sp)
/* 9853C 800A7D3C 8000B68F */  lw         $s6, 0x80($sp)
/* 98540 800A7D40 7C00B58F */  lw         $s5, 0x7c($sp)
/* 98544 800A7D44 7800B48F */  lw         $s4, 0x78($sp)
/* 98548 800A7D48 7400B38F */  lw         $s3, 0x74($sp)
/* 9854C 800A7D4C 7000B28F */  lw         $s2, 0x70($sp)
/* 98550 800A7D50 6C00B18F */  lw         $s1, 0x6c($sp)
/* 98554 800A7D54 6800B08F */  lw         $s0, 0x68($sp)
/* 98558 800A7D58 21108000 */  addu       $v0, $a0, $zero
/* 9855C 800A7D5C 000083A0 */  sb         $v1, ($a0)
/* 98560 800A7D60 010040A0 */  sb         $zero, 1($v0)
/* 98564 800A7D64 0800E003 */  jr         $ra
/* 98568 800A7D68 9000BD27 */   addiu     $sp, $sp, 0x90
