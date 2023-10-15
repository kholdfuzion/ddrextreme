.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800278B8
/* 180B8 800278B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 180BC 800278BC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 180C0 800278C0 1000B0AF */  sw         $s0, 0x10($sp)
/* 180C4 800278C4 21808000 */  addu       $s0, $a0, $zero
/* 180C8 800278C8 1400BFAF */  sw         $ra, 0x14($sp)
/* 180CC 800278CC 320C010C */  jal        FUN_800430c8
/* 180D0 800278D0 200040AC */   sw        $zero, %lo(D_800F0020)($v0)
/* 180D4 800278D4 08000426 */  addiu      $a0, $s0, 8
/* 180D8 800278D8 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 180DC 800278DC 0D000224 */  addiu      $v0, $zero, 0xd
/* 180E0 800278E0 7681020C */  jal        FUN_800a05d8
/* 180E4 800278E4 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 180E8 800278E8 12CB020C */  jal        FUN_800b2c48
/* 180EC 800278EC 48000424 */   addiu     $a0, $zero, 0x48
/* 180F0 800278F0 1400BF8F */  lw         $ra, 0x14($sp)
/* 180F4 800278F4 1000B08F */  lw         $s0, 0x10($sp)
/* 180F8 800278F8 0800E003 */  jr         $ra
/* 180FC 800278FC 1800BD27 */   addiu     $sp, $sp, 0x18
