.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80041148
/* 31948 80041148 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3194C 8004114C 0180043C */  lui        $a0, %hi(D_80013728)
/* 31950 80041150 28378424 */  addiu      $a0, $a0, %lo(D_80013728)
/* 31954 80041154 1000A527 */  addiu      $a1, $sp, 0x10
/* 31958 80041158 1800BFAF */  sw         $ra, 0x18($sp)
/* 3195C 8004115C F9AA000C */  jal        hashname_getfromflash_8002abe4
/* 31960 80041160 1400A627 */   addiu     $a2, $sp, 0x14
/* 31964 80041164 1000A28F */  lw         $v0, 0x10($sp)
/* 31968 80041168 1800BF8F */  lw         $ra, 0x18($sp)
/* 3196C 8004116C 00000000 */  nop
/* 31970 80041170 0800E003 */  jr         $ra
/* 31974 80041174 2000BD27 */   addiu     $sp, $sp, 0x20
