.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be0a8
/* AE8A8 800BE0A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE8AC 800BE0AC 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE8B0 800BE0B0 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE8B4 800BE0B4 A8E1468C */  lw         $a2, %lo(D_800EE1A8)($v0)
/* AE8B8 800BE0B8 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE8BC 800BE0BC 1000BFAF */  sw         $ra, 0x10($sp)
/* AE8C0 800BE0C0 80100600 */  sll        $v0, $a2, 2
/* AE8C4 800BE0C4 21104600 */  addu       $v0, $v0, $a2
/* AE8C8 800BE0C8 C0100200 */  sll        $v0, $v0, 3
/* AE8CC 800BE0CC 21104300 */  addu       $v0, $v0, $v1
/* AE8D0 800BE0D0 1800428C */  lw         $v0, 0x18($v0)
/* AE8D4 800BE0D4 00000000 */  nop
/* AE8D8 800BE0D8 09F84000 */  jalr       $v0
/* AE8DC 800BE0DC FFFFA530 */   andi      $a1, $a1, 0xffff
/* AE8E0 800BE0E0 1000BF8F */  lw         $ra, 0x10($sp)
/* AE8E4 800BE0E4 00000000 */  nop
/* AE8E8 800BE0E8 0800E003 */  jr         $ra
/* AE8EC 800BE0EC 1800BD27 */   addiu     $sp, $sp, 0x18
