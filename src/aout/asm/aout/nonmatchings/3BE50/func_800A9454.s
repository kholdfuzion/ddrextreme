.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A9454
/* 99C54 800A9454 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 99C58 800A9458 1000BFAF */  sw         $ra, 0x10($sp)
/* 99C5C 800A945C 0FA2020C */  jal        FUN_800a883c
/* 99C60 800A9460 00000000 */   nop
/* 99C64 800A9464 03004014 */  bnez       $v0, .L800A9474
/* 99C68 800A9468 00000000 */   nop
/* 99C6C 800A946C 1EA50208 */  j          .L800A9478
/* 99C70 800A9470 FFFF0224 */   addiu     $v0, $zero, -1
.L800A9474:
/* 99C74 800A9474 14004294 */  lhu        $v0, 0x14($v0)
.L800A9478:
/* 99C78 800A9478 1000BF8F */  lw         $ra, 0x10($sp)
/* 99C7C 800A947C 00000000 */  nop
/* 99C80 800A9480 0800E003 */  jr         $ra
/* 99C84 800A9484 1800BD27 */   addiu     $sp, $sp, 0x18
