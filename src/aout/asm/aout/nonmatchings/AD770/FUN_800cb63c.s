.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb63c
/* BBE3C 800CB63C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBE40 800CB640 0F80033C */  lui        $v1, %hi(jtbl_800EE664)
/* BBE44 800CB644 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBE48 800CB648 F4E6468C */  lw         $a2, %lo(D_800EE6F4)($v0)
/* BBE4C 800CB64C 64E66324 */  addiu      $v1, $v1, %lo(jtbl_800EE664)
/* BBE50 800CB650 1000BFAF */  sw         $ra, 0x10($sp)
/* BBE54 800CB654 C0100600 */  sll        $v0, $a2, 3
/* BBE58 800CB658 21104600 */  addu       $v0, $v0, $a2
/* BBE5C 800CB65C 80100200 */  sll        $v0, $v0, 2
/* BBE60 800CB660 21104300 */  addu       $v0, $v0, $v1
/* BBE64 800CB664 1400428C */  lw         $v0, 0x14($v0)
/* BBE68 800CB668 00000000 */  nop
/* BBE6C 800CB66C 09F84000 */  jalr       $v0
/* BBE70 800CB670 00000000 */   nop
/* BBE74 800CB674 1000BF8F */  lw         $ra, 0x10($sp)
/* BBE78 800CB678 00000000 */  nop
/* BBE7C 800CB67C 0800E003 */  jr         $ra
/* BBE80 800CB680 1800BD27 */   addiu     $sp, $sp, 0x18
