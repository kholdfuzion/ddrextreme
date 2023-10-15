.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_DMA_OBJ_4C
/* C280 8001BA80 0D80023C */  lui        $v0, %hi(D_800D3E38)
/* C284 8001BA84 383E428C */  lw         $v0, %lo(D_800D3E38)($v0)
/* C288 8001BA88 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C28C 8001BA8C 2800BFAF */  sw         $ra, 0x28($sp)
/* C290 8001BA90 2400B5AF */  sw         $s5, 0x24($sp)
/* C294 8001BA94 2000B4AF */  sw         $s4, 0x20($sp)
/* C298 8001BA98 1C00B3AF */  sw         $s3, 0x1c($sp)
/* C29C 8001BA9C 1800B2AF */  sw         $s2, 0x18($sp)
/* C2A0 8001BAA0 1400B1AF */  sw         $s1, 0x14($sp)
/* C2A4 8001BAA4 1000B0AF */  sw         $s0, 0x10($sp)
/* C2A8 8001BAA8 0000428C */  lw         $v0, ($v0)
/* C2AC 8001BAAC 00000000 */  nop
/* C2B0 8001BAB0 02160200 */  srl        $v0, $v0, 0x18
/* C2B4 8001BAB4 7F005130 */  andi       $s1, $v0, 0x7f
/* C2B8 8001BAB8 28002012 */  beqz       $s1, .L8001BB5C
/* C2BC 8001BABC 00000000 */   nop
/* C2C0 8001BAC0 01001424 */  addiu      $s4, $zero, 1
/* C2C4 8001BAC4 FF00133C */  lui        $s3, 0xff
/* C2C8 8001BAC8 FFFF7336 */  ori        $s3, $s3, 0xffff
/* C2CC 8001BACC 0D80153C */  lui        $s5, %hi(D_800D3E3C)
/* C2D0 8001BAD0 3C3EB526 */  addiu      $s5, $s5, %lo(D_800D3E3C)
.L8001BAD4:
/* C2D4 8001BAD4 18002012 */  beqz       $s1, .L8001BB38
/* C2D8 8001BAD8 21800000 */   addu      $s0, $zero, $zero
/* C2DC 8001BADC 2190A002 */  addu       $s2, $s5, $zero
.L8001BAE0:
/* C2E0 8001BAE0 0700022A */  slti       $v0, $s0, 7
/* C2E4 8001BAE4 14004010 */  beqz       $v0, .L8001BB38
/* C2E8 8001BAE8 01002232 */   andi      $v0, $s1, 1
/* C2EC 8001BAEC 0E004010 */  beqz       $v0, .L8001BB28
/* C2F0 8001BAF0 18000226 */   addiu     $v0, $s0, 0x18
/* C2F4 8001BAF4 0D80043C */  lui        $a0, %hi(D_800D3E38)
/* C2F8 8001BAF8 383E848C */  lw         $a0, %lo(D_800D3E38)($a0)
/* C2FC 8001BAFC 04105400 */  sllv       $v0, $s4, $v0
/* C300 8001BB00 0000838C */  lw         $v1, ($a0)
/* C304 8001BB04 25105300 */  or         $v0, $v0, $s3
/* C308 8001BB08 24186200 */  and        $v1, $v1, $v0
/* C30C 8001BB0C 000083AC */  sw         $v1, ($a0)
/* C310 8001BB10 0000428E */  lw         $v0, ($s2)
/* C314 8001BB14 00000000 */  nop
/* C318 8001BB18 03004010 */  beqz       $v0, .L8001BB28
/* C31C 8001BB1C 00000000 */   nop
/* C320 8001BB20 09F84000 */  jalr       $v0
/* C324 8001BB24 00000000 */   nop
.L8001BB28:
/* C328 8001BB28 04005226 */  addiu      $s2, $s2, 4
/* C32C 8001BB2C 42881100 */  srl        $s1, $s1, 1
/* C330 8001BB30 EBFF2016 */  bnez       $s1, .L8001BAE0
/* C334 8001BB34 01001026 */   addiu     $s0, $s0, 1
.L8001BB38:
/* C338 8001BB38 0D80023C */  lui        $v0, %hi(D_800D3E38)
/* C33C 8001BB3C 383E428C */  lw         $v0, %lo(D_800D3E38)($v0)
/* C340 8001BB40 00000000 */  nop
/* C344 8001BB44 0000428C */  lw         $v0, ($v0)
/* C348 8001BB48 00000000 */  nop
/* C34C 8001BB4C 02160200 */  srl        $v0, $v0, 0x18
/* C350 8001BB50 7F005130 */  andi       $s1, $v0, 0x7f
/* C354 8001BB54 DFFF2016 */  bnez       $s1, .L8001BAD4
/* C358 8001BB58 00000000 */   nop
.L8001BB5C:
/* C35C 8001BB5C 0D80053C */  lui        $a1, %hi(D_800D3E38)
/* C360 8001BB60 383EA58C */  lw         $a1, %lo(D_800D3E38)($a1)
/* C364 8001BB64 00000000 */  nop
/* C368 8001BB68 0000A28C */  lw         $v0, ($a1)
/* C36C 8001BB6C 00FF033C */  lui        $v1, 0xff00
/* C370 8001BB70 24104300 */  and        $v0, $v0, $v1
/* C374 8001BB74 0080033C */  lui        $v1, 0x8000
/* C378 8001BB78 06004310 */  beq        $v0, $v1, .L8001BB94
/* C37C 8001BB7C 00000000 */   nop
/* C380 8001BB80 0000A28C */  lw         $v0, ($a1)
/* C384 8001BB84 00000000 */  nop
/* C388 8001BB88 00804230 */  andi       $v0, $v0, 0x8000
/* C38C 8001BB8C 13004010 */  beqz       $v0, .L8001BBDC
/* C390 8001BB90 00000000 */   nop
.L8001BB94:
/* C394 8001BB94 0180043C */  lui        $a0, %hi(D_80010340)
/* C398 8001BB98 40038424 */  addiu      $a0, $a0, %lo(D_80010340)
/* C39C 8001BB9C 0000A58C */  lw         $a1, ($a1)
/* C3A0 8001BBA0 755F000C */  jal        FUN_80017dd4
/* C3A4 8001BBA4 21800000 */   addu      $s0, $zero, $zero
.L8001BBA8:
/* C3A8 8001BBA8 0180043C */  lui        $a0, %hi(D_8001035C)
/* C3AC 8001BBAC 5C038424 */  addiu      $a0, $a0, %lo(D_8001035C)
/* C3B0 8001BBB0 21280002 */  addu       $a1, $s0, $zero
/* C3B4 8001BBB4 0D80023C */  lui        $v0, %hi(D_800D3E5C)
/* C3B8 8001BBB8 5C3E428C */  lw         $v0, %lo(D_800D3E5C)($v0)
/* C3BC 8001BBBC 00191000 */  sll        $v1, $s0, 4
/* C3C0 8001BBC0 21186200 */  addu       $v1, $v1, $v0
/* C3C4 8001BBC4 0000668C */  lw         $a2, ($v1)
/* C3C8 8001BBC8 755F000C */  jal        FUN_80017dd4
/* C3CC 8001BBCC 01001026 */   addiu     $s0, $s0, 1
/* C3D0 8001BBD0 0700022A */  slti       $v0, $s0, 7
/* C3D4 8001BBD4 F4FF4014 */  bnez       $v0, .L8001BBA8
/* C3D8 8001BBD8 00000000 */   nop
.L8001BBDC:
/* C3DC 8001BBDC 2800BF8F */  lw         $ra, 0x28($sp)
/* C3E0 8001BBE0 2400B58F */  lw         $s5, 0x24($sp)
/* C3E4 8001BBE4 2000B48F */  lw         $s4, 0x20($sp)
/* C3E8 8001BBE8 1C00B38F */  lw         $s3, 0x1c($sp)
/* C3EC 8001BBEC 1800B28F */  lw         $s2, 0x18($sp)
/* C3F0 8001BBF0 1400B18F */  lw         $s1, 0x14($sp)
/* C3F4 8001BBF4 1000B08F */  lw         $s0, 0x10($sp)
/* C3F8 8001BBF8 0800E003 */  jr         $ra
/* C3FC 8001BBFC 3000BD27 */   addiu     $sp, $sp, 0x30
