.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf92c
/* B012C 800BF92C FF008430 */  andi       $a0, $a0, 0xff
/* B0130 800BF930 641F023C */  lui        $v0, 0x1f64
/* B0134 800BF934 EC004234 */  ori        $v0, $v0, 0xec
/* B0138 800BF938 000044A4 */  sh         $a0, ($v0)
/* B013C 800BF93C 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0140 800BF940 30570324 */  addiu      $v1, $zero, 0x5730
/* B0144 800BF944 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0148 800BF948 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B014C 800BF94C 0800E003 */  jr         $ra
/* B0150 800BF950 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
