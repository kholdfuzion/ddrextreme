.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002E854
/* 1F054 8002E854 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1F058 8002E858 0E80033C */  lui        $v1, 0x800e
/* 1F05C 8002E85C 01000224 */  addiu      $v0, $zero, 1
/* 1F060 8002E860 1000B0AF */  sw         $s0, 0x10($sp)
/* 1F064 8002E864 21808000 */  addu       $s0, $a0, $zero
/* 1F068 8002E868 01000424 */  addiu      $a0, $zero, 1
/* 1F06C 8002E86C 1400BFAF */  sw         $ra, 0x14($sp)
/* 1F070 8002E870 CD6B000C */  jal        VSync
/* 1F074 8002E874 F08D62A4 */   sh        $v0, -0x7210($v1)
/* 1F078 8002E878 3E29053C */  lui        $a1, 0x293e
/* 1F07C 8002E87C 4159A534 */  ori        $a1, $a1, 0x5941
/* 1F080 8002E880 40181000 */  sll        $v1, $s0, 1
/* 1F084 8002E884 21187000 */  addu       $v1, $v1, $s0
/* 1F088 8002E888 80210300 */  sll        $a0, $v1, 6
/* 1F08C 8002E88C 21186400 */  addu       $v1, $v1, $a0
/* 1F090 8002E890 80180300 */  sll        $v1, $v1, 2
/* 1F094 8002E894 21187000 */  addu       $v1, $v1, $s0
/* 1F098 8002E898 80180300 */  sll        $v1, $v1, 2
/* 1F09C 8002E89C 21187000 */  addu       $v1, $v1, $s0
/* 1F0A0 8002E8A0 40190300 */  sll        $v1, $v1, 5
/* 1F0A4 8002E8A4 18006500 */  mult       $v1, $a1
/* 1F0A8 8002E8A8 1580043C */  lui        $a0, %hi(D_8014CCA4)
/* 1F0AC 8002E8AC A4CC82A4 */  sh         $v0, %lo(D_8014CCA4)($a0)
/* 1F0B0 8002E8B0 1580023C */  lui        $v0, 0x8015
/* 1F0B4 8002E8B4 C31F0300 */  sra        $v1, $v1, 0x1f
/* 1F0B8 8002E8B8 1400BF8F */  lw         $ra, 0x14($sp)
/* 1F0BC 8002E8BC 1000B08F */  lw         $s0, 0x10($sp)
/* 1F0C0 8002E8C0 10280000 */  mfhi       $a1
/* 1F0C4 8002E8C4 832A0500 */  sra        $a1, $a1, 0xa
/* 1F0C8 8002E8C8 2328A300 */  subu       $a1, $a1, $v1
/* 1F0CC 8002E8CC A6CC45A4 */  sh         $a1, -0x335a($v0)
/* 1F0D0 8002E8D0 0800E003 */  jr         $ra
/* 1F0D4 8002E8D4 1800BD27 */   addiu     $sp, $sp, 0x18
