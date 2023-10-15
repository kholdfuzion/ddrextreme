.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel E03_OBJ_78
/* A300C 800B280C 170022A2 */  sb         $v0, 0x17($s1)
/* A3010 800B2810 21102002 */  addu       $v0, $s1, $zero
/* A3014 800B2814 0A000324 */  addiu      $v1, $zero, 0xa
/* A3018 800B2818 080053A4 */  sh         $s3, 8($v0)
/* A301C 800B281C 0A0054A4 */  sh         $s4, 0xa($v0)
/* A3020 800B2820 140043A4 */  sh         $v1, 0x14($v0)
/* A3024 800B2824 180040A0 */  sb         $zero, 0x18($v0)
/* A3028 800B2828 2400BF8F */  lw         $ra, 0x24($sp)
/* A302C 800B282C 2000B48F */  lw         $s4, 0x20($sp)
/* A3030 800B2830 1C00B38F */  lw         $s3, 0x1c($sp)
/* A3034 800B2834 1800B28F */  lw         $s2, 0x18($sp)
/* A3038 800B2838 1400B18F */  lw         $s1, 0x14($sp)
/* A303C 800B283C 1000B08F */  lw         $s0, 0x10($sp)
/* A3040 800B2840 0800E003 */  jr         $ra
/* A3044 800B2844 2800BD27 */   addiu     $sp, $sp, 0x28
/* A3048 800B2848 00000000 */  nop
/* A304C 800B284C 00000000 */  nop
/* A3050 800B2850 00000000 */  nop
