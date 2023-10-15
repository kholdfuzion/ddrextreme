.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002aa60
/* 1B260 8002AA60 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1B264 8002AA64 1400B1AF */  sw         $s1, 0x14($sp)
/* 1B268 8002AA68 21888000 */  addu       $s1, $a0, $zero
/* 1B26C 8002AA6C 1000B0AF */  sw         $s0, 0x10($sp)
/* 1B270 8002AA70 2180A000 */  addu       $s0, $a1, $zero
/* 1B274 8002AA74 1800B2AF */  sw         $s2, 0x18($sp)
/* 1B278 8002AA78 21900002 */  addu       $s2, $s0, $zero
/* 1B27C 8002AA7C 1C00BFAF */  sw         $ra, 0x1c($sp)
.L8002AA80:
/* 1B280 8002AA80 00002792 */  lbu        $a3, ($s1)
/* 1B284 8002AA84 01003126 */  addiu      $s1, $s1, 1
/* 1B288 8002AA88 21400000 */  addu       $t0, $zero, $zero
/* 1B28C 8002AA8C 0100E230 */  andi       $v0, $a3, 1
.L8002AA90:
/* 1B290 8002AA90 08004014 */  bnez       $v0, .L8002AAB4
/* 1B294 8002AA94 00000000 */   nop
/* 1B298 8002AA98 00002292 */  lbu        $v0, ($s1)
/* 1B29C 8002AA9C 01003126 */  addiu      $s1, $s1, 1
/* 1B2A0 8002AAA0 42380700 */  srl        $a3, $a3, 1
/* 1B2A4 8002AAA4 01000825 */  addiu      $t0, $t0, 1
/* 1B2A8 8002AAA8 000002A2 */  sb         $v0, ($s0)
/* 1B2AC 8002AAAC EBAA0008 */  j          .L8002ABAC
/* 1B2B0 8002AAB0 01001026 */   addiu     $s0, $s0, 1
.L8002AAB4:
/* 1B2B4 8002AAB4 00002592 */  lbu        $a1, ($s1)
/* 1B2B8 8002AAB8 00000000 */  nop
/* 1B2BC 8002AABC 8000A230 */  andi       $v0, $a1, 0x80
/* 1B2C0 8002AAC0 16004014 */  bnez       $v0, .L8002AB1C
/* 1B2C4 8002AAC4 01003126 */   addiu     $s1, $s1, 1
/* 1B2C8 8002AAC8 82100500 */  srl        $v0, $a1, 2
/* 1B2CC 8002AACC 03004624 */  addiu      $a2, $v0, 3
/* 1B2D0 8002AAD0 00002392 */  lbu        $v1, ($s1)
/* 1B2D4 8002AAD4 01003126 */  addiu      $s1, $s1, 1
/* 1B2D8 8002AAD8 21200000 */  addu       $a0, $zero, $zero
/* 1B2DC 8002AADC 42380700 */  srl        $a3, $a3, 1
/* 1B2E0 8002AAE0 01000825 */  addiu      $t0, $t0, 1
/* 1B2E4 8002AAE4 0300A230 */  andi       $v0, $a1, 3
/* 1B2E8 8002AAE8 00120200 */  sll        $v0, $v0, 8
/* 1B2EC 8002AAEC 25104300 */  or         $v0, $v0, $v1
/* 1B2F0 8002AAF0 2E00C010 */  beqz       $a2, .L8002ABAC
/* 1B2F4 8002AAF4 23180202 */   subu      $v1, $s0, $v0
.L8002AAF8:
/* 1B2F8 8002AAF8 00006290 */  lbu        $v0, ($v1)
/* 1B2FC 8002AAFC 01006324 */  addiu      $v1, $v1, 1
/* 1B300 8002AB00 01008424 */  addiu      $a0, $a0, 1
/* 1B304 8002AB04 000002A2 */  sb         $v0, ($s0)
/* 1B308 8002AB08 2B108600 */  sltu       $v0, $a0, $a2
/* 1B30C 8002AB0C FAFF4014 */  bnez       $v0, .L8002AAF8
/* 1B310 8002AB10 01001026 */   addiu     $s0, $s0, 1
/* 1B314 8002AB14 ECAA0008 */  j          .L8002ABB0
/* 1B318 8002AB18 0800022D */   sltiu     $v0, $t0, 8
.L8002AB1C:
/* 1B31C 8002AB1C 4000A230 */  andi       $v0, $a1, 0x40
/* 1B320 8002AB20 14004014 */  bnez       $v0, .L8002AB74
/* 1B324 8002AB24 FF000224 */   addiu     $v0, $zero, 0xff
/* 1B328 8002AB28 02110500 */  srl        $v0, $a1, 4
/* 1B32C 8002AB2C 03004230 */  andi       $v0, $v0, 3
/* 1B330 8002AB30 02004624 */  addiu      $a2, $v0, 2
/* 1B334 8002AB34 0F00A330 */  andi       $v1, $a1, 0xf
/* 1B338 8002AB38 01006324 */  addiu      $v1, $v1, 1
/* 1B33C 8002AB3C 23180302 */  subu       $v1, $s0, $v1
/* 1B340 8002AB40 21200000 */  addu       $a0, $zero, $zero
/* 1B344 8002AB44 42380700 */  srl        $a3, $a3, 1
/* 1B348 8002AB48 1800C010 */  beqz       $a2, .L8002ABAC
/* 1B34C 8002AB4C 01000825 */   addiu     $t0, $t0, 1
.L8002AB50:
/* 1B350 8002AB50 00006290 */  lbu        $v0, ($v1)
/* 1B354 8002AB54 01006324 */  addiu      $v1, $v1, 1
/* 1B358 8002AB58 01008424 */  addiu      $a0, $a0, 1
/* 1B35C 8002AB5C 000002A2 */  sb         $v0, ($s0)
/* 1B360 8002AB60 2B108600 */  sltu       $v0, $a0, $a2
/* 1B364 8002AB64 FAFF4014 */  bnez       $v0, .L8002AB50
/* 1B368 8002AB68 01001026 */   addiu     $s0, $s0, 1
/* 1B36C 8002AB6C ECAA0008 */  j          .L8002ABB0
/* 1B370 8002AB70 0800022D */   sltiu     $v0, $t0, 8
.L8002AB74:
/* 1B374 8002AB74 1400A210 */  beq        $a1, $v0, .L8002ABC8
/* 1B378 8002AB78 3F00A230 */   andi      $v0, $a1, 0x3f
/* 1B37C 8002AB7C 08004624 */  addiu      $a2, $v0, 8
/* 1B380 8002AB80 21200000 */  addu       $a0, $zero, $zero
/* 1B384 8002AB84 42380700 */  srl        $a3, $a3, 1
/* 1B388 8002AB88 0800C010 */  beqz       $a2, .L8002ABAC
/* 1B38C 8002AB8C 01000825 */   addiu     $t0, $t0, 1
.L8002AB90:
/* 1B390 8002AB90 00002292 */  lbu        $v0, ($s1)
/* 1B394 8002AB94 01003126 */  addiu      $s1, $s1, 1
/* 1B398 8002AB98 01008424 */  addiu      $a0, $a0, 1
/* 1B39C 8002AB9C 000002A2 */  sb         $v0, ($s0)
/* 1B3A0 8002ABA0 2B108600 */  sltu       $v0, $a0, $a2
/* 1B3A4 8002ABA4 FAFF4014 */  bnez       $v0, .L8002AB90
/* 1B3A8 8002ABA8 01001026 */   addiu     $s0, $s0, 1
.L8002ABAC:
/* 1B3AC 8002ABAC 0800022D */  sltiu      $v0, $t0, 8
.L8002ABB0:
/* 1B3B0 8002ABB0 B7FF4014 */  bnez       $v0, .L8002AA90
/* 1B3B4 8002ABB4 0100E230 */   andi      $v0, $a3, 1
/* 1B3B8 8002ABB8 7CAA000C */  jal        vsync_8002a9f0
/* 1B3BC 8002ABBC 00000000 */   nop
/* 1B3C0 8002ABC0 A0AA0008 */  j          .L8002AA80
/* 1B3C4 8002ABC4 00000000 */   nop
.L8002ABC8:
/* 1B3C8 8002ABC8 23101202 */  subu       $v0, $s0, $s2
/* 1B3CC 8002ABCC 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 1B3D0 8002ABD0 1800B28F */  lw         $s2, 0x18($sp)
/* 1B3D4 8002ABD4 1400B18F */  lw         $s1, 0x14($sp)
/* 1B3D8 8002ABD8 1000B08F */  lw         $s0, 0x10($sp)
/* 1B3DC 8002ABDC 0800E003 */  jr         $ra
/* 1B3E0 8002ABE0 2000BD27 */   addiu     $sp, $sp, 0x20
