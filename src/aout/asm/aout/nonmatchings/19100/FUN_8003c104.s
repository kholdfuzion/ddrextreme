.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c104
/* 2C904 8003C104 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2C908 8003C108 6666083C */  lui        $t0, 0x6666
/* 2C90C 8003C10C 0E80023C */  lui        $v0, %hi(D_800D9080)
/* 2C910 8003C110 80904224 */  addiu      $v0, $v0, %lo(D_800D9080)
/* 2C914 8003C114 80280500 */  sll        $a1, $a1, 2
/* 2C918 8003C118 2110A200 */  addu       $v0, $a1, $v0
/* 2C91C 8003C11C 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 2C920 8003C120 2800B4AF */  sw         $s4, 0x28($sp)
/* 2C924 8003C124 2400B3AF */  sw         $s3, 0x24($sp)
/* 2C928 8003C128 2000B2AF */  sw         $s2, 0x20($sp)
/* 2C92C 8003C12C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 2C930 8003C130 1800B0AF */  sw         $s0, 0x18($sp)
/* 2C934 8003C134 0000478C */  lw         $a3, ($v0)
/* 2C938 8003C138 67660835 */  ori        $t0, $t0, 0x6667
/* 2C93C 8003C13C 80380700 */  sll        $a3, $a3, 2
/* 2C940 8003C140 1800E800 */  mult       $a3, $t0
/* 2C944 8003C144 21908000 */  addu       $s2, $a0, $zero
/* 2C948 8003C148 0E80023C */  lui        $v0, %hi(D_800D90A0)
/* 2C94C 8003C14C A0904224 */  addiu      $v0, $v0, %lo(D_800D90A0)
/* 2C950 8003C150 2110A200 */  addu       $v0, $a1, $v0
/* 2C954 8003C154 C33F0700 */  sra        $a3, $a3, 0x1f
/* 2C958 8003C158 10180000 */  mfhi       $v1
/* 2C95C 8003C15C 43180300 */  sra        $v1, $v1, 1
/* 2C960 8003C160 23186700 */  subu       $v1, $v1, $a3
/* 2C964 8003C164 000043AE */  sw         $v1, ($s2)
/* 2C968 8003C168 0000448C */  lw         $a0, ($v0)
/* 2C96C 8003C16C 00000000 */  nop
/* 2C970 8003C170 80200400 */  sll        $a0, $a0, 2
/* 2C974 8003C174 18008800 */  mult       $a0, $t0
/* 2C978 8003C178 0E80023C */  lui        $v0, %hi(D_800D90C0)
/* 2C97C 8003C17C C0904224 */  addiu      $v0, $v0, %lo(D_800D90C0)
/* 2C980 8003C180 2128A200 */  addu       $a1, $a1, $v0
/* 2C984 8003C184 C3270400 */  sra        $a0, $a0, 0x1f
/* 2C988 8003C188 10180000 */  mfhi       $v1
/* 2C98C 8003C18C 43180300 */  sra        $v1, $v1, 1
/* 2C990 8003C190 23186400 */  subu       $v1, $v1, $a0
/* 2C994 8003C194 040043AE */  sw         $v1, 4($s2)
/* 2C998 8003C198 0000A38C */  lw         $v1, ($a1)
/* 2C99C 8003C19C 00000000 */  nop
/* 2C9A0 8003C1A0 80180300 */  sll        $v1, $v1, 2
/* 2C9A4 8003C1A4 18006800 */  mult       $v1, $t0
/* 2C9A8 8003C1A8 80100600 */  sll        $v0, $a2, 2
/* 2C9AC 8003C1AC 21104600 */  addu       $v0, $v0, $a2
/* 2C9B0 8003C1B0 80100200 */  sll        $v0, $v0, 2
/* 2C9B4 8003C1B4 23104600 */  subu       $v0, $v0, $a2
/* 2C9B8 8003C1B8 80100200 */  sll        $v0, $v0, 2
/* 2C9BC 8003C1BC C31F0300 */  sra        $v1, $v1, 0x1f
/* 2C9C0 8003C1C0 10400000 */  mfhi       $t0
/* 2C9C4 8003C1C4 43400800 */  sra        $t0, $t0, 1
/* 2C9C8 8003C1C8 23400301 */  subu       $t0, $t0, $v1
/* 2C9CC 8003C1CC 1580033C */  lui        $v1, %hi(D_80156E38)
/* 2C9D0 8003C1D0 386E6324 */  addiu      $v1, $v1, %lo(D_80156E38)
/* 2C9D4 8003C1D4 21206200 */  addu       $a0, $v1, $v0
/* 2C9D8 8003C1D8 21288000 */  addu       $a1, $a0, $zero
/* 2C9DC 8003C1DC 21188000 */  addu       $v1, $a0, $zero
/* 2C9E0 8003C1E0 080048AE */  sw         $t0, 8($s2)
/* 2C9E4 8003C1E4 4000948C */  lw         $s4, 0x40($a0)
/* 2C9E8 8003C1E8 4800718C */  lw         $s1, 0x48($v1)
/* 2C9EC 8003C1EC 4400B38C */  lw         $s3, 0x44($a1)
/* 2C9F0 8003C1F0 25002012 */  beqz       $s1, .L8003C288
/* 2C9F4 8003C1F4 00000000 */   nop
/* 2C9F8 8003C1F8 28F2000C */  jal        rcos
/* 2C9FC 8003C1FC 21202002 */   addu      $a0, $s1, $zero
/* 2CA00 8003C200 21202002 */  addu       $a0, $s1, $zero
/* 2CA04 8003C204 F4F1000C */  jal        rsin
/* 2CA08 8003C208 21804000 */   addu      $s0, $v0, $zero
/* 2CA0C 8003C20C 0000438E */  lw         $v1, ($s2)
/* 2CA10 8003C210 00000000 */  nop
/* 2CA14 8003C214 18007000 */  mult       $v1, $s0
/* 2CA18 8003C218 12180000 */  mflo       $v1
/* 2CA1C 8003C21C 0400458E */  lw         $a1, 4($s2)
/* 2CA20 8003C220 00000000 */  nop
/* 2CA24 8003C224 1800A200 */  mult       $a1, $v0
/* 2CA28 8003C228 21202002 */  addu       $a0, $s1, $zero
/* 2CA2C 8003C22C 12280000 */  mflo       $a1
/* 2CA30 8003C230 23186500 */  subu       $v1, $v1, $a1
/* 2CA34 8003C234 031B0300 */  sra        $v1, $v1, 0xc
/* 2CA38 8003C238 F4F1000C */  jal        rsin
/* 2CA3C 8003C23C 1000A3AF */   sw        $v1, 0x10($sp)
/* 2CA40 8003C240 21202002 */  addu       $a0, $s1, $zero
/* 2CA44 8003C244 28F2000C */  jal        rcos
/* 2CA48 8003C248 21804000 */   addu      $s0, $v0, $zero
/* 2CA4C 8003C24C 0000438E */  lw         $v1, ($s2)
/* 2CA50 8003C250 00000000 */  nop
/* 2CA54 8003C254 18007000 */  mult       $v1, $s0
/* 2CA58 8003C258 12180000 */  mflo       $v1
/* 2CA5C 8003C25C 0400448E */  lw         $a0, 4($s2)
/* 2CA60 8003C260 00000000 */  nop
/* 2CA64 8003C264 18008200 */  mult       $a0, $v0
/* 2CA68 8003C268 1000A28F */  lw         $v0, 0x10($sp)
/* 2CA6C 8003C26C 00000000 */  nop
/* 2CA70 8003C270 000042AE */  sw         $v0, ($s2)
/* 2CA74 8003C274 12200000 */  mflo       $a0
/* 2CA78 8003C278 21186400 */  addu       $v1, $v1, $a0
/* 2CA7C 8003C27C 031B0300 */  sra        $v1, $v1, 0xc
/* 2CA80 8003C280 1400A3AF */  sw         $v1, 0x14($sp)
/* 2CA84 8003C284 040043AE */  sw         $v1, 4($s2)
.L8003C288:
/* 2CA88 8003C288 25006012 */  beqz       $s3, .L8003C320
/* 2CA8C 8003C28C 00000000 */   nop
/* 2CA90 8003C290 28F2000C */  jal        rcos
/* 2CA94 8003C294 21206002 */   addu      $a0, $s3, $zero
/* 2CA98 8003C298 21206002 */  addu       $a0, $s3, $zero
/* 2CA9C 8003C29C F4F1000C */  jal        rsin
/* 2CAA0 8003C2A0 21804000 */   addu      $s0, $v0, $zero
/* 2CAA4 8003C2A4 0000438E */  lw         $v1, ($s2)
/* 2CAA8 8003C2A8 00000000 */  nop
/* 2CAAC 8003C2AC 18007000 */  mult       $v1, $s0
/* 2CAB0 8003C2B0 12180000 */  mflo       $v1
/* 2CAB4 8003C2B4 0800458E */  lw         $a1, 8($s2)
/* 2CAB8 8003C2B8 00000000 */  nop
/* 2CABC 8003C2BC 1800A200 */  mult       $a1, $v0
/* 2CAC0 8003C2C0 21206002 */  addu       $a0, $s3, $zero
/* 2CAC4 8003C2C4 12280000 */  mflo       $a1
/* 2CAC8 8003C2C8 21186500 */  addu       $v1, $v1, $a1
/* 2CACC 8003C2CC 031B0300 */  sra        $v1, $v1, 0xc
/* 2CAD0 8003C2D0 F4F1000C */  jal        rsin
/* 2CAD4 8003C2D4 1000A3AF */   sw        $v1, 0x10($sp)
/* 2CAD8 8003C2D8 21206002 */  addu       $a0, $s3, $zero
/* 2CADC 8003C2DC 28F2000C */  jal        rcos
/* 2CAE0 8003C2E0 21804000 */   addu      $s0, $v0, $zero
/* 2CAE4 8003C2E4 0000448E */  lw         $a0, ($s2)
/* 2CAE8 8003C2E8 00000000 */  nop
/* 2CAEC 8003C2EC 18009000 */  mult       $a0, $s0
/* 2CAF0 8003C2F0 12200000 */  mflo       $a0
/* 2CAF4 8003C2F4 0800438E */  lw         $v1, 8($s2)
/* 2CAF8 8003C2F8 00000000 */  nop
/* 2CAFC 8003C2FC 18006200 */  mult       $v1, $v0
/* 2CB00 8003C300 1000A28F */  lw         $v0, 0x10($sp)
/* 2CB04 8003C304 00000000 */  nop
/* 2CB08 8003C308 000042AE */  sw         $v0, ($s2)
/* 2CB0C 8003C30C 12180000 */  mflo       $v1
/* 2CB10 8003C310 23186400 */  subu       $v1, $v1, $a0
/* 2CB14 8003C314 031B0300 */  sra        $v1, $v1, 0xc
/* 2CB18 8003C318 1400A3AF */  sw         $v1, 0x14($sp)
/* 2CB1C 8003C31C 080043AE */  sw         $v1, 8($s2)
.L8003C320:
/* 2CB20 8003C320 25008012 */  beqz       $s4, .L8003C3B8
/* 2CB24 8003C324 00000000 */   nop
/* 2CB28 8003C328 28F2000C */  jal        rcos
/* 2CB2C 8003C32C 21208002 */   addu      $a0, $s4, $zero
/* 2CB30 8003C330 21208002 */  addu       $a0, $s4, $zero
/* 2CB34 8003C334 F4F1000C */  jal        rsin
/* 2CB38 8003C338 21804000 */   addu      $s0, $v0, $zero
/* 2CB3C 8003C33C 0400438E */  lw         $v1, 4($s2)
/* 2CB40 8003C340 00000000 */  nop
/* 2CB44 8003C344 18007000 */  mult       $v1, $s0
/* 2CB48 8003C348 12180000 */  mflo       $v1
/* 2CB4C 8003C34C 0800458E */  lw         $a1, 8($s2)
/* 2CB50 8003C350 00000000 */  nop
/* 2CB54 8003C354 1800A200 */  mult       $a1, $v0
/* 2CB58 8003C358 21208002 */  addu       $a0, $s4, $zero
/* 2CB5C 8003C35C 12280000 */  mflo       $a1
/* 2CB60 8003C360 23186500 */  subu       $v1, $v1, $a1
/* 2CB64 8003C364 031B0300 */  sra        $v1, $v1, 0xc
/* 2CB68 8003C368 F4F1000C */  jal        rsin
/* 2CB6C 8003C36C 1000A3AF */   sw        $v1, 0x10($sp)
/* 2CB70 8003C370 21208002 */  addu       $a0, $s4, $zero
/* 2CB74 8003C374 28F2000C */  jal        rcos
/* 2CB78 8003C378 21804000 */   addu      $s0, $v0, $zero
/* 2CB7C 8003C37C 0400438E */  lw         $v1, 4($s2)
/* 2CB80 8003C380 00000000 */  nop
/* 2CB84 8003C384 18007000 */  mult       $v1, $s0
/* 2CB88 8003C388 12180000 */  mflo       $v1
/* 2CB8C 8003C38C 0800448E */  lw         $a0, 8($s2)
/* 2CB90 8003C390 00000000 */  nop
/* 2CB94 8003C394 18008200 */  mult       $a0, $v0
/* 2CB98 8003C398 1000A28F */  lw         $v0, 0x10($sp)
/* 2CB9C 8003C39C 00000000 */  nop
/* 2CBA0 8003C3A0 040042AE */  sw         $v0, 4($s2)
/* 2CBA4 8003C3A4 12200000 */  mflo       $a0
/* 2CBA8 8003C3A8 21186400 */  addu       $v1, $v1, $a0
/* 2CBAC 8003C3AC 031B0300 */  sra        $v1, $v1, 0xc
/* 2CBB0 8003C3B0 1400A3AF */  sw         $v1, 0x14($sp)
/* 2CBB4 8003C3B4 080043AE */  sw         $v1, 8($s2)
.L8003C3B8:
/* 2CBB8 8003C3B8 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 2CBBC 8003C3BC 2800B48F */  lw         $s4, 0x28($sp)
/* 2CBC0 8003C3C0 2400B38F */  lw         $s3, 0x24($sp)
/* 2CBC4 8003C3C4 2000B28F */  lw         $s2, 0x20($sp)
/* 2CBC8 8003C3C8 1C00B18F */  lw         $s1, 0x1c($sp)
/* 2CBCC 8003C3CC 1800B08F */  lw         $s0, 0x18($sp)
/* 2CBD0 8003C3D0 0800E003 */  jr         $ra
/* 2CBD4 8003C3D4 3000BD27 */   addiu     $sp, $sp, 0x30
