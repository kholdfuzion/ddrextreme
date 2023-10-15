.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel TransposeMatrix
/* 3BDF0 8004B5F0 2110A000 */  addu       $v0, $a1, $zero
/* 3BDF4 8004B5F4 0000898C */  lw         $t1, ($a0)
/* 3BDF8 8004B5F8 04008A8C */  lw         $t2, 4($a0)
/* 3BDFC 8004B5FC 0400A9AC */  sw         $t1, 4($a1)
/* 3BE00 8004B600 0000AAAC */  sw         $t2, ($a1)
/* 3BE04 8004B604 0000A9A4 */  sh         $t1, ($a1)
/* 3BE08 8004B608 08008B8C */  lw         $t3, 8($a0)
/* 3BE0C 8004B60C 0C00898C */  lw         $t1, 0xc($a0)
/* 3BE10 8004B610 0C00ABAC */  sw         $t3, 0xc($a1)
/* 3BE14 8004B614 0800A9AC */  sw         $t1, 8($a1)
/* 3BE18 8004B618 0C00AAA4 */  sh         $t2, 0xc($a1)
/* 3BE1C 8004B61C 0800ABA4 */  sh         $t3, 8($a1)
/* 3BE20 8004B620 10008A84 */  lh         $t2, 0x10($a0)
/* 3BE24 8004B624 0400A9A4 */  sh         $t1, 4($a1)
/* 3BE28 8004B628 0800E003 */  jr         $ra
/* 3BE2C 8004B62C 1000AAA4 */   sh        $t2, 0x10($a1)
