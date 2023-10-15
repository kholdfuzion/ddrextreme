.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BF6C8
/* AFEC8 800BF6C8 641F023C */  lui        $v0, 0x1f64
/* AFECC 800BF6CC AA004234 */  ori        $v0, $v0, 0xaa
/* AFED0 800BF6D0 00004294 */  lhu        $v0, ($v0)
/* AFED4 800BF6D4 00000000 */  nop
/* AFED8 800BF6D8 00804230 */  andi       $v0, $v0, 0x8000
/* AFEDC 800BF6DC 0800E003 */  jr         $ra
/* AFEE0 800BF6E0 2B100200 */   sltu      $v0, $zero, $v0
