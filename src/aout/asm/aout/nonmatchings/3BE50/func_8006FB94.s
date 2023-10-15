.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006FB94
/* 60394 8006FB94 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 60398 8006FB98 3400B5AF */  sw         $s5, 0x34($sp)
/* 6039C 8006FB9C 5C00B58F */  lw         $s5, 0x5c($sp)
/* 603A0 8006FBA0 3000B4AF */  sw         $s4, 0x30($sp)
/* 603A4 8006FBA4 7400B48F */  lw         $s4, 0x74($sp)
/* 603A8 8006FBA8 6400A28F */  lw         $v0, 0x64($sp)
/* 603AC 8006FBAC 2000B0AF */  sw         $s0, 0x20($sp)
/* 603B0 8006FBB0 6800B08F */  lw         $s0, 0x68($sp)
/* 603B4 8006FBB4 2400B1AF */  sw         $s1, 0x24($sp)
/* 603B8 8006FBB8 21888000 */  addu       $s1, $a0, $zero
/* 603BC 8006FBBC 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 603C0 8006FBC0 6C00B78F */  lw         $s7, 0x6c($sp)
/* 603C4 8006FBC4 7000A38F */  lw         $v1, 0x70($sp)
/* 603C8 8006FBC8 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 603CC 8006FBCC 2198A000 */  addu       $s3, $a1, $zero
/* 603D0 8006FBD0 2800B2AF */  sw         $s2, 0x28($sp)
/* 603D4 8006FBD4 6000B28F */  lw         $s2, 0x60($sp)
/* 603D8 8006FBD8 4400BFAF */  sw         $ra, 0x44($sp)
/* 603DC 8006FBDC 4000BEAF */  sw         $fp, 0x40($sp)
/* 603E0 8006FBE0 3800B6AF */  sw         $s6, 0x38($sp)
/* 603E4 8006FBE4 1000B4AF */  sw         $s4, 0x10($sp)
/* 603E8 8006FBE8 1400B5AF */  sw         $s5, 0x14($sp)
/* 603EC 8006FBEC 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 603F0 8006FBF0 04000286 */  lh         $v0, 4($s0)
/* 603F4 8006FBF4 21B0C000 */  addu       $s6, $a2, $zero
/* 603F8 8006FBF8 5400A7AF */  sw         $a3, 0x54($sp)
/* 603FC 8006FBFC 06000786 */  lh         $a3, 6($s0)
/* 60400 8006FC00 21305700 */  addu       $a2, $v0, $s7
/* 60404 8006FC04 0C000286 */  lh         $v0, 0xc($s0)
/* 60408 8006FC08 2138E300 */  addu       $a3, $a3, $v1
/* 6040C 8006FC0C 1769010C */  jal        FUN_8005a45c
/* 60410 8006FC10 1800A2AF */   sw        $v0, 0x18($sp)
/* 60414 8006FC14 21202002 */  addu       $a0, $s1, $zero
/* 60418 8006FC18 16000686 */  lh         $a2, 0x16($s0)
/* 6041C 8006FC1C 18000786 */  lh         $a3, 0x18($s0)
/* 60420 8006FC20 396D010C */  jal        FUN_8005b4e4
/* 60424 8006FC24 21286002 */   addu      $a1, $s3, $zero
/* 60428 8006FC28 21202002 */  addu       $a0, $s1, $zero
/* 6042C 8006FC2C 21286002 */  addu       $a1, $s3, $zero
/* 60430 8006FC30 5400A78F */  lw         $a3, 0x54($sp)
/* 60434 8006FC34 2130C002 */  addu       $a2, $s6, $zero
/* 60438 8006FC38 1000B4AF */  sw         $s4, 0x10($sp)
/* 6043C 8006FC3C 976D010C */  jal        FUN_8005b65c
/* 60440 8006FC40 1400B5AF */   sw        $s5, 0x14($sp)
/* 60444 8006FC44 21202002 */  addu       $a0, $s1, $zero
/* 60448 8006FC48 21286002 */  addu       $a1, $s3, $zero
/* 6044C 8006FC4C 21304002 */  addu       $a2, $s2, $zero
/* 60450 8006FC50 21384002 */  addu       $a3, $s2, $zero
/* 60454 8006FC54 EB6C010C */  jal        FUN_8005b3ac
/* 60458 8006FC58 1000B2AF */   sw        $s2, 0x10($sp)
/* 6045C 8006FC5C 01007E26 */  addiu      $fp, $s3, 1
/* 60460 8006FC60 21202002 */  addu       $a0, $s1, $zero
/* 60464 8006FC64 04000686 */  lh         $a2, 4($s0)
/* 60468 8006FC68 01000224 */  addiu      $v0, $zero, 1
/* 6046C 8006FC6C 1000A2AF */  sw         $v0, 0x10($sp)
/* 60470 8006FC70 6400A28F */  lw         $v0, 0x64($sp)
/* 60474 8006FC74 7000A38F */  lw         $v1, 0x70($sp)
/* 60478 8006FC78 2128C003 */  addu       $a1, $fp, $zero
/* 6047C 8006FC7C 1400B5AF */  sw         $s5, 0x14($sp)
/* 60480 8006FC80 2130D700 */  addu       $a2, $a2, $s7
/* 60484 8006FC84 2130D400 */  addu       $a2, $a2, $s4
/* 60488 8006FC88 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6048C 8006FC8C 06000786 */  lh         $a3, 6($s0)
/* 60490 8006FC90 0C000286 */  lh         $v0, 0xc($s0)
/* 60494 8006FC94 2138E300 */  addu       $a3, $a3, $v1
/* 60498 8006FC98 1769010C */  jal        FUN_8005a45c
/* 6049C 8006FC9C 1800A2AF */   sw        $v0, 0x18($sp)
/* 604A0 8006FCA0 21202002 */  addu       $a0, $s1, $zero
/* 604A4 8006FCA4 16000686 */  lh         $a2, 0x16($s0)
/* 604A8 8006FCA8 18000786 */  lh         $a3, 0x18($s0)
/* 604AC 8006FCAC 396D010C */  jal        FUN_8005b4e4
/* 604B0 8006FCB0 2128C003 */   addu      $a1, $fp, $zero
/* 604B4 8006FCB4 21202002 */  addu       $a0, $s1, $zero
/* 604B8 8006FCB8 2128C003 */  addu       $a1, $fp, $zero
/* 604BC 8006FCBC 21B0D402 */  addu       $s6, $s6, $s4
/* 604C0 8006FCC0 5400A78F */  lw         $a3, 0x54($sp)
/* 604C4 8006FCC4 5800A28F */  lw         $v0, 0x58($sp)
/* 604C8 8006FCC8 2130C002 */  addu       $a2, $s6, $zero
/* 604CC 8006FCCC 1400B5AF */  sw         $s5, 0x14($sp)
/* 604D0 8006FCD0 976D010C */  jal        FUN_8005b65c
/* 604D4 8006FCD4 1000A2AF */   sw        $v0, 0x10($sp)
/* 604D8 8006FCD8 21202002 */  addu       $a0, $s1, $zero
/* 604DC 8006FCDC 2128C003 */  addu       $a1, $fp, $zero
/* 604E0 8006FCE0 21304002 */  addu       $a2, $s2, $zero
/* 604E4 8006FCE4 21384002 */  addu       $a3, $s2, $zero
/* 604E8 8006FCE8 EB6C010C */  jal        FUN_8005b3ac
/* 604EC 8006FCEC 1000B2AF */   sw        $s2, 0x10($sp)
/* 604F0 8006FCF0 02007E26 */  addiu      $fp, $s3, 2
/* 604F4 8006FCF4 04000686 */  lh         $a2, 4($s0)
/* 604F8 8006FCF8 7C00A38F */  lw         $v1, 0x7c($sp)
/* 604FC 8006FCFC 6400A28F */  lw         $v0, 0x64($sp)
/* 60500 8006FD00 21202002 */  addu       $a0, $s1, $zero
/* 60504 8006FD04 1400B5AF */  sw         $s5, 0x14($sp)
/* 60508 8006FD08 2130D700 */  addu       $a2, $a2, $s7
/* 6050C 8006FD0C 1000A3AF */  sw         $v1, 0x10($sp)
/* 60510 8006FD10 7800A38F */  lw         $v1, 0x78($sp)
/* 60514 8006FD14 2130D400 */  addu       $a2, $a2, $s4
/* 60518 8006FD18 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6051C 8006FD1C 06000786 */  lh         $a3, 6($s0)
/* 60520 8006FD20 0C000286 */  lh         $v0, 0xc($s0)
/* 60524 8006FD24 2130C300 */  addu       $a2, $a2, $v1
/* 60528 8006FD28 7000A38F */  lw         $v1, 0x70($sp)
/* 6052C 8006FD2C 2128C003 */  addu       $a1, $fp, $zero
/* 60530 8006FD30 1800A2AF */  sw         $v0, 0x18($sp)
/* 60534 8006FD34 1769010C */  jal        FUN_8005a45c
/* 60538 8006FD38 2138E300 */   addu      $a3, $a3, $v1
/* 6053C 8006FD3C 21202002 */  addu       $a0, $s1, $zero
/* 60540 8006FD40 16000686 */  lh         $a2, 0x16($s0)
/* 60544 8006FD44 18000786 */  lh         $a3, 0x18($s0)
/* 60548 8006FD48 396D010C */  jal        FUN_8005b4e4
/* 6054C 8006FD4C 2128C003 */   addu      $a1, $fp, $zero
/* 60550 8006FD50 21202002 */  addu       $a0, $s1, $zero
/* 60554 8006FD54 5800A28F */  lw         $v0, 0x58($sp)
/* 60558 8006FD58 5400A78F */  lw         $a3, 0x54($sp)
/* 6055C 8006FD5C 7C00A38F */  lw         $v1, 0x7c($sp)
/* 60560 8006FD60 2128C003 */  addu       $a1, $fp, $zero
/* 60564 8006FD64 1400B5AF */  sw         $s5, 0x14($sp)
/* 60568 8006FD68 2130C202 */  addu       $a2, $s6, $v0
/* 6056C 8006FD6C 976D010C */  jal        FUN_8005b65c
/* 60570 8006FD70 1000A3AF */   sw        $v1, 0x10($sp)
/* 60574 8006FD74 21202002 */  addu       $a0, $s1, $zero
/* 60578 8006FD78 2128C003 */  addu       $a1, $fp, $zero
/* 6057C 8006FD7C 21304002 */  addu       $a2, $s2, $zero
/* 60580 8006FD80 2138C000 */  addu       $a3, $a2, $zero
/* 60584 8006FD84 EB6C010C */  jal        FUN_8005b3ac
/* 60588 8006FD88 1000B2AF */   sw        $s2, 0x10($sp)
/* 6058C 8006FD8C 03006226 */  addiu      $v0, $s3, 3
/* 60590 8006FD90 4400BF8F */  lw         $ra, 0x44($sp)
/* 60594 8006FD94 4000BE8F */  lw         $fp, 0x40($sp)
/* 60598 8006FD98 3C00B78F */  lw         $s7, 0x3c($sp)
/* 6059C 8006FD9C 3800B68F */  lw         $s6, 0x38($sp)
/* 605A0 8006FDA0 3400B58F */  lw         $s5, 0x34($sp)
/* 605A4 8006FDA4 3000B48F */  lw         $s4, 0x30($sp)
/* 605A8 8006FDA8 2C00B38F */  lw         $s3, 0x2c($sp)
/* 605AC 8006FDAC 2800B28F */  lw         $s2, 0x28($sp)
/* 605B0 8006FDB0 2400B18F */  lw         $s1, 0x24($sp)
/* 605B4 8006FDB4 2000B08F */  lw         $s0, 0x20($sp)
/* 605B8 8006FDB8 0800E003 */  jr         $ra
/* 605BC 8006FDBC 4800BD27 */   addiu     $sp, $sp, 0x48
