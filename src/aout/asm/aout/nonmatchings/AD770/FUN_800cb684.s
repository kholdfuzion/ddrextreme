.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb684
/* BBE84 800CB684 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBE88 800CB688 0F80033C */  lui        $v1, %hi(jtbl_800EE664)
/* BBE8C 800CB68C 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBE90 800CB690 F4E6458C */  lw         $a1, %lo(D_800EE6F4)($v0)
/* BBE94 800CB694 64E66324 */  addiu      $v1, $v1, %lo(jtbl_800EE664)
/* BBE98 800CB698 1000BFAF */  sw         $ra, 0x10($sp)
/* BBE9C 800CB69C C0100500 */  sll        $v0, $a1, 3
/* BBEA0 800CB6A0 21104500 */  addu       $v0, $v0, $a1
/* BBEA4 800CB6A4 80100200 */  sll        $v0, $v0, 2
/* BBEA8 800CB6A8 21104300 */  addu       $v0, $v0, $v1
/* BBEAC 800CB6AC 1800428C */  lw         $v0, 0x18($v0)
/* BBEB0 800CB6B0 00000000 */  nop
/* BBEB4 800CB6B4 09F84000 */  jalr       $v0
/* BBEB8 800CB6B8 00000000 */   nop
/* BBEBC 800CB6BC 1000BF8F */  lw         $ra, 0x10($sp)
/* BBEC0 800CB6C0 00000000 */  nop
/* BBEC4 800CB6C4 0800E003 */  jr         $ra
/* BBEC8 800CB6C8 1800BD27 */   addiu     $sp, $sp, 0x18
