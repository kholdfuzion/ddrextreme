.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002E93C
/* 1F13C 8002E93C A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 1F140 8002E940 21188000 */  addu       $v1, $a0, $zero
/* 1F144 8002E944 5000B0AF */  sw         $s0, 0x50($sp)
/* 1F148 8002E948 2180A000 */  addu       $s0, $a1, $zero
/* 1F14C 8002E94C 4000022A */  slti       $v0, $s0, 0x40
/* 1F150 8002E950 0D004010 */  beqz       $v0, .L8002E988
/* 1F154 8002E954 5400BFAF */   sw        $ra, 0x54($sp)
/* 1F158 8002E958 1000A427 */  addiu      $a0, $sp, 0x10
/* 1F15C 8002E95C 21286000 */  addu       $a1, $v1, $zero
/* 1F160 8002E960 55BB000C */  jal        strncpy
/* 1F164 8002E964 21300002 */   addu      $a2, $s0, $zero
/* 1F168 8002E968 1000A427 */  addiu      $a0, $sp, 0x10
/* 1F16C 8002E96C 21109000 */  addu       $v0, $a0, $s0
/* 1F170 8002E970 000040A0 */  sb         $zero, ($v0)
/* 1F174 8002E974 21280000 */  addu       $a1, $zero, $zero
/* 1F178 8002E978 71BB000C */  jal        strtol
/* 1F17C 8002E97C 0A000624 */   addiu     $a2, $zero, 0xa
/* 1F180 8002E980 63BA0008 */  j          .L8002E98C
/* 1F184 8002E984 00000000 */   nop
.L8002E988:
/* 1F188 8002E988 21100000 */  addu       $v0, $zero, $zero
.L8002E98C:
/* 1F18C 8002E98C 5400BF8F */  lw         $ra, 0x54($sp)
/* 1F190 8002E990 5000B08F */  lw         $s0, 0x50($sp)
/* 1F194 8002E994 0800E003 */  jr         $ra
/* 1F198 8002E998 5800BD27 */   addiu     $sp, $sp, 0x58
