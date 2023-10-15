.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf4d8
/* AFCD8 800BF4D8 023C0400 */  srl        $a3, $a0, 0x10
/* AFCDC 800BF4DC 641F023C */  lui        $v0, 0x1f64
/* AFCE0 800BF4E0 B0004234 */  ori        $v0, $v0, 0xb0
/* AFCE4 800BF4E4 000047A4 */  sh         $a3, ($v0)
/* AFCE8 800BF4E8 1F80063C */  lui        $a2, 0x801f
/* AFCEC 800BF4EC 30570324 */  addiu      $v1, $zero, 0x5730
/* AFCF0 800BF4F0 1F80053C */  lui        $a1, 0x801f
/* AFCF4 800BF4F4 FFFF8730 */  andi       $a3, $a0, 0xffff
/* AFCF8 800BF4F8 641F023C */  lui        $v0, 0x1f64
/* AFCFC 800BF4FC B2004234 */  ori        $v0, $v0, 0xb2
/* AFD00 800BF500 000047A4 */  sh         $a3, ($v0)
/* AFD04 800BF504 8270C3A4 */  sh         $v1, 0x7082($a2)
/* AFD08 800BF508 0800E003 */  jr         $ra
/* AFD0C 800BF50C 8070A3A4 */   sh        $v1, 0x7080($a1)
