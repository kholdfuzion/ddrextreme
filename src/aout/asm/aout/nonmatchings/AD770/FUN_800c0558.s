.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0558
/* B0D58 800C0558 FF008430 */  andi       $a0, $a0, 0xff
/* B0D5C 800C055C FF00A530 */  andi       $a1, $a1, 0xff
/* B0D60 800C0560 0F80023C */  lui        $v0, %hi(D_800EE284)
/* B0D64 800C0564 84E24224 */  addiu      $v0, $v0, %lo(D_800EE284)
/* B0D68 800C0568 40200400 */  sll        $a0, $a0, 1
/* B0D6C 800C056C 2128A400 */  addu       $a1, $a1, $a0
/* B0D70 800C0570 2128A200 */  addu       $a1, $a1, $v0
/* B0D74 800C0574 0000A290 */  lbu        $v0, ($a1)
/* B0D78 800C0578 00000000 */  nop
/* B0D7C 800C057C 0000C2A0 */  sb         $v0, ($a2)
/* B0D80 800C0580 0800E003 */  jr         $ra
/* B0D84 800C0584 0100C0A0 */   sb        $zero, 1($a2)
