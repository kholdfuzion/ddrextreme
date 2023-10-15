.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007cb88
/* 6D388 8007CB88 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6D38C 8007CB8C 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 6D390 8007CB90 14006290 */  lbu        $v0, 0x14($v1)
/* 6D394 8007CB94 00000000 */  nop
/* 6D398 8007CB98 FFFF4224 */  addiu      $v0, $v0, -1
/* 6D39C 8007CB9C 0200422C */  sltiu      $v0, $v0, 2
/* 6D3A0 8007CBA0 20004010 */  beqz       $v0, .L8007CC24
/* 6D3A4 8007CBA4 02000524 */   addiu     $a1, $zero, 2
/* 6D3A8 8007CBA8 3C006280 */  lb         $v0, 0x3c($v1)
/* 6D3AC 8007CBAC 00000000 */  nop
/* 6D3B0 8007CBB0 18004510 */  beq        $v0, $a1, .L8007CC14
/* 6D3B4 8007CBB4 04000424 */   addiu     $a0, $zero, 4
/* 6D3B8 8007CBB8 16004410 */  beq        $v0, $a0, .L8007CC14
/* 6D3BC 8007CBBC 0100023C */   lui       $v0, 1
/* 6D3C0 8007CBC0 21306200 */  addu       $a2, $v1, $v0
/* 6D3C4 8007CBC4 B842C280 */  lb         $v0, 0x42b8($a2)
/* 6D3C8 8007CBC8 00000000 */  nop
/* 6D3CC 8007CBCC 13004510 */  beq        $v0, $a1, .L8007CC1C
/* 6D3D0 8007CBD0 00000000 */   nop
/* 6D3D4 8007CBD4 11004410 */  beq        $v0, $a0, .L8007CC1C
/* 6D3D8 8007CBD8 00000000 */   nop
/* 6D3DC 8007CBDC 8A006290 */  lbu        $v0, 0x8a($v1)
/* 6D3E0 8007CBE0 07000324 */  addiu      $v1, $zero, 7
/* 6D3E4 8007CBE4 03004310 */  beq        $v0, $v1, .L8007CBF4
/* 6D3E8 8007CBE8 00000000 */   nop
/* 6D3EC 8007CBEC 09004014 */  bnez       $v0, .L8007CC14
/* 6D3F0 8007CBF0 00000000 */   nop
.L8007CBF4:
/* 6D3F4 8007CBF4 0643C290 */  lbu        $v0, 0x4306($a2)
/* 6D3F8 8007CBF8 00000000 */  nop
/* 6D3FC 8007CBFC 03004310 */  beq        $v0, $v1, .L8007CC0C
/* 6D400 8007CC00 00000000 */   nop
/* 6D404 8007CC04 03004014 */  bnez       $v0, .L8007CC14
/* 6D408 8007CC08 00000000 */   nop
.L8007CC0C:
/* 6D40C 8007CC0C 0800E003 */  jr         $ra
/* 6D410 8007CC10 FFFF0224 */   addiu     $v0, $zero, -1
.L8007CC14:
/* 6D414 8007CC14 0800E003 */  jr         $ra
/* 6D418 8007CC18 21100000 */   addu      $v0, $zero, $zero
.L8007CC1C:
/* 6D41C 8007CC1C 0800E003 */  jr         $ra
/* 6D420 8007CC20 01000224 */   addiu     $v0, $zero, 1
.L8007CC24:
/* 6D424 8007CC24 0800E003 */  jr         $ra
/* 6D428 8007CC28 21108000 */   addu      $v0, $a0, $zero
