.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bdda0
/* AE5A0 800BDDA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE5A4 800BDDA4 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE5A8 800BDDA8 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE5AC 800BDDAC A8E1468C */  lw         $a2, %lo(D_800EE1A8)($v0)
/* AE5B0 800BDDB0 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE5B4 800BDDB4 1000BFAF */  sw         $ra, 0x10($sp)
/* AE5B8 800BDDB8 80100600 */  sll        $v0, $a2, 2
/* AE5BC 800BDDBC 21104600 */  addu       $v0, $v0, $a2
/* AE5C0 800BDDC0 C0100200 */  sll        $v0, $v0, 3
/* AE5C4 800BDDC4 21104300 */  addu       $v0, $v0, $v1
/* AE5C8 800BDDC8 1000428C */  lw         $v0, 0x10($v0)
/* AE5CC 800BDDCC 00000000 */  nop
/* AE5D0 800BDDD0 09F84000 */  jalr       $v0
/* AE5D4 800BDDD4 FFFFA530 */   andi      $a1, $a1, 0xffff
/* AE5D8 800BDDD8 1000BF8F */  lw         $ra, 0x10($sp)
/* AE5DC 800BDDDC 00000000 */  nop
/* AE5E0 800BDDE0 0800E003 */  jr         $ra
/* AE5E4 800BDDE4 1800BD27 */   addiu     $sp, $sp, 0x18
