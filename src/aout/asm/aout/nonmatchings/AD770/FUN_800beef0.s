.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800beef0
/* AF6F0 800BEEF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AF6F4 800BEEF4 1000BFAF */  sw         $ra, 0x10($sp)
/* AF6F8 800BEEF8 52FC020C */  jal        FUN_800bf148
/* AF6FC 800BEEFC 00000000 */   nop
/* AF700 800BEF00 641F033C */  lui        $v1, 0x1f64
/* AF704 800BEF04 F6006334 */  ori        $v1, $v1, 0xf6
/* AF708 800BEF08 00800234 */  ori        $v0, $zero, 0x8000
/* AF70C 800BEF0C 000062A4 */  sh         $v0, ($v1)
/* AF710 800BEF10 1F80063C */  lui        $a2, 0x801f
/* AF714 800BEF14 30570424 */  addiu      $a0, $zero, 0x5730
/* AF718 800BEF18 1F80053C */  lui        $a1, 0x801f
/* AF71C 800BEF1C 00C00234 */  ori        $v0, $zero, 0xc000
/* AF720 800BEF20 000062A4 */  sh         $v0, ($v1)
/* AF724 800BEF24 00F00234 */  ori        $v0, $zero, 0xf000
/* AF728 800BEF28 000062A4 */  sh         $v0, ($v1)
/* AF72C 800BEF2C 8270C4A4 */  sh         $a0, 0x7082($a2)
/* AF730 800BEF30 8070A4A4 */  sh         $a0, 0x7080($a1)
/* AF734 800BEF34 1000BF8F */  lw         $ra, 0x10($sp)
/* AF738 800BEF38 00000000 */  nop
/* AF73C 800BEF3C 0800E003 */  jr         $ra
/* AF740 800BEF40 1800BD27 */   addiu     $sp, $sp, 0x18
