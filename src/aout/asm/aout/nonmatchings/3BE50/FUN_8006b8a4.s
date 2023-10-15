.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b8a4
/* 5C0A4 8006B8A4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5C0A8 8006B8A8 21200000 */  addu       $a0, $zero, $zero
/* 5C0AC 8006B8AC 4000BEAF */  sw         $fp, 0x40($sp)
/* 5C0B0 8006B8B0 01001E24 */  addiu      $fp, $zero, 1
/* 5C0B4 8006B8B4 3800B6AF */  sw         $s6, 0x38($sp)
/* 5C0B8 8006B8B8 00E1163C */  lui        $s6, 0xe100
/* 5C0BC 8006B8BC 8002D636 */  ori        $s6, $s6, 0x280
/* 5C0C0 8006B8C0 40010224 */  addiu      $v0, $zero, 0x140
/* 5C0C4 8006B8C4 F0000324 */  addiu      $v1, $zero, 0xf0
/* 5C0C8 8006B8C8 4400BFAF */  sw         $ra, 0x44($sp)
/* 5C0CC 8006B8CC 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 5C0D0 8006B8D0 3400B5AF */  sw         $s5, 0x34($sp)
/* 5C0D4 8006B8D4 3000B4AF */  sw         $s4, 0x30($sp)
/* 5C0D8 8006B8D8 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 5C0DC 8006B8DC 2800B2AF */  sw         $s2, 0x28($sp)
/* 5C0E0 8006B8E0 2400B1AF */  sw         $s1, 0x24($sp)
/* 5C0E4 8006B8E4 2000B0AF */  sw         $s0, 0x20($sp)
/* 5C0E8 8006B8E8 1000A0A7 */  sh         $zero, 0x10($sp)
/* 5C0EC 8006B8EC 1400A2A7 */  sh         $v0, 0x14($sp)
/* 5C0F0 8006B8F0 1600A3A7 */  sh         $v1, 0x16($sp)
.L8006B8F4:
/* 5C0F4 8006B8F4 21180000 */  addu       $v1, $zero, $zero
/* 5C0F8 8006B8F8 01008224 */  addiu      $v0, $a0, 1
/* 5C0FC 8006B8FC 1800A2AF */  sw         $v0, 0x18($sp)
/* 5C100 8006B900 80110400 */  sll        $v0, $a0, 6
/* 5C104 8006B904 21104400 */  addu       $v0, $v0, $a0
/* 5C108 8006B908 80100200 */  sll        $v0, $v0, 2
/* 5C10C 8006B90C 23104400 */  subu       $v0, $v0, $a0
/* 5C110 8006B910 C0100200 */  sll        $v0, $v0, 3
/* 5C114 8006B914 21104400 */  addu       $v0, $v0, $a0
/* 5C118 8006B918 C0B80200 */  sll        $s7, $v0, 3
.L8006B91C:
/* 5C11C 8006B91C 01007524 */  addiu      $s5, $v1, 1
/* 5C120 8006B920 40100300 */  sll        $v0, $v1, 1
/* 5C124 8006B924 21104300 */  addu       $v0, $v0, $v1
/* 5C128 8006B928 80100200 */  sll        $v0, $v0, 2
/* 5C12C 8006B92C 23104300 */  subu       $v0, $v0, $v1
/* 5C130 8006B930 80100200 */  sll        $v0, $v0, 2
/* 5C134 8006B934 23104300 */  subu       $v0, $v0, $v1
/* 5C138 8006B938 80100200 */  sll        $v0, $v0, 2
/* 5C13C 8006B93C 21104300 */  addu       $v0, $v0, $v1
/* 5C140 8006B940 80100200 */  sll        $v0, $v0, 2
/* 5C144 8006B944 23104300 */  subu       $v0, $v0, $v1
/* 5C148 8006B948 80100200 */  sll        $v0, $v0, 2
/* 5C14C 8006B94C 1A80043C */  lui        $a0, %hi(D_801A7800)
/* 5C150 8006B950 00788324 */  addiu      $v1, $a0, %lo(D_801A7800)
/* 5C154 8006B954 21104300 */  addu       $v0, $v0, $v1
/* 5C158 8006B958 2188E202 */  addu       $s1, $s7, $v0
/* 5C15C 8006B95C 3C003026 */  addiu      $s0, $s1, 0x3c
/* 5C160 8006B960 34003226 */  addiu      $s2, $s1, 0x34
/* 5C164 8006B964 5F001324 */  addiu      $s3, $zero, 0x5f
.L8006B968:
/* 5C168 8006B968 21204002 */  addu       $a0, $s2, $zero
/* 5C16C 8006B96C 21280002 */  addu       $a1, $s0, $zero
/* 5C170 8006B970 04000224 */  addiu      $v0, $zero, 4
/* 5C174 8006B974 030002A2 */  sb         $v0, 3($s0)
/* 5C178 8006B978 64000224 */  addiu      $v0, $zero, 0x64
/* 5C17C 8006B97C FBFF1EA2 */  sb         $fp, -5($s0)
/* 5C180 8006B980 FCFF16AE */  sw         $s6, -4($s0)
/* 5C184 8006B984 75B3010C */  jal        MargePrim
/* 5C188 8006B988 070002A2 */   sb        $v0, 7($s0)
/* 5C18C 8006B98C 1C001026 */  addiu      $s0, $s0, 0x1c
/* 5C190 8006B990 FFFF7326 */  addiu      $s3, $s3, -1
/* 5C194 8006B994 F4FF6106 */  bgez       $s3, .L8006B968
/* 5C198 8006B998 1C005226 */   addiu     $s2, $s2, 0x1c
/* 5C19C 8006B99C 000020AE */  sw         $zero, ($s1)
/* 5C1A0 8006B9A0 1C003226 */  addiu      $s2, $s1, 0x1c
/* 5C1A4 8006B9A4 04003026 */  addiu      $s0, $s1, 4
/* 5C1A8 8006B9A8 00011424 */  addiu      $s4, $zero, 0x100
/* 5C1AC 8006B9AC 01001324 */  addiu      $s3, $zero, 1
.L8006B9B0:
/* 5C1B0 8006B9B0 1200B4A7 */  sh         $s4, 0x12($sp)
/* 5C1B4 8006B9B4 21200002 */  addu       $a0, $s0, $zero
/* 5C1B8 8006B9B8 3B64000C */  jal        SetDrawArea
/* 5C1BC 8006B9BC 1000A527 */   addiu     $a1, $sp, 0x10
/* 5C1C0 8006B9C0 21204002 */  addu       $a0, $s2, $zero
/* 5C1C4 8006B9C4 3B64000C */  jal        SetDrawArea
/* 5C1C8 8006B9C8 1000A527 */   addiu     $a1, $sp, 0x10
/* 5C1CC 8006B9CC 0C005226 */  addiu      $s2, $s2, 0xc
/* 5C1D0 8006B9D0 0C001026 */  addiu      $s0, $s0, 0xc
/* 5C1D4 8006B9D4 FFFF7326 */  addiu      $s3, $s3, -1
/* 5C1D8 8006B9D8 F5FF6106 */  bgez       $s3, .L8006B9B0
/* 5C1DC 8006B9DC 00FF9426 */   addiu     $s4, $s4, -0x100
/* 5C1E0 8006B9E0 2118A002 */  addu       $v1, $s5, $zero
/* 5C1E4 8006B9E4 FF000224 */  addiu      $v0, $zero, 0xff
/* 5C1E8 8006B9E8 BC0A22A6 */  sh         $v0, 0xabc($s1)
/* 5C1EC 8006B9EC F8FF0224 */  addiu      $v0, $zero, -8
/* 5C1F0 8006B9F0 BB0A22A2 */  sb         $v0, 0xabb($s1)
/* 5C1F4 8006B9F4 00020224 */  addiu      $v0, $zero, 0x200
/* 5C1F8 8006B9F8 CA0A22A6 */  sh         $v0, 0xaca($s1)
/* 5C1FC 8006B9FC 06006228 */  slti       $v0, $v1, 6
/* 5C200 8006BA00 B40A20A6 */  sh         $zero, 0xab4($s1)
/* 5C204 8006BA04 B60A20A6 */  sh         $zero, 0xab6($s1)
/* 5C208 8006BA08 B80A20A6 */  sh         $zero, 0xab8($s1)
/* 5C20C 8006BA0C BA0A3EA2 */  sb         $fp, 0xaba($s1)
/* 5C210 8006BA10 C40A20A6 */  sh         $zero, 0xac4($s1)
/* 5C214 8006BA14 C60A20A6 */  sh         $zero, 0xac6($s1)
/* 5C218 8006BA18 C80A20A6 */  sh         $zero, 0xac8($s1)
/* 5C21C 8006BA1C BE0A20A6 */  sh         $zero, 0xabe($s1)
/* 5C220 8006BA20 C00A20A6 */  sh         $zero, 0xac0($s1)
/* 5C224 8006BA24 BDFF4014 */  bnez       $v0, .L8006B91C
/* 5C228 8006BA28 C20A20A6 */   sh        $zero, 0xac2($s1)
/* 5C22C 8006BA2C 1800A48F */  lw         $a0, 0x18($sp)
/* 5C230 8006BA30 00000000 */  nop
/* 5C234 8006BA34 02008228 */  slti       $v0, $a0, 2
/* 5C238 8006BA38 AEFF4014 */  bnez       $v0, .L8006B8F4
/* 5C23C 8006BA3C 00000000 */   nop
/* 5C240 8006BA40 4400BF8F */  lw         $ra, 0x44($sp)
/* 5C244 8006BA44 4000BE8F */  lw         $fp, 0x40($sp)
/* 5C248 8006BA48 3C00B78F */  lw         $s7, 0x3c($sp)
/* 5C24C 8006BA4C 3800B68F */  lw         $s6, 0x38($sp)
/* 5C250 8006BA50 3400B58F */  lw         $s5, 0x34($sp)
/* 5C254 8006BA54 3000B48F */  lw         $s4, 0x30($sp)
/* 5C258 8006BA58 2C00B38F */  lw         $s3, 0x2c($sp)
/* 5C25C 8006BA5C 2800B28F */  lw         $s2, 0x28($sp)
/* 5C260 8006BA60 2400B18F */  lw         $s1, 0x24($sp)
/* 5C264 8006BA64 2000B08F */  lw         $s0, 0x20($sp)
/* 5C268 8006BA68 0800E003 */  jr         $ra
/* 5C26C 8006BA6C 4800BD27 */   addiu     $sp, $sp, 0x48
