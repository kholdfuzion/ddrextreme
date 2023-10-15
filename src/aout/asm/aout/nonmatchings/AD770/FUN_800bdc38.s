.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bdc38
/* AE438 800BDC38 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE43C 800BDC3C 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE440 800BDC40 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE444 800BDC44 A8E1458C */  lw         $a1, %lo(D_800EE1A8)($v0)
/* AE448 800BDC48 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE44C 800BDC4C 1000BFAF */  sw         $ra, 0x10($sp)
/* AE450 800BDC50 80100500 */  sll        $v0, $a1, 2
/* AE454 800BDC54 21104500 */  addu       $v0, $v0, $a1
/* AE458 800BDC58 C0100200 */  sll        $v0, $v0, 3
/* AE45C 800BDC5C 21104300 */  addu       $v0, $v0, $v1
/* AE460 800BDC60 0400428C */  lw         $v0, 4($v0)
/* AE464 800BDC64 00000000 */  nop
/* AE468 800BDC68 09F84000 */  jalr       $v0
/* AE46C 800BDC6C 00000000 */   nop
/* AE470 800BDC70 1000BF8F */  lw         $ra, 0x10($sp)
/* AE474 800BDC74 00000000 */  nop
/* AE478 800BDC78 0800E003 */  jr         $ra
/* AE47C 800BDC7C 1800BD27 */   addiu     $sp, $sp, 0x18
