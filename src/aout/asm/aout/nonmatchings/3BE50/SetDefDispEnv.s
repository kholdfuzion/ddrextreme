.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetDefDispEnv
/* A3054 800B2854 1000A38F */  lw         $v1, 0x10($sp)
/* A3058 800B2858 21108000 */  addu       $v0, $a0, $zero
/* A305C 800B285C 000045A4 */  sh         $a1, ($v0)
/* A3060 800B2860 020046A4 */  sh         $a2, 2($v0)
/* A3064 800B2864 040047A4 */  sh         $a3, 4($v0)
/* A3068 800B2868 080040A4 */  sh         $zero, 8($v0)
/* A306C 800B286C 0A0040A4 */  sh         $zero, 0xa($v0)
/* A3070 800B2870 0C0040A4 */  sh         $zero, 0xc($v0)
/* A3074 800B2874 0E0040A4 */  sh         $zero, 0xe($v0)
/* A3078 800B2878 110040A0 */  sb         $zero, 0x11($v0)
/* A307C 800B287C 100040A0 */  sb         $zero, 0x10($v0)
/* A3080 800B2880 130040A0 */  sb         $zero, 0x13($v0)
/* A3084 800B2884 120040A0 */  sb         $zero, 0x12($v0)
/* A3088 800B2888 0800E003 */  jr         $ra
/* A308C 800B288C 060043A4 */   sh        $v1, 6($v0)
/* A3090 800B2890 00000000 */  nop
