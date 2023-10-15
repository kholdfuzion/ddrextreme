.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetODE
/* 98BC 800190BC 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 98C0 800190C0 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 98C4 800190C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 98C8 800190C8 1000BFAF */  sw         $ra, 0x10($sp)
/* 98CC 800190CC 3800428C */  lw         $v0, 0x38($v0)
/* 98D0 800190D0 00000000 */  nop
/* 98D4 800190D4 09F84000 */  jalr       $v0
/* 98D8 800190D8 00000000 */   nop
/* 98DC 800190DC 1000BF8F */  lw         $ra, 0x10($sp)
/* 98E0 800190E0 C2170200 */  srl        $v0, $v0, 0x1f
/* 98E4 800190E4 0800E003 */  jr         $ra
/* 98E8 800190E8 1800BD27 */   addiu     $sp, $sp, 0x18
