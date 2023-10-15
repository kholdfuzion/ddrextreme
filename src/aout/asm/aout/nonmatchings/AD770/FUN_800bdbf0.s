.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bdbf0
/* AE3F0 800BDBF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE3F4 800BDBF4 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE3F8 800BDBF8 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE3FC 800BDBFC A8E1458C */  lw         $a1, %lo(D_800EE1A8)($v0)
/* AE400 800BDC00 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE404 800BDC04 1000BFAF */  sw         $ra, 0x10($sp)
/* AE408 800BDC08 80100500 */  sll        $v0, $a1, 2
/* AE40C 800BDC0C 21104500 */  addu       $v0, $v0, $a1
/* AE410 800BDC10 C0100200 */  sll        $v0, $v0, 3
/* AE414 800BDC14 21104300 */  addu       $v0, $v0, $v1
/* AE418 800BDC18 0000428C */  lw         $v0, ($v0)
/* AE41C 800BDC1C 00000000 */  nop
/* AE420 800BDC20 09F84000 */  jalr       $v0
/* AE424 800BDC24 00000000 */   nop
/* AE428 800BDC28 1000BF8F */  lw         $ra, 0x10($sp)
/* AE42C 800BDC2C 00000000 */  nop
/* AE430 800BDC30 0800E003 */  jr         $ra
/* AE434 800BDC34 1800BD27 */   addiu     $sp, $sp, 0x18
