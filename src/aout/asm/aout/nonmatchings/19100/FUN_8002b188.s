.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002b188
/* 1B988 8002B188 0D80023C */  lui        $v0, %hi(D_800D2B00)
/* 1B98C 8002B18C 002B458C */  lw         $a1, %lo(D_800D2B00)($v0)
/* 1B990 8002B190 03000324 */  addiu      $v1, $zero, 3
/* 1B994 8002B194 120080A4 */  sh         $zero, 0x12($a0)
/* 1B998 8002B198 0200A014 */  bnez       $a1, .L8002B1A4
/* 1B99C 8002B19C 100080A4 */   sh        $zero, 0x10($a0)
/* 1B9A0 8002B1A0 02000324 */  addiu      $v1, $zero, 2
.L8002B1A4:
/* 1B9A4 8002B1A4 200083A4 */  sh         $v1, 0x20($a0)
/* 1B9A8 8002B1A8 0200A014 */  bnez       $a1, .L8002B1B4
/* 1B9AC 8002B1AC 03000224 */   addiu     $v0, $zero, 3
/* 1B9B0 8002B1B0 02000224 */  addiu      $v0, $zero, 2
.L8002B1B4:
/* 1B9B4 8002B1B4 220082A4 */  sh         $v0, 0x22($a0)
/* 1B9B8 8002B1B8 0200A014 */  bnez       $a1, .L8002B1C4
/* 1B9BC 8002B1BC 03000224 */   addiu     $v0, $zero, 3
/* 1B9C0 8002B1C0 02000224 */  addiu      $v0, $zero, 2
.L8002B1C4:
/* 1B9C4 8002B1C4 0A000324 */  addiu      $v1, $zero, 0xa
/* 1B9C8 8002B1C8 01000624 */  addiu      $a2, $zero, 1
/* 1B9CC 8002B1CC 240082A4 */  sh         $v0, 0x24($a0)
/* 1B9D0 8002B1D0 260086A4 */  sh         $a2, 0x26($a0)
/* 1B9D4 8002B1D4 280086A4 */  sh         $a2, 0x28($a0)
/* 1B9D8 8002B1D8 2A0086A4 */  sh         $a2, 0x2a($a0)
/* 1B9DC 8002B1DC 2C0086A4 */  sh         $a2, 0x2c($a0)
/* 1B9E0 8002B1E0 0200A014 */  bnez       $a1, .L8002B1EC
/* 1B9E4 8002B1E4 2E0086A4 */   sh        $a2, 0x2e($a0)
/* 1B9E8 8002B1E8 07000324 */  addiu      $v1, $zero, 7
.L8002B1EC:
/* 1B9EC 8002B1EC 140083A4 */  sh         $v1, 0x14($a0)
/* 1B9F0 8002B1F0 0200A014 */  bnez       $a1, .L8002B1FC
/* 1B9F4 8002B1F4 0A000224 */   addiu     $v0, $zero, 0xa
/* 1B9F8 8002B1F8 07000224 */  addiu      $v0, $zero, 7
.L8002B1FC:
/* 1B9FC 8002B1FC 160082A4 */  sh         $v0, 0x16($a0)
/* 1BA00 8002B200 0200A014 */  bnez       $a1, .L8002B20C
/* 1BA04 8002B204 0A000224 */   addiu     $v0, $zero, 0xa
/* 1BA08 8002B208 07000224 */  addiu      $v0, $zero, 7
.L8002B20C:
/* 1BA0C 8002B20C 02000724 */  addiu      $a3, $zero, 2
/* 1BA10 8002B210 04000324 */  addiu      $v1, $zero, 4
/* 1BA14 8002B214 180082A4 */  sh         $v0, 0x18($a0)
/* 1BA18 8002B218 03000224 */  addiu      $v0, $zero, 3
/* 1BA1C 8002B21C 360083A4 */  sh         $v1, 0x36($a0)
/* 1BA20 8002B220 400082A4 */  sh         $v0, 0x40($a0)
/* 1BA24 8002B224 420082A4 */  sh         $v0, 0x42($a0)
/* 1BA28 8002B228 0200A014 */  bnez       $a1, .L8002B234
/* 1BA2C 8002B22C 440083A4 */   sh        $v1, 0x44($a0)
/* 1BA30 8002B230 01000724 */  addiu      $a3, $zero, 1
.L8002B234:
/* 1BA34 8002B234 0F000224 */  addiu      $v0, $zero, 0xf
/* 1BA38 8002B238 320082A4 */  sh         $v0, 0x32($a0)
/* 1BA3C 8002B23C 01000224 */  addiu      $v0, $zero, 1
/* 1BA40 8002B240 3A0087A4 */  sh         $a3, 0x3a($a0)
/* 1BA44 8002B244 340080A4 */  sh         $zero, 0x34($a0)
/* 1BA48 8002B248 300080A4 */  sh         $zero, 0x30($a0)
/* 1BA4C 8002B24C 1E0080A4 */  sh         $zero, 0x1e($a0)
/* 1BA50 8002B250 380086A4 */  sh         $a2, 0x38($a0)
/* 1BA54 8002B254 3C0086A4 */  sh         $a2, 0x3c($a0)
/* 1BA58 8002B258 0800E003 */  jr         $ra
/* 1BA5C 8002B25C 3E0086A4 */   sh        $a2, 0x3e($a0)
