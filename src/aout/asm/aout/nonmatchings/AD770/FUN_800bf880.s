.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf880
/* B0080 800BF880 641F023C */  lui        $v0, 0x1f64
/* B0084 800BF884 CE004234 */  ori        $v0, $v0, 0xce
/* B0088 800BF888 00004294 */  lhu        $v0, ($v0)
/* B008C 800BF88C 0800E003 */  jr         $ra
/* B0090 800BF890 FFFF4230 */   andi      $v0, $v0, 0xffff
