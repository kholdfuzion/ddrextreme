.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80017dd4
/* 85D4 80017DD4 DAAB0234 */  ori        $v0, $zero, 0xabda
/* 85D8 80017DD8 0000A4AF */  sw         $a0, ($sp)
/* 85DC 80017DDC 0400A5AF */  sw         $a1, 4($sp)
/* 85E0 80017DE0 0800A6AF */  sw         $a2, 8($sp)
/* 85E4 80017DE4 0800E003 */  jr         $ra
/* 85E8 80017DE8 0C00A7AF */   sw        $a3, 0xc($sp)
