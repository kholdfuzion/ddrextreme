.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80052e80
/* 43680 80052E80 21200000 */  addu       $a0, $zero, $zero
/* 43684 80052E84 1780023C */  lui        $v0, %hi(D_80172720)
/* 43688 80052E88 20274724 */  addiu      $a3, $v0, %lo(D_80172720)
/* 4368C 80052E8C 1780033C */  lui        $v1, %hi(D_80172740)
/* 43690 80052E90 40276824 */  addiu      $t0, $v1, %lo(D_80172740)
/* 43694 80052E94 80100400 */  sll        $v0, $a0, 2
.L80052E98:
/* 43698 80052E98 01008624 */  addiu      $a2, $a0, 1
/* 4369C 80052E9C 00190400 */  sll        $v1, $a0, 4
/* 436A0 80052EA0 21206700 */  addu       $a0, $v1, $a3
/* 436A4 80052EA4 01000524 */  addiu      $a1, $zero, 1
.L80052EA8:
/* 436A8 80052EA8 000080AC */  sw         $zero, ($a0)
/* 436AC 80052EAC 040080A0 */  sb         $zero, 4($a0)
/* 436B0 80052EB0 FFFFA524 */  addiu      $a1, $a1, -1
/* 436B4 80052EB4 FCFFA104 */  bgez       $a1, .L80052EA8
/* 436B8 80052EB8 08008424 */   addiu     $a0, $a0, 8
/* 436BC 80052EBC 21104800 */  addu       $v0, $v0, $t0
/* 436C0 80052EC0 21186700 */  addu       $v1, $v1, $a3
/* 436C4 80052EC4 000043AC */  sw         $v1, ($v0)
/* 436C8 80052EC8 2120C000 */  addu       $a0, $a2, $zero
/* 436CC 80052ECC 02008228 */  slti       $v0, $a0, 2
/* 436D0 80052ED0 F1FF4014 */  bnez       $v0, .L80052E98
/* 436D4 80052ED4 80100400 */   sll       $v0, $a0, 2
/* 436D8 80052ED8 0800E003 */  jr         $ra
/* 436DC 80052EDC 00000000 */   nop
