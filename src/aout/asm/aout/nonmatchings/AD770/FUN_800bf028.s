.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf028
/* AF828 800BF028 FF008430 */  andi       $a0, $a0, 0xff
/* AF82C 800BF02C 21180000 */  addu       $v1, $zero, $zero
/* AF830 800BF030 641F083C */  lui        $t0, 0x1f64
/* AF834 800BF034 F8000835 */  ori        $t0, $t0, 0xf8
/* AF838 800BF038 1F80073C */  lui        $a3, 0x801f
/* AF83C 800BF03C 30570524 */  addiu      $a1, $zero, 0x5730
/* AF840 800BF040 1F80063C */  lui        $a2, %hi(D_801F7080)
.L800BF044:
/* AF844 800BF044 C0130400 */  sll        $v0, $a0, 0xf
/* AF848 800BF048 00804230 */  andi       $v0, $v0, 0x8000
/* AF84C 800BF04C 000002A5 */  sh         $v0, ($t0)
/* AF850 800BF050 8270E5A4 */  sh         $a1, 0x7082($a3)
/* AF854 800BF054 8070C5A4 */  sh         $a1, %lo(D_801F7080)($a2)
/* AF858 800BF058 01006324 */  addiu      $v1, $v1, 1
/* AF85C 800BF05C 08006228 */  slti       $v0, $v1, 8
/* AF860 800BF060 F8FF4014 */  bnez       $v0, .L800BF044
/* AF864 800BF064 42200400 */   srl       $a0, $a0, 1
/* AF868 800BF068 0800E003 */  jr         $ra
/* AF86C 800BF06C 00000000 */   nop
