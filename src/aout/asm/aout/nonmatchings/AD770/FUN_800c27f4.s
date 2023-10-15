.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c27f4
/* B2FF4 800C27F4 0000828C */  lw         $v0, ($a0)
/* B2FF8 800C27F8 00000000 */  nop
/* B2FFC 800C27FC 03004014 */  bnez       $v0, .L800C280C
/* B3000 800C2800 00000000 */   nop
/* B3004 800C2804 070A0308 */  j          .L800C281C
/* B3008 800C2808 000085AC */   sw        $a1, ($a0)
.L800C280C:
/* B300C 800C280C 0400828C */  lw         $v0, 4($a0)
/* B3010 800C2810 070A0308 */  j          .L800C281C
/* B3014 800C2814 000045AC */   sw        $a1, ($v0)
.L800C2818:
/* B3018 800C2818 0000A58C */  lw         $a1, ($a1)
.L800C281C:
/* B301C 800C281C 00000000 */  nop
/* B3020 800C2820 0000A28C */  lw         $v0, ($a1)
/* B3024 800C2824 00000000 */  nop
/* B3028 800C2828 FBFF4014 */  bnez       $v0, .L800C2818
/* B302C 800C282C 00000000 */   nop
/* B3030 800C2830 0800E003 */  jr         $ra
/* B3034 800C2834 040085AC */   sw        $a1, 4($a0)
