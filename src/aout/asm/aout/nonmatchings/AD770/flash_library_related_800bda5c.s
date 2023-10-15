.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel flash_library_related_800bda5c
/* AE25C 800BDA5C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AE260 800BDA60 1000B0AF */  sw         $s0, 0x10($sp)
/* AE264 800BDA64 0F80103C */  lui        $s0, %hi(D_800EE1AC)
/* AE268 800BDA68 ACE1028E */  lw         $v0, %lo(D_800EE1AC)($s0)
/* AE26C 800BDA6C 1400B1AF */  sw         $s1, 0x14($sp)
/* AE270 800BDA70 21888000 */  addu       $s1, $a0, $zero
/* AE274 800BDA74 1800B2AF */  sw         $s2, 0x18($sp)
/* AE278 800BDA78 2190A000 */  addu       $s2, $a1, $zero
/* AE27C 800BDA7C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AE280 800BDA80 2198C000 */  addu       $s3, $a2, $zero
/* AE284 800BDA84 0E004014 */  bnez       $v0, .L800BDAC0
/* AE288 800BDA88 2000BFAF */   sw        $ra, 0x20($sp)
/* AE28C 800BDA8C 0F80043C */  lui        $a0, %hi(D_800EE1B0)
/* AE290 800BDA90 C2FA020C */  jal        FUN_800beb08
/* AE294 800BDA94 B0E18424 */   addiu     $a0, $a0, %lo(D_800EE1B0)
/* AE298 800BDA98 07004004 */  bltz       $v0, .L800BDAB8
/* AE29C 800BDA9C FFFF0224 */   addiu     $v0, $zero, -1
/* AE2A0 800BDAA0 0F80043C */  lui        $a0, %hi(D_800EE0E4)
/* AE2A4 800BDAA4 7E81000C */  jal        strlen
/* AE2A8 800BDAA8 E4E08424 */   addiu     $a0, $a0, %lo(D_800EE0E4)
/* AE2AC 800BDAAC 01000224 */  addiu      $v0, $zero, 1
/* AE2B0 800BDAB0 ACE102AE */  sw         $v0, -0x1e54($s0)
/* AE2B4 800BDAB4 21100000 */  addu       $v0, $zero, $zero
.L800BDAB8:
/* AE2B8 800BDAB8 46004004 */  bltz       $v0, .L800BDBD4
/* AE2BC 800BDABC FFFF0224 */   addiu     $v0, $zero, -1
.L800BDAC0:
/* AE2C0 800BDAC0 57F0020C */  jal        FUN_800bc15c
/* AE2C4 800BDAC4 FFFF2432 */   andi      $a0, $s1, 0xffff
/* AE2C8 800BDAC8 34F0020C */  jal        FUN_800bc0d0
/* AE2CC 800BDACC FFFF4432 */   andi      $a0, $s2, 0xffff
/* AE2D0 800BDAD0 21300000 */  addu       $a2, $zero, $zero
/* AE2D4 800BDAD4 001F073C */  lui        $a3, 0x1f00
/* AE2D8 800BDAD8 FFFF0834 */  ori        $t0, $zero, 0xffff
/* AE2DC 800BDADC 0000E524 */  addiu      $a1, $a3, 0
/* AE2E0 800BDAE0 AAAA0234 */  ori        $v0, $zero, 0xaaaa
/* AE2E4 800BDAE4 0000E8A4 */  sh         $t0, ($a3)
/* AE2E8 800BDAE8 0000E8A4 */  sh         $t0, ($a3)
/* AE2EC 800BDAEC AA0AA2A4 */  sh         $v0, 0xaaa($a1)
/* AE2F0 800BDAF0 55550224 */  addiu      $v0, $zero, 0x5555
/* AE2F4 800BDAF4 5405A2A4 */  sh         $v0, 0x554($a1)
/* AE2F8 800BDAF8 90900234 */  ori        $v0, $zero, 0x9090
/* AE2FC 800BDAFC AA0AA2A4 */  sh         $v0, 0xaaa($a1)
/* AE300 800BDB00 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AE304 800BDB04 2B20D300 */  sltu       $a0, $a2, $s3
/* AE308 800BDB08 C0200400 */  sll        $a0, $a0, 3
/* AE30C 800BDB0C F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AE310 800BDB10 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AE314 800BDB14 0000E394 */  lhu        $v1, ($a3)
/* AE318 800BDB18 0200A294 */  lhu        $v0, 2($a1)
/* AE31C 800BDB1C 07188300 */  srav       $v1, $v1, $a0
/* AE320 800BDB20 FF006330 */  andi       $v1, $v1, 0xff
/* AE324 800BDB24 07108200 */  srav       $v0, $v0, $a0
/* AE328 800BDB28 FF004430 */  andi       $a0, $v0, 0xff
/* AE32C 800BDB2C 89000224 */  addiu      $v0, $zero, 0x89
/* AE330 800BDB30 08006214 */  bne        $v1, $v0, .L800BDB54
/* AE334 800BDB34 04000224 */   addiu     $v0, $zero, 4
/* AE338 800BDB38 AA000224 */  addiu      $v0, $zero, 0xaa
/* AE33C 800BDB3C 05008214 */  bne        $a0, $v0, .L800BDB54
/* AE340 800BDB40 04000224 */   addiu     $v0, $zero, 4
/* AE344 800BDB44 01000624 */  addiu      $a2, $zero, 1
/* AE348 800BDB48 0000E8A4 */  sh         $t0, ($a3)
/* AE34C 800BDB4C E9F60208 */  j          .L800BDBA4
/* AE350 800BDB50 1F80023C */   lui       $v0, 0x801f
.L800BDB54:
/* AE354 800BDB54 10006214 */  bne        $v1, $v0, .L800BDB98
/* AE358 800BDB58 001F033C */   lui       $v1, 0x1f00
/* AE35C 800BDB5C FFFF8330 */  andi       $v1, $a0, 0xffff
/* AE360 800BDB60 AD000224 */  addiu      $v0, $zero, 0xad
/* AE364 800BDB64 03006210 */  beq        $v1, $v0, .L800BDB74
/* AE368 800BDB68 3D000224 */   addiu     $v0, $zero, 0x3d
/* AE36C 800BDB6C 05006214 */  bne        $v1, $v0, .L800BDB84
/* AE370 800BDB70 A4000224 */   addiu     $v0, $zero, 0xa4
.L800BDB74:
/* AE374 800BDB74 02000624 */  addiu      $a2, $zero, 2
/* AE378 800BDB78 001F033C */  lui        $v1, 0x1f00
/* AE37C 800BDB7C E7F60208 */  j          .L800BDB9C
/* AE380 800BDB80 F0F00234 */   ori       $v0, $zero, 0xf0f0
.L800BDB84:
/* AE384 800BDB84 04006214 */  bne        $v1, $v0, .L800BDB98
/* AE388 800BDB88 001F033C */   lui       $v1, 0x1f00
/* AE38C 800BDB8C 03000624 */  addiu      $a2, $zero, 3
/* AE390 800BDB90 E7F60208 */  j          .L800BDB9C
/* AE394 800BDB94 F0F00234 */   ori       $v0, $zero, 0xf0f0
.L800BDB98:
/* AE398 800BDB98 FFFF0234 */  ori        $v0, $zero, 0xffff
.L800BDB9C:
/* AE39C 800BDB9C 000062A4 */  sh         $v0, ($v1)
/* AE3A0 800BDBA0 1F80023C */  lui        $v0, %hi(D_801F6FF8)
.L800BDBA4:
/* AE3A4 800BDBA4 0F80033C */  lui        $v1, %hi(D_800EE1A8)
/* AE3A8 800BDBA8 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AE3AC 800BDBAC F86F428C */  lw         $v0, 0x6ff8($v0)
/* AE3B0 800BDBB0 0400C22C */  sltiu      $v0, $a2, 4
/* AE3B4 800BDBB4 02004010 */  beqz       $v0, .L800BDBC0
/* AE3B8 800BDBB8 A8E160AC */   sw        $zero, %lo(D_800EE1A8)($v1)
/* AE3BC 800BDBBC A8E166AC */  sw         $a2, -0x1e58($v1)
.L800BDBC0:
/* AE3C0 800BDBC0 2110C000 */  addu       $v0, $a2, $zero
/* AE3C4 800BDBC4 1F80033C */  lui        $v1, %hi(D_801F6FF4)
/* AE3C8 800BDBC8 F46F60AC */  sw         $zero, %lo(D_801F6FF4)($v1)
/* AE3CC 800BDBCC 1F80033C */  lui        $v1, %hi(D_801F6FF0)
/* AE3D0 800BDBD0 F06F60AC */  sw         $zero, %lo(D_801F6FF0)($v1)
.L800BDBD4:
/* AE3D4 800BDBD4 2000BF8F */  lw         $ra, 0x20($sp)
/* AE3D8 800BDBD8 1C00B38F */  lw         $s3, 0x1c($sp)
/* AE3DC 800BDBDC 1800B28F */  lw         $s2, 0x18($sp)
/* AE3E0 800BDBE0 1400B18F */  lw         $s1, 0x14($sp)
/* AE3E4 800BDBE4 1000B08F */  lw         $s0, 0x10($sp)
/* AE3E8 800BDBE8 0800E003 */  jr         $ra
/* AE3EC 800BDBEC 2800BD27 */   addiu     $sp, $sp, 0x28
