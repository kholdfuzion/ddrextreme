.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80072d9c
/* 6359C 80072D9C 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 635A0 80072DA0 F4FB438C */  lw         $v1, %lo(D_801AFBF4)($v0)
/* 635A4 80072DA4 00000000 */  nop
/* 635A8 80072DA8 B8006284 */  lh         $v0, 0xb8($v1)
/* 635AC 80072DAC 00000000 */  nop
/* 635B0 80072DB0 06004010 */  beqz       $v0, .L80072DCC
/* 635B4 80072DB4 21100000 */   addu      $v0, $zero, $zero
/* 635B8 80072DB8 E40064AC */  sw         $a0, 0xe4($v1)
/* 635BC 80072DBC EC0065AC */  sw         $a1, 0xec($v1)
/* 635C0 80072DC0 E80066AC */  sw         $a2, 0xe8($v1)
/* 635C4 80072DC4 0800E003 */  jr         $ra
/* 635C8 80072DC8 F00065AC */   sw        $a1, 0xf0($v1)
.L80072DCC:
/* 635CC 80072DCC 0800E003 */  jr         $ra
/* 635D0 80072DD0 FFFF0224 */   addiu     $v0, $zero, -1
