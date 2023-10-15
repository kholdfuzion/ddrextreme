.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf6a0
/* AFEA0 800BF6A0 FFFF8430 */  andi       $a0, $a0, 0xffff
/* AFEA4 800BF6A4 641F023C */  lui        $v0, 0x1f64
/* AFEA8 800BF6A8 A8004234 */  ori        $v0, $v0, 0xa8
/* AFEAC 800BF6AC 000044A4 */  sh         $a0, ($v0)
/* AFEB0 800BF6B0 1F80023C */  lui        $v0, %hi(D_801F7082)
/* AFEB4 800BF6B4 30570324 */  addiu      $v1, $zero, 0x5730
/* AFEB8 800BF6B8 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* AFEBC 800BF6BC 1F80023C */  lui        $v0, %hi(D_801F7080)
/* AFEC0 800BF6C0 0800E003 */  jr         $ra
/* AFEC4 800BF6C4 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
