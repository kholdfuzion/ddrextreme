.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BDCC8
/* AE4C8 800BDCC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE4CC 800BDCCC 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE4D0 800BDCD0 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE4D4 800BDCD4 A8E1458C */  lw         $a1, %lo(D_800EE1A8)($v0)
/* AE4D8 800BDCD8 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE4DC 800BDCDC 1000BFAF */  sw         $ra, 0x10($sp)
/* AE4E0 800BDCE0 80100500 */  sll        $v0, $a1, 2
/* AE4E4 800BDCE4 21104500 */  addu       $v0, $v0, $a1
/* AE4E8 800BDCE8 C0100200 */  sll        $v0, $v0, 3
/* AE4EC 800BDCEC 21104300 */  addu       $v0, $v0, $v1
/* AE4F0 800BDCF0 0C00428C */  lw         $v0, 0xc($v0)
/* AE4F4 800BDCF4 00000000 */  nop
/* AE4F8 800BDCF8 09F84000 */  jalr       $v0
/* AE4FC 800BDCFC 00000000 */   nop
/* AE500 800BDD00 1000BF8F */  lw         $ra, 0x10($sp)
/* AE504 800BDD04 00000000 */  nop
/* AE508 800BDD08 0800E003 */  jr         $ra
/* AE50C 800BDD0C 1800BD27 */   addiu     $sp, $sp, 0x18
