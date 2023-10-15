.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel vsyncrelated_8002a9c4
/* 1B1C4 8002A9C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1B1C8 8002A9C8 FFFF0424 */  addiu      $a0, $zero, -1
/* 1B1CC 8002A9CC 1400BFAF */  sw         $ra, 0x14($sp)
/* 1B1D0 8002A9D0 CD6B000C */  jal        VSync
/* 1B1D4 8002A9D4 1000B0AF */   sw        $s0, 0x10($sp)
/* 1B1D8 8002A9D8 1400BF8F */  lw         $ra, 0x14($sp)
/* 1B1DC 8002A9DC 1380103C */  lui        $s0, %hi(D_8012ABD8)
/* 1B1E0 8002A9E0 D8AB02AE */  sw         $v0, %lo(D_8012ABD8)($s0)
/* 1B1E4 8002A9E4 1000B08F */  lw         $s0, 0x10($sp)
/* 1B1E8 8002A9E8 0800E003 */  jr         $ra
/* 1B1EC 8002A9EC 1800BD27 */   addiu     $sp, $sp, 0x18
