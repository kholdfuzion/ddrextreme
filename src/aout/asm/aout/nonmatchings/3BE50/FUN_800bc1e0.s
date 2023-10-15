.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc1e0
/* AC9E0 800BC1E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC9E4 800BC1E4 1000B0AF */  sw         $s0, 0x10($sp)
/* AC9E8 800BC1E8 1400BFAF */  sw         $ra, 0x14($sp)
/* AC9EC 800BC1EC 1D6E000C */  jal        FUN_8001b874
/* AC9F0 800BC1F0 21808000 */   addu      $s0, $a0, $zero
/* AC9F4 800BC1F4 1E80033C */  lui        $v1, %hi(D_801E179A)
/* AC9F8 800BC1F8 01001032 */  andi       $s0, $s0, 1
/* AC9FC 800BC1FC 9A176294 */  lhu        $v0, %lo(D_801E179A)($v1)
/* ACA00 800BC200 80811000 */  sll        $s0, $s0, 6
/* ACA04 800BC204 BFFF4230 */  andi       $v0, $v0, 0xffbf
/* ACA08 800BC208 25105000 */  or         $v0, $v0, $s0
/* ACA0C 800BC20C 9A1762A4 */  sh         $v0, 0x179a($v1)
/* ACA10 800BC210 501F033C */  lui        $v1, 0x1f50
/* ACA14 800BC214 000062A4 */  sh         $v0, ($v1)
/* ACA18 800BC218 216E000C */  jal        FUN_8001b884
/* ACA1C 800BC21C 00000000 */   nop
/* ACA20 800BC220 1400BF8F */  lw         $ra, 0x14($sp)
/* ACA24 800BC224 1000B08F */  lw         $s0, 0x10($sp)
/* ACA28 800BC228 0800E003 */  jr         $ra
/* ACA2C 800BC22C 1800BD27 */   addiu     $sp, $sp, 0x18
