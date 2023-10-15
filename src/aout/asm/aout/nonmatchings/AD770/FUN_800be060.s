.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be060
/* AE860 800BE060 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE864 800BE064 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE868 800BE068 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE86C 800BE06C A8E1468C */  lw         $a2, %lo(D_800EE1A8)($v0)
/* AE870 800BE070 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE874 800BE074 1000BFAF */  sw         $ra, 0x10($sp)
/* AE878 800BE078 80100600 */  sll        $v0, $a2, 2
/* AE87C 800BE07C 21104600 */  addu       $v0, $v0, $a2
/* AE880 800BE080 C0100200 */  sll        $v0, $v0, 3
/* AE884 800BE084 21104300 */  addu       $v0, $v0, $v1
/* AE888 800BE088 1400428C */  lw         $v0, 0x14($v0)
/* AE88C 800BE08C 00000000 */  nop
/* AE890 800BE090 09F84000 */  jalr       $v0
/* AE894 800BE094 FFFFA530 */   andi      $a1, $a1, 0xffff
/* AE898 800BE098 1000BF8F */  lw         $ra, 0x10($sp)
/* AE89C 800BE09C 00000000 */  nop
/* AE8A0 800BE0A0 0800E003 */  jr         $ra
/* AE8A4 800BE0A4 1800BD27 */   addiu     $sp, $sp, 0x18
