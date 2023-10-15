.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d2a4
/* 4DAA4 8005D2A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4DAA8 8005D2A8 21408000 */  addu       $t0, $a0, $zero
/* 4DAAC 8005D2AC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4DAB0 8005D2B0 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 4DAB4 8005D2B4 2400BFAF */  sw         $ra, 0x24($sp)
/* 4DAB8 8005D2B8 2000B0AF */  sw         $s0, 0x20($sp)
/* 4DABC 8005D2BC B40D4490 */  lbu        $a0, 0xdb4($v0)
/* 4DAC0 8005D2C0 00000000 */  nop
/* 4DAC4 8005D2C4 FF008330 */  andi       $v1, $a0, 0xff
/* 4DAC8 8005D2C8 0F008430 */  andi       $a0, $a0, 0xf
/* 4DACC 8005D2CC 02190300 */  srl        $v1, $v1, 4
/* 4DAD0 8005D2D0 0E008314 */  bne        $a0, $v1, .L8005D30C
/* 4DAD4 8005D2D4 2148A000 */   addu      $t1, $a1, $zero
/* 4DAD8 8005D2D8 1A80103C */  lui        $s0, %hi(D_801A09A8)
/* 4DADC 8005D2DC 3800A28F */  lw         $v0, 0x38($sp)
/* 4DAE0 8005D2E0 A809058E */  lw         $a1, %lo(D_801A09A8)($s0)
/* 4DAE4 8005D2E4 08000424 */  addiu      $a0, $zero, 8
/* 4DAE8 8005D2E8 1000A6AF */  sw         $a2, 0x10($sp)
/* 4DAEC 8005D2EC 21300001 */  addu       $a2, $t0, $zero
/* 4DAF0 8005D2F0 1400A7AF */  sw         $a3, 0x14($sp)
/* 4DAF4 8005D2F4 21382001 */  addu       $a3, $t1, $zero
/* 4DAF8 8005D2F8 616E010C */  jal        FUN_8005b984
/* 4DAFC 8005D2FC 1800A2AF */   sw        $v0, 0x18($sp)
/* 4DB00 8005D300 21184000 */  addu       $v1, $v0, $zero
/* 4DB04 8005D304 C4740108 */  j          .L8005D310
/* 4DB08 8005D308 A80903AE */   sw        $v1, 0x9a8($s0)
.L8005D30C:
/* 4DB0C 8005D30C FFFF0224 */  addiu      $v0, $zero, -1
.L8005D310:
/* 4DB10 8005D310 2400BF8F */  lw         $ra, 0x24($sp)
/* 4DB14 8005D314 2000B08F */  lw         $s0, 0x20($sp)
/* 4DB18 8005D318 0800E003 */  jr         $ra
/* 4DB1C 8005D31C 2800BD27 */   addiu     $sp, $sp, 0x28
