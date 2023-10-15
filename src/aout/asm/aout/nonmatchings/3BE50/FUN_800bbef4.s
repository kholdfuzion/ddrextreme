.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bbef4
/* AC6F4 800BBEF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC6F8 800BBEF8 1000B0AF */  sw         $s0, 0x10($sp)
/* AC6FC 800BBEFC 1400BFAF */  sw         $ra, 0x14($sp)
/* AC700 800BBF00 1D6E000C */  jal        FUN_8001b874
/* AC704 800BBF04 21808000 */   addu      $s0, $a0, $zero
/* AC708 800BBF08 1E80033C */  lui        $v1, %hi(D_801E1798)
/* AC70C 800BBF0C 07001032 */  andi       $s0, $s0, 7
/* AC710 800BBF10 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC714 800BBF14 40811000 */  sll        $s0, $s0, 5
/* AC718 800BBF18 1FFF4230 */  andi       $v0, $v0, 0xff1f
/* AC71C 800BBF1C 25105000 */  or         $v0, $v0, $s0
/* AC720 800BBF20 981762A4 */  sh         $v0, 0x1798($v1)
/* AC724 800BBF24 401F033C */  lui        $v1, 0x1f40
/* AC728 800BBF28 000062A4 */  sh         $v0, ($v1)
/* AC72C 800BBF2C 216E000C */  jal        FUN_8001b884
/* AC730 800BBF30 00000000 */   nop
/* AC734 800BBF34 1400BF8F */  lw         $ra, 0x14($sp)
/* AC738 800BBF38 1000B08F */  lw         $s0, 0x10($sp)
/* AC73C 800BBF3C 0800E003 */  jr         $ra
/* AC740 800BBF40 1800BD27 */   addiu     $sp, $sp, 0x18
