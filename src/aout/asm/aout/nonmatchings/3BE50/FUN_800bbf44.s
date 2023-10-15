.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bbf44
/* AC744 800BBF44 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC748 800BBF48 1000B0AF */  sw         $s0, 0x10($sp)
/* AC74C 800BBF4C 1400BFAF */  sw         $ra, 0x14($sp)
/* AC750 800BBF50 1D6E000C */  jal        FUN_8001b874
/* AC754 800BBF54 21808000 */   addu      $s0, $a0, $zero
/* AC758 800BBF58 1E80033C */  lui        $v1, %hi(D_801E1798)
/* AC75C 800BBF5C 03001032 */  andi       $s0, $s0, 3
/* AC760 800BBF60 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC764 800BBF64 C0801000 */  sll        $s0, $s0, 3
/* AC768 800BBF68 E7FF4230 */  andi       $v0, $v0, 0xffe7
/* AC76C 800BBF6C 25105000 */  or         $v0, $v0, $s0
/* AC770 800BBF70 981762A4 */  sh         $v0, 0x1798($v1)
/* AC774 800BBF74 401F033C */  lui        $v1, 0x1f40
/* AC778 800BBF78 000062A4 */  sh         $v0, ($v1)
/* AC77C 800BBF7C 216E000C */  jal        FUN_8001b884
/* AC780 800BBF80 00000000 */   nop
/* AC784 800BBF84 1400BF8F */  lw         $ra, 0x14($sp)
/* AC788 800BBF88 1000B08F */  lw         $s0, 0x10($sp)
/* AC78C 800BBF8C 0800E003 */  jr         $ra
/* AC790 800BBF90 1800BD27 */   addiu     $sp, $sp, 0x18
