.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800277b8
/* 17FB8 800277B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17FBC 800277BC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 17FC0 800277C0 0F80033C */  lui        $v1, 0x800f
/* 17FC4 800277C4 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 17FC8 800277C8 09000224 */  addiu      $v0, $zero, 9
/* 17FCC 800277CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 17FD0 800277D0 21808000 */  addu       $s0, $a0, $zero
/* 17FD4 800277D4 1400BFAF */  sw         $ra, 0x14($sp)
/* 17FD8 800277D8 2A0C010C */  jal        FUN_800430a8
/* 17FDC 800277DC 280062A4 */   sh        $v0, 0x28($v1)
/* 17FE0 800277E0 F54C020C */  jal        FUN_800933d4
/* 17FE4 800277E4 08000426 */   addiu     $a0, $s0, 8
/* 17FE8 800277E8 12CB020C */  jal        FUN_800b2c48
/* 17FEC 800277EC 8A000424 */   addiu     $a0, $zero, 0x8a
/* 17FF0 800277F0 1400BF8F */  lw         $ra, 0x14($sp)
/* 17FF4 800277F4 1000B08F */  lw         $s0, 0x10($sp)
/* 17FF8 800277F8 0800E003 */  jr         $ra
/* 17FFC 800277FC 1800BD27 */   addiu     $sp, $sp, 0x18
