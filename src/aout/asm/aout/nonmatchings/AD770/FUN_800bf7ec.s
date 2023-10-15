.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf7ec
/* AFFEC 800BF7EC 641F033C */  lui        $v1, 0x1f64
/* AFFF0 800BF7F0 BA006334 */  ori        $v1, $v1, 0xba
/* AFFF4 800BF7F4 FFFF0234 */  ori        $v0, $zero, 0xffff
/* AFFF8 800BF7F8 000062A4 */  sh         $v0, ($v1)
/* AFFFC 800BF7FC 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0000 800BF800 30570324 */  addiu      $v1, $zero, 0x5730
/* B0004 800BF804 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0008 800BF808 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B000C 800BF80C 0800E003 */  jr         $ra
/* B0010 800BF810 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
