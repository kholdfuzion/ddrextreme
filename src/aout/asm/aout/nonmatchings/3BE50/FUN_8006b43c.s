.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006b43c
/* 5BC3C 8006B43C 21288000 */  addu       $a1, $a0, $zero
/* 5BC40 8006B440 0001A228 */  slti       $v0, $a1, 0x100
/* 5BC44 8006B444 02004014 */  bnez       $v0, .L8006B450
/* 5BC48 8006B448 00000000 */   nop
/* 5BC4C 8006B44C 21280000 */  addu       $a1, $zero, $zero
.L8006B450:
/* 5BC50 8006B450 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5BC54 8006B454 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5BC58 8006B458 80100500 */  sll        $v0, $a1, 2
/* 5BC5C 8006B45C 21104500 */  addu       $v0, $v0, $a1
/* 5BC60 8006B460 C0100200 */  sll        $v0, $v0, 3
/* 5BC64 8006B464 80200300 */  sll        $a0, $v1, 2
/* 5BC68 8006B468 21208300 */  addu       $a0, $a0, $v1
/* 5BC6C 8006B46C C0220400 */  sll        $a0, $a0, 0xb
/* 5BC70 8006B470 1A80033C */  lui        $v1, %hi(D_801A2800)
/* 5BC74 8006B474 00286324 */  addiu      $v1, $v1, %lo(D_801A2800)
/* 5BC78 8006B478 21104300 */  addu       $v0, $v0, $v1
/* 5BC7C 8006B47C 0800E003 */  jr         $ra
/* 5BC80 8006B480 21108200 */   addu      $v0, $a0, $v0
