.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009628c
/* 86A8C 8009628C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 86A90 80096290 1000B0AF */  sw         $s0, 0x10($sp)
/* 86A94 80096294 1B80103C */  lui        $s0, %hi(D_801B0E60)
/* 86A98 80096298 600E1026 */  addiu      $s0, $s0, %lo(D_801B0E60)
/* 86A9C 8009629C 21200002 */  addu       $a0, $s0, $zero
/* 86AA0 800962A0 21280000 */  addu       $a1, $zero, $zero
/* 86AA4 800962A4 1400BFAF */  sw         $ra, 0x14($sp)
/* 86AA8 800962A8 F6A2000C */  jal        memset
/* 86AAC 800962AC 2C1C0624 */   addiu     $a2, $zero, 0x1c2c
/* 86AB0 800962B0 2380033C */  lui        $v1, 0x8023
/* 86AB4 800962B4 00806334 */  ori        $v1, $v1, 0x8000
/* 86AB8 800962B8 8001023C */  lui        $v0, 0x180
/* 86ABC 800962BC 241C02AE */  sw         $v0, 0x1c24($s0)
/* 86AC0 800962C0 ED58020C */  jal        FUN_800963b4
/* 86AC4 800962C4 281C03AE */   sw        $v1, 0x1c28($s0)
/* 86AC8 800962C8 8153020C */  jal        FUN_80094e04
/* 86ACC 800962CC 21200000 */   addu      $a0, $zero, $zero
/* 86AD0 800962D0 21100000 */  addu       $v0, $zero, $zero
/* 86AD4 800962D4 1400BF8F */  lw         $ra, 0x14($sp)
/* 86AD8 800962D8 1000B08F */  lw         $s0, 0x10($sp)
/* 86ADC 800962DC 0F80033C */  lui        $v1, %hi(D_800EBF40)
/* 86AE0 800962E0 40BF60AC */  sw         $zero, %lo(D_800EBF40)($v1)
/* 86AE4 800962E4 0800E003 */  jr         $ra
/* 86AE8 800962E8 1800BD27 */   addiu     $sp, $sp, 0x18
