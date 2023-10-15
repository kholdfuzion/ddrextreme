.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2844
/* B3044 800C2844 1F80053C */  lui        $a1, %hi(D_801F71C0)
/* B3048 800C2848 40180400 */  sll        $v1, $a0, 1
/* B304C 800C284C 21186400 */  addu       $v1, $v1, $a0
/* B3050 800C2850 00110300 */  sll        $v0, $v1, 4
/* B3054 800C2854 23104300 */  subu       $v0, $v0, $v1
/* B3058 800C2858 C071A38C */  lw         $v1, %lo(D_801F71C0)($a1)
/* B305C 800C285C 80100200 */  sll        $v0, $v0, 2
/* B3060 800C2860 21104300 */  addu       $v0, $v0, $v1
/* B3064 800C2864 C6FF4290 */  lbu        $v0, -0x3a($v0)
/* B3068 800C2868 0800E003 */  jr         $ra
/* B306C 800C286C 00000000 */   nop
