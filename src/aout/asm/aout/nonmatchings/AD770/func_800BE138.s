.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BE138
/* AE938 800BE138 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE93C 800BE13C 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE940 800BE140 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE944 800BE144 A8E1468C */  lw         $a2, %lo(D_800EE1A8)($v0)
/* AE948 800BE148 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE94C 800BE14C 1000BFAF */  sw         $ra, 0x10($sp)
/* AE950 800BE150 80100600 */  sll        $v0, $a2, 2
/* AE954 800BE154 21104600 */  addu       $v0, $v0, $a2
/* AE958 800BE158 C0100200 */  sll        $v0, $v0, 3
/* AE95C 800BE15C 21104300 */  addu       $v0, $v0, $v1
/* AE960 800BE160 2000428C */  lw         $v0, 0x20($v0)
/* AE964 800BE164 00000000 */  nop
/* AE968 800BE168 09F84000 */  jalr       $v0
/* AE96C 800BE16C FFFFA530 */   andi      $a1, $a1, 0xffff
/* AE970 800BE170 1000BF8F */  lw         $ra, 0x10($sp)
/* AE974 800BE174 00000000 */  nop
/* AE978 800BE178 0800E003 */  jr         $ra
/* AE97C 800BE17C 1800BD27 */   addiu     $sp, $sp, 0x18
