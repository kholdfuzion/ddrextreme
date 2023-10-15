.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf814
/* B0014 800BF814 641F023C */  lui        $v0, 0x1f64
/* B0018 800BF818 AE004234 */  ori        $v0, $v0, 0xae
/* B001C 800BF81C 00004294 */  lhu        $v0, ($v0)
/* B0020 800BF820 00000000 */  nop
/* B0024 800BF824 00104230 */  andi       $v0, $v0, 0x1000
/* B0028 800BF828 0800E003 */  jr         $ra
/* B002C 800BF82C 2B100200 */   sltu      $v0, $zero, $v0
