.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf148
/* AF948 800BF148 641F023C */  lui        $v0, 0x1f64
/* AF94C 800BF14C F4004234 */  ori        $v0, $v0, 0xf4
/* AF950 800BF150 000040A4 */  sh         $zero, ($v0)
/* AF954 800BF154 1F80023C */  lui        $v0, %hi(D_801F7082)
/* AF958 800BF158 30570324 */  addiu      $v1, $zero, 0x5730
/* AF95C 800BF15C 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* AF960 800BF160 1F80023C */  lui        $v0, %hi(D_801F7080)
/* AF964 800BF164 0800E003 */  jr         $ra
/* AF968 800BF168 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
