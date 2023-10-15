.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_131_OBJ_584
/* 3B4D4 8004ACD4 04008018 */  blez       $a0, .L8004ACE8
/* 3B4D8 8004ACD8 21100000 */   addu      $v0, $zero, $zero
.L8004ACDC:
/* 3B4DC 8004ACDC 43200400 */  sra        $a0, $a0, 1
/* 3B4E0 8004ACE0 FEFF801C */  bgtz       $a0, .L8004ACDC
/* 3B4E4 8004ACE4 01004224 */   addiu     $v0, $v0, 1
.L8004ACE8:
/* 3B4E8 8004ACE8 0800E003 */  jr         $ra
/* 3B4EC 8004ACEC 00000000 */   nop
