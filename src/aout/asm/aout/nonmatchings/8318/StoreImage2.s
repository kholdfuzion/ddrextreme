.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel StoreImage2
/* B368 8001AB68 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B36C 8001AB6C 1000B0AF */  sw         $s0, 0x10($sp)
/* B370 8001AB70 21808000 */  addu       $s0, $a0, $zero
/* B374 8001AB74 1400B1AF */  sw         $s1, 0x14($sp)
/* B378 8001AB78 2188A000 */  addu       $s1, $a1, $zero
/* B37C 8001AB7C 0180043C */  lui        $a0, %hi(D_800101D8)
/* B380 8001AB80 D8018424 */  addiu      $a0, $a0, %lo(D_800101D8)
/* B384 8001AB84 1800BFAF */  sw         $ra, 0x18($sp)
/* B388 8001AB88 F260000C */  jal        SYS_OBJ_3E4
/* B38C 8001AB8C 21280002 */   addu      $a1, $s0, $zero
/* B390 8001AB90 CD6B000C */  jal        VSync
/* B394 8001AB94 FFFF0424 */   addiu     $a0, $zero, -1
/* B398 8001AB98 0D80033C */  lui        $v1, %hi(D_800D2CAC)
/* B39C 8001AB9C AC2C638C */  lw         $v1, %lo(D_800D2CAC)($v1)
/* B3A0 8001ABA0 F0004224 */  addiu      $v0, $v0, 0xf0
/* B3A4 8001ABA4 0D80013C */  lui        $at, %hi(D_800D2CD4)
/* B3A8 8001ABA8 D42C22AC */  sw         $v0, %lo(D_800D2CD4)($at)
/* B3AC 8001ABAC 0D80013C */  lui        $at, %hi(D_800D2CD8)
/* B3B0 8001ABB0 D82C20AC */  sw         $zero, %lo(D_800D2CD8)($at)
/* B3B4 8001ABB4 0000628C */  lw         $v0, ($v1)
/* B3B8 8001ABB8 F96A0008 */  j          SYS_OBJ_2C00
/* B3BC 8001ABBC 0001033C */   lui       $v1, 0x100
.L8001ABC0:
/* B3C0 8001ABC0 266A000C */  jal        SYS_OBJ_28B4
/* B3C4 8001ABC4 00000000 */   nop
/* B3C8 8001ABC8 1D004014 */  bnez       $v0, .L8001AC40
/* B3CC 8001ABCC FFFF0224 */   addiu     $v0, $zero, -1
/* B3D0 8001ABD0 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* B3D4 8001ABD4 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* B3D8 8001ABD8 00000000 */  nop
/* B3DC 8001ABDC 0000428C */  lw         $v0, ($v0)
/* B3E0 8001ABE0 0001033C */  lui        $v1, 0x100
