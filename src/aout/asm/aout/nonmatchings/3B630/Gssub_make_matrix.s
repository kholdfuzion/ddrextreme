.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel Gssub_make_matrix
/* 3B630 8004AE30 21488000 */  addu       $t1, $a0, $zero
/* 3B634 8004AE34 1380083C */  lui        $t0, %hi(D_80129108)
/* 3B638 8004AE38 08910825 */  addiu      $t0, $t0, %lo(D_80129108)
/* 3B63C 8004AE3C 0000028D */  lw         $v0, ($t0)
/* 3B640 8004AE40 0400038D */  lw         $v1, 4($t0)
/* 3B644 8004AE44 0800048D */  lw         $a0, 8($t0)
/* 3B648 8004AE48 000022AD */  sw         $v0, ($t1)
/* 3B64C 8004AE4C 040023AD */  sw         $v1, 4($t1)
/* 3B650 8004AE50 080024AD */  sw         $a0, 8($t1)
/* 3B654 8004AE54 0C00028D */  lw         $v0, 0xc($t0)
/* 3B658 8004AE58 1000038D */  lw         $v1, 0x10($t0)
/* 3B65C 8004AE5C 1400048D */  lw         $a0, 0x14($t0)
/* 3B660 8004AE60 0C0022AD */  sw         $v0, 0xc($t1)
/* 3B664 8004AE64 100023AD */  sw         $v1, 0x10($t1)
/* 3B668 8004AE68 140024AD */  sw         $a0, 0x14($t1)
/* 3B66C 8004AE6C 1800028D */  lw         $v0, 0x18($t0)
/* 3B670 8004AE70 1C00038D */  lw         $v1, 0x1c($t0)
/* 3B674 8004AE74 180022AD */  sw         $v0, 0x18($t1)
/* 3B678 8004AE78 1C0023AD */  sw         $v1, 0x1c($t1)
/* 3B67C 8004AE7C A8FFE724 */  addiu      $a3, $a3, -0x58
/* 3B680 8004AE80 003E0700 */  sll        $a3, $a3, 0x18
/* 3B684 8004AE84 033E0700 */  sra        $a3, $a3, 0x18
/* 3B688 8004AE88 2300E22C */  sltiu      $v0, $a3, 0x23
/* 3B68C 8004AE8C 18004010 */  beqz       $v0, GS_123_OBJ_C0
/* 3B690 8004AE90 80100700 */   sll       $v0, $a3, 2
/* 3B694 8004AE94 0180013C */  lui        $at, %hi(D_80013C84)
/* 3B698 8004AE98 21082200 */  addu       $at, $at, $v0
/* 3B69C 8004AE9C 843C228C */  lw         $v0, %lo(D_80013C84)($at)
/* 3B6A0 8004AEA0 00000000 */  nop
/* 3B6A4 8004AEA4 08004000 */  jr         $v0
/* 3B6A8 8004AEA8 00000000 */   nop
