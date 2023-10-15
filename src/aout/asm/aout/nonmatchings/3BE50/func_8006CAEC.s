.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006CAEC
/* 5D2EC 8006CAEC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5D2F0 8006CAF0 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5D2F4 8006CAF4 40100400 */  sll        $v0, $a0, 1
/* 5D2F8 8006CAF8 21104400 */  addu       $v0, $v0, $a0
/* 5D2FC 8006CAFC 80100200 */  sll        $v0, $v0, 2
/* 5D300 8006CB00 23104400 */  subu       $v0, $v0, $a0
/* 5D304 8006CB04 80100200 */  sll        $v0, $v0, 2
/* 5D308 8006CB08 23104400 */  subu       $v0, $v0, $a0
/* 5D30C 8006CB0C 80100200 */  sll        $v0, $v0, 2
/* 5D310 8006CB10 21104400 */  addu       $v0, $v0, $a0
/* 5D314 8006CB14 80100200 */  sll        $v0, $v0, 2
/* 5D318 8006CB18 23104400 */  subu       $v0, $v0, $a0
/* 5D31C 8006CB1C 80100200 */  sll        $v0, $v0, 2
/* 5D320 8006CB20 80410300 */  sll        $t0, $v1, 6
/* 5D324 8006CB24 21400301 */  addu       $t0, $t0, $v1
/* 5D328 8006CB28 80400800 */  sll        $t0, $t0, 2
/* 5D32C 8006CB2C 23400301 */  subu       $t0, $t0, $v1
/* 5D330 8006CB30 C0400800 */  sll        $t0, $t0, 3
/* 5D334 8006CB34 21400301 */  addu       $t0, $t0, $v1
/* 5D338 8006CB38 C0400800 */  sll        $t0, $t0, 3
/* 5D33C 8006CB3C 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5D340 8006CB40 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5D344 8006CB44 21104300 */  addu       $v0, $v0, $v1
/* 5D348 8006CB48 21400201 */  addu       $t0, $t0, $v0
/* 5D34C 8006CB4C C0180500 */  sll        $v1, $a1, 3
/* 5D350 8006CB50 23186500 */  subu       $v1, $v1, $a1
/* 5D354 8006CB54 80180300 */  sll        $v1, $v1, 2
/* 5D358 8006CB58 21400301 */  addu       $t0, $t0, $v1
/* 5D35C 8006CB5C 3C000825 */  addiu      $t0, $t0, 0x3c
/* 5D360 8006CB60 0C0006A1 */  sb         $a2, 0xc($t0)
/* 5D364 8006CB64 0800E003 */  jr         $ra
/* 5D368 8006CB68 0D0007A1 */   sb        $a3, 0xd($t0)
