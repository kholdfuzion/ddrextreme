.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc0d0
/* AC8D0 800BC0D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AC8D4 800BC0D4 1800B0AF */  sw         $s0, 0x18($sp)
/* AC8D8 800BC0D8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AC8DC 800BC0DC 1D6E000C */  jal        FUN_8001b874
/* AC8E0 800BC0E0 21808000 */   addu      $s0, $a0, $zero
/* AC8E4 800BC0E4 1E80043C */  lui        $a0, %hi(D_801E179A)
/* AC8E8 800BC0E8 0F001032 */  andi       $s0, $s0, 0xf
/* AC8EC 800BC0EC 9A178294 */  lhu        $v0, %lo(D_801E179A)($a0)
/* AC8F0 800BC0F0 501F033C */  lui        $v1, 0x1f50
/* AC8F4 800BC0F4 F0FF4230 */  andi       $v0, $v0, 0xfff0
/* AC8F8 800BC0F8 25105000 */  or         $v0, $v0, $s0
/* AC8FC 800BC0FC 000062A4 */  sh         $v0, ($v1)
/* AC900 800BC100 00006394 */  lhu        $v1, ($v1)
/* AC904 800BC104 9A1782A4 */  sh         $v0, 0x179a($a0)
/* AC908 800BC108 1000A3A7 */  sh         $v1, 0x10($sp)
/* AC90C 800BC10C 216E000C */  jal        FUN_8001b884
/* AC910 800BC110 00000000 */   nop
/* AC914 800BC114 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AC918 800BC118 1800B08F */  lw         $s0, 0x18($sp)
/* AC91C 800BC11C 0800E003 */  jr         $ra
/* AC920 800BC120 2000BD27 */   addiu     $sp, $sp, 0x20
