.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc15c
/* AC95C 800BC15C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AC960 800BC160 1800B0AF */  sw         $s0, 0x18($sp)
/* AC964 800BC164 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AC968 800BC168 1D6E000C */  jal        FUN_8001b874
/* AC96C 800BC16C 21808000 */   addu      $s0, $a0, $zero
/* AC970 800BC170 1E80043C */  lui        $a0, %hi(D_801E179A)
/* AC974 800BC174 03001032 */  andi       $s0, $s0, 3
/* AC978 800BC178 00811000 */  sll        $s0, $s0, 4
/* AC97C 800BC17C 9A178294 */  lhu        $v0, %lo(D_801E179A)($a0)
/* AC980 800BC180 501F033C */  lui        $v1, 0x1f50
/* AC984 800BC184 CFFF4230 */  andi       $v0, $v0, 0xffcf
/* AC988 800BC188 25105000 */  or         $v0, $v0, $s0
/* AC98C 800BC18C 000062A4 */  sh         $v0, ($v1)
/* AC990 800BC190 00006394 */  lhu        $v1, ($v1)
/* AC994 800BC194 9A1782A4 */  sh         $v0, 0x179a($a0)
/* AC998 800BC198 1000A3A7 */  sh         $v1, 0x10($sp)
/* AC99C 800BC19C 216E000C */  jal        FUN_8001b884
/* AC9A0 800BC1A0 00000000 */   nop
/* AC9A4 800BC1A4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AC9A8 800BC1A8 1800B08F */  lw         $s0, 0x18($sp)
/* AC9AC 800BC1AC 0800E003 */  jr         $ra
/* AC9B0 800BC1B0 2000BD27 */   addiu     $sp, $sp, 0x20
