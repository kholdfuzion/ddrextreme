.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BBF94
/* AC794 800BBF94 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC798 800BBF98 1000B0AF */  sw         $s0, 0x10($sp)
/* AC79C 800BBF9C 1400BFAF */  sw         $ra, 0x14($sp)
/* AC7A0 800BBFA0 1D6E000C */  jal        FUN_8001b874
/* AC7A4 800BBFA4 21808000 */   addu      $s0, $a0, $zero
/* AC7A8 800BBFA8 1E80033C */  lui        $v1, %hi(D_801E1798)
/* AC7AC 800BBFAC 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC7B0 800BBFB0 07001032 */  andi       $s0, $s0, 7
/* AC7B4 800BBFB4 F8FF4230 */  andi       $v0, $v0, 0xfff8
/* AC7B8 800BBFB8 25105000 */  or         $v0, $v0, $s0
/* AC7BC 800BBFBC 981762A4 */  sh         $v0, 0x1798($v1)
/* AC7C0 800BBFC0 401F033C */  lui        $v1, 0x1f40
/* AC7C4 800BBFC4 000062A4 */  sh         $v0, ($v1)
/* AC7C8 800BBFC8 216E000C */  jal        FUN_8001b884
/* AC7CC 800BBFCC 00000000 */   nop
/* AC7D0 800BBFD0 1400BF8F */  lw         $ra, 0x14($sp)
/* AC7D4 800BBFD4 1000B08F */  lw         $s0, 0x10($sp)
/* AC7D8 800BBFD8 0800E003 */  jr         $ra
/* AC7DC 800BBFDC 1800BD27 */   addiu     $sp, $sp, 0x18
