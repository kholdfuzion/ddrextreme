.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003f1d0
/* 2F9D0 8003F1D0 D0EEBD27 */  addiu      $sp, $sp, -0x1130
/* 2F9D4 8003F1D4 2811BFAF */  sw         $ra, 0x1128($sp)
/* 2F9D8 8003F1D8 2411B5AF */  sw         $s5, 0x1124($sp)
/* 2F9DC 8003F1DC 2011B4AF */  sw         $s4, 0x1120($sp)
/* 2F9E0 8003F1E0 1C11B3AF */  sw         $s3, 0x111c($sp)
/* 2F9E4 8003F1E4 1811B2AF */  sw         $s2, 0x1118($sp)
/* 2F9E8 8003F1E8 1411B1AF */  sw         $s1, 0x1114($sp)
/* 2F9EC 8003F1EC 7DC4000C */  jal        get_astruct_800311f4
/* 2F9F0 8003F1F0 1011B0AF */   sw        $s0, 0x1110($sp)
/* 2F9F4 8003F1F4 21800000 */  addu       $s0, $zero, $zero
/* 2F9F8 8003F1F8 8FAF020C */  jal        FUN_800abe3c
/* 2F9FC 8003F1FC 21904000 */   addu      $s2, $v0, $zero
/* 2FA00 8003F200 9019030C */  jal        FUN_800c6640
/* 2FA04 8003F204 21A04000 */   addu      $s4, $v0, $zero
/* 2FA08 8003F208 09004010 */  beqz       $v0, .L8003F230
/* 2FA0C 8003F20C FFFF8226 */   addiu     $v0, $s4, -1
/* 2FA10 8003F210 0200422C */  sltiu      $v0, $v0, 2
/* 2FA14 8003F214 06004010 */  beqz       $v0, .L8003F230
/* 2FA18 8003F218 00000000 */   nop
/* 2FA1C 8003F21C 6E19030C */  jal        FUN_800c65b8
/* 2FA20 8003F220 00000000 */   nop
/* 2FA24 8003F224 05005030 */  andi       $s0, $v0, 5
/* 2FA28 8003F228 0500023A */  xori       $v0, $s0, 5
/* 2FA2C 8003F22C 0100502C */  sltiu      $s0, $v0, 1
.L8003F230:
/* 2FA30 8003F230 04004386 */  lh         $v1, 4($s2)
/* 2FA34 8003F234 00000000 */  nop
/* 2FA38 8003F238 0700622C */  sltiu      $v0, $v1, 7
/* 2FA3C 8003F23C A0014010 */  beqz       $v0, .L8003F8C0
/* 2FA40 8003F240 0180023C */   lui       $v0, %hi(D_800132D8)
/* 2FA44 8003F244 D8324224 */  addiu      $v0, $v0, %lo(D_800132D8)
/* 2FA48 8003F248 80180300 */  sll        $v1, $v1, 2
/* 2FA4C 8003F24C 21186200 */  addu       $v1, $v1, $v0
/* 2FA50 8003F250 0000648C */  lw         $a0, ($v1)
/* 2FA54 8003F254 00000000 */  nop
/* 2FA58 8003F258 08008000 */  jr         $a0
/* 2FA5C 8003F25C 00000000 */   nop
/* 2FA60 8003F260 FFFF0424 */  addiu      $a0, $zero, -1
/* 2FA64 8003F264 1D000324 */  addiu      $v1, $zero, 0x1d
/* 2FA68 8003F268 1580023C */  lui        $v0, %hi(D_80157328)
/* 2FA6C 8003F26C 28734224 */  addiu      $v0, $v0, %lo(D_80157328)
/* 2FA70 8003F270 74004224 */  addiu      $v0, $v0, 0x74
/* 2FA74 8003F274 140040A6 */  sh         $zero, 0x14($s2)
/* 2FA78 8003F278 D80E40AE */  sw         $zero, 0xed8($s2)
/* 2FA7C 8003F27C D40E40AE */  sw         $zero, 0xed4($s2)
/* 2FA80 8003F280 D00E40AE */  sw         $zero, 0xed0($s2)
/* 2FA84 8003F284 CC0E40AE */  sw         $zero, 0xecc($s2)
/* 2FA88 8003F288 C80E40AE */  sw         $zero, 0xec8($s2)
/* 2FA8C 8003F28C C40E40AE */  sw         $zero, 0xec4($s2)
/* 2FA90 8003F290 C00E40AE */  sw         $zero, 0xec0($s2)
/* 2FA94 8003F294 BC0E40AE */  sw         $zero, 0xebc($s2)
.L8003F298:
/* 2FA98 8003F298 000044AC */  sw         $a0, ($v0)
/* 2FA9C 8003F29C FFFF6324 */  addiu      $v1, $v1, -1
/* 2FAA0 8003F2A0 FDFF6104 */  bgez       $v1, .L8003F298
/* 2FAA4 8003F2A4 FCFF4224 */   addiu     $v0, $v0, -4
/* 2FAA8 8003F2A8 99AB020C */  jal        FUN_800aae64
/* 2FAAC 8003F2AC 00000000 */   nop
/* 2FAB0 8003F2B0 07004010 */  beqz       $v0, .L8003F2D0
/* 2FAB4 8003F2B4 01000224 */   addiu     $v0, $zero, 1
/* 2FAB8 8003F2B8 040042A6 */  sh         $v0, 4($s2)
/* 2FABC 8003F2BC 03000224 */  addiu      $v0, $zero, 3
/* 2FAC0 8003F2C0 0E0040A6 */  sh         $zero, 0xe($s2)
/* 2FAC4 8003F2C4 C00E54AE */  sw         $s4, 0xec0($s2)
/* 2FAC8 8003F2C8 30FE0008 */  j          .L8003F8C0
/* 2FACC 8003F2CC E40E42AE */   sw        $v0, 0xee4($s2)
.L8003F2D0:
/* 2FAD0 8003F2D0 02000224 */  addiu      $v0, $zero, 2
/* 2FAD4 8003F2D4 01000324 */  addiu      $v1, $zero, 1
/* 2FAD8 8003F2D8 040042A6 */  sh         $v0, 4($s2)
/* 2FADC 8003F2DC 0E0043A6 */  sh         $v1, 0xe($s2)
/* 2FAE0 8003F2E0 30FE0008 */  j          .L8003F8C0
/* 2FAE4 8003F2E4 1E0043A6 */   sh        $v1, 0x1e($s2)
/* 2FAE8 8003F2E8 E40E428E */  lw         $v0, 0xee4($s2)
/* 2FAEC 8003F2EC 00000000 */  nop
/* 2FAF0 8003F2F0 21184000 */  addu       $v1, $v0, $zero
/* 2FAF4 8003F2F4 FFFF4224 */  addiu      $v0, $v0, -1
/* 2FAF8 8003F2F8 7101601C */  bgtz       $v1, .L8003F8C0
/* 2FAFC 8003F2FC E40E42AE */   sw        $v0, 0xee4($s2)
/* 2FB00 8003F300 ADAB020C */  jal        FUN_800aaeb4
/* 2FB04 8003F304 00000000 */   nop
/* 2FB08 8003F308 21804000 */  addu       $s0, $v0, $zero
/* 2FB0C 8003F30C 6C010012 */  beqz       $s0, .L8003F8C0
/* 2FB10 8003F310 00000000 */   nop
/* 2FB14 8003F314 BBAB020C */  jal        FUN_800aaeec
/* 2FB18 8003F318 00000000 */   nop
/* 2FB1C 8003F31C 0600001A */  blez       $s0, .L8003F338
/* 2FB20 8003F320 CC0E40AE */   sw        $zero, 0xecc($s2)
/* 2FB24 8003F324 21200000 */  addu       $a0, $zero, $zero
/* 2FB28 8003F328 FFFF0524 */  addiu      $a1, $zero, -1
/* 2FB2C 8003F32C 13AE020C */  jal        FUN_800ab84c
/* 2FB30 8003F330 FFFF0624 */   addiu     $a2, $zero, -1
/* 2FB34 8003F334 CC0E42AE */  sw         $v0, 0xecc($s2)
.L8003F338:
/* 2FB38 8003F338 CC0E438E */  lw         $v1, 0xecc($s2)
/* 2FB3C 8003F33C FFFF0224 */  addiu      $v0, $zero, -1
/* 2FB40 8003F340 04006210 */  beq        $v1, $v0, .L8003F354
/* 2FB44 8003F344 02000324 */   addiu     $v1, $zero, 2
/* 2FB48 8003F348 07000106 */  bgez       $s0, .L8003F368
/* 2FB4C 8003F34C 21800000 */   addu      $s0, $zero, $zero
/* 2FB50 8003F350 02000324 */  addiu      $v1, $zero, 2
.L8003F354:
/* 2FB54 8003F354 01000224 */  addiu      $v0, $zero, 1
/* 2FB58 8003F358 040043A6 */  sh         $v1, 4($s2)
/* 2FB5C 8003F35C 0E0043A6 */  sh         $v1, 0xe($s2)
/* 2FB60 8003F360 30FE0008 */  j          .L8003F8C0
/* 2FB64 8003F364 1E0042A6 */   sh        $v0, 0x1e($s2)
.L8003F368:
/* 2FB68 8003F368 21980000 */  addu       $s3, $zero, $zero
/* 2FB6C 8003F36C 1580023C */  lui        $v0, %hi(D_80157328)
/* 2FB70 8003F370 28735124 */  addiu      $s1, $v0, %lo(D_80157328)
.L8003F374:
/* 2FB74 8003F374 6CAE020C */  jal        FUN_800ab9b0
/* 2FB78 8003F378 21200002 */   addu      $a0, $s0, $zero
/* 2FB7C 8003F37C 04004010 */  beqz       $v0, .L8003F390
/* 2FB80 8003F380 00000000 */   nop
/* 2FB84 8003F384 000030AE */  sw         $s0, ($s1)
/* 2FB88 8003F388 04003126 */  addiu      $s1, $s1, 4
/* 2FB8C 8003F38C 01007326 */  addiu      $s3, $s3, 1
.L8003F390:
/* 2FB90 8003F390 01001026 */  addiu      $s0, $s0, 1
/* 2FB94 8003F394 1E00022A */  slti       $v0, $s0, 0x1e
/* 2FB98 8003F398 F6FF4014 */  bnez       $v0, .L8003F374
/* 2FB9C 8003F39C FFFF6226 */   addiu     $v0, $s3, -1
/* 2FBA0 8003F3A0 03000324 */  addiu      $v1, $zero, 3
/* 2FBA4 8003F3A4 BC0E42AE */  sw         $v0, 0xebc($s2)
/* 2FBA8 8003F3A8 30FE0008 */  j          .L8003F8C0
/* 2FBAC 8003F3AC 040043A6 */   sh        $v1, 4($s2)
/* 2FBB0 8003F3B0 7470000C */  jal        getcoinslot1_8001c1d0
/* 2FBB4 8003F3B4 00000000 */   nop
/* 2FBB8 8003F3B8 06004014 */  bnez       $v0, .L8003F3D4
/* 2FBBC 8003F3BC 00000000 */   nop
/* 2FBC0 8003F3C0 47B3000C */  jal        FUN_8002cd1c
/* 2FBC4 8003F3C4 01000424 */   addiu     $a0, $zero, 1
/* 2FBC8 8003F3C8 02004010 */  beqz       $v0, .L8003F3D4
/* 2FBCC 8003F3CC 00000000 */   nop
/* 2FBD0 8003F3D0 1E0040A6 */  sh         $zero, 0x1e($s2)
.L8003F3D4:
/* 2FBD4 8003F3D4 7470000C */  jal        getcoinslot1_8001c1d0
/* 2FBD8 8003F3D8 00000000 */   nop
/* 2FBDC 8003F3DC 06004014 */  bnez       $v0, .L8003F3F8
/* 2FBE0 8003F3E0 00000000 */   nop
/* 2FBE4 8003F3E4 50B3000C */  jal        FUN_8002cd40
/* 2FBE8 8003F3E8 01000424 */   addiu     $a0, $zero, 1
/* 2FBEC 8003F3EC 02004010 */  beqz       $v0, .L8003F3F8
/* 2FBF0 8003F3F0 01000224 */   addiu     $v0, $zero, 1
/* 2FBF4 8003F3F4 1E0042A6 */  sh         $v0, 0x1e($s2)
.L8003F3F8:
/* 2FBF8 8003F3F8 7470000C */  jal        getcoinslot1_8001c1d0
/* 2FBFC 8003F3FC 00000000 */   nop
/* 2FC00 8003F400 0B004010 */  beqz       $v0, .L8003F430
/* 2FC04 8003F404 00000000 */   nop
/* 2FC08 8003F408 47B3000C */  jal        FUN_8002cd1c
/* 2FC0C 8003F40C 21200000 */   addu      $a0, $zero, $zero
/* 2FC10 8003F410 0B004014 */  bnez       $v0, .L8003F440
/* 2FC14 8003F414 00000000 */   nop
/* 2FC18 8003F418 50B3000C */  jal        FUN_8002cd40
/* 2FC1C 8003F41C 21200000 */   addu      $a0, $zero, $zero
/* 2FC20 8003F420 07004014 */  bnez       $v0, .L8003F440
/* 2FC24 8003F424 00000000 */   nop
/* 2FC28 8003F428 14FD0008 */  j          .L8003F450
/* 2FC2C 8003F42C 00000000 */   nop
.L8003F430:
/* 2FC30 8003F430 35B3000C */  jal        FUN_8002ccd4
/* 2FC34 8003F434 01000424 */   addiu     $a0, $zero, 1
/* 2FC38 8003F438 05004010 */  beqz       $v0, .L8003F450
/* 2FC3C 8003F43C 00000000 */   nop
.L8003F440:
/* 2FC40 8003F440 1E004296 */  lhu        $v0, 0x1e($s2)
/* 2FC44 8003F444 00000000 */  nop
/* 2FC48 8003F448 01004238 */  xori       $v0, $v0, 1
/* 2FC4C 8003F44C 1E0042A6 */  sh         $v0, 0x1e($s2)
.L8003F450:
/* 2FC50 8003F450 6BB3000C */  jal        FUN_8002cdac
/* 2FC54 8003F454 21200000 */   addu      $a0, $zero, $zero
/* 2FC58 8003F458 19014014 */  bnez       $v0, .L8003F8C0
/* 2FC5C 8003F45C 00000000 */   nop
/* 2FC60 8003F460 35B3000C */  jal        FUN_8002ccd4
/* 2FC64 8003F464 21200000 */   addu      $a0, $zero, $zero
/* 2FC68 8003F468 15014010 */  beqz       $v0, .L8003F8C0
/* 2FC6C 8003F46C 00000000 */   nop
/* 2FC70 8003F470 74B3000C */  jal        FUN_8002cdd0
/* 2FC74 8003F474 21200000 */   addu      $a0, $zero, $zero
/* 2FC78 8003F478 11014014 */  bnez       $v0, .L8003F8C0
/* 2FC7C 8003F47C 00000000 */   nop
/* 2FC80 8003F480 1E004286 */  lh         $v0, 0x1e($s2)
/* 2FC84 8003F484 00000000 */  nop
/* 2FC88 8003F488 11014014 */  bnez       $v0, .L8003F8D0
/* 2FC8C 8003F48C 01000224 */   addiu     $v0, $zero, 1
/* 2FC90 8003F490 30FE0008 */  j          .L8003F8C0
/* 2FC94 8003F494 040040A6 */   sh        $zero, 4($s2)
/* 2FC98 8003F498 0D010012 */  beqz       $s0, .L8003F8D0
/* 2FC9C 8003F49C 01000224 */   addiu     $v0, $zero, 1
/* 2FCA0 8003F4A0 C00E428E */  lw         $v0, 0xec0($s2)
/* 2FCA4 8003F4A4 00000000 */  nop
/* 2FCA8 8003F4A8 09015414 */  bne        $v0, $s4, .L8003F8D0
/* 2FCAC 8003F4AC 01000224 */   addiu     $v0, $zero, 1
/* 2FCB0 8003F4B0 1EAF020C */  jal        FUN_800abc78
/* 2FCB4 8003F4B4 21208002 */   addu      $a0, $s4, $zero
/* 2FCB8 8003F4B8 05014014 */  bnez       $v0, .L8003F8D0
/* 2FCBC 8003F4BC 01000224 */   addiu     $v0, $zero, 1
/* 2FCC0 8003F4C0 47B3000C */  jal        FUN_8002cd1c
/* 2FCC4 8003F4C4 21200000 */   addu      $a0, $zero, $zero
/* 2FCC8 8003F4C8 15004010 */  beqz       $v0, .L8003F520
/* 2FCCC 8003F4CC 00000000 */   nop
/* 2FCD0 8003F4D0 14004296 */  lhu        $v0, 0x14($s2)
/* 2FCD4 8003F4D4 00000000 */  nop
/* 2FCD8 8003F4D8 FFFF4224 */  addiu      $v0, $v0, -1
/* 2FCDC 8003F4DC 140042A6 */  sh         $v0, 0x14($s2)
/* 2FCE0 8003F4E0 00140200 */  sll        $v0, $v0, 0x10
/* 2FCE4 8003F4E4 02004104 */  bgez       $v0, .L8003F4F0
/* 2FCE8 8003F4E8 0F000224 */   addiu     $v0, $zero, 0xf
/* 2FCEC 8003F4EC 140042A6 */  sh         $v0, 0x14($s2)
.L8003F4F0:
/* 2FCF0 8003F4F0 14004386 */  lh         $v1, 0x14($s2)
/* 2FCF4 8003F4F4 0F000224 */  addiu      $v0, $zero, 0xf
/* 2FCF8 8003F4F8 09006210 */  beq        $v1, $v0, .L8003F520
/* 2FCFC 8003F4FC 00000000 */   nop
/* 2FD00 8003F500 BC0E428E */  lw         $v0, 0xebc($s2)
/* 2FD04 8003F504 00000000 */  nop
/* 2FD08 8003F508 2A104300 */  slt        $v0, $v0, $v1
/* 2FD0C 8003F50C 04004010 */  beqz       $v0, .L8003F520
/* 2FD10 8003F510 00000000 */   nop
/* 2FD14 8003F514 BC0E4296 */  lhu        $v0, 0xebc($s2)
/* 2FD18 8003F518 00000000 */  nop
/* 2FD1C 8003F51C 140042A6 */  sh         $v0, 0x14($s2)
.L8003F520:
/* 2FD20 8003F520 50B3000C */  jal        FUN_8002cd40
/* 2FD24 8003F524 21200000 */   addu      $a0, $zero, $zero
/* 2FD28 8003F528 12004010 */  beqz       $v0, .L8003F574
/* 2FD2C 8003F52C 00000000 */   nop
/* 2FD30 8003F530 14004296 */  lhu        $v0, 0x14($s2)
/* 2FD34 8003F534 00000000 */  nop
/* 2FD38 8003F538 01004224 */  addiu      $v0, $v0, 1
/* 2FD3C 8003F53C 140042A6 */  sh         $v0, 0x14($s2)
/* 2FD40 8003F540 00140200 */  sll        $v0, $v0, 0x10
/* 2FD44 8003F544 03140200 */  sra        $v0, $v0, 0x10
/* 2FD48 8003F548 10004228 */  slti       $v0, $v0, 0x10
/* 2FD4C 8003F54C 02004014 */  bnez       $v0, .L8003F558
/* 2FD50 8003F550 00000000 */   nop
/* 2FD54 8003F554 140040A6 */  sh         $zero, 0x14($s2)
.L8003F558:
/* 2FD58 8003F558 14004386 */  lh         $v1, 0x14($s2)
/* 2FD5C 8003F55C BC0E428E */  lw         $v0, 0xebc($s2)
/* 2FD60 8003F560 00000000 */  nop
/* 2FD64 8003F564 2A104300 */  slt        $v0, $v0, $v1
/* 2FD68 8003F568 02004010 */  beqz       $v0, .L8003F574
/* 2FD6C 8003F56C 0F000224 */   addiu     $v0, $zero, 0xf
/* 2FD70 8003F570 140042A6 */  sh         $v0, 0x14($s2)
.L8003F574:
/* 2FD74 8003F574 6BB3000C */  jal        FUN_8002cdac
/* 2FD78 8003F578 21200000 */   addu      $a0, $zero, $zero
/* 2FD7C 8003F57C 0D004014 */  bnez       $v0, .L8003F5B4
/* 2FD80 8003F580 00000000 */   nop
/* 2FD84 8003F584 35B3000C */  jal        FUN_8002ccd4
/* 2FD88 8003F588 21200000 */   addu      $a0, $zero, $zero
/* 2FD8C 8003F58C 09004010 */  beqz       $v0, .L8003F5B4
/* 2FD90 8003F590 00000000 */   nop
/* 2FD94 8003F594 74B3000C */  jal        FUN_8002cdd0
/* 2FD98 8003F598 21200000 */   addu      $a0, $zero, $zero
/* 2FD9C 8003F59C 05004014 */  bnez       $v0, .L8003F5B4
/* 2FDA0 8003F5A0 0F000224 */   addiu     $v0, $zero, 0xf
/* 2FDA4 8003F5A4 14004386 */  lh         $v1, 0x14($s2)
/* 2FDA8 8003F5A8 00000000 */  nop
/* 2FDAC 8003F5AC C8006210 */  beq        $v1, $v0, .L8003F8D0
/* 2FDB0 8003F5B0 01000224 */   addiu     $v0, $zero, 1
.L8003F5B4:
/* 2FDB4 8003F5B4 6BB3000C */  jal        FUN_8002cdac
/* 2FDB8 8003F5B8 21200000 */   addu      $a0, $zero, $zero
/* 2FDBC 8003F5BC C0004014 */  bnez       $v0, .L8003F8C0
/* 2FDC0 8003F5C0 00000000 */   nop
/* 2FDC4 8003F5C4 35B3000C */  jal        FUN_8002ccd4
/* 2FDC8 8003F5C8 21200000 */   addu      $a0, $zero, $zero
/* 2FDCC 8003F5CC BC004010 */  beqz       $v0, .L8003F8C0
/* 2FDD0 8003F5D0 00000000 */   nop
/* 2FDD4 8003F5D4 74B3000C */  jal        FUN_8002cdd0
/* 2FDD8 8003F5D8 21200000 */   addu      $a0, $zero, $zero
/* 2FDDC 8003F5DC B8004014 */  bnez       $v0, .L8003F8C0
/* 2FDE0 8003F5E0 00000000 */   nop
/* 2FDE4 8003F5E4 14004386 */  lh         $v1, 0x14($s2)
/* 2FDE8 8003F5E8 00000000 */  nop
/* 2FDEC 8003F5EC B4006004 */  bltz       $v1, .L8003F8C0
/* 2FDF0 8003F5F0 00000000 */   nop
/* 2FDF4 8003F5F4 BC0E428E */  lw         $v0, 0xebc($s2)
/* 2FDF8 8003F5F8 00000000 */  nop
/* 2FDFC 8003F5FC 2A104300 */  slt        $v0, $v0, $v1
/* 2FE00 8003F600 AF004014 */  bnez       $v0, .L8003F8C0
/* 2FE04 8003F604 04000224 */   addiu     $v0, $zero, 4
/* 2FE08 8003F608 30FE0008 */  j          .L8003F8C0
/* 2FE0C 8003F60C 040042A6 */   sh        $v0, 4($s2)
.L8003F610:
/* 2FE10 8003F610 C40E50AE */  sw         $s0, 0xec4($s2)
/* 2FE14 8003F614 B0FD0008 */  j          .L8003F6C0
/* 2FE18 8003F618 C80E51AE */   sw        $s1, 0xec8($s2)
/* 2FE1C 8003F61C 21980000 */  addu       $s3, $zero, $zero
/* 2FE20 8003F620 1580023C */  lui        $v0, %hi(D_80157328)
/* 2FE24 8003F624 28735524 */  addiu      $s5, $v0, %lo(D_80157328)
.L8003F628:
/* 2FE28 8003F628 14004286 */  lh         $v0, 0x14($s2)
/* 2FE2C 8003F62C 00000000 */  nop
/* 2FE30 8003F630 80100200 */  sll        $v0, $v0, 2
/* 2FE34 8003F634 21105500 */  addu       $v0, $v0, $s5
/* 2FE38 8003F638 0000508C */  lw         $s0, ($v0)
/* 2FE3C 8003F63C 6CAE020C */  jal        FUN_800ab9b0
/* 2FE40 8003F640 21200002 */   addu      $a0, $s0, $zero
/* 2FE44 8003F644 08A5020C */  jal        FUN_800a9420
/* 2FE48 8003F648 21204000 */   addu      $a0, $v0, $zero
/* 2FE4C 8003F64C 80100200 */  sll        $v0, $v0, 2
/* 2FE50 8003F650 21105300 */  addu       $v0, $v0, $s3
/* 2FE54 8003F654 40880200 */  sll        $s1, $v0, 1
/* 2FE58 8003F658 63AE020C */  jal        FUN_800ab98c
/* 2FE5C 8003F65C 21200002 */   addu      $a0, $s0, $zero
/* 2FE60 8003F660 02000324 */  addiu      $v1, $zero, 2
/* 2FE64 8003F664 02004314 */  bne        $v0, $v1, .L8003F670
/* 2FE68 8003F668 00000000 */   nop
/* 2FE6C 8003F66C 04003126 */  addiu      $s1, $s1, 4
.L8003F670:
/* 2FE70 8003F670 0F002006 */  bltz       $s1, .L8003F6B0
/* 2FE74 8003F674 00000000 */   nop
/* 2FE78 8003F678 8BAF020C */  jal        FUN_800abe2c
/* 2FE7C 8003F67C 00000000 */   nop
/* 2FE80 8003F680 21208002 */  addu       $a0, $s4, $zero
/* 2FE84 8003F684 83191100 */  sra        $v1, $s1, 6
/* 2FE88 8003F688 21806200 */  addu       $s0, $v1, $v0
/* 2FE8C 8003F68C 6ED5000C */  jal        FUN_800355b8
/* 2FE90 8003F690 21280002 */   addu      $a1, $s0, $zero
/* 2FE94 8003F694 3F002332 */  andi       $v1, $s1, 0x3f
/* 2FE98 8003F698 C01A0300 */  sll        $v1, $v1, 0xb
/* 2FE9C 8003F69C 21104300 */  addu       $v0, $v0, $v1
/* 2FEA0 8003F6A0 00004494 */  lhu        $a0, ($v0)
/* 2FEA4 8003F6A4 FFFF0234 */  ori        $v0, $zero, 0xffff
/* 2FEA8 8003F6A8 D9FF8210 */  beq        $a0, $v0, .L8003F610
/* 2FEAC 8003F6AC 00000000 */   nop
.L8003F6B0:
/* 2FEB0 8003F6B0 01007326 */  addiu      $s3, $s3, 1
/* 2FEB4 8003F6B4 0200622A */  slti       $v0, $s3, 2
/* 2FEB8 8003F6B8 DBFF4014 */  bnez       $v0, .L8003F628
/* 2FEBC 8003F6BC 00000000 */   nop
.L8003F6C0:
/* 2FEC0 8003F6C0 0200622A */  slti       $v0, $s3, 2
/* 2FEC4 8003F6C4 03004010 */  beqz       $v0, .L8003F6D4
/* 2FEC8 8003F6C8 04000224 */   addiu     $v0, $zero, 4
/* 2FECC 8003F6CC B7FD0008 */  j          .L8003F6DC
/* 2FED0 8003F6D0 06000324 */   addiu     $v1, $zero, 6
.L8003F6D4:
/* 2FED4 8003F6D4 03000224 */  addiu      $v0, $zero, 3
/* 2FED8 8003F6D8 05000324 */  addiu      $v1, $zero, 5
.L8003F6DC:
/* 2FEDC 8003F6DC 0E0042A6 */  sh         $v0, 0xe($s2)
/* 2FEE0 8003F6E0 040043A6 */  sh         $v1, 4($s2)
/* 2FEE4 8003F6E4 3C000224 */  addiu      $v0, $zero, 0x3c
/* 2FEE8 8003F6E8 30FE0008 */  j          .L8003F8C0
/* 2FEEC 8003F6EC E40E42AE */   sw        $v0, 0xee4($s2)
/* 2FEF0 8003F6F0 E40E428E */  lw         $v0, 0xee4($s2)
/* 2FEF4 8003F6F4 00000000 */  nop
/* 2FEF8 8003F6F8 21184000 */  addu       $v1, $v0, $zero
/* 2FEFC 8003F6FC FFFF4224 */  addiu      $v0, $v0, -1
/* 2FF00 8003F700 6F00601C */  bgtz       $v1, .L8003F8C0
/* 2FF04 8003F704 E40E42AE */   sw        $v0, 0xee4($s2)
/* 2FF08 8003F708 03000224 */  addiu      $v0, $zero, 3
/* 2FF0C 8003F70C 2FFE0008 */  j          .L8003F8BC
/* 2FF10 8003F710 0E0040A6 */   sh        $zero, 0xe($s2)
/* 2FF14 8003F714 E40E438E */  lw         $v1, 0xee4($s2)
/* 2FF18 8003F718 00000000 */  nop
/* 2FF1C 8003F71C 33006228 */  slti       $v0, $v1, 0x33
/* 2FF20 8003F720 04004014 */  bnez       $v0, .L8003F734
/* 2FF24 8003F724 2380063C */   lui       $a2, 0x8023
/* 2FF28 8003F728 FFFF6224 */  addiu      $v0, $v1, -1
/* 2FF2C 8003F72C 30FE0008 */  j          .L8003F8C0
/* 2FF30 8003F730 E40E42AE */   sw        $v0, 0xee4($s2)
.L8003F734:
/* 2FF34 8003F734 1580033C */  lui        $v1, %hi(D_80157328)
/* 2FF38 8003F738 28736324 */  addiu      $v1, $v1, %lo(D_80157328)
/* 2FF3C 8003F73C C00E448E */  lw         $a0, 0xec0($s2)
/* 2FF40 8003F740 14004286 */  lh         $v0, 0x14($s2)
/* 2FF44 8003F744 C40E458E */  lw         $a1, 0xec4($s2)
/* 2FF48 8003F748 80100200 */  sll        $v0, $v0, 2
/* 2FF4C 8003F74C 21104300 */  addu       $v0, $v0, $v1
/* 2FF50 8003F750 0000518C */  lw         $s1, ($v0)
/* 2FF54 8003F754 8ED5000C */  jal        FUN_80035638
/* 2FF58 8003F758 0080C634 */   ori       $a2, $a2, 0x8000
/* 2FF5C 8003F75C 2380043C */  lui        $a0, 0x8023
/* 2FF60 8003F760 00808434 */  ori        $a0, $a0, 0x8000
/* 2FF64 8003F764 C80E428E */  lw         $v0, 0xec8($s2)
/* 2FF68 8003F768 ADDE0334 */  ori        $v1, $zero, 0xdead
/* 2FF6C 8003F76C 3F004230 */  andi       $v0, $v0, 0x3f
/* 2FF70 8003F770 C0120200 */  sll        $v0, $v0, 0xb
/* 2FF74 8003F774 21804400 */  addu       $s0, $v0, $a0
/* 2FF78 8003F778 000003A6 */  sh         $v1, ($s0)
/* 2FF7C 8003F77C 02001026 */  addiu      $s0, $s0, 2
/* 2FF80 8003F780 CEFA0234 */  ori        $v0, $zero, 0xface
/* 2FF84 8003F784 000002A6 */  sh         $v0, ($s0)
/* 2FF88 8003F788 02001026 */  addiu      $s0, $s0, 2
/* 2FF8C 8003F78C 57AE020C */  jal        FUN_800ab95c
/* 2FF90 8003F790 21202002 */   addu      $a0, $s1, $zero
/* 2FF94 8003F794 21184000 */  addu       $v1, $v0, $zero
/* 2FF98 8003F798 07000424 */  addiu      $a0, $zero, 7
.L8003F79C:
/* 2FF9C 8003F79C 00006294 */  lhu        $v0, ($v1)
/* 2FFA0 8003F7A0 02006324 */  addiu      $v1, $v1, 2
/* 2FFA4 8003F7A4 FFFF8424 */  addiu      $a0, $a0, -1
/* 2FFA8 8003F7A8 000002A6 */  sh         $v0, ($s0)
/* 2FFAC 8003F7AC FBFF8104 */  bgez       $a0, .L8003F79C
/* 2FFB0 8003F7B0 02001026 */   addiu     $s0, $s0, 2
/* 2FFB4 8003F7B4 21202002 */  addu       $a0, $s1, $zero
/* 2FFB8 8003F7B8 91AD020C */  jal        FUN_800ab644
/* 2FFBC 8003F7BC 1000A527 */   addiu     $a1, $sp, 0x10
/* 2FFC0 8003F7C0 21284000 */  addu       $a1, $v0, $zero
/* 2FFC4 8003F7C4 0400A014 */  bnez       $a1, .L8003F7D8
/* 2FFC8 8003F7C8 21200002 */   addu      $a0, $s0, $zero
/* 2FFCC 8003F7CC 05000224 */  addiu      $v0, $zero, 5
/* 2FFD0 8003F7D0 2FFE0008 */  j          .L8003F8BC
/* 2FFD4 8003F7D4 0E0042A6 */   sh        $v0, 0xe($s2)
.L8003F7D8:
/* 2FFD8 8003F7D8 80FFA324 */  addiu      $v1, $a1, -0x80
/* 2FFDC 8003F7DC 25106400 */  or         $v0, $v1, $a0
/* 2FFE0 8003F7E0 03004230 */  andi       $v0, $v0, 3
/* 2FFE4 8003F7E4 16004010 */  beqz       $v0, .L8003F840
/* 2FFE8 8003F7E8 600FA224 */   addiu     $v0, $a1, 0xf60
.L8003F7EC:
/* 2FFEC 8003F7EC 03006588 */  lwl        $a1, 3($v1)
/* 2FFF0 8003F7F0 00006598 */  lwr        $a1, ($v1)
/* 2FFF4 8003F7F4 07006688 */  lwl        $a2, 7($v1)
/* 2FFF8 8003F7F8 04006698 */  lwr        $a2, 4($v1)
/* 2FFFC 8003F7FC 0B006788 */  lwl        $a3, 0xb($v1)
/* 30000 8003F800 08006798 */  lwr        $a3, 8($v1)
/* 30004 8003F804 0F006888 */  lwl        $t0, 0xf($v1)
/* 30008 8003F808 0C006898 */  lwr        $t0, 0xc($v1)
/* 3000C 8003F80C 030085A8 */  swl        $a1, 3($a0)
/* 30010 8003F810 000085B8 */  swr        $a1, ($a0)
/* 30014 8003F814 070086A8 */  swl        $a2, 7($a0)
/* 30018 8003F818 040086B8 */  swr        $a2, 4($a0)
/* 3001C 8003F81C 0B0087A8 */  swl        $a3, 0xb($a0)
/* 30020 8003F820 080087B8 */  swr        $a3, 8($a0)
/* 30024 8003F824 0F0088A8 */  swl        $t0, 0xf($a0)
/* 30028 8003F828 0C0088B8 */  swr        $t0, 0xc($a0)
/* 3002C 8003F82C 10006324 */  addiu      $v1, $v1, 0x10
/* 30030 8003F830 EEFF6214 */  bne        $v1, $v0, .L8003F7EC
/* 30034 8003F834 10008424 */   addiu     $a0, $a0, 0x10
/* 30038 8003F838 1CFE0008 */  j          .L8003F870
/* 3003C 8003F83C 2380063C */   lui       $a2, 0x8023
.L8003F840:
/* 30040 8003F840 0000658C */  lw         $a1, ($v1)
/* 30044 8003F844 0400668C */  lw         $a2, 4($v1)
/* 30048 8003F848 0800678C */  lw         $a3, 8($v1)
/* 3004C 8003F84C 0C00688C */  lw         $t0, 0xc($v1)
/* 30050 8003F850 000085AC */  sw         $a1, ($a0)
/* 30054 8003F854 040086AC */  sw         $a2, 4($a0)
/* 30058 8003F858 080087AC */  sw         $a3, 8($a0)
/* 3005C 8003F85C 0C0088AC */  sw         $t0, 0xc($a0)
/* 30060 8003F860 10006324 */  addiu      $v1, $v1, 0x10
/* 30064 8003F864 F6FF6214 */  bne        $v1, $v0, .L8003F840
/* 30068 8003F868 10008424 */   addiu     $a0, $a0, 0x10
/* 3006C 8003F86C 2380063C */  lui        $a2, 0x8023
.L8003F870:
/* 30070 8003F870 03006288 */  lwl        $v0, 3($v1)
/* 30074 8003F874 00006298 */  lwr        $v0, ($v1)
/* 30078 8003F878 07006588 */  lwl        $a1, 7($v1)
/* 3007C 8003F87C 04006598 */  lwr        $a1, 4($v1)
/* 30080 8003F880 0B006788 */  lwl        $a3, 0xb($v1)
/* 30084 8003F884 08006798 */  lwr        $a3, 8($v1)
/* 30088 8003F888 030082A8 */  swl        $v0, 3($a0)
/* 3008C 8003F88C 000082B8 */  swr        $v0, ($a0)
/* 30090 8003F890 070085A8 */  swl        $a1, 7($a0)
/* 30094 8003F894 040085B8 */  swr        $a1, 4($a0)
/* 30098 8003F898 0B0087A8 */  swl        $a3, 0xb($a0)
/* 3009C 8003F89C 080087B8 */  swr        $a3, 8($a0)
/* 300A0 8003F8A0 C00E448E */  lw         $a0, 0xec0($s2)
/* 300A4 8003F8A4 C40E458E */  lw         $a1, 0xec4($s2)
/* 300A8 8003F8A8 65D4000C */  jal        FUN_80035194
/* 300AC 8003F8AC 0080C634 */   ori       $a2, $a2, 0x8000
/* 300B0 8003F8B0 06000324 */  addiu      $v1, $zero, 6
/* 300B4 8003F8B4 05000224 */  addiu      $v0, $zero, 5
/* 300B8 8003F8B8 0E0043A6 */  sh         $v1, 0xe($s2)
.L8003F8BC:
/* 300BC 8003F8BC 040042A6 */  sh         $v0, 4($s2)
.L8003F8C0:
/* 300C0 8003F8C0 14004486 */  lh         $a0, 0x14($s2)
/* 300C4 8003F8C4 3DFE000C */  jal        FUN_8003f8f4
/* 300C8 8003F8C8 00000000 */   nop
/* 300CC 8003F8CC 21100000 */  addu       $v0, $zero, $zero
.L8003F8D0:
/* 300D0 8003F8D0 2811BF8F */  lw         $ra, 0x1128($sp)
/* 300D4 8003F8D4 2411B58F */  lw         $s5, 0x1124($sp)
/* 300D8 8003F8D8 2011B48F */  lw         $s4, 0x1120($sp)
/* 300DC 8003F8DC 1C11B38F */  lw         $s3, 0x111c($sp)
/* 300E0 8003F8E0 1811B28F */  lw         $s2, 0x1118($sp)
/* 300E4 8003F8E4 1411B18F */  lw         $s1, 0x1114($sp)
/* 300E8 8003F8E8 1011B08F */  lw         $s0, 0x1110($sp)
/* 300EC 8003F8EC 0800E003 */  jr         $ra
/* 300F0 8003F8F0 3011BD27 */   addiu     $sp, $sp, 0x1130
