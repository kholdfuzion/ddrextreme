.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf5d4
/* AFDD4 800BF5D4 023C0400 */  srl        $a3, $a0, 0x10
/* AFDD8 800BF5D8 641F023C */  lui        $v0, 0x1f64
/* AFDDC 800BF5DC A0004234 */  ori        $v0, $v0, 0xa0
/* AFDE0 800BF5E0 000047A4 */  sh         $a3, ($v0)
/* AFDE4 800BF5E4 1F80063C */  lui        $a2, 0x801f
/* AFDE8 800BF5E8 30570324 */  addiu      $v1, $zero, 0x5730
/* AFDEC 800BF5EC 1F80053C */  lui        $a1, 0x801f
/* AFDF0 800BF5F0 FFFF8730 */  andi       $a3, $a0, 0xffff
/* AFDF4 800BF5F4 641F023C */  lui        $v0, 0x1f64
/* AFDF8 800BF5F8 A2004234 */  ori        $v0, $v0, 0xa2
/* AFDFC 800BF5FC 000047A4 */  sh         $a3, ($v0)
/* AFE00 800BF600 8270C3A4 */  sh         $v1, 0x7082($a2)
/* AFE04 800BF604 0800E003 */  jr         $ra
/* AFE08 800BF608 8070A3A4 */   sh        $v1, 0x7080($a1)
