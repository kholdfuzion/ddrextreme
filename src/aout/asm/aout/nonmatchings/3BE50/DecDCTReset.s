.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTReset
/* 63944 80073144 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63948 80073148 1000B0AF */  sw         $s0, 0x10($sp)
/* 6394C 8007314C 21808000 */  addu       $s0, $a0, $zero
/* 63950 80073150 03000016 */  bnez       $s0, .L80073160
/* 63954 80073154 1400BFAF */   sw        $ra, 0x14($sp)
/* 63958 80073158 596C000C */  jal        ResetCallback
/* 6395C 8007315C 00000000 */   nop
.L80073160:
/* 63960 80073160 01CD010C */  jal        LIBPRESS_OBJ_2C0
/* 63964 80073164 21200002 */   addu      $a0, $s0, $zero
/* 63968 80073168 1400BF8F */  lw         $ra, 0x14($sp)
/* 6396C 8007316C 1000B08F */  lw         $s0, 0x10($sp)
/* 63970 80073170 0800E003 */  jr         $ra
/* 63974 80073174 1800BD27 */   addiu     $sp, $sp, 0x18
