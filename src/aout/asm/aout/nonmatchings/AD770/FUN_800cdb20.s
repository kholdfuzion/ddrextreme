.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cdb20
/* BE320 800CDB20 401F053C */  lui        $a1, 0x1f40
/* BE324 800CDB24 0400A294 */  lhu        $v0, 4($a1)
/* BE328 800CDB28 00000000 */  nop
/* BE32C 800CDB2C 82130200 */  srl        $v0, $v0, 0xe
/* BE330 800CDB30 01004230 */  andi       $v0, $v0, 1
/* BE334 800CDB34 05004014 */  bnez       $v0, .L800CDB4C
/* BE338 800CDB38 F8FFBD27 */   addiu     $sp, $sp, -8
/* BE33C 800CDB3C 24370308 */  j          .L800CDC90
/* BE340 800CDB40 FFFF0224 */   addiu     $v0, $zero, -1
.L800CDB44:
/* BE344 800CDB44 1F370308 */  j          .L800CDC7C
/* BE348 800CDB48 21280000 */   addu      $a1, $zero, $zero
.L800CDB4C:
/* BE34C 800CDB4C 21300000 */  addu       $a2, $zero, $zero
/* BE350 800CDB50 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BE354 800CDB54 2138A000 */  addu       $a3, $a1, $zero
/* BE358 800CDB58 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BE35C 800CDB5C 6A1F023C */  lui        $v0, 0x1f6a
/* BE360 800CDB60 10006334 */  ori        $v1, $v1, 0x10
/* BE364 800CDB64 000043A4 */  sh         $v1, ($v0)
/* BE368 800CDB68 0000A0AF */  sw         $zero, ($sp)
/* BE36C 800CDB6C 0000A28F */  lw         $v0, ($sp)
/* BE370 800CDB70 FFFF0534 */  ori        $a1, $zero, 0xffff
/* BE374 800CDB74 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CDB78:
/* BE378 800CDB78 0400E294 */  lhu        $v0, 4($a3)
/* BE37C 800CDB7C 00000000 */  nop
/* BE380 800CDB80 82130200 */  srl        $v0, $v0, 0xe
/* BE384 800CDB84 01004230 */  andi       $v0, $v0, 1
/* BE388 800CDB88 04004510 */  beq        $v0, $a1, .L800CDB9C
/* BE38C 800CDB8C 00000000 */   nop
/* BE390 800CDB90 0100C624 */  addiu      $a2, $a2, 1
/* BE394 800CDB94 F8FFC018 */  blez       $a2, .L800CDB78
/* BE398 800CDB98 00000000 */   nop
.L800CDB9C:
/* BE39C 800CDB9C 21280000 */  addu       $a1, $zero, $zero
/* BE3A0 800CDBA0 401F083C */  lui        $t0, 0x1f40
/* BE3A4 800CDBA4 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BE3A8 800CDBA8 FFFF0734 */  ori        $a3, $zero, 0xffff
/* BE3AC 800CDBAC 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BE3B0 800CDBB0 6A1F023C */  lui        $v0, 0x1f6a
/* BE3B4 800CDBB4 EFFF6330 */  andi       $v1, $v1, 0xffef
/* BE3B8 800CDBB8 000043A4 */  sh         $v1, ($v0)
/* BE3BC 800CDBBC 0000A0AF */  sw         $zero, ($sp)
/* BE3C0 800CDBC0 0000A28F */  lw         $v0, ($sp)
/* BE3C4 800CDBC4 2080023C */  lui        $v0, %hi(D_801FBCF0)
/* BE3C8 800CDBC8 F0BC46AC */  sw         $a2, %lo(D_801FBCF0)($v0)
/* BE3CC 800CDBCC 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CDBD0:
/* BE3D0 800CDBD0 04000295 */  lhu        $v0, 4($t0)
/* BE3D4 800CDBD4 00000000 */  nop
/* BE3D8 800CDBD8 82130200 */  srl        $v0, $v0, 0xe
/* BE3DC 800CDBDC 01004230 */  andi       $v0, $v0, 1
/* BE3E0 800CDBE0 05004710 */  beq        $v0, $a3, .L800CDBF8
/* BE3E4 800CDBE4 21200000 */   addu      $a0, $zero, $zero
/* BE3E8 800CDBE8 0100A524 */  addiu      $a1, $a1, 1
/* BE3EC 800CDBEC 0F00A228 */  slti       $v0, $a1, 0xf
/* BE3F0 800CDBF0 F7FF4014 */  bnez       $v0, .L800CDBD0
/* BE3F4 800CDBF4 00000000 */   nop
.L800CDBF8:
/* BE3F8 800CDBF8 401F023C */  lui        $v0, 0x1f40
/* BE3FC 800CDBFC 21304000 */  addu       $a2, $v0, $zero
/* BE400 800CDC00 FFFF0734 */  ori        $a3, $zero, 0xffff
/* BE404 800CDC04 0400C294 */  lhu        $v0, 4($a2)
/* BE408 800CDC08 2080033C */  lui        $v1, %hi(D_801FBCF0)
/* BE40C 800CDC0C F0BC65AC */  sw         $a1, %lo(D_801FBCF0)($v1)
/* BE410 800CDC10 82130200 */  srl        $v0, $v0, 0xe
/* BE414 800CDC14 01004830 */  andi       $t0, $v0, 1
.L800CDC18:
/* BE418 800CDC18 0400C294 */  lhu        $v0, 4($a2)
/* BE41C 800CDC1C 00000000 */  nop
/* BE420 800CDC20 82130200 */  srl        $v0, $v0, 0xe
/* BE424 800CDC24 01004230 */  andi       $v0, $v0, 1
/* BE428 800CDC28 05004710 */  beq        $v0, $a3, .L800CDC40
/* BE42C 800CDC2C 2080023C */   lui       $v0, 0x8020
/* BE430 800CDC30 01008424 */  addiu      $a0, $a0, 1
/* BE434 800CDC34 17018228 */  slti       $v0, $a0, 0x117
/* BE438 800CDC38 F7FF4014 */  bnez       $v0, .L800CDC18
/* BE43C 800CDC3C 2080023C */   lui       $v0, %hi(D_801FBCF0)
.L800CDC40:
/* BE440 800CDC40 F0BC44AC */  sw         $a0, %lo(D_801FBCF0)($v0)
/* BE444 800CDC44 FFFF0524 */  addiu      $a1, $zero, -1
/* BE448 800CDC48 21180000 */  addu       $v1, $zero, $zero
/* BE44C 800CDC4C 401F063C */  lui        $a2, 0x1f40
/* BE450 800CDC50 01000424 */  addiu      $a0, $zero, 1
.L800CDC54:
/* BE454 800CDC54 0400C294 */  lhu        $v0, 4($a2)
/* BE458 800CDC58 00000000 */  nop
/* BE45C 800CDC5C 82130200 */  srl        $v0, $v0, 0xe
/* BE460 800CDC60 01004230 */  andi       $v0, $v0, 1
/* BE464 800CDC64 B7FF4410 */  beq        $v0, $a0, .L800CDB44
/* BE468 800CDC68 00000000 */   nop
/* BE46C 800CDC6C 01006324 */  addiu      $v1, $v1, 1
/* BE470 800CDC70 0F006228 */  slti       $v0, $v1, 0xf
/* BE474 800CDC74 F7FF4014 */  bnez       $v0, .L800CDC54
/* BE478 800CDC78 00000000 */   nop
.L800CDC7C:
/* BE47C 800CDC7C 2080023C */  lui        $v0, %hi(D_801FBCF0)
/* BE480 800CDC80 F0BC43AC */  sw         $v1, %lo(D_801FBCF0)($v0)
/* BE484 800CDC84 0200A004 */  bltz       $a1, .L800CDC90
/* BE488 800CDC88 FFFF0224 */   addiu     $v0, $zero, -1
/* BE48C 800CDC8C 21100001 */  addu       $v0, $t0, $zero
.L800CDC90:
/* BE490 800CDC90 0800E003 */  jr         $ra
/* BE494 800CDC94 0800BD27 */   addiu     $sp, $sp, 8
