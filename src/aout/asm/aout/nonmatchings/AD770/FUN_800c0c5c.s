.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0c5c
/* B145C 800C0C5C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B1460 800C0C60 1800BFAF */  sw         $ra, 0x18($sp)
/* B1464 800C0C64 1400B1AF */  sw         $s1, 0x14($sp)
/* B1468 800C0C68 1000B0AF */  sw         $s0, 0x10($sp)
/* B146C 800C0C6C 1F80103C */  lui        $s0, %hi(D_801F7098)
/* B1470 800C0C70 98701126 */  addiu      $s1, $s0, %lo(D_801F7098)
/* B1474 800C0C74 98700492 */  lbu        $a0, 0x7098($s0)
/* B1478 800C0C78 01002592 */  lbu        $a1, 1($s1)
/* B147C 800C0C7C 0203030C */  jal        FUN_800c0c08
/* B1480 800C0C80 01000624 */   addiu     $a2, $zero, 1
/* B1484 800C0C84 98700492 */  lbu        $a0, 0x7098($s0)
/* B1488 800C0C88 01002592 */  lbu        $a1, 1($s1)
/* B148C 800C0C8C 0203030C */  jal        FUN_800c0c08
/* B1490 800C0C90 21300000 */   addu      $a2, $zero, $zero
/* B1494 800C0C94 98700492 */  lbu        $a0, 0x7098($s0)
/* B1498 800C0C98 01002592 */  lbu        $a1, 1($s1)
/* B149C 800C0C9C 0203030C */  jal        FUN_800c0c08
/* B14A0 800C0CA0 01000624 */   addiu     $a2, $zero, 1
/* B14A4 800C0CA4 98700492 */  lbu        $a0, 0x7098($s0)
/* B14A8 800C0CA8 01002592 */  lbu        $a1, 1($s1)
/* B14AC 800C0CAC 0203030C */  jal        FUN_800c0c08
/* B14B0 800C0CB0 01000624 */   addiu     $a2, $zero, 1
/* B14B4 800C0CB4 98700492 */  lbu        $a0, 0x7098($s0)
/* B14B8 800C0CB8 01002592 */  lbu        $a1, 1($s1)
/* B14BC 800C0CBC 0203030C */  jal        FUN_800c0c08
/* B14C0 800C0CC0 01000624 */   addiu     $a2, $zero, 1
/* B14C4 800C0CC4 21100000 */  addu       $v0, $zero, $zero
/* B14C8 800C0CC8 1800BF8F */  lw         $ra, 0x18($sp)
/* B14CC 800C0CCC 1400B18F */  lw         $s1, 0x14($sp)
/* B14D0 800C0CD0 1000B08F */  lw         $s0, 0x10($sp)
/* B14D4 800C0CD4 0800E003 */  jr         $ra
/* B14D8 800C0CD8 2000BD27 */   addiu     $sp, $sp, 0x20
