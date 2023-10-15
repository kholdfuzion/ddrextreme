.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc230
/* ACA30 800BC230 21388000 */  addu       $a3, $a0, $zero
/* ACA34 800BC234 621F063C */  lui        $a2, 0x1f62
/* ACA38 800BC238 F03FC294 */  lhu        $v0, 0x3ff0($a2)
/* ACA3C 800BC23C 621F083C */  lui        $t0, 0x1f62
/* ACA40 800BC240 40004234 */  ori        $v0, $v0, 0x40
/* ACA44 800BC244 F03FC2A4 */  sh         $v0, 0x3ff0($a2)
/* ACA48 800BC248 F23F0495 */  lhu        $a0, 0x3ff2($t0)
/* ACA4C 800BC24C 1C00E0AC */  sw         $zero, 0x1c($a3)
/* ACA50 800BC250 2000E0AC */  sw         $zero, 0x20($a3)
/* ACA54 800BC254 7F008430 */  andi       $a0, $a0, 0x7f
/* ACA58 800BC258 02190400 */  srl        $v1, $a0, 4
/* ACA5C 800BC25C 80100300 */  sll        $v0, $v1, 2
/* ACA60 800BC260 21104300 */  addu       $v0, $v0, $v1
/* ACA64 800BC264 40100200 */  sll        $v0, $v0, 1
/* ACA68 800BC268 0F008430 */  andi       $a0, $a0, 0xf
/* ACA6C 800BC26C 621F033C */  lui        $v1, 0x1f62
/* ACA70 800BC270 F43F6594 */  lhu        $a1, 0x3ff4($v1)
/* ACA74 800BC274 21104400 */  addu       $v0, $v0, $a0
/* ACA78 800BC278 0000E2AC */  sw         $v0, ($a3)
/* ACA7C 800BC27C FF00A530 */  andi       $a1, $a1, 0xff
/* ACA80 800BC280 02190500 */  srl        $v1, $a1, 4
/* ACA84 800BC284 80100300 */  sll        $v0, $v1, 2
/* ACA88 800BC288 21104300 */  addu       $v0, $v0, $v1
/* ACA8C 800BC28C 40100200 */  sll        $v0, $v0, 1
/* ACA90 800BC290 0F00A530 */  andi       $a1, $a1, 0xf
/* ACA94 800BC294 621F033C */  lui        $v1, 0x1f62
/* ACA98 800BC298 F63F6494 */  lhu        $a0, 0x3ff6($v1)
/* ACA9C 800BC29C 21104500 */  addu       $v0, $v0, $a1
/* ACAA0 800BC2A0 0400E2AC */  sw         $v0, 4($a3)
/* ACAA4 800BC2A4 FF008430 */  andi       $a0, $a0, 0xff
/* ACAA8 800BC2A8 02190400 */  srl        $v1, $a0, 4
/* ACAAC 800BC2AC 80100300 */  sll        $v0, $v1, 2
/* ACAB0 800BC2B0 21104300 */  addu       $v0, $v0, $v1
/* ACAB4 800BC2B4 40100200 */  sll        $v0, $v0, 1
/* ACAB8 800BC2B8 0F008430 */  andi       $a0, $a0, 0xf
/* ACABC 800BC2BC 621F033C */  lui        $v1, 0x1f62
/* ACAC0 800BC2C0 FA3F6594 */  lhu        $a1, 0x3ffa($v1)
/* ACAC4 800BC2C4 21104400 */  addu       $v0, $v0, $a0
/* ACAC8 800BC2C8 0800E2AC */  sw         $v0, 8($a3)
/* ACACC 800BC2CC FF00A530 */  andi       $a1, $a1, 0xff
/* ACAD0 800BC2D0 02190500 */  srl        $v1, $a1, 4
/* ACAD4 800BC2D4 80100300 */  sll        $v0, $v1, 2
/* ACAD8 800BC2D8 21104300 */  addu       $v0, $v0, $v1
/* ACADC 800BC2DC 40100200 */  sll        $v0, $v0, 1
/* ACAE0 800BC2E0 0F00A530 */  andi       $a1, $a1, 0xf
/* ACAE4 800BC2E4 621F033C */  lui        $v1, 0x1f62
/* ACAE8 800BC2E8 FC3F6394 */  lhu        $v1, 0x3ffc($v1)
/* ACAEC 800BC2EC 21104500 */  addu       $v0, $v0, $a1
/* ACAF0 800BC2F0 0C00E2AC */  sw         $v0, 0xc($a3)
/* ACAF4 800BC2F4 FF006330 */  andi       $v1, $v1, 0xff
/* ACAF8 800BC2F8 02210300 */  srl        $a0, $v1, 4
/* ACAFC 800BC2FC 80100400 */  sll        $v0, $a0, 2
/* ACB00 800BC300 21104400 */  addu       $v0, $v0, $a0
/* ACB04 800BC304 40100200 */  sll        $v0, $v0, 1
/* ACB08 800BC308 0F006330 */  andi       $v1, $v1, 0xf
/* ACB0C 800BC30C 21104300 */  addu       $v0, $v0, $v1
/* ACB10 800BC310 621F033C */  lui        $v1, 0x1f62
/* ACB14 800BC314 FE3F6494 */  lhu        $a0, 0x3ffe($v1)
/* ACB18 800BC318 FFFF4224 */  addiu      $v0, $v0, -1
/* ACB1C 800BC31C 1000E2AC */  sw         $v0, 0x10($a3)
/* ACB20 800BC320 FF008430 */  andi       $a0, $a0, 0xff
/* ACB24 800BC324 02190400 */  srl        $v1, $a0, 4
/* ACB28 800BC328 80100300 */  sll        $v0, $v1, 2
/* ACB2C 800BC32C 21104300 */  addu       $v0, $v0, $v1
/* ACB30 800BC330 40100200 */  sll        $v0, $v0, 1
/* ACB34 800BC334 0F008430 */  andi       $a0, $a0, 0xf
/* ACB38 800BC338 621F033C */  lui        $v1, 0x1f62
/* ACB3C 800BC33C F83F6394 */  lhu        $v1, 0x3ff8($v1)
/* ACB40 800BC340 21104400 */  addu       $v0, $v0, $a0
/* ACB44 800BC344 1400E2AC */  sw         $v0, 0x14($a3)
/* ACB48 800BC348 FF006330 */  andi       $v1, $v1, 0xff
/* ACB4C 800BC34C 02210300 */  srl        $a0, $v1, 4
/* ACB50 800BC350 80100400 */  sll        $v0, $a0, 2
/* ACB54 800BC354 21104400 */  addu       $v0, $v0, $a0
/* ACB58 800BC358 40100200 */  sll        $v0, $v0, 1
/* ACB5C 800BC35C 0F006330 */  andi       $v1, $v1, 0xf
/* ACB60 800BC360 21104300 */  addu       $v0, $v0, $v1
/* ACB64 800BC364 FFFF4224 */  addiu      $v0, $v0, -1
/* ACB68 800BC368 1800E2AC */  sw         $v0, 0x18($a3)
/* ACB6C 800BC36C F03FC294 */  lhu        $v0, 0x3ff0($a2)
/* ACB70 800BC370 1400E38C */  lw         $v1, 0x14($a3)
/* ACB74 800BC374 BF004230 */  andi       $v0, $v0, 0xbf
/* ACB78 800BC378 F03FC2A4 */  sh         $v0, 0x3ff0($a2)
/* ACB7C 800BC37C 46006228 */  slti       $v0, $v1, 0x46
/* ACB80 800BC380 02004010 */  beqz       $v0, .L800BC38C
/* ACB84 800BC384 64006224 */   addiu     $v0, $v1, 0x64
/* ACB88 800BC388 1400E2AC */  sw         $v0, 0x14($a3)
.L800BC38C:
/* ACB8C 800BC38C F23F0395 */  lhu        $v1, 0x3ff2($t0)
/* ACB90 800BC390 00000000 */  nop
/* ACB94 800BC394 80006330 */  andi       $v1, $v1, 0x80
/* ACB98 800BC398 02006014 */  bnez       $v1, .L800BC3A4
/* ACB9C 800BC39C FFFF0224 */   addiu     $v0, $zero, -1
/* ACBA0 800BC3A0 21100000 */  addu       $v0, $zero, $zero
.L800BC3A4:
/* ACBA4 800BC3A4 0800E003 */  jr         $ra
/* ACBA8 800BC3A8 00000000 */   nop
