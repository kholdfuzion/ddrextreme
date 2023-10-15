.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005D39C
/* 4DB9C 8005D39C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4DBA0 8005D3A0 21408000 */  addu       $t0, $a0, $zero
/* 4DBA4 8005D3A4 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4DBA8 8005D3A8 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 4DBAC 8005D3AC 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 4DBB0 8005D3B0 2800B0AF */  sw         $s0, 0x28($sp)
/* 4DBB4 8005D3B4 B40D4490 */  lbu        $a0, 0xdb4($v0)
/* 4DBB8 8005D3B8 4000A293 */  lbu        $v0, 0x40($sp)
/* 4DBBC 8005D3BC FF008330 */  andi       $v1, $a0, 0xff
/* 4DBC0 8005D3C0 0F008430 */  andi       $a0, $a0, 0xf
/* 4DBC4 8005D3C4 02190300 */  srl        $v1, $v1, 4
/* 4DBC8 8005D3C8 11008314 */  bne        $a0, $v1, .L8005D410
/* 4DBCC 8005D3CC 2148A000 */   addu      $t1, $a1, $zero
/* 4DBD0 8005D3D0 80000324 */  addiu      $v1, $zero, 0x80
/* 4DBD4 8005D3D4 1A80103C */  lui        $s0, %hi(D_801A09A8)
/* 4DBD8 8005D3D8 1800A2AF */  sw         $v0, 0x18($sp)
/* 4DBDC 8005D3DC 4400A28F */  lw         $v0, 0x44($sp)
/* 4DBE0 8005D3E0 A809058E */  lw         $a1, %lo(D_801A09A8)($s0)
/* 4DBE4 8005D3E4 08000424 */  addiu      $a0, $zero, 8
/* 4DBE8 8005D3E8 1000A6AF */  sw         $a2, 0x10($sp)
/* 4DBEC 8005D3EC 21300001 */  addu       $a2, $t0, $zero
/* 4DBF0 8005D3F0 1400A7AF */  sw         $a3, 0x14($sp)
/* 4DBF4 8005D3F4 21382001 */  addu       $a3, $t1, $zero
/* 4DBF8 8005D3F8 2000A3AF */  sw         $v1, 0x20($sp)
/* 4DBFC 8005D3FC 5B75010C */  jal        FUN_8005d56c
/* 4DC00 8005D400 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 4DC04 8005D404 21184000 */  addu       $v1, $v0, $zero
/* 4DC08 8005D408 05750108 */  j          .L8005D414
/* 4DC0C 8005D40C A80903AE */   sw        $v1, 0x9a8($s0)
.L8005D410:
/* 4DC10 8005D410 FFFF0224 */  addiu      $v0, $zero, -1
.L8005D414:
/* 4DC14 8005D414 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 4DC18 8005D418 2800B08F */  lw         $s0, 0x28($sp)
/* 4DC1C 8005D41C 0800E003 */  jr         $ra
/* 4DC20 8005D420 3000BD27 */   addiu     $sp, $sp, 0x30
