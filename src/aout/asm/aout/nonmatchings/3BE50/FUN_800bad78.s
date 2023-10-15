.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bad78
/* AB578 800BAD78 18000724 */  addiu      $a3, $zero, 0x18
/* AB57C 800BAD7C 03000624 */  addiu      $a2, $zero, 3
.L800BAD80:
/* AB580 800BAD80 0618E500 */  srlv       $v1, $a1, $a3
/* AB584 800BAD84 F8FFE724 */  addiu      $a3, $a3, -8
/* AB588 800BAD88 00008290 */  lbu        $v0, ($a0)
/* AB58C 800BAD8C FFFFC624 */  addiu      $a2, $a2, -1
/* AB590 800BAD90 26104300 */  xor        $v0, $v0, $v1
/* AB594 800BAD94 000082A0 */  sb         $v0, ($a0)
/* AB598 800BAD98 F9FFC104 */  bgez       $a2, .L800BAD80
/* AB59C 800BAD9C 01008424 */   addiu     $a0, $a0, 1
/* AB5A0 800BADA0 0800E003 */  jr         $ra
/* AB5A4 800BADA4 00000000 */   nop
