.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc124
/* AC924 800BC124 1E80053C */  lui        $a1, %hi(D_801E179A)
/* AC928 800BC128 03008430 */  andi       $a0, $a0, 3
/* AC92C 800BC12C 00210400 */  sll        $a0, $a0, 4
/* AC930 800BC130 9A17A294 */  lhu        $v0, %lo(D_801E179A)($a1)
/* AC934 800BC134 501F033C */  lui        $v1, 0x1f50
/* AC938 800BC138 CFFF4230 */  andi       $v0, $v0, 0xffcf
/* AC93C 800BC13C 25104400 */  or         $v0, $v0, $a0
/* AC940 800BC140 000062A4 */  sh         $v0, ($v1)
/* AC944 800BC144 00006394 */  lhu        $v1, ($v1)
/* AC948 800BC148 F8FFBD27 */  addiu      $sp, $sp, -8
/* AC94C 800BC14C 9A17A2A4 */  sh         $v0, 0x179a($a1)
/* AC950 800BC150 0000A3A7 */  sh         $v1, ($sp)
/* AC954 800BC154 0800E003 */  jr         $ra
/* AC958 800BC158 0800BD27 */   addiu     $sp, $sp, 8
