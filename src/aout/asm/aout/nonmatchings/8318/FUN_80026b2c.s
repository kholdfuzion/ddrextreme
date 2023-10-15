.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80026b2c
/* 1732C 80026B2C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17330 80026B30 1000B0AF */  sw         $s0, 0x10($sp)
/* 17334 80026B34 0F80103C */  lui        $s0, %hi(D_800F0028)
/* 17338 80026B38 28000386 */  lh         $v1, %lo(D_800F0028)($s0)
/* 1733C 80026B3C 16000224 */  addiu      $v0, $zero, 0x16
/* 17340 80026B40 03006210 */  beq        $v1, $v0, .L80026B50
/* 17344 80026B44 1400BFAF */   sw        $ra, 0x14($sp)
/* 17348 80026B48 0C7A010C */  jal        FUN_8005e830
/* 1734C 80026B4C 00000000 */   nop
.L80026B50:
/* 17350 80026B50 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 17354 80026B54 1A000324 */  addiu      $v1, $zero, 0x1a
/* 17358 80026B58 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 1735C 80026B5C A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 17360 80026B60 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 17364 80026B64 280003A6 */  sh         $v1, 0x28($s0)
/* 17368 80026B68 B40D828C */  lw         $v0, 0xdb4($a0)
/* 1736C 80026B6C 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 17370 80026B70 24104300 */  and        $v0, $v0, $v1
/* 17374 80026B74 20004234 */  ori        $v0, $v0, 0x20
/* 17378 80026B78 1728010C */  jal        FUN_8004a05c
/* 1737C 80026B7C B40D82AC */   sw        $v0, 0xdb4($a0)
/* 17380 80026B80 1400BF8F */  lw         $ra, 0x14($sp)
/* 17384 80026B84 1000B08F */  lw         $s0, 0x10($sp)
/* 17388 80026B88 0800E003 */  jr         $ra
/* 1738C 80026B8C 1800BD27 */   addiu     $sp, $sp, 0x18
