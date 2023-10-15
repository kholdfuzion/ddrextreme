.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BF6E4
/* AFEE4 800BF6E4 641F023C */  lui        $v0, 0x1f64
/* AFEE8 800BF6E8 AA004234 */  ori        $v0, $v0, 0xaa
/* AFEEC 800BF6EC 00004294 */  lhu        $v0, ($v0)
/* AFEF0 800BF6F0 00000000 */  nop
/* AFEF4 800BF6F4 00404230 */  andi       $v0, $v0, 0x4000
/* AFEF8 800BF6F8 0800E003 */  jr         $ra
/* AFEFC 800BF6FC 2B100200 */   sltu      $v0, $zero, $v0
