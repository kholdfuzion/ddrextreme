.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf120
/* AF920 800BF120 641F033C */  lui        $v1, 0x1f64
/* AF924 800BF124 F4006334 */  ori        $v1, $v1, 0xf4
/* AF928 800BF128 00800234 */  ori        $v0, $zero, 0x8000
/* AF92C 800BF12C 000062A4 */  sh         $v0, ($v1)
/* AF930 800BF130 1F80023C */  lui        $v0, %hi(D_801F7082)
/* AF934 800BF134 30570324 */  addiu      $v1, $zero, 0x5730
/* AF938 800BF138 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* AF93C 800BF13C 1F80023C */  lui        $v0, %hi(D_801F7080)
/* AF940 800BF140 0800E003 */  jr         $ra
/* AF944 800BF144 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
