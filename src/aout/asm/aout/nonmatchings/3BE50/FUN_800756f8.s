.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800756f8
/* 65EF8 800756F8 2130A000 */  addu       $a2, $a1, $zero
/* 65EFC 800756FC 1B80023C */  lui        $v0, %hi(D_801B0E4C)
/* 65F00 80075700 4C0E438C */  lw         $v1, %lo(D_801B0E4C)($v0)
/* 65F04 80075704 80200400 */  sll        $a0, $a0, 2
/* 65F08 80075708 08006324 */  addiu      $v1, $v1, 8
/* 65F0C 8007570C 0200A104 */  bgez       $a1, .L80075718
/* 65F10 80075710 21206400 */   addu      $a0, $v1, $a0
/* 65F14 80075714 FF0FA624 */  addiu      $a2, $a1, 0xfff
.L80075718:
/* 65F18 80075718 031B0600 */  sra        $v1, $a2, 0xc
/* 65F1C 8007571C 001B0300 */  sll        $v1, $v1, 0xc
/* 65F20 80075720 2318A300 */  subu       $v1, $a1, $v1
/* 65F24 80075724 80100300 */  sll        $v0, $v1, 2
/* 65F28 80075728 21104300 */  addu       $v0, $v0, $v1
/* 65F2C 8007572C C0100200 */  sll        $v0, $v0, 3
/* 65F30 80075730 02004104 */  bgez       $v0, .L8007573C
/* 65F34 80075734 00000000 */   nop
/* 65F38 80075738 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8007573C:
/* 65F3C 8007573C 03130200 */  sra        $v0, $v0, 0xc
/* 65F40 80075740 0800E003 */  jr         $ra
/* 65F44 80075744 000082AC */   sw        $v0, ($a0)
