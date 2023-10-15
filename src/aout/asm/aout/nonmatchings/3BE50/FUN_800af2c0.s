.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800af2c0
/* 9FAC0 800AF2C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9FAC4 800AF2C4 1D80023C */  lui        $v0, %hi(D_801D0048)
/* 9FAC8 800AF2C8 48004424 */  addiu      $a0, $v0, %lo(D_801D0048)
/* 9FACC 800AF2CC 1800BFAF */  sw         $ra, 0x18($sp)
/* 9FAD0 800AF2D0 1400B1AF */  sw         $s1, 0x14($sp)
/* 9FAD4 800AF2D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 9FAD8 800AF2D8 03008380 */  lb         $v1, 3($a0)
/* 9FADC 800AF2DC 00000000 */  nop
/* 9FAE0 800AF2E0 07006010 */  beqz       $v1, .L800AF300
/* 9FAE4 800AF2E4 21884000 */   addu      $s1, $v0, $zero
/* 9FAE8 800AF2E8 0C00838C */  lw         $v1, 0xc($a0)
/* 9FAEC 800AF2EC 1400828C */  lw         $v0, 0x14($a0)
/* 9FAF0 800AF2F0 00000000 */  nop
/* 9FAF4 800AF2F4 03006210 */  beq        $v1, $v0, .L800AF304
/* 9FAF8 800AF2F8 48003026 */   addiu     $s0, $s1, 0x48
/* 9FAFC 800AF2FC 030080A0 */  sb         $zero, 3($a0)
.L800AF300:
/* 9FB00 800AF300 48003026 */  addiu      $s0, $s1, 0x48
.L800AF304:
/* 9FB04 800AF304 03000282 */  lb         $v0, 3($s0)
/* 9FB08 800AF308 00000000 */  nop
/* 9FB0C 800AF30C 06004010 */  beqz       $v0, .L800AF328
/* 9FB10 800AF310 00000000 */   nop
/* 9FB14 800AF314 56BA020C */  jal        FUN_800ae958
/* 9FB18 800AF318 00000000 */   nop
/* 9FB1C 800AF31C FFFF0224 */  addiu      $v0, $zero, -1
/* 9FB20 800AF320 030000A2 */  sb         $zero, 3($s0)
/* 9FB24 800AF324 140002AE */  sw         $v0, 0x14($s0)
.L800AF328:
/* 9FB28 800AF328 E2C5020C */  jal        FUN_800b1788
/* 9FB2C 800AF32C 00000000 */   nop
/* 9FB30 800AF330 0E004014 */  bnez       $v0, .L800AF36C
/* 9FB34 800AF334 00000000 */   nop
/* 9FB38 800AF338 1000038E */  lw         $v1, 0x10($s0)
/* 9FB3C 800AF33C 1400028E */  lw         $v0, 0x14($s0)
/* 9FB40 800AF340 00000000 */  nop
/* 9FB44 800AF344 09006210 */  beq        $v1, $v0, .L800AF36C
/* 9FB48 800AF348 00000000 */   nop
/* 9FB4C 800AF34C FFC5020C */  jal        FUN_800b17fc
/* 9FB50 800AF350 00000000 */   nop
/* 9FB54 800AF354 04004010 */  beqz       $v0, .L800AF368
/* 9FB58 800AF358 FFFF0224 */   addiu     $v0, $zero, -1
/* 9FB5C 800AF35C 56BA020C */  jal        FUN_800ae958
/* 9FB60 800AF360 00000000 */   nop
/* 9FB64 800AF364 FFFF0224 */  addiu      $v0, $zero, -1
.L800AF368:
/* 9FB68 800AF368 140002AE */  sw         $v0, 0x14($s0)
.L800AF36C:
/* 9FB6C 800AF36C 48003026 */  addiu      $s0, $s1, 0x48
/* 9FB70 800AF370 0B000282 */  lb         $v0, 0xb($s0)
/* 9FB74 800AF374 00000000 */  nop
/* 9FB78 800AF378 3E004018 */  blez       $v0, .L800AF474
/* 9FB7C 800AF37C 00000000 */   nop
/* 9FB80 800AF380 CD6B000C */  jal        VSync
/* 9FB84 800AF384 FFFF0424 */   addiu     $a0, $zero, -1
/* 9FB88 800AF388 1000058E */  lw         $a1, 0x10($s0)
/* 9FB8C 800AF38C 1400038E */  lw         $v1, 0x14($s0)
/* 9FB90 800AF390 00000000 */  nop
/* 9FB94 800AF394 3300A314 */  bne        $a1, $v1, .L800AF464
/* 9FB98 800AF398 21204000 */   addu      $a0, $v0, $zero
/* 9FB9C 800AF39C 3100A004 */  bltz       $a1, .L800AF464
/* 9FBA0 800AF3A0 1D80053C */   lui       $a1, %hi(D_801D003C)
/* 9FBA4 800AF3A4 3C00A38C */  lw         $v1, %lo(D_801D003C)($a1)
/* 9FBA8 800AF3A8 00000000 */  nop
/* 9FBAC 800AF3AC 2B108300 */  sltu       $v0, $a0, $v1
/* 9FBB0 800AF3B0 04004014 */  bnez       $v0, .L800AF3C4
/* 9FBB4 800AF3B4 23108300 */   subu      $v0, $a0, $v1
/* 9FBB8 800AF3B8 0200422C */  sltiu      $v0, $v0, 2
/* 9FBBC 800AF3BC 0E004014 */  bnez       $v0, .L800AF3F8
/* 9FBC0 800AF3C0 00000000 */   nop
.L800AF3C4:
/* 9FBC4 800AF3C4 FFC5020C */  jal        FUN_800b17fc
/* 9FBC8 800AF3C8 3C00A4AC */   sw        $a0, 0x3c($a1)
/* 9FBCC 800AF3CC 06004014 */  bnez       $v0, .L800AF3E8
/* 9FBD0 800AF3D0 00000000 */   nop
/* 9FBD4 800AF3D4 0B000292 */  lbu        $v0, 0xb($s0)
/* 9FBD8 800AF3D8 00000000 */  nop
/* 9FBDC 800AF3DC FFFF4224 */  addiu      $v0, $v0, -1
/* 9FBE0 800AF3E0 FEBC0208 */  j          .L800AF3F8
/* 9FBE4 800AF3E4 0B0002A2 */   sb        $v0, 0xb($s0)
.L800AF3E8:
/* 9FBE8 800AF3E8 0DC6020C */  jal        FUN_800b1834
/* 9FBEC 800AF3EC 00000000 */   nop
/* 9FBF0 800AF3F0 02000324 */  addiu      $v1, $zero, 2
/* 9FBF4 800AF3F4 0B0003A2 */  sb         $v1, 0xb($s0)
.L800AF3F8:
/* 9FBF8 800AF3F8 48003026 */  addiu      $s0, $s1, 0x48
/* 9FBFC 800AF3FC 0B000282 */  lb         $v0, 0xb($s0)
/* 9FC00 800AF400 00000000 */  nop
/* 9FC04 800AF404 1B00401C */  bgtz       $v0, .L800AF474
/* 9FC08 800AF408 00000000 */   nop
/* 9FC0C 800AF40C 4000028E */  lw         $v0, 0x40($s0)
/* 9FC10 800AF410 00000000 */  nop
/* 9FC14 800AF414 0D004010 */  beqz       $v0, .L800AF44C
/* 9FC18 800AF418 00000000 */   nop
/* 9FC1C 800AF41C 1400048E */  lw         $a0, 0x14($s0)
/* 9FC20 800AF420 09F84000 */  jalr       $v0
/* 9FC24 800AF424 00000000 */   nop
/* 9FC28 800AF428 4400028E */  lw         $v0, 0x44($s0)
/* 9FC2C 800AF42C 00000000 */  nop
/* 9FC30 800AF430 10004010 */  beqz       $v0, .L800AF474
/* 9FC34 800AF434 00000000 */   nop
/* 9FC38 800AF438 1400048E */  lw         $a0, 0x14($s0)
/* 9FC3C 800AF43C 09F84000 */  jalr       $v0
/* 9FC40 800AF440 00000000 */   nop
/* 9FC44 800AF444 1DBD0208 */  j          .L800AF474
/* 9FC48 800AF448 00000000 */   nop
.L800AF44C:
/* 9FC4C 800AF44C 8EC4020C */  jal        FUN_800b1238
/* 9FC50 800AF450 00000000 */   nop
/* 9FC54 800AF454 FFFF0324 */  addiu      $v1, $zero, -1
/* 9FC58 800AF458 100003AE */  sw         $v1, 0x10($s0)
/* 9FC5C 800AF45C 1DBD0208 */  j          .L800AF474
/* 9FC60 800AF460 0A0000A2 */   sb        $zero, 0xa($s0)
.L800AF464:
/* 9FC64 800AF464 48002326 */  addiu      $v1, $s1, 0x48
/* 9FC68 800AF468 FFFF0224 */  addiu      $v0, $zero, -1
/* 9FC6C 800AF46C 0B0060A0 */  sb         $zero, 0xb($v1)
/* 9FC70 800AF470 100062AC */  sw         $v0, 0x10($v1)
.L800AF474:
/* 9FC74 800AF474 BFC2020C */  jal        ChangeTh
/* 9FC78 800AF478 00FF043C */   lui       $a0, 0xff00
/* 9FC7C 800AF47C 1800BF8F */  lw         $ra, 0x18($sp)
/* 9FC80 800AF480 1400B18F */  lw         $s1, 0x14($sp)
/* 9FC84 800AF484 1000B08F */  lw         $s0, 0x10($sp)
/* 9FC88 800AF488 0800E003 */  jr         $ra
/* 9FC8C 800AF48C 2000BD27 */   addiu     $sp, $sp, 0x20
