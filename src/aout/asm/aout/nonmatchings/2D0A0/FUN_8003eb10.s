.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003eb10
/* 2F310 8003EB10 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 2F314 8003EB14 1800B2AF */  sw         $s2, 0x18($sp)
/* 2F318 8003EB18 21908000 */  addu       $s2, $a0, $zero
/* 2F31C 8003EB1C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 2F320 8003EB20 1400B1AF */  sw         $s1, 0x14($sp)
/* 2F324 8003EB24 7DC4000C */  jal        get_astruct_800311f4
/* 2F328 8003EB28 1000B0AF */   sw        $s0, 0x10($sp)
/* 2F32C 8003EB2C 21880000 */  addu       $s1, $zero, $zero
/* 2F330 8003EB30 9019030C */  jal        FUN_800c6640
/* 2F334 8003EB34 21804000 */   addu      $s0, $v0, $zero
/* 2F338 8003EB38 0D004010 */  beqz       $v0, .L8003EB70
/* 2F33C 8003EB3C 01000224 */   addiu     $v0, $zero, 1
/* 2F340 8003EB40 06004216 */  bne        $s2, $v0, .L8003EB5C
/* 2F344 8003EB44 00000000 */   nop
/* 2F348 8003EB48 6E19030C */  jal        FUN_800c65b8
/* 2F34C 8003EB4C 00000000 */   nop
/* 2F350 8003EB50 05005130 */  andi       $s1, $v0, 5
/* 2F354 8003EB54 DBFA0008 */  j          .L8003EB6C
/* 2F358 8003EB58 0500223A */   xori      $v0, $s1, 5
.L8003EB5C:
/* 2F35C 8003EB5C 6E19030C */  jal        FUN_800c65b8
/* 2F360 8003EB60 00000000 */   nop
/* 2F364 8003EB64 50005130 */  andi       $s1, $v0, 0x50
/* 2F368 8003EB68 5000223A */  xori       $v0, $s1, 0x50
.L8003EB6C:
/* 2F36C 8003EB6C 0100512C */  sltiu      $s1, $v0, 1
.L8003EB70:
/* 2F370 8003EB70 08000386 */  lh         $v1, 8($s0)
/* 2F374 8003EB74 01000424 */  addiu      $a0, $zero, 1
/* 2F378 8003EB78 1A006410 */  beq        $v1, $a0, .L8003EBE4
/* 2F37C 8003EB7C 02006228 */   slti      $v0, $v1, 2
/* 2F380 8003EB80 05004010 */  beqz       $v0, .L8003EB98
/* 2F384 8003EB84 02000224 */   addiu     $v0, $zero, 2
/* 2F388 8003EB88 09006010 */  beqz       $v1, .L8003EBB0
/* 2F38C 8003EB8C 00000000 */   nop
/* 2F390 8003EB90 4FFB0008 */  j          .L8003ED3C
/* 2F394 8003EB94 00000000 */   nop
.L8003EB98:
/* 2F398 8003EB98 20006210 */  beq        $v1, $v0, .L8003EC1C
/* 2F39C 8003EB9C 03000224 */   addiu     $v0, $zero, 3
/* 2F3A0 8003EBA0 58006210 */  beq        $v1, $v0, .L8003ED04
/* 2F3A4 8003EBA4 00000000 */   nop
/* 2F3A8 8003EBA8 4FFB0008 */  j          .L8003ED3C
/* 2F3AC 8003EBAC 00000000 */   nop
.L8003EBB0:
/* 2F3B0 8003EBB0 180000A6 */  sh         $zero, 0x18($s0)
/* 2F3B4 8003EBB4 080004A6 */  sh         $a0, 8($s0)
/* 2F3B8 8003EBB8 D80E00AE */  sw         $zero, 0xed8($s0)
/* 2F3BC 8003EBBC D40E00AE */  sw         $zero, 0xed4($s0)
/* 2F3C0 8003EBC0 D00E00AE */  sw         $zero, 0xed0($s0)
/* 2F3C4 8003EBC4 CC0E00AE */  sw         $zero, 0xecc($s0)
/* 2F3C8 8003EBC8 C80E00AE */  sw         $zero, 0xec8($s0)
/* 2F3CC 8003EBCC C40E00AE */  sw         $zero, 0xec4($s0)
/* 2F3D0 8003EBD0 C00E00AE */  sw         $zero, 0xec0($s0)
/* 2F3D4 8003EBD4 03002012 */  beqz       $s1, .L8003EBE4
/* 2F3D8 8003EBD8 BC0E00AE */   sw        $zero, 0xebc($s0)
/* 2F3DC 8003EBDC 03000224 */  addiu      $v0, $zero, 3
/* 2F3E0 8003EBE0 E40E02AE */  sw         $v0, 0xee4($s0)
.L8003EBE4:
/* 2F3E4 8003EBE4 E40E028E */  lw         $v0, 0xee4($s0)
/* 2F3E8 8003EBE8 00000000 */  nop
/* 2F3EC 8003EBEC 21184000 */  addu       $v1, $v0, $zero
/* 2F3F0 8003EBF0 FFFF4224 */  addiu      $v0, $v0, -1
/* 2F3F4 8003EBF4 5100601C */  bgtz       $v1, .L8003ED3C
/* 2F3F8 8003EBF8 E40E02AE */   sw        $v0, 0xee4($s0)
/* 2F3FC 8003EBFC 21204002 */  addu       $a0, $s2, $zero
/* 2F400 8003EC00 1580053C */  lui        $a1, %hi(D_80157238)
/* 2F404 8003EC04 14FC000C */  jal        FUN_8003f050
/* 2F408 8003EC08 3872A524 */   addiu     $a1, $a1, %lo(D_80157238)
/* 2F40C 8003EC0C BC0E02AE */  sw         $v0, 0xebc($s0)
/* 2F410 8003EC10 03000224 */  addiu      $v0, $zero, 3
/* 2F414 8003EC14 4FFB0008 */  j          .L8003ED3C
/* 2F418 8003EC18 080002A6 */   sh        $v0, 8($s0)
.L8003EC1C:
/* 2F41C 8003EC1C 7470000C */  jal        getcoinslot1_8001c1d0
/* 2F420 8003EC20 00000000 */   nop
/* 2F424 8003EC24 06004014 */  bnez       $v0, .L8003EC40
/* 2F428 8003EC28 00000000 */   nop
/* 2F42C 8003EC2C 47B3000C */  jal        FUN_8002cd1c
/* 2F430 8003EC30 01000424 */   addiu     $a0, $zero, 1
/* 2F434 8003EC34 02004010 */  beqz       $v0, .L8003EC40
/* 2F438 8003EC38 00000000 */   nop
/* 2F43C 8003EC3C 180000A6 */  sh         $zero, 0x18($s0)
.L8003EC40:
/* 2F440 8003EC40 7470000C */  jal        getcoinslot1_8001c1d0
/* 2F444 8003EC44 00000000 */   nop
/* 2F448 8003EC48 06004014 */  bnez       $v0, .L8003EC64
/* 2F44C 8003EC4C 00000000 */   nop
/* 2F450 8003EC50 50B3000C */  jal        FUN_8002cd40
/* 2F454 8003EC54 01000424 */   addiu     $a0, $zero, 1
/* 2F458 8003EC58 02004010 */  beqz       $v0, .L8003EC64
/* 2F45C 8003EC5C 01000224 */   addiu     $v0, $zero, 1
/* 2F460 8003EC60 180002A6 */  sh         $v0, 0x18($s0)
.L8003EC64:
/* 2F464 8003EC64 7470000C */  jal        getcoinslot1_8001c1d0
/* 2F468 8003EC68 00000000 */   nop
/* 2F46C 8003EC6C 0B004010 */  beqz       $v0, .L8003EC9C
/* 2F470 8003EC70 00000000 */   nop
/* 2F474 8003EC74 47B3000C */  jal        FUN_8002cd1c
/* 2F478 8003EC78 21200000 */   addu      $a0, $zero, $zero
/* 2F47C 8003EC7C 0B004014 */  bnez       $v0, .L8003ECAC
/* 2F480 8003EC80 00000000 */   nop
/* 2F484 8003EC84 50B3000C */  jal        FUN_8002cd40
/* 2F488 8003EC88 21200000 */   addu      $a0, $zero, $zero
/* 2F48C 8003EC8C 07004014 */  bnez       $v0, .L8003ECAC
/* 2F490 8003EC90 00000000 */   nop
/* 2F494 8003EC94 2FFB0008 */  j          .L8003ECBC
/* 2F498 8003EC98 00000000 */   nop
.L8003EC9C:
/* 2F49C 8003EC9C 35B3000C */  jal        FUN_8002ccd4
/* 2F4A0 8003ECA0 01000424 */   addiu     $a0, $zero, 1
/* 2F4A4 8003ECA4 05004010 */  beqz       $v0, .L8003ECBC
/* 2F4A8 8003ECA8 00000000 */   nop
.L8003ECAC:
/* 2F4AC 8003ECAC 18000296 */  lhu        $v0, 0x18($s0)
/* 2F4B0 8003ECB0 00000000 */  nop
/* 2F4B4 8003ECB4 01004238 */  xori       $v0, $v0, 1
/* 2F4B8 8003ECB8 180002A6 */  sh         $v0, 0x18($s0)
.L8003ECBC:
/* 2F4BC 8003ECBC 6BB3000C */  jal        FUN_8002cdac
/* 2F4C0 8003ECC0 21200000 */   addu      $a0, $zero, $zero
/* 2F4C4 8003ECC4 1D004014 */  bnez       $v0, .L8003ED3C
/* 2F4C8 8003ECC8 00000000 */   nop
/* 2F4CC 8003ECCC 35B3000C */  jal        FUN_8002ccd4
/* 2F4D0 8003ECD0 21200000 */   addu      $a0, $zero, $zero
/* 2F4D4 8003ECD4 19004010 */  beqz       $v0, .L8003ED3C
/* 2F4D8 8003ECD8 00000000 */   nop
/* 2F4DC 8003ECDC 74B3000C */  jal        FUN_8002cdd0
/* 2F4E0 8003ECE0 21200000 */   addu      $a0, $zero, $zero
/* 2F4E4 8003ECE4 15004014 */  bnez       $v0, .L8003ED3C
/* 2F4E8 8003ECE8 00000000 */   nop
/* 2F4EC 8003ECEC 18000286 */  lh         $v0, 0x18($s0)
/* 2F4F0 8003ECF0 00000000 */  nop
/* 2F4F4 8003ECF4 15004014 */  bnez       $v0, .L8003ED4C
/* 2F4F8 8003ECF8 01000224 */   addiu     $v0, $zero, 1
/* 2F4FC 8003ECFC 4FFB0008 */  j          .L8003ED3C
/* 2F500 8003ED00 080000A6 */   sh        $zero, 8($s0)
.L8003ED04:
/* 2F504 8003ED04 11002012 */  beqz       $s1, .L8003ED4C
/* 2F508 8003ED08 01000224 */   addiu     $v0, $zero, 1
/* 2F50C 8003ED0C 6BB3000C */  jal        FUN_8002cdac
/* 2F510 8003ED10 21200000 */   addu      $a0, $zero, $zero
/* 2F514 8003ED14 09004014 */  bnez       $v0, .L8003ED3C
/* 2F518 8003ED18 00000000 */   nop
/* 2F51C 8003ED1C 35B3000C */  jal        FUN_8002ccd4
/* 2F520 8003ED20 21200000 */   addu      $a0, $zero, $zero
/* 2F524 8003ED24 05004010 */  beqz       $v0, .L8003ED3C
/* 2F528 8003ED28 00000000 */   nop
/* 2F52C 8003ED2C 74B3000C */  jal        FUN_8002cdd0
/* 2F530 8003ED30 21200000 */   addu      $a0, $zero, $zero
/* 2F534 8003ED34 05004010 */  beqz       $v0, .L8003ED4C
/* 2F538 8003ED38 01000224 */   addiu     $v0, $zero, 1
.L8003ED3C:
/* 2F53C 8003ED3C 18000486 */  lh         $a0, 0x18($s0)
/* 2F540 8003ED40 59FB000C */  jal        FUN_8003ed64
/* 2F544 8003ED44 21284002 */   addu      $a1, $s2, $zero
/* 2F548 8003ED48 21100000 */  addu       $v0, $zero, $zero
.L8003ED4C:
/* 2F54C 8003ED4C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 2F550 8003ED50 1800B28F */  lw         $s2, 0x18($sp)
/* 2F554 8003ED54 1400B18F */  lw         $s1, 0x14($sp)
/* 2F558 8003ED58 1000B08F */  lw         $s0, 0x10($sp)
/* 2F55C 8003ED5C 0800E003 */  jr         $ra
/* 2F560 8003ED60 2000BD27 */   addiu     $sp, $sp, 0x20
