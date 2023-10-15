.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel MEMCHR_OBJ_20
/* 116D8 80020ED8 0900C004 */  bltz       $a2, MEMCHR_OBJ_48
/* 116DC 80020EDC 21100000 */   addu      $v0, $zero, $zero
/* 116E0 80020EE0 FF00A530 */  andi       $a1, $a1, 0xff
.L80020EE4:
/* 116E4 80020EE4 00008290 */  lbu        $v0, ($a0)
/* 116E8 80020EE8 00000000 */  nop
/* 116EC 80020EEC F8FF4510 */  beq        $v0, $a1, .L80020ED0
/* 116F0 80020EF0 01008424 */   addiu     $a0, $a0, 1
/* 116F4 80020EF4 FFFFC624 */  addiu      $a2, $a2, -1
/* 116F8 80020EF8 FAFFC104 */  bgez       $a2, .L80020EE4
/* 116FC 80020EFC 21100000 */   addu      $v0, $zero, $zero
