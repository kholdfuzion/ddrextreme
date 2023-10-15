.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a5870
/* 96070 800A5870 0500A010 */  beqz       $a1, .L800A5888
/* 96074 800A5874 100085AC */   sw        $a1, 0x10($a0)
/* 96078 800A5878 0800828C */  lw         $v0, 8($a0)
/* 9607C 800A587C 00000000 */  nop
/* 96080 800A5880 01004224 */  addiu      $v0, $v0, 1
/* 96084 800A5884 080082AC */  sw         $v0, 8($a0)
.L800A5888:
/* 96088 800A5888 0800E003 */  jr         $ra
/* 9608C 800A588C 00000000 */   nop
