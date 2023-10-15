.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BDC80
/* AE480 800BDC80 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE484 800BDC84 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE488 800BDC88 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE48C 800BDC8C A8E1458C */  lw         $a1, %lo(D_800EE1A8)($v0)
/* AE490 800BDC90 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE494 800BDC94 1000BFAF */  sw         $ra, 0x10($sp)
/* AE498 800BDC98 80100500 */  sll        $v0, $a1, 2
/* AE49C 800BDC9C 21104500 */  addu       $v0, $v0, $a1
/* AE4A0 800BDCA0 C0100200 */  sll        $v0, $v0, 3
/* AE4A4 800BDCA4 21104300 */  addu       $v0, $v0, $v1
/* AE4A8 800BDCA8 0800428C */  lw         $v0, 8($v0)
/* AE4AC 800BDCAC 00000000 */  nop
/* AE4B0 800BDCB0 09F84000 */  jalr       $v0
/* AE4B4 800BDCB4 00000000 */   nop
/* AE4B8 800BDCB8 1000BF8F */  lw         $ra, 0x10($sp)
/* AE4BC 800BDCBC 00000000 */  nop
/* AE4C0 800BDCC0 0800E003 */  jr         $ra
/* AE4C4 800BDCC4 1800BD27 */   addiu     $sp, $sp, 0x18
