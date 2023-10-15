.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1B1C
/* A300 80019B00 0F80043C */  lui        $a0, %hi(D_800EE758)
/* A304 80019B04 1068000C */  jal        SYS_OBJ_205C
/* A308 80019B08 58E78424 */   addiu     $a0, $a0, %lo(D_800EE758)
/* A30C 80019B0C 21100000 */  addu       $v0, $zero, $zero
/* A310 80019B10 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A314 80019B14 1800B28F */  lw         $s2, 0x18($sp)
/* A318 80019B18 1400B18F */  lw         $s1, 0x14($sp)
/* A31C 80019B1C 1000B08F */  lw         $s0, 0x10($sp)
/* A320 80019B20 0800E003 */  jr         $ra
/* A324 80019B24 2000BD27 */   addiu     $sp, $sp, 0x20
