.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006CD30
/* 5D530 8006CD30 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5D534 8006CD34 1380083C */  lui        $t0, %hi(D_80129DA8)
/* 5D538 8006CD38 A89D028D */  lw         $v0, %lo(D_80129DA8)($t0)
/* 5D53C 8006CD3C A89D0825 */  addiu      $t0, $t0, -0x6258
/* 5D540 8006CD40 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5D544 8006CD44 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5D548 8006CD48 80300600 */  sll        $a2, $a2, 2
/* 5D54C 8006CD4C 1000BFAF */  sw         $ra, 0x10($sp)
/* 5D550 8006CD50 80390200 */  sll        $a3, $v0, 6
/* 5D554 8006CD54 2138E200 */  addu       $a3, $a3, $v0
/* 5D558 8006CD58 80380700 */  sll        $a3, $a3, 2
/* 5D55C 8006CD5C 2338E200 */  subu       $a3, $a3, $v0
/* 5D560 8006CD60 C0380700 */  sll        $a3, $a3, 3
/* 5D564 8006CD64 2138E200 */  addu       $a3, $a3, $v0
/* 5D568 8006CD68 C0380700 */  sll        $a3, $a3, 3
/* 5D56C 8006CD6C 40100400 */  sll        $v0, $a0, 1
/* 5D570 8006CD70 21104400 */  addu       $v0, $v0, $a0
/* 5D574 8006CD74 80100200 */  sll        $v0, $v0, 2
/* 5D578 8006CD78 23104400 */  subu       $v0, $v0, $a0
/* 5D57C 8006CD7C 80100200 */  sll        $v0, $v0, 2
/* 5D580 8006CD80 23104400 */  subu       $v0, $v0, $a0
/* 5D584 8006CD84 80100200 */  sll        $v0, $v0, 2
/* 5D588 8006CD88 21104400 */  addu       $v0, $v0, $a0
/* 5D58C 8006CD8C 80100200 */  sll        $v0, $v0, 2
/* 5D590 8006CD90 23104400 */  subu       $v0, $v0, $a0
/* 5D594 8006CD94 80100200 */  sll        $v0, $v0, 2
/* 5D598 8006CD98 21104300 */  addu       $v0, $v0, $v1
/* 5D59C 8006CD9C 2138E200 */  addu       $a3, $a3, $v0
/* 5D5A0 8006CDA0 3400E724 */  addiu      $a3, $a3, 0x34
/* 5D5A4 8006CDA4 C0100500 */  sll        $v0, $a1, 3
/* 5D5A8 8006CDA8 23104500 */  subu       $v0, $v0, $a1
/* 5D5AC 8006CDAC 2C0C038D */  lw         $v1, 0xc2c($t0)
/* 5D5B0 8006CDB0 80100200 */  sll        $v0, $v0, 2
/* 5D5B4 8006CDB4 0400648C */  lw         $a0, 4($v1)
/* 5D5B8 8006CDB8 2128E200 */  addu       $a1, $a3, $v0
/* 5D5BC 8006CDBC D685000C */  jal        AddPrim
/* 5D5C0 8006CDC0 21208600 */   addu      $a0, $a0, $a2
/* 5D5C4 8006CDC4 1000BF8F */  lw         $ra, 0x10($sp)
/* 5D5C8 8006CDC8 00000000 */  nop
/* 5D5CC 8006CDCC 0800E003 */  jr         $ra
/* 5D5D0 8006CDD0 1800BD27 */   addiu     $sp, $sp, 0x18
