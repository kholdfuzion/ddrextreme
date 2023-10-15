.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a25fc
/* 92DFC 800A25FC FFFF8224 */  addiu      $v0, $a0, -1
/* 92E00 800A2600 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92E04 800A2604 03004014 */  bnez       $v0, .L800A2614
/* 92E08 800A2608 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 92E0C 800A260C 0800E003 */  jr         $ra
/* 92E10 800A2610 FFFF0224 */   addiu     $v0, $zero, -1
.L800A2614:
/* 92E14 800A2614 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 92E18 800A2618 80200400 */  sll        $a0, $a0, 2
/* 92E1C 800A261C 21186400 */  addu       $v1, $v1, $a0
/* 92E20 800A2620 0400628C */  lw         $v0, 4($v1)
/* 92E24 800A2624 00000000 */  nop
/* 92E28 800A2628 04004010 */  beqz       $v0, .L800A263C
/* 92E2C 800A262C 00000000 */   nop
/* 92E30 800A2630 0A004284 */  lh         $v0, 0xa($v0)
/* 92E34 800A2634 0800E003 */  jr         $ra
/* 92E38 800A2638 00000000 */   nop
.L800A263C:
/* 92E3C 800A263C 0800E003 */  jr         $ra
/* 92E40 800A2640 FFFF0224 */   addiu     $v0, $zero, -1
