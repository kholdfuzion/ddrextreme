.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be180
/* AE980 800BE180 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE984 800BE184 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE988 800BE188 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE98C 800BE18C A8E1458C */  lw         $a1, %lo(D_800EE1A8)($v0)
/* AE990 800BE190 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE994 800BE194 1000BFAF */  sw         $ra, 0x10($sp)
/* AE998 800BE198 80100500 */  sll        $v0, $a1, 2
/* AE99C 800BE19C 21104500 */  addu       $v0, $v0, $a1
/* AE9A0 800BE1A0 C0100200 */  sll        $v0, $v0, 3
/* AE9A4 800BE1A4 21104300 */  addu       $v0, $v0, $v1
/* AE9A8 800BE1A8 2400428C */  lw         $v0, 0x24($v0)
/* AE9AC 800BE1AC 00000000 */  nop
/* AE9B0 800BE1B0 09F84000 */  jalr       $v0
/* AE9B4 800BE1B4 00000000 */   nop
/* AE9B8 800BE1B8 1000BF8F */  lw         $ra, 0x10($sp)
/* AE9BC 800BE1BC 00000000 */  nop
/* AE9C0 800BE1C0 0800E003 */  jr         $ra
/* AE9C4 800BE1C4 1800BD27 */   addiu     $sp, $sp, 0x18
