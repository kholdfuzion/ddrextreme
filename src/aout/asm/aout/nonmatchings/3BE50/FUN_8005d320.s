.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d320
/* 4DB20 8005D320 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4DB24 8005D324 21408000 */  addu       $t0, $a0, $zero
/* 4DB28 8005D328 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4DB2C 8005D32C A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 4DB30 8005D330 2400BFAF */  sw         $ra, 0x24($sp)
/* 4DB34 8005D334 2000B0AF */  sw         $s0, 0x20($sp)
/* 4DB38 8005D338 B40D4490 */  lbu        $a0, 0xdb4($v0)
/* 4DB3C 8005D33C 00000000 */  nop
/* 4DB40 8005D340 FF008330 */  andi       $v1, $a0, 0xff
/* 4DB44 8005D344 0F008430 */  andi       $a0, $a0, 0xf
/* 4DB48 8005D348 02190300 */  srl        $v1, $v1, 4
/* 4DB4C 8005D34C 0E008314 */  bne        $a0, $v1, .L8005D388
/* 4DB50 8005D350 2148A000 */   addu      $t1, $a1, $zero
/* 4DB54 8005D354 80000224 */  addiu      $v0, $zero, 0x80
/* 4DB58 8005D358 1A80103C */  lui        $s0, %hi(D_801A09A8)
/* 4DB5C 8005D35C A809058E */  lw         $a1, %lo(D_801A09A8)($s0)
/* 4DB60 8005D360 08000424 */  addiu      $a0, $zero, 8
/* 4DB64 8005D364 1000A6AF */  sw         $a2, 0x10($sp)
/* 4DB68 8005D368 21300001 */  addu       $a2, $t0, $zero
/* 4DB6C 8005D36C 1400A7AF */  sw         $a3, 0x14($sp)
/* 4DB70 8005D370 21382001 */  addu       $a3, $t1, $zero
/* 4DB74 8005D374 616E010C */  jal        FUN_8005b984
/* 4DB78 8005D378 1800A2AF */   sw        $v0, 0x18($sp)
/* 4DB7C 8005D37C 21184000 */  addu       $v1, $v0, $zero
/* 4DB80 8005D380 E3740108 */  j          .L8005D38C
/* 4DB84 8005D384 A80903AE */   sw        $v1, 0x9a8($s0)
.L8005D388:
/* 4DB88 8005D388 FFFF0224 */  addiu      $v0, $zero, -1
.L8005D38C:
/* 4DB8C 8005D38C 2400BF8F */  lw         $ra, 0x24($sp)
/* 4DB90 8005D390 2000B08F */  lw         $s0, 0x20($sp)
/* 4DB94 8005D394 0800E003 */  jr         $ra
/* 4DB98 8005D398 2800BD27 */   addiu     $sp, $sp, 0x28
