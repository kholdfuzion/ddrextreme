.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C27C4
/* B2FC4 800C27C4 0000828C */  lw         $v0, ($a0)
/* B2FC8 800C27C8 00000000 */  nop
/* B2FCC 800C27CC 07004010 */  beqz       $v0, .L800C27EC
/* B2FD0 800C27D0 00000000 */   nop
.L800C27D4:
/* B2FD4 800C27D4 0000848C */  lw         $a0, ($a0)
/* B2FD8 800C27D8 00000000 */  nop
/* B2FDC 800C27DC 0000828C */  lw         $v0, ($a0)
/* B2FE0 800C27E0 00000000 */  nop
/* B2FE4 800C27E4 FBFF4014 */  bnez       $v0, .L800C27D4
/* B2FE8 800C27E8 00000000 */   nop
.L800C27EC:
/* B2FEC 800C27EC 0800E003 */  jr         $ra
/* B2FF0 800C27F0 000085AC */   sw        $a1, ($a0)
