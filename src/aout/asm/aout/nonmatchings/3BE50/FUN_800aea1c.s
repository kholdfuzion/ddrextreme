.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aea1c
/* 9F21C 800AEA1C B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 9F220 800AEA20 1D80023C */  lui        $v0, 0x801d
/* 9F224 800AEA24 3400B3AF */  sw         $s3, 0x34($sp)
/* 9F228 800AEA28 01001324 */  addiu      $s3, $zero, 1
/* 9F22C 800AEA2C 1D80033C */  lui        $v1, %hi(D_801D0098)
/* 9F230 800AEA30 98006324 */  addiu      $v1, $v1, %lo(D_801D0098)
/* 9F234 800AEA34 0C106324 */  addiu      $v1, $v1, 0x100c
/* 9F238 800AEA38 01000424 */  addiu      $a0, $zero, 1
/* 9F23C 800AEA3C 480044A0 */  sb         $a0, 0x48($v0)
/* 9F240 800AEA40 48004224 */  addiu      $v0, $v0, 0x48
/* 9F244 800AEA44 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 9F248 800AEA48 4800BEAF */  sw         $fp, 0x48($sp)
/* 9F24C 800AEA4C 4400B7AF */  sw         $s7, 0x44($sp)
/* 9F250 800AEA50 4000B6AF */  sw         $s6, 0x40($sp)
/* 9F254 800AEA54 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 9F258 800AEA58 3800B4AF */  sw         $s4, 0x38($sp)
/* 9F25C 800AEA5C 3000B2AF */  sw         $s2, 0x30($sp)
/* 9F260 800AEA60 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 9F264 800AEA64 2800B0AF */  sw         $s0, 0x28($sp)
/* 9F268 800AEA68 1800A0AF */  sw         $zero, 0x18($sp)
/* 9F26C 800AEA6C 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 9F270 800AEA70 1000A0AF */  sw         $zero, 0x10($sp)
/* 9F274 800AEA74 1400A0AF */  sw         $zero, 0x14($sp)
/* 9F278 800AEA78 020040A0 */  sb         $zero, 2($v0)
.L800AEA7C:
/* 9F27C 800AEA7C 000060A0 */  sb         $zero, ($v1)
/* 9F280 800AEA80 FFFF7326 */  addiu      $s3, $s3, -1
/* 9F284 800AEA84 FDFF6106 */  bgez       $s3, .L800AEA7C
/* 9F288 800AEA88 F4F76324 */   addiu     $v1, $v1, -0x80c
/* 9F28C 800AEA8C 1D80023C */  lui        $v0, %hi(D_801D0048)
/* 9F290 800AEA90 48004924 */  addiu      $t1, $v0, %lo(D_801D0048)
/* 9F294 800AEA94 34002281 */  lb         $v0, 0x34($t1)
/* 9F298 800AEA98 00000000 */  nop
/* 9F29C 800AEA9C 17004014 */  bnez       $v0, .L800AEAFC
/* 9F2A0 800AEAA0 1D80033C */   lui       $v1, %hi(D_801D0048)
/* 9F2A4 800AEAA4 3000228D */  lw         $v0, 0x30($t1)
/* 9F2A8 800AEAA8 00000000 */  nop
/* 9F2AC 800AEAAC 14004014 */  bnez       $v0, .L800AEB00
/* 9F2B0 800AEAB0 48006724 */   addiu     $a3, $v1, %lo(D_801D0048)
/* 9F2B4 800AEAB4 1D80043C */  lui        $a0, %hi(D_801D2378)
/* 9F2B8 800AEAB8 78238324 */  addiu      $v1, $a0, %lo(D_801D2378)
/* 9F2BC 800AEABC 36002495 */  lhu        $a0, 0x36($t1)
/* 9F2C0 800AEAC0 24002595 */  lhu        $a1, 0x24($t1)
/* 9F2C4 800AEAC4 26002695 */  lhu        $a2, 0x26($t1)
/* 9F2C8 800AEAC8 28002791 */  lbu        $a3, 0x28($t1)
/* 9F2CC 800AEACC 2C00288D */  lw         $t0, 0x2c($t1)
/* 9F2D0 800AEAD0 2000298D */  lw         $t1, 0x20($t1)
/* 9F2D4 800AEAD4 01000224 */  addiu      $v0, $zero, 1
/* 9F2D8 800AEAD8 070062A0 */  sb         $v0, 7($v1)
/* 9F2DC 800AEADC 1D80023C */  lui        $v0, %hi(D_801D2378)
/* 9F2E0 800AEAE0 782344A4 */  sh         $a0, %lo(D_801D2378)($v0)
/* 9F2E4 800AEAE4 020065A4 */  sh         $a1, 2($v1)
/* 9F2E8 800AEAE8 040066A4 */  sh         $a2, 4($v1)
/* 9F2EC 800AEAEC 060067A0 */  sb         $a3, 6($v1)
/* 9F2F0 800AEAF0 080068AC */  sw         $t0, 8($v1)
/* 9F2F4 800AEAF4 0C0069AC */  sw         $t1, 0xc($v1)
/* 9F2F8 800AEAF8 1D80033C */  lui        $v1, %hi(D_801D0048)
.L800AEAFC:
/* 9F2FC 800AEAFC 48006724 */  addiu      $a3, $v1, %lo(D_801D0048)
.L800AEB00:
/* 9F300 800AEB00 3000E28C */  lw         $v0, 0x30($a3)
/* 9F304 800AEB04 10000424 */  addiu      $a0, $zero, 0x10
/* 9F308 800AEB08 2000A4AF */  sw         $a0, 0x20($sp)
/* 9F30C 800AEB0C 2000E38C */  lw         $v1, 0x20($a3)
/* 9F310 800AEB10 1C00E58C */  lw         $a1, 0x1c($a3)
/* 9F314 800AEB14 C28A0200 */  srl        $s1, $v0, 0xb
/* 9F318 800AEB18 C0221100 */  sll        $a0, $s1, 0xb
/* 9F31C 800AEB1C 23A86400 */  subu       $s5, $v1, $a0
/* 9F320 800AEB20 21B0A002 */  addu       $s6, $s5, $zero
/* 9F324 800AEB24 2C00E28C */  lw         $v0, 0x2c($a3)
/* 9F328 800AEB28 3500E380 */  lb         $v1, 0x35($a3)
/* 9F32C 800AEB2C 21B8B100 */  addu       $s7, $a1, $s1
/* 9F330 800AEB30 21F04400 */  addu       $fp, $v0, $a0
/* 9F334 800AEB34 01000224 */  addiu      $v0, $zero, 1
/* 9F338 800AEB38 04006214 */  bne        $v1, $v0, .L800AEB4C
/* 9F33C 800AEB3C 3000E4AC */   sw        $a0, 0x30($a3)
/* 9F340 800AEB40 21B8A400 */  addu       $s7, $a1, $a0
/* 9F344 800AEB44 04000224 */  addiu      $v0, $zero, 4
/* 9F348 800AEB48 2000A2AF */  sw         $v0, 0x20($sp)
.L800AEB4C:
/* 9F34C 800AEB4C 8501A012 */  beqz       $s5, .L800AF164
/* 9F350 800AEB50 1D80043C */   lui       $a0, 0x801d
.L800AEB54:
/* 9F354 800AEB54 1D80103C */  lui        $s0, %hi(D_801D0098)
/* 9F358 800AEB58 98001026 */  addiu      $s0, $s0, %lo(D_801D0098)
/* 9F35C 800AEB5C 01001324 */  addiu      $s3, $zero, 1
.L800AEB60:
/* 9F360 800AEB60 00080282 */  lb         $v0, 0x800($s0)
/* 9F364 800AEB64 01000324 */  addiu      $v1, $zero, 1
/* 9F368 800AEB68 07004314 */  bne        $v0, $v1, .L800AEB88
/* 9F36C 800AEB6C 00000000 */   nop
/* 9F370 800AEB70 02080486 */  lh         $a0, 0x802($s0)
/* 9F374 800AEB74 E4C7020C */  jal        FUN_800b1f90
/* 9F378 800AEB78 00000000 */   nop
/* 9F37C 800AEB7C 02004014 */  bnez       $v0, .L800AEB88
/* 9F380 800AEB80 02000424 */   addiu     $a0, $zero, 2
/* 9F384 800AEB84 000804A2 */  sb         $a0, 0x800($s0)
.L800AEB88:
/* 9F388 800AEB88 FFFF7326 */  addiu      $s3, $s3, -1
/* 9F38C 800AEB8C F4FF6106 */  bgez       $s3, .L800AEB60
/* 9F390 800AEB90 0C081026 */   addiu     $s0, $s0, 0x80c
/* 9F394 800AEB94 21980000 */  addu       $s3, $zero, $zero
/* 9F398 800AEB98 1D80023C */  lui        $v0, %hi(D_801D0098)
/* 9F39C 800AEB9C 98005124 */  addiu      $s1, $v0, %lo(D_801D0098)
.L800AEBA0:
/* 9F3A0 800AEBA0 00082382 */  lb         $v1, 0x800($s1)
/* 9F3A4 800AEBA4 03000224 */  addiu      $v0, $zero, 3
/* 9F3A8 800AEBA8 3F006214 */  bne        $v1, $v0, .L800AECA8
/* 9F3AC 800AEBAC 00000000 */   nop
/* 9F3B0 800AEBB0 02082486 */  lh         $a0, 0x802($s1)
/* 9F3B4 800AEBB4 9FC3020C */  jal        FUN_800b0e7c
/* 9F3B8 800AEBB8 00000000 */   nop
/* 9F3BC 800AEBBC 02000324 */  addiu      $v1, $zero, 2
/* 9F3C0 800AEBC0 39004314 */  bne        $v0, $v1, .L800AECA8
/* 9F3C4 800AEBC4 00000000 */   nop
/* 9F3C8 800AEBC8 1C00A28F */  lw         $v0, 0x1c($sp)
/* 9F3CC 800AEBCC 0408238E */  lw         $v1, 0x804($s1)
/* 9F3D0 800AEBD0 21204000 */  addu       $a0, $v0, $zero
/* 9F3D4 800AEBD4 01008424 */  addiu      $a0, $a0, 1
/* 9F3D8 800AEBD8 23A8A302 */  subu       $s5, $s5, $v1
/* 9F3DC 800AEBDC 1C00A4AF */  sw         $a0, 0x1c($sp)
/* 9F3E0 800AEBE0 000820A2 */  sb         $zero, 0x800($s1)
/* 9F3E4 800AEBE4 2000A38F */  lw         $v1, 0x20($sp)
/* 9F3E8 800AEBE8 00000000 */  nop
/* 9F3EC 800AEBEC 2B104300 */  sltu       $v0, $v0, $v1
/* 9F3F0 800AEBF0 03004010 */  beqz       $v0, .L800AEC00
/* 9F3F4 800AEBF4 1D80043C */   lui       $a0, %hi(D_801D0048)
/* 9F3F8 800AEBF8 2F00A016 */  bnez       $s5, .L800AECB8
/* 9F3FC 800AEBFC 00000000 */   nop
.L800AEC00:
/* 9F400 800AEC00 48009024 */  addiu      $s0, $a0, %lo(D_801D0048)
/* 9F404 800AEC04 34000282 */  lb         $v0, 0x34($s0)
/* 9F408 800AEC08 00000000 */  nop
/* 9F40C 800AEC0C 26004014 */  bnez       $v0, .L800AECA8
/* 9F410 800AEC10 00000000 */   nop
/* 9F414 800AEC14 1800A28F */  lw         $v0, 0x18($sp)
/* 9F418 800AEC18 00000000 */  nop
/* 9F41C 800AEC1C 22004014 */  bnez       $v0, .L800AECA8
/* 9F420 800AEC20 00000000 */   nop
/* 9F424 800AEC24 56BA020C */  jal        FUN_800ae958
/* 9F428 800AEC28 00000000 */   nop
/* 9F42C 800AEC2C 2C00028E */  lw         $v0, 0x2c($s0)
/* 9F430 800AEC30 3000048E */  lw         $a0, 0x30($s0)
/* 9F434 800AEC34 6EC4020C */  jal        FUN_800b11b8
/* 9F438 800AEC38 21204400 */   addu      $a0, $v0, $a0
/* 9F43C 800AEC3C 2C00048E */  lw         $a0, 0x2c($s0)
/* 9F440 800AEC40 2000028E */  lw         $v0, 0x20($s0)
/* 9F444 800AEC44 00000000 */  nop
/* 9F448 800AEC48 21208200 */  addu       $a0, $a0, $v0
/* 9F44C 800AEC4C 7EC4020C */  jal        FUN_800b11f8
/* 9F450 800AEC50 FFFF8424 */   addiu     $a0, $a0, -1
/* 9F454 800AEC54 24000496 */  lhu        $a0, 0x24($s0)
/* 9F458 800AEC58 26000596 */  lhu        $a1, 0x26($s0)
/* 9F45C 800AEC5C 28000692 */  lbu        $a2, 0x28($s0)
/* 9F460 800AEC60 87C5020C */  jal        FUN_800b161c
/* 9F464 800AEC64 00000000 */   nop
/* 9F468 800AEC68 4000028E */  lw         $v0, 0x40($s0)
/* 9F46C 800AEC6C 00000000 */  nop
/* 9F470 800AEC70 06004010 */  beqz       $v0, .L800AEC8C
/* 9F474 800AEC74 00000000 */   nop
/* 9F478 800AEC78 1400048E */  lw         $a0, 0x14($s0)
/* 9F47C 800AEC7C 09F84000 */  jalr       $v0
/* 9F480 800AEC80 00000000 */   nop
/* 9F484 800AEC84 26BB0208 */  j          .L800AEC98
/* 9F488 800AEC88 1D80033C */   lui       $v1, 0x801d
.L800AEC8C:
/* 9F48C 800AEC8C 8EC4020C */  jal        FUN_800b1238
/* 9F490 800AEC90 00000000 */   nop
/* 9F494 800AEC94 1D80033C */  lui        $v1, %hi(D_801D0048)
.L800AEC98:
/* 9F498 800AEC98 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* 9F49C 800AEC9C 01000424 */  addiu      $a0, $zero, 1
/* 9F4A0 800AECA0 0A0060A0 */  sb         $zero, 0xa($v1)
/* 9F4A4 800AECA4 1800A4AF */  sw         $a0, 0x18($sp)
.L800AECA8:
/* 9F4A8 800AECA8 01007326 */  addiu      $s3, $s3, 1
/* 9F4AC 800AECAC 0200622A */  slti       $v0, $s3, 2
/* 9F4B0 800AECB0 BBFF4014 */  bnez       $v0, .L800AEBA0
/* 9F4B4 800AECB4 0C083126 */   addiu     $s1, $s1, 0x80c
.L800AECB8:
/* 9F4B8 800AECB8 21980000 */  addu       $s3, $zero, $zero
/* 9F4BC 800AECBC 1D80023C */  lui        $v0, %hi(D_801D0098)
/* 9F4C0 800AECC0 98005124 */  addiu      $s1, $v0, %lo(D_801D0098)
/* 9F4C4 800AECC4 21282002 */  addu       $a1, $s1, $zero
/* 9F4C8 800AECC8 21300000 */  addu       $a2, $zero, $zero
.L800AECCC:
/* 9F4CC 800AECCC 21802002 */  addu       $s0, $s1, $zero
/* 9F4D0 800AECD0 00080282 */  lb         $v0, 0x800($s0)
/* 9F4D4 800AECD4 00000000 */  nop
/* 9F4D8 800AECD8 3A004014 */  bnez       $v0, .L800AEDC4
/* 9F4DC 800AECDC 00000000 */   nop
/* 9F4E0 800AECE0 3D00C012 */  beqz       $s6, .L800AEDD8
/* 9F4E4 800AECE4 2110A600 */   addu      $v0, $a1, $a2
/* 9F4E8 800AECE8 1000A38F */  lw         $v1, 0x10($sp)
/* 9F4EC 800AECEC 2120C002 */  addu       $a0, $s6, $zero
/* 9F4F0 800AECF0 080843AC */  sw         $v1, 0x808($v0)
/* 9F4F4 800AECF4 01006324 */  addiu      $v1, $v1, 1
/* 9F4F8 800AECF8 0408A224 */  addiu      $v0, $a1, 0x804
/* 9F4FC 800AECFC 1000A3AF */  sw         $v1, 0x10($sp)
/* 9F500 800AED00 0108C32E */  sltiu      $v1, $s6, 0x801
/* 9F504 800AED04 02006014 */  bnez       $v1, .L800AED10
/* 9F508 800AED08 2190C200 */   addu      $s2, $a2, $v0
/* 9F50C 800AED0C 00080424 */  addiu      $a0, $zero, 0x800
.L800AED10:
/* 9F510 800AED10 000044AE */  sw         $a0, ($s2)
/* 9F514 800AED14 1D80043C */  lui        $a0, %hi(D_801D0048)
/* 9F518 800AED18 48008424 */  addiu      $a0, $a0, %lo(D_801D0048)
/* 9F51C 800AED1C 35008290 */  lbu        $v0, 0x35($a0)
/* 9F520 800AED20 01001424 */  addiu      $s4, $zero, 1
/* 9F524 800AED24 010802A2 */  sb         $v0, 0x801($s0)
/* 9F528 800AED28 00160200 */  sll        $v0, $v0, 0x18
/* 9F52C 800AED2C 03160200 */  sra        $v0, $v0, 0x18
/* 9F530 800AED30 C0005410 */  beq        $v0, $s4, .L800AF034
/* 9F534 800AED34 23109302 */   subu      $v0, $s4, $s3
/* 9F538 800AED38 C0190200 */  sll        $v1, $v0, 7
/* 9F53C 800AED3C 21186200 */  addu       $v1, $v1, $v0
/* 9F540 800AED40 80180300 */  sll        $v1, $v1, 2
/* 9F544 800AED44 23186200 */  subu       $v1, $v1, $v0
/* 9F548 800AED48 80180300 */  sll        $v1, $v1, 2
/* 9F54C 800AED4C 21186500 */  addu       $v1, $v1, $a1
/* 9F550 800AED50 00086280 */  lb         $v0, 0x800($v1)
/* 9F554 800AED54 00000000 */  nop
/* 9F558 800AED58 15005410 */  beq        $v0, $s4, .L800AEDB0
/* 9F55C 800AED5C 00000000 */   nop
/* 9F560 800AED60 0000438E */  lw         $v1, ($s2)
/* 9F564 800AED64 00000000 */  nop
/* 9F568 800AED68 FF076224 */  addiu      $v0, $v1, 0x7ff
/* 9F56C 800AED6C 03004104 */  bgez       $v0, .L800AED7C
/* 9F570 800AED70 C38A0200 */   sra       $s1, $v0, 0xb
/* 9F574 800AED74 FE0F6224 */  addiu      $v0, $v1, 0xffe
/* 9F578 800AED78 C38A0200 */  sra        $s1, $v0, 0xb
.L800AED7C:
/* 9F57C 800AED7C 2120E002 */  addu       $a0, $s7, $zero
/* 9F580 800AED80 21282002 */  addu       $a1, $s1, $zero
/* 9F584 800AED84 C0C7020C */  jal        FUN_800b1f00
/* 9F588 800AED88 21300002 */   addu      $a2, $s0, $zero
/* 9F58C 800AED8C 020802A6 */  sh         $v0, 0x802($s0)
/* 9F590 800AED90 00140200 */  sll        $v0, $v0, 0x10
/* 9F594 800AED94 A2004104 */  bgez       $v0, .L800AF020
/* 9F598 800AED98 00000000 */   nop
/* 9F59C 800AED9C 1000A28F */  lw         $v0, 0x10($sp)
/* 9F5A0 800AEDA0 00000000 */  nop
/* 9F5A4 800AEDA4 FFFF4224 */  addiu      $v0, $v0, -1
/* 9F5A8 800AEDA8 76BB0208 */  j          .L800AEDD8
/* 9F5AC 800AEDAC 1000A2AF */   sw        $v0, 0x10($sp)
.L800AEDB0:
/* 9F5B0 800AEDB0 1000A38F */  lw         $v1, 0x10($sp)
/* 9F5B4 800AEDB4 00000000 */  nop
/* 9F5B8 800AEDB8 FFFF6324 */  addiu      $v1, $v1, -1
/* 9F5BC 800AEDBC 76BB0208 */  j          .L800AEDD8
/* 9F5C0 800AEDC0 1000A3AF */   sw        $v1, 0x10($sp)
.L800AEDC4:
/* 9F5C4 800AEDC4 0C081126 */  addiu      $s1, $s0, 0x80c
/* 9F5C8 800AEDC8 01007326 */  addiu      $s3, $s3, 1
/* 9F5CC 800AEDCC 0200622A */  slti       $v0, $s3, 2
/* 9F5D0 800AEDD0 BEFF4014 */  bnez       $v0, .L800AECCC
/* 9F5D4 800AEDD4 0C08C624 */   addiu     $a2, $a2, 0x80c
.L800AEDD8:
/* 9F5D8 800AEDD8 79C5020C */  jal        FUN_800b15e4
/* 9F5DC 800AEDDC 21980000 */   addu      $s3, $zero, $zero
/* 9F5E0 800AEDE0 21384000 */  addu       $a3, $v0, $zero
/* 9F5E4 800AEDE4 1D80043C */  lui        $a0, %hi(D_801D0098)
/* 9F5E8 800AEDE8 98009124 */  addiu      $s1, $a0, %lo(D_801D0098)
/* 9F5EC 800AEDEC 21402002 */  addu       $t0, $s1, $zero
/* 9F5F0 800AEDF0 21300000 */  addu       $a2, $zero, $zero
/* 9F5F4 800AEDF4 01000324 */  addiu      $v1, $zero, 1
/* 9F5F8 800AEDF8 C0110300 */  sll        $v0, $v1, 7
/* 9F5FC 800AEDFC 01004224 */  addiu      $v0, $v0, 1
/* 9F600 800AEE00 80100200 */  sll        $v0, $v0, 2
/* 9F604 800AEE04 FFFF4224 */  addiu      $v0, $v0, -1
/* 9F608 800AEE08 80100200 */  sll        $v0, $v0, 2
/* 9F60C 800AEE0C 00082326 */  addiu      $v1, $s1, 0x800
/* 9F610 800AEE10 21284300 */  addu       $a1, $v0, $v1
.L800AEE14:
/* 9F614 800AEE14 00082382 */  lb         $v1, 0x800($s1)
/* 9F618 800AEE18 02000224 */  addiu      $v0, $zero, 2
/* 9F61C 800AEE1C 28006214 */  bne        $v1, $v0, .L800AEEC0
/* 9F620 800AEE20 03001224 */   addiu     $s2, $zero, 3
/* 9F624 800AEE24 0000A280 */  lb         $v0, ($a1)
/* 9F628 800AEE28 00000000 */  nop
/* 9F62C 800AEE2C 24005210 */  beq        $v0, $s2, .L800AEEC0
/* 9F630 800AEE30 21100601 */   addu      $v0, $t0, $a2
/* 9F634 800AEE34 0808438C */  lw         $v1, 0x808($v0)
/* 9F638 800AEE38 1400A48F */  lw         $a0, 0x14($sp)
/* 9F63C 800AEE3C 00000000 */  nop
/* 9F640 800AEE40 1F006414 */  bne        $v1, $a0, .L800AEEC0
/* 9F644 800AEE44 00000000 */   nop
/* 9F648 800AEE48 0408228E */  lw         $v0, 0x804($s1)
/* 9F64C 800AEE4C 00000000 */  nop
/* 9F650 800AEE50 01004224 */  addiu      $v0, $v0, 1
/* 9F654 800AEE54 C21F0200 */  srl        $v1, $v0, 0x1f
/* 9F658 800AEE58 21104300 */  addu       $v0, $v0, $v1
/* 9F65C 800AEE5C 1D80033C */  lui        $v1, %hi(D_801D0048)
/* 9F660 800AEE60 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* 9F664 800AEE64 1800648C */  lw         $a0, 0x18($v1)
/* 9F668 800AEE68 00000000 */  nop
/* 9F66C 800AEE6C 06008010 */  beqz       $a0, .L800AEE88
/* 9F670 800AEE70 43800200 */   sra       $s0, $v0, 1
/* 9F674 800AEE74 40101000 */  sll        $v0, $s0, 1
/* 9F678 800AEE78 2110C203 */  addu       $v0, $fp, $v0
/* 9F67C 800AEE7C 2B10E200 */  sltu       $v0, $a3, $v0
/* 9F680 800AEE80 0F004014 */  bnez       $v0, .L800AEEC0
/* 9F684 800AEE84 00000000 */   nop
.L800AEE88:
/* 9F688 800AEE88 21202002 */  addu       $a0, $s1, $zero
/* 9F68C 800AEE8C 21280002 */  addu       $a1, $s0, $zero
/* 9F690 800AEE90 74C3020C */  jal        FUN_800b0dd0
/* 9F694 800AEE94 2130C003 */   addu      $a2, $fp, $zero
/* 9F698 800AEE98 020822A6 */  sh         $v0, 0x802($s1)
/* 9F69C 800AEE9C 00140200 */  sll        $v0, $v0, 0x10
/* 9F6A0 800AEEA0 0D004004 */  bltz       $v0, .L800AEED8
/* 9F6A4 800AEEA4 40101000 */   sll       $v0, $s0, 1
/* 9F6A8 800AEEA8 1400A48F */  lw         $a0, 0x14($sp)
/* 9F6AC 800AEEAC 21F0C203 */  addu       $fp, $fp, $v0
/* 9F6B0 800AEEB0 01008424 */  addiu      $a0, $a0, 1
/* 9F6B4 800AEEB4 1400A4AF */  sw         $a0, 0x14($sp)
/* 9F6B8 800AEEB8 B6BB0208 */  j          .L800AEED8
/* 9F6BC 800AEEBC 000832A2 */   sb        $s2, 0x800($s1)
.L800AEEC0:
/* 9F6C0 800AEEC0 0C083126 */  addiu      $s1, $s1, 0x80c
/* 9F6C4 800AEEC4 0C08C624 */  addiu      $a2, $a2, 0x80c
/* 9F6C8 800AEEC8 01007326 */  addiu      $s3, $s3, 1
/* 9F6CC 800AEECC 0200622A */  slti       $v0, $s3, 2
/* 9F6D0 800AEED0 D0FF4014 */  bnez       $v0, .L800AEE14
/* 9F6D4 800AEED4 F4F7A524 */   addiu     $a1, $a1, -0x80c
.L800AEED8:
/* 9F6D8 800AEED8 BFC2020C */  jal        ChangeTh
/* 9F6DC 800AEEDC 00FF043C */   lui       $a0, %hi(D_FF000003)
/* 9F6E0 800AEEE0 1D80023C */  lui        $v0, %hi(D_801D0048)
/* 9F6E4 800AEEE4 48004424 */  addiu      $a0, $v0, %lo(D_801D0048)
/* 9F6E8 800AEEE8 03008280 */  lb         $v0, %lo(D_FF000003)($a0)
/* 9F6EC 800AEEEC 00000000 */  nop
/* 9F6F0 800AEEF0 07004010 */  beqz       $v0, .L800AEF10
/* 9F6F4 800AEEF4 1D80033C */   lui       $v1, 0x801d
/* 9F6F8 800AEEF8 0C00838C */  lw         $v1, 0xc($a0)
/* 9F6FC 800AEEFC 1400828C */  lw         $v0, 0x14($a0)
/* 9F700 800AEF00 00000000 */  nop
/* 9F704 800AEF04 02006210 */  beq        $v1, $v0, .L800AEF10
/* 9F708 800AEF08 1D80033C */   lui       $v1, %hi(D_801D0048)
/* 9F70C 800AEF0C 030080A0 */  sb         $zero, 3($a0)
.L800AEF10:
/* 9F710 800AEF10 48006424 */  addiu      $a0, $v1, %lo(D_801D0048)
/* 9F714 800AEF14 4800628C */  lw         $v0, 0x48($v1)
/* 9F718 800AEF18 FFFF033C */  lui        $v1, 0xffff
/* 9F71C 800AEF1C 24104300 */  and        $v0, $v0, $v1
/* 9F720 800AEF20 4E004010 */  beqz       $v0, .L800AF05C
/* 9F724 800AEF24 00000000 */   nop
/* 9F728 800AEF28 03008280 */  lb         $v0, 3($a0)
/* 9F72C 800AEF2C 00000000 */  nop
/* 9F730 800AEF30 04004010 */  beqz       $v0, .L800AEF44
/* 9F734 800AEF34 FFFF0224 */   addiu     $v0, $zero, -1
/* 9F738 800AEF38 020080A0 */  sb         $zero, 2($a0)
/* 9F73C 800AEF3C 030080A0 */  sb         $zero, 3($a0)
/* 9F740 800AEF40 140082AC */  sw         $v0, 0x14($a0)
.L800AEF44:
/* 9F744 800AEF44 01001124 */  addiu      $s1, $zero, 1
/* 9F748 800AEF48 01001024 */  addiu      $s0, $zero, 1
/* 9F74C 800AEF4C 01000624 */  addiu      $a2, $zero, 1
/* 9F750 800AEF50 03000524 */  addiu      $a1, $zero, 3
/* 9F754 800AEF54 1D80043C */  lui        $a0, %hi(D_801D0098)
/* 9F758 800AEF58 98008224 */  addiu      $v0, $a0, %lo(D_801D0098)
/* 9F75C 800AEF5C 01000424 */  addiu      $a0, $zero, 1
.L800AEF60:
/* 9F760 800AEF60 00084380 */  lb         $v1, 0x800($v0)
/* 9F764 800AEF64 00000000 */  nop
/* 9F768 800AEF68 05006610 */  beq        $v1, $a2, .L800AEF80
/* 9F76C 800AEF6C 00000000 */   nop
/* 9F770 800AEF70 05006510 */  beq        $v1, $a1, .L800AEF88
/* 9F774 800AEF74 00000000 */   nop
/* 9F778 800AEF78 E4BB0208 */  j          .L800AEF90
/* 9F77C 800AEF7C 0C084224 */   addiu     $v0, $v0, 0x80c
.L800AEF80:
/* 9F780 800AEF80 E3BB0208 */  j          .L800AEF8C
/* 9F784 800AEF84 21800000 */   addu      $s0, $zero, $zero
.L800AEF88:
/* 9F788 800AEF88 21880000 */  addu       $s1, $zero, $zero
.L800AEF8C:
/* 9F78C 800AEF8C 0C084224 */  addiu      $v0, $v0, 0x80c
.L800AEF90:
/* 9F790 800AEF90 FFFF8424 */  addiu      $a0, $a0, -1
/* 9F794 800AEF94 F2FF8104 */  bgez       $a0, .L800AEF60
/* 9F798 800AEF98 00000000 */   nop
/* 9F79C 800AEF9C 05000012 */  beqz       $s0, .L800AEFB4
/* 9F7A0 800AEFA0 00000000 */   nop
/* 9F7A4 800AEFA4 1A002016 */  bnez       $s1, .L800AF010
/* 9F7A8 800AEFA8 00000000 */   nop
.L800AEFAC:
/* 9F7AC 800AEFAC 09000016 */  bnez       $s0, .L800AEFD4
/* 9F7B0 800AEFB0 00000000 */   nop
.L800AEFB4:
/* 9F7B4 800AEFB4 1D80023C */  lui        $v0, %hi(D_801D0048)
.L800AEFB8:
/* 9F7B8 800AEFB8 48004224 */  addiu      $v0, $v0, %lo(D_801D0048)
/* 9F7BC 800AEFBC 3800448C */  lw         $a0, 0x38($v0)
/* 9F7C0 800AEFC0 B7C2020C */  jal        TestEvent
/* 9F7C4 800AEFC4 00000000 */   nop
/* 9F7C8 800AEFC8 02004010 */  beqz       $v0, .L800AEFD4
/* 9F7CC 800AEFCC 00000000 */   nop
/* 9F7D0 800AEFD0 01001024 */  addiu      $s0, $zero, 1
.L800AEFD4:
/* 9F7D4 800AEFD4 08002016 */  bnez       $s1, .L800AEFF8
/* 9F7D8 800AEFD8 1D80033C */   lui       $v1, %hi(D_801D0048)
/* 9F7DC 800AEFDC 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* 9F7E0 800AEFE0 3C00648C */  lw         $a0, 0x3c($v1)
/* 9F7E4 800AEFE4 B7C2020C */  jal        TestEvent
/* 9F7E8 800AEFE8 00000000 */   nop
/* 9F7EC 800AEFEC 02004010 */  beqz       $v0, .L800AEFF8
/* 9F7F0 800AEFF0 00000000 */   nop
/* 9F7F4 800AEFF4 01001124 */  addiu      $s1, $zero, 1
.L800AEFF8:
/* 9F7F8 800AEFF8 BFC2020C */  jal        ChangeTh
/* 9F7FC 800AEFFC 00FF043C */   lui       $a0, 0xff00
/* 9F800 800AF000 EDFF0012 */  beqz       $s0, .L800AEFB8
/* 9F804 800AF004 1D80023C */   lui       $v0, 0x801d
/* 9F808 800AF008 E8FF2012 */  beqz       $s1, .L800AEFAC
/* 9F80C 800AF00C 00000000 */   nop
.L800AF010:
/* 9F810 800AF010 56BA020C */  jal        FUN_800ae958
/* 9F814 800AF014 00000000 */   nop
/* 9F818 800AF018 56BC0208 */  j          .L800AF158
/* 9F81C 800AF01C 01001524 */   addiu     $s5, $zero, 1
.L800AF020:
/* 9F820 800AF020 0000428E */  lw         $v0, ($s2)
/* 9F824 800AF024 21B8F102 */  addu       $s7, $s7, $s1
/* 9F828 800AF028 000814A2 */  sb         $s4, 0x800($s0)
/* 9F82C 800AF02C 76BB0208 */  j          .L800AEDD8
/* 9F830 800AF030 23B0C202 */   subu      $s6, $s6, $v0
.L800AF034:
/* 9F834 800AF034 21202002 */  addu       $a0, $s1, $zero
/* 9F838 800AF038 0000468E */  lw         $a2, ($s2)
/* 9F83C 800AF03C 19D6000C */  jal        FUN_80035864
/* 9F840 800AF040 2128E002 */   addu      $a1, $s7, $zero
/* 9F844 800AF044 0000428E */  lw         $v0, ($s2)
/* 9F848 800AF048 02000424 */  addiu      $a0, $zero, 2
/* 9F84C 800AF04C 000824A2 */  sb         $a0, 0x800($s1)
/* 9F850 800AF050 21B8E202 */  addu       $s7, $s7, $v0
/* 9F854 800AF054 76BB0208 */  j          .L800AEDD8
/* 9F858 800AF058 23B0C202 */   subu      $s6, $s6, $v0
.L800AF05C:
/* 9F85C 800AF05C 34008280 */  lb         $v0, 0x34($a0)
/* 9F860 800AF060 00000000 */  nop
/* 9F864 800AF064 3A004014 */  bnez       $v0, .L800AF150
/* 9F868 800AF068 00000000 */   nop
/* 9F86C 800AF06C 36008394 */  lhu        $v1, 0x36($a0)
/* 9F870 800AF070 1400828C */  lw         $v0, 0x14($a0)
/* 9F874 800AF074 00000000 */  nop
/* 9F878 800AF078 35004310 */  beq        $v0, $v1, .L800AF150
/* 9F87C 800AF07C 01001124 */   addiu     $s1, $zero, 1
/* 9F880 800AF080 01001024 */  addiu      $s0, $zero, 1
/* 9F884 800AF084 01000624 */  addiu      $a2, $zero, 1
/* 9F888 800AF088 03000524 */  addiu      $a1, $zero, 3
/* 9F88C 800AF08C 1D80033C */  lui        $v1, %hi(D_801D0098)
/* 9F890 800AF090 98006224 */  addiu      $v0, $v1, %lo(D_801D0098)
/* 9F894 800AF094 01000424 */  addiu      $a0, $zero, 1
.L800AF098:
/* 9F898 800AF098 00084380 */  lb         $v1, 0x800($v0)
/* 9F89C 800AF09C 00000000 */  nop
/* 9F8A0 800AF0A0 05006610 */  beq        $v1, $a2, .L800AF0B8
/* 9F8A4 800AF0A4 00000000 */   nop
/* 9F8A8 800AF0A8 05006510 */  beq        $v1, $a1, .L800AF0C0
/* 9F8AC 800AF0AC 00000000 */   nop
/* 9F8B0 800AF0B0 32BC0208 */  j          .L800AF0C8
/* 9F8B4 800AF0B4 0C084224 */   addiu     $v0, $v0, 0x80c
.L800AF0B8:
/* 9F8B8 800AF0B8 31BC0208 */  j          .L800AF0C4
/* 9F8BC 800AF0BC 21800000 */   addu      $s0, $zero, $zero
.L800AF0C0:
/* 9F8C0 800AF0C0 21880000 */  addu       $s1, $zero, $zero
.L800AF0C4:
/* 9F8C4 800AF0C4 0C084224 */  addiu      $v0, $v0, 0x80c
.L800AF0C8:
/* 9F8C8 800AF0C8 FFFF8424 */  addiu      $a0, $a0, -1
/* 9F8CC 800AF0CC F2FF8104 */  bgez       $a0, .L800AF098
/* 9F8D0 800AF0D0 00000000 */   nop
/* 9F8D4 800AF0D4 05000012 */  beqz       $s0, .L800AF0EC
/* 9F8D8 800AF0D8 00000000 */   nop
/* 9F8DC 800AF0DC 1E002016 */  bnez       $s1, .L800AF158
/* 9F8E0 800AF0E0 01001524 */   addiu     $s5, $zero, 1
.L800AF0E4:
/* 9F8E4 800AF0E4 09000016 */  bnez       $s0, .L800AF10C
/* 9F8E8 800AF0E8 00000000 */   nop
.L800AF0EC:
/* 9F8EC 800AF0EC 1D80023C */  lui        $v0, %hi(D_801D0048)
.L800AF0F0:
/* 9F8F0 800AF0F0 48004224 */  addiu      $v0, $v0, %lo(D_801D0048)
/* 9F8F4 800AF0F4 3800448C */  lw         $a0, 0x38($v0)
/* 9F8F8 800AF0F8 B7C2020C */  jal        TestEvent
/* 9F8FC 800AF0FC 00000000 */   nop
/* 9F900 800AF100 02004010 */  beqz       $v0, .L800AF10C
/* 9F904 800AF104 00000000 */   nop
/* 9F908 800AF108 01001024 */  addiu      $s0, $zero, 1
.L800AF10C:
/* 9F90C 800AF10C 08002016 */  bnez       $s1, .L800AF130
/* 9F910 800AF110 1D80033C */   lui       $v1, %hi(D_801D0048)
/* 9F914 800AF114 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* 9F918 800AF118 3C00648C */  lw         $a0, 0x3c($v1)
/* 9F91C 800AF11C B7C2020C */  jal        TestEvent
/* 9F920 800AF120 00000000 */   nop
/* 9F924 800AF124 02004010 */  beqz       $v0, .L800AF130
/* 9F928 800AF128 00000000 */   nop
/* 9F92C 800AF12C 01001124 */  addiu      $s1, $zero, 1
.L800AF130:
/* 9F930 800AF130 BFC2020C */  jal        ChangeTh
/* 9F934 800AF134 00FF043C */   lui       $a0, 0xff00
/* 9F938 800AF138 EDFF0012 */  beqz       $s0, .L800AF0F0
/* 9F93C 800AF13C 1D80023C */   lui       $v0, 0x801d
/* 9F940 800AF140 E8FF2012 */  beqz       $s1, .L800AF0E4
/* 9F944 800AF144 01001524 */   addiu     $s5, $zero, 1
/* 9F948 800AF148 56BC0208 */  j          .L800AF158
/* 9F94C 800AF14C 00000000 */   nop
.L800AF150:
/* 9F950 800AF150 80FEA016 */  bnez       $s5, .L800AEB54
/* 9F954 800AF154 00000000 */   nop
.L800AF158:
/* 9F958 800AF158 4000A016 */  bnez       $s5, .L800AF25C
/* 9F95C 800AF15C 1D80023C */   lui       $v0, 0x801d
/* 9F960 800AF160 1D80043C */  lui        $a0, %hi(D_801D0048)
.L800AF164:
/* 9F964 800AF164 48008524 */  addiu      $a1, $a0, %lo(D_801D0048)
/* 9F968 800AF168 01000224 */  addiu      $v0, $zero, 1
/* 9F96C 800AF16C 3400A480 */  lb         $a0, 0x34($a1)
/* 9F970 800AF170 1400A68C */  lw         $a2, 0x14($a1)
/* 9F974 800AF174 1C008214 */  bne        $a0, $v0, .L800AF1E8
/* 9F978 800AF178 1D80033C */   lui       $v1, %hi(D_801D2378)
/* 9F97C 800AF17C 78236224 */  addiu      $v0, $v1, %lo(D_801D2378)
/* 9F980 800AF180 07004390 */  lbu        $v1, 7($v0)
/* 9F984 800AF184 00000000 */  nop
/* 9F988 800AF188 1C006410 */  beq        $v1, $a0, .L800AF1FC
/* 9F98C 800AF18C 1D80023C */   lui       $v0, %hi(D_801D10B8)
/* 9F990 800AF190 2A00A794 */  lhu        $a3, 0x2a($a1)
/* 9F994 800AF194 21300000 */  addu       $a2, $zero, $zero
/* 9F998 800AF198 B8104424 */  addiu      $a0, $v0, %lo(D_801D10B8)
/* 9F99C 800AF19C 21288000 */  addu       $a1, $a0, $zero
.L800AF1A0:
/* 9F9A0 800AF1A0 00008294 */  lhu        $v0, ($a0)
/* 9F9A4 800AF1A4 00000000 */  nop
/* 9F9A8 800AF1A8 26004710 */  beq        $v0, $a3, .L800AF244
/* 9F9AC 800AF1AC 2118A000 */   addu      $v1, $a1, $zero
/* 9F9B0 800AF1B0 10008424 */  addiu      $a0, $a0, 0x10
/* 9F9B4 800AF1B4 0100C624 */  addiu      $a2, $a2, 1
/* 9F9B8 800AF1B8 2C01C228 */  slti       $v0, $a2, 0x12c
/* 9F9BC 800AF1BC F8FF4014 */  bnez       $v0, .L800AF1A0
/* 9F9C0 800AF1C0 10006524 */   addiu     $a1, $v1, 0x10
/* 9F9C4 800AF1C4 21180000 */  addu       $v1, $zero, $zero
/* 9F9C8 800AF1C8 FFFF0624 */  addiu      $a2, $zero, -1
.L800AF1CC:
/* 9F9CC 800AF1CC 02000224 */  addiu      $v0, $zero, 2
/* 9F9D0 800AF1D0 1D80043C */  lui        $a0, %hi(D_801D0048)
/* 9F9D4 800AF1D4 070062A0 */  sb         $v0, 7($v1)
/* 9F9D8 800AF1D8 48008324 */  addiu      $v1, $a0, %lo(D_801D0048)
/* 9F9DC 800AF1DC FFFF0234 */  ori        $v0, $zero, 0xffff
/* 9F9E0 800AF1E0 2A0062A4 */  sh         $v0, 0x2a($v1)
/* 9F9E4 800AF1E4 1D80033C */  lui        $v1, %hi(D_801D2378)
.L800AF1E8:
/* 9F9E8 800AF1E8 78236224 */  addiu      $v0, $v1, %lo(D_801D2378)
/* 9F9EC 800AF1EC 07004490 */  lbu        $a0, 7($v0)
/* 9F9F0 800AF1F0 01000324 */  addiu      $v1, $zero, 1
/* 9F9F4 800AF1F4 0A008314 */  bne        $a0, $v1, .L800AF220
/* 9F9F8 800AF1F8 1D80033C */   lui       $v1, %hi(D_801D0007)
.L800AF1FC:
/* 9F9FC 800AF1FC 1D80043C */  lui        $a0, %hi(D_801D2378)
/* 9FA00 800AF200 78238324 */  addiu      $v1, $a0, %lo(D_801D2378)
/* 9FA04 800AF204 02000224 */  addiu      $v0, $zero, 2
/* 9FA08 800AF208 070062A0 */  sb         $v0, %lo(D_801D0007)($v1)
/* 9FA0C 800AF20C 1D80023C */  lui        $v0, %hi(D_801D0048)
/* 9FA10 800AF210 48004424 */  addiu      $a0, $v0, %lo(D_801D0048)
/* 9FA14 800AF214 FFFF0234 */  ori        $v0, $zero, 0xffff
/* 9FA18 800AF218 2A0082A4 */  sh         $v0, 0x2a($a0)
/* 9FA1C 800AF21C 1D80033C */  lui        $v1, %hi(D_801D0048)
.L800AF220:
/* 9FA20 800AF220 48006224 */  addiu      $v0, $v1, %lo(D_801D0048)
/* 9FA24 800AF224 4400428C */  lw         $v0, 0x44($v0)
/* 9FA28 800AF228 00000000 */  nop
/* 9FA2C 800AF22C 07004010 */  beqz       $v0, .L800AF24C
/* 9FA30 800AF230 00000000 */   nop
/* 9FA34 800AF234 09F84000 */  jalr       $v0
/* 9FA38 800AF238 2120C000 */   addu      $a0, $a2, $zero
/* 9FA3C 800AF23C A2BC0208 */  j          .L800AF288
/* 9FA40 800AF240 00000000 */   nop
.L800AF244:
/* 9FA44 800AF244 73BC0208 */  j          .L800AF1CC
/* 9FA48 800AF248 FFFF0624 */   addiu     $a2, $zero, -1
.L800AF24C:
/* 9FA4C 800AF24C E1C1020C */  jal        FUN_800b0784
/* 9FA50 800AF250 00000000 */   nop
/* 9FA54 800AF254 A2BC0208 */  j          .L800AF288
/* 9FA58 800AF258 00000000 */   nop
.L800AF25C:
/* 9FA5C 800AF25C 78234424 */  addiu      $a0, $v0, 0x2378
/* 9FA60 800AF260 07008390 */  lbu        $v1, 7($a0)
/* 9FA64 800AF264 01000224 */  addiu      $v0, $zero, 1
/* 9FA68 800AF268 07006214 */  bne        $v1, $v0, .L800AF288
/* 9FA6C 800AF26C 1D80033C */   lui       $v1, %hi(D_801D0048)
/* 9FA70 800AF270 48006224 */  addiu      $v0, $v1, %lo(D_801D0048)
/* 9FA74 800AF274 FFFF0334 */  ori        $v1, $zero, 0xffff
/* 9FA78 800AF278 2A0043A4 */  sh         $v1, 0x2a($v0)
/* 9FA7C 800AF27C 070080A0 */  sb         $zero, 7($a0)
/* 9FA80 800AF280 1D80043C */  lui        $a0, %hi(D_801D2378)
/* 9FA84 800AF284 782383A4 */  sh         $v1, %lo(D_801D2378)($a0)
.L800AF288:
/* 9FA88 800AF288 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 9FA8C 800AF28C 4800BE8F */  lw         $fp, 0x48($sp)
/* 9FA90 800AF290 4400B78F */  lw         $s7, 0x44($sp)
/* 9FA94 800AF294 4000B68F */  lw         $s6, 0x40($sp)
/* 9FA98 800AF298 3C00B58F */  lw         $s5, 0x3c($sp)
/* 9FA9C 800AF29C 3800B48F */  lw         $s4, 0x38($sp)
/* 9FAA0 800AF2A0 3400B38F */  lw         $s3, 0x34($sp)
/* 9FAA4 800AF2A4 3000B28F */  lw         $s2, 0x30($sp)
/* 9FAA8 800AF2A8 2C00B18F */  lw         $s1, 0x2c($sp)
/* 9FAAC 800AF2AC 2800B08F */  lw         $s0, 0x28($sp)
/* 9FAB0 800AF2B0 1D80023C */  lui        $v0, %hi(D_801D0048)
/* 9FAB4 800AF2B4 480040A0 */  sb         $zero, %lo(D_801D0048)($v0)
/* 9FAB8 800AF2B8 0800E003 */  jr         $ra
/* 9FABC 800AF2BC 5000BD27 */   addiu     $sp, $sp, 0x50
