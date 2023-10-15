.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cc894
/* BD094 800CC894 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD098 800CC898 2080023C */  lui        $v0, %hi(D_801FBCB0)
/* BD09C 800CC89C 1000B0AF */  sw         $s0, 0x10($sp)
/* BD0A0 800CC8A0 B0BC5024 */  addiu      $s0, $v0, %lo(D_801FBCB0)
/* BD0A4 800CC8A4 1800BFAF */  sw         $ra, 0x18($sp)
/* BD0A8 800CC8A8 1400B1AF */  sw         $s1, 0x14($sp)
/* BD0AC 800CC8AC 2400038E */  lw         $v1, 0x24($s0)
/* BD0B0 800CC8B0 00000000 */  nop
/* BD0B4 800CC8B4 0600622C */  sltiu      $v0, $v1, 6
/* BD0B8 800CC8B8 55004010 */  beqz       $v0, .L800CCA10
/* BD0BC 800CC8BC 0180023C */   lui       $v0, %hi(D_80017AB8)
/* BD0C0 800CC8C0 B87A4224 */  addiu      $v0, $v0, %lo(D_80017AB8)
/* BD0C4 800CC8C4 80180300 */  sll        $v1, $v1, 2
/* BD0C8 800CC8C8 21186200 */  addu       $v1, $v1, $v0
/* BD0CC 800CC8CC 0000628C */  lw         $v0, ($v1)
/* BD0D0 800CC8D0 00000000 */  nop
/* BD0D4 800CC8D4 08004000 */  jr         $v0
/* BD0D8 800CC8D8 00000000 */   nop
/* BD0DC 800CC8DC 8932030C */  jal        FUN_800cca24
/* BD0E0 800CC8E0 00000000 */   nop
/* BD0E4 800CC8E4 2D004014 */  bnez       $v0, .L800CC99C
/* BD0E8 800CC8E8 05000224 */   addiu     $v0, $zero, 5
/* BD0EC 800CC8EC 02000224 */  addiu      $v0, $zero, 2
/* BD0F0 800CC8F0 240002AE */  sw         $v0, 0x24($s0)
/* BD0F4 800CC8F4 2C00028E */  lw         $v0, 0x2c($s0)
/* BD0F8 800CC8F8 00000000 */  nop
/* BD0FC 800CC8FC 05004018 */  blez       $v0, .L800CC914
/* BD100 800CC900 00000000 */   nop
/* BD104 800CC904 BB32030C */  jal        FUN_800ccaec
/* BD108 800CC908 08000424 */   addiu     $a0, $zero, 8
/* BD10C 800CC90C 23004014 */  bnez       $v0, .L800CC99C
/* BD110 800CC910 05000224 */   addiu     $v0, $zero, 5
.L800CC914:
/* BD114 800CC914 3400028E */  lw         $v0, 0x34($s0)
/* BD118 800CC918 2C00038E */  lw         $v1, 0x2c($s0)
/* BD11C 800CC91C 00000000 */  nop
/* BD120 800CC920 21104300 */  addu       $v0, $v0, $v1
/* BD124 800CC924 00004490 */  lbu        $a0, ($v0)
/* BD128 800CC928 8634030C */  jal        FUN_800cd218
/* BD12C 800CC92C 00000000 */   nop
/* BD130 800CC930 2C00028E */  lw         $v0, 0x2c($s0)
/* BD134 800CC934 00000000 */  nop
/* BD138 800CC938 01004224 */  addiu      $v0, $v0, 1
/* BD13C 800CC93C 2C0002AE */  sw         $v0, 0x2c($s0)
/* BD140 800CC940 0C004228 */  slti       $v0, $v0, 0xc
/* BD144 800CC944 32004014 */  bnez       $v0, .L800CCA10
/* BD148 800CC948 00000000 */   nop
/* BD14C 800CC94C CD6B000C */  jal        VSync
/* BD150 800CC950 FFFF0424 */   addiu     $a0, $zero, -1
/* BD154 800CC954 300002AE */  sw         $v0, 0x30($s0)
/* BD158 800CC958 03000224 */  addiu      $v0, $zero, 3
/* BD15C 800CC95C 84320308 */  j          .L800CCA10
/* BD160 800CC960 240002AE */   sw        $v0, 0x24($s0)
/* BD164 800CC964 CD6B000C */  jal        VSync
/* BD168 800CC968 FFFF0424 */   addiu     $a0, $zero, -1
/* BD16C 800CC96C 3000038E */  lw         $v1, 0x30($s0)
/* BD170 800CC970 21200000 */  addu       $a0, $zero, $zero
/* BD174 800CC974 BB32030C */  jal        FUN_800ccaec
/* BD178 800CC978 23884300 */   subu      $s1, $v0, $v1
/* BD17C 800CC97C 05004014 */  bnez       $v0, .L800CC994
/* BD180 800CC980 1F00222A */   slti      $v0, $s1, 0x1f
/* BD184 800CC984 04000224 */  addiu      $v0, $zero, 4
/* BD188 800CC988 2C0000AE */  sw         $zero, 0x2c($s0)
/* BD18C 800CC98C 84320308 */  j          .L800CCA10
/* BD190 800CC990 240002AE */   sw        $v0, 0x24($s0)
.L800CC994:
/* BD194 800CC994 1E004014 */  bnez       $v0, .L800CCA10
/* BD198 800CC998 05000224 */   addiu     $v0, $zero, 5
.L800CC99C:
/* BD19C 800CC99C 84320308 */  j          .L800CCA10
/* BD1A0 800CC9A0 240002AE */   sw        $v0, 0x24($s0)
/* BD1A4 800CC9A4 0C33030C */  jal        FUN_800ccc30
/* BD1A8 800CC9A8 00000000 */   nop
/* BD1AC 800CC9AC 3800038E */  lw         $v1, 0x38($s0)
/* BD1B0 800CC9B0 2C00048E */  lw         $a0, 0x2c($s0)
/* BD1B4 800CC9B4 00000000 */  nop
/* BD1B8 800CC9B8 21186400 */  addu       $v1, $v1, $a0
/* BD1BC 800CC9BC 000062A0 */  sb         $v0, ($v1)
/* BD1C0 800CC9C0 2C00028E */  lw         $v0, 0x2c($s0)
/* BD1C4 800CC9C4 00000000 */  nop
/* BD1C8 800CC9C8 01004224 */  addiu      $v0, $v0, 1
/* BD1CC 800CC9CC 2C0002AE */  sw         $v0, 0x2c($s0)
/* BD1D0 800CC9D0 0C004228 */  slti       $v0, $v0, 0xc
/* BD1D4 800CC9D4 05004014 */  bnez       $v0, .L800CC9EC
/* BD1D8 800CC9D8 00000000 */   nop
/* BD1DC 800CC9DC 3234030C */  jal        FUN_800cd0c8
/* BD1E0 800CC9E0 00000000 */   nop
/* BD1E4 800CC9E4 83320308 */  j          .L800CCA0C
/* BD1E8 800CC9E8 280000AE */   sw        $zero, 0x28($s0)
.L800CC9EC:
/* BD1EC 800CC9EC 4433030C */  jal        FUN_800ccd10
/* BD1F0 800CC9F0 00000000 */   nop
/* BD1F4 800CC9F4 84320308 */  j          .L800CCA10
/* BD1F8 800CC9F8 00000000 */   nop
/* BD1FC 800CC9FC 3234030C */  jal        FUN_800cd0c8
/* BD200 800CCA00 00000000 */   nop
/* BD204 800CCA04 FEFF0224 */  addiu      $v0, $zero, -2
/* BD208 800CCA08 280002AE */  sw         $v0, 0x28($s0)
.L800CCA0C:
/* BD20C 800CCA0C 240000AE */  sw         $zero, 0x24($s0)
.L800CCA10:
/* BD210 800CCA10 1800BF8F */  lw         $ra, 0x18($sp)
/* BD214 800CCA14 1400B18F */  lw         $s1, 0x14($sp)
/* BD218 800CCA18 1000B08F */  lw         $s0, 0x10($sp)
/* BD21C 800CCA1C 0800E003 */  jr         $ra
/* BD220 800CCA20 2000BD27 */   addiu     $sp, $sp, 0x20
