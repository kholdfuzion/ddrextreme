.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_004_OBJ_D4
/* 18E74 80028674 1800BF8F */  lw         $ra, 0x18($sp)
/* 18E78 80028678 1400B18F */  lw         $s1, 0x14($sp)
/* 18E7C 8002867C 1000B08F */  lw         $s0, 0x10($sp)
/* 18E80 80028680 0800E003 */  jr         $ra
/* 18E84 80028684 2000BD27 */   addiu     $sp, $sp, 0x20
/* 18E88 80028688 00000000 */  nop
/* 18E8C 8002868C 00000000 */  nop
