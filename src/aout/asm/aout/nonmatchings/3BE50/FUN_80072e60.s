.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80072e60
/* 63660 80072E60 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 63664 80072E64 F4FB458C */  lw         $a1, %lo(D_801AFBF4)($v0)
/* 63668 80072E68 00000000 */  nop
/* 6366C 80072E6C BA00A384 */  lh         $v1, 0xba($a1)
/* 63670 80072E70 00000000 */  nop
/* 63674 80072E74 C01A0300 */  sll        $v1, $v1, 0xb
/* 63678 80072E78 1B008300 */  divu       $zero, $a0, $v1
/* 6367C 80072E7C E000A4AC */  sw         $a0, 0xe0($a1)
/* 63680 80072E80 12100000 */  mflo       $v0
/* 63684 80072E84 02006014 */  bnez       $v1, .L80072E90
/* 63688 80072E88 00000000 */   nop
/* 6368C 80072E8C CD010000 */  break      0, 7
.L80072E90:
/* 63690 80072E90 C000A2A4 */   sh        $v0, 0xc0($a1)
/* 63694 80072E94 00140200 */  sll        $v0, $v0, 0x10
/* 63698 80072E98 0800E003 */  jr         $ra
/* 6369C 80072E9C 03140200 */   sra       $v0, $v0, 0x10
