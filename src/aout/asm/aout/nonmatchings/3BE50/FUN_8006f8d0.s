.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006f8d0
/* 600D0 8006F8D0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 600D4 8006F8D4 3400B5AF */  sw         $s5, 0x34($sp)
/* 600D8 8006F8D8 5800B58F */  lw         $s5, 0x58($sp)
/* 600DC 8006F8DC 3000B4AF */  sw         $s4, 0x30($sp)
/* 600E0 8006F8E0 7000B48F */  lw         $s4, 0x70($sp)
/* 600E4 8006F8E4 2400B1AF */  sw         $s1, 0x24($sp)
/* 600E8 8006F8E8 21888000 */  addu       $s1, $a0, $zero
/* 600EC 8006F8EC 2000B0AF */  sw         $s0, 0x20($sp)
/* 600F0 8006F8F0 6400B08F */  lw         $s0, 0x64($sp)
/* 600F4 8006F8F4 6800A38F */  lw         $v1, 0x68($sp)
/* 600F8 8006F8F8 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 600FC 8006F8FC 2198A000 */  addu       $s3, $a1, $zero
/* 60100 8006F900 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 60104 8006F904 6C00B78F */  lw         $s7, 0x6c($sp)
/* 60108 8006F908 2800B2AF */  sw         $s2, 0x28($sp)
/* 6010C 8006F90C 6000B28F */  lw         $s2, 0x60($sp)
/* 60110 8006F910 FFFF0224 */  addiu      $v0, $zero, -1
/* 60114 8006F914 4400BFAF */  sw         $ra, 0x44($sp)
/* 60118 8006F918 4000BEAF */  sw         $fp, 0x40($sp)
/* 6011C 8006F91C 3800B6AF */  sw         $s6, 0x38($sp)
/* 60120 8006F920 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 60124 8006F924 1000B5AF */  sw         $s5, 0x10($sp)
/* 60128 8006F928 1400B4AF */  sw         $s4, 0x14($sp)
/* 6012C 8006F92C 04000286 */  lh         $v0, 4($s0)
/* 60130 8006F930 21B0E000 */  addu       $s6, $a3, $zero
/* 60134 8006F934 5000A6AF */  sw         $a2, 0x50($sp)
/* 60138 8006F938 06000786 */  lh         $a3, 6($s0)
/* 6013C 8006F93C 21304300 */  addu       $a2, $v0, $v1
/* 60140 8006F940 0C000286 */  lh         $v0, 0xc($s0)
/* 60144 8006F944 2138F700 */  addu       $a3, $a3, $s7
/* 60148 8006F948 1769010C */  jal        FUN_8005a45c
/* 6014C 8006F94C 1800A2AF */   sw        $v0, 0x18($sp)
/* 60150 8006F950 21202002 */  addu       $a0, $s1, $zero
/* 60154 8006F954 16000686 */  lh         $a2, 0x16($s0)
/* 60158 8006F958 18000786 */  lh         $a3, 0x18($s0)
/* 6015C 8006F95C 396D010C */  jal        FUN_8005b4e4
/* 60160 8006F960 21286002 */   addu      $a1, $s3, $zero
/* 60164 8006F964 21202002 */  addu       $a0, $s1, $zero
/* 60168 8006F968 21286002 */  addu       $a1, $s3, $zero
/* 6016C 8006F96C 5000A68F */  lw         $a2, 0x50($sp)
/* 60170 8006F970 2138C002 */  addu       $a3, $s6, $zero
/* 60174 8006F974 1000B5AF */  sw         $s5, 0x10($sp)
/* 60178 8006F978 976D010C */  jal        FUN_8005b65c
/* 6017C 8006F97C 1400B4AF */   sw        $s4, 0x14($sp)
/* 60180 8006F980 21202002 */  addu       $a0, $s1, $zero
/* 60184 8006F984 21286002 */  addu       $a1, $s3, $zero
/* 60188 8006F988 21304002 */  addu       $a2, $s2, $zero
/* 6018C 8006F98C 21384002 */  addu       $a3, $s2, $zero
/* 60190 8006F990 EB6C010C */  jal        FUN_8005b3ac
/* 60194 8006F994 1000B2AF */   sw        $s2, 0x10($sp)
/* 60198 8006F998 01007E26 */  addiu      $fp, $s3, 1
/* 6019C 8006F99C 21202002 */  addu       $a0, $s1, $zero
/* 601A0 8006F9A0 2128C003 */  addu       $a1, $fp, $zero
/* 601A4 8006F9A4 01000224 */  addiu      $v0, $zero, 1
/* 601A8 8006F9A8 1400A2AF */  sw         $v0, 0x14($sp)
/* 601AC 8006F9AC FFFF0224 */  addiu      $v0, $zero, -1
/* 601B0 8006F9B0 1000B5AF */  sw         $s5, 0x10($sp)
/* 601B4 8006F9B4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 601B8 8006F9B8 04000686 */  lh         $a2, 4($s0)
/* 601BC 8006F9BC 06000786 */  lh         $a3, 6($s0)
/* 601C0 8006F9C0 6800A38F */  lw         $v1, 0x68($sp)
/* 601C4 8006F9C4 0C000286 */  lh         $v0, 0xc($s0)
/* 601C8 8006F9C8 2130C300 */  addu       $a2, $a2, $v1
/* 601CC 8006F9CC 2138F700 */  addu       $a3, $a3, $s7
/* 601D0 8006F9D0 2138F400 */  addu       $a3, $a3, $s4
/* 601D4 8006F9D4 1769010C */  jal        FUN_8005a45c
/* 601D8 8006F9D8 1800A2AF */   sw        $v0, 0x18($sp)
/* 601DC 8006F9DC 21202002 */  addu       $a0, $s1, $zero
/* 601E0 8006F9E0 16000686 */  lh         $a2, 0x16($s0)
/* 601E4 8006F9E4 18000786 */  lh         $a3, 0x18($s0)
/* 601E8 8006F9E8 396D010C */  jal        FUN_8005b4e4
/* 601EC 8006F9EC 2128C003 */   addu      $a1, $fp, $zero
/* 601F0 8006F9F0 21202002 */  addu       $a0, $s1, $zero
/* 601F4 8006F9F4 2128C003 */  addu       $a1, $fp, $zero
/* 601F8 8006F9F8 21B0D402 */  addu       $s6, $s6, $s4
/* 601FC 8006F9FC 5000A68F */  lw         $a2, 0x50($sp)
/* 60200 8006FA00 5C00A28F */  lw         $v0, 0x5c($sp)
/* 60204 8006FA04 2138C002 */  addu       $a3, $s6, $zero
/* 60208 8006FA08 1000B5AF */  sw         $s5, 0x10($sp)
/* 6020C 8006FA0C 976D010C */  jal        FUN_8005b65c
/* 60210 8006FA10 1400A2AF */   sw        $v0, 0x14($sp)
/* 60214 8006FA14 21202002 */  addu       $a0, $s1, $zero
/* 60218 8006FA18 2128C003 */  addu       $a1, $fp, $zero
/* 6021C 8006FA1C 21304002 */  addu       $a2, $s2, $zero
/* 60220 8006FA20 21384002 */  addu       $a3, $s2, $zero
/* 60224 8006FA24 EB6C010C */  jal        FUN_8005b3ac
/* 60228 8006FA28 1000B2AF */   sw        $s2, 0x10($sp)
/* 6022C 8006FA2C 02007E26 */  addiu      $fp, $s3, 2
/* 60230 8006FA30 21202002 */  addu       $a0, $s1, $zero
/* 60234 8006FA34 2128C003 */  addu       $a1, $fp, $zero
/* 60238 8006FA38 7800A38F */  lw         $v1, 0x78($sp)
/* 6023C 8006FA3C FFFF0224 */  addiu      $v0, $zero, -1
/* 60240 8006FA40 1000B5AF */  sw         $s5, 0x10($sp)
/* 60244 8006FA44 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 60248 8006FA48 1400A3AF */  sw         $v1, 0x14($sp)
/* 6024C 8006FA4C 04000686 */  lh         $a2, 4($s0)
/* 60250 8006FA50 06000786 */  lh         $a3, 6($s0)
/* 60254 8006FA54 6800A38F */  lw         $v1, 0x68($sp)
/* 60258 8006FA58 0C000286 */  lh         $v0, 0xc($s0)
/* 6025C 8006FA5C 2130C300 */  addu       $a2, $a2, $v1
/* 60260 8006FA60 2138F700 */  addu       $a3, $a3, $s7
/* 60264 8006FA64 7400A38F */  lw         $v1, 0x74($sp)
/* 60268 8006FA68 2138F400 */  addu       $a3, $a3, $s4
/* 6026C 8006FA6C 1800A2AF */  sw         $v0, 0x18($sp)
/* 60270 8006FA70 1769010C */  jal        FUN_8005a45c
/* 60274 8006FA74 2138E300 */   addu      $a3, $a3, $v1
/* 60278 8006FA78 21202002 */  addu       $a0, $s1, $zero
/* 6027C 8006FA7C 16000686 */  lh         $a2, 0x16($s0)
/* 60280 8006FA80 18000786 */  lh         $a3, 0x18($s0)
/* 60284 8006FA84 396D010C */  jal        FUN_8005b4e4
/* 60288 8006FA88 2128C003 */   addu      $a1, $fp, $zero
/* 6028C 8006FA8C 21202002 */  addu       $a0, $s1, $zero
/* 60290 8006FA90 5000A68F */  lw         $a2, 0x50($sp)
/* 60294 8006FA94 5C00A28F */  lw         $v0, 0x5c($sp)
/* 60298 8006FA98 7800A38F */  lw         $v1, 0x78($sp)
/* 6029C 8006FA9C 2128C003 */  addu       $a1, $fp, $zero
/* 602A0 8006FAA0 1000B5AF */  sw         $s5, 0x10($sp)
/* 602A4 8006FAA4 2138C202 */  addu       $a3, $s6, $v0
/* 602A8 8006FAA8 976D010C */  jal        FUN_8005b65c
/* 602AC 8006FAAC 1400A3AF */   sw        $v1, 0x14($sp)
/* 602B0 8006FAB0 21202002 */  addu       $a0, $s1, $zero
/* 602B4 8006FAB4 2128C003 */  addu       $a1, $fp, $zero
/* 602B8 8006FAB8 21304002 */  addu       $a2, $s2, $zero
/* 602BC 8006FABC 2138C000 */  addu       $a3, $a2, $zero
/* 602C0 8006FAC0 EB6C010C */  jal        FUN_8005b3ac
/* 602C4 8006FAC4 1000B2AF */   sw        $s2, 0x10($sp)
/* 602C8 8006FAC8 03006226 */  addiu      $v0, $s3, 3
/* 602CC 8006FACC 4400BF8F */  lw         $ra, 0x44($sp)
/* 602D0 8006FAD0 4000BE8F */  lw         $fp, 0x40($sp)
/* 602D4 8006FAD4 3C00B78F */  lw         $s7, 0x3c($sp)
/* 602D8 8006FAD8 3800B68F */  lw         $s6, 0x38($sp)
/* 602DC 8006FADC 3400B58F */  lw         $s5, 0x34($sp)
/* 602E0 8006FAE0 3000B48F */  lw         $s4, 0x30($sp)
/* 602E4 8006FAE4 2C00B38F */  lw         $s3, 0x2c($sp)
/* 602E8 8006FAE8 2800B28F */  lw         $s2, 0x28($sp)
/* 602EC 8006FAEC 2400B18F */  lw         $s1, 0x24($sp)
/* 602F0 8006FAF0 2000B08F */  lw         $s0, 0x20($sp)
/* 602F4 8006FAF4 0800E003 */  jr         $ra
/* 602F8 8006FAF8 4800BD27 */   addiu     $sp, $sp, 0x48
