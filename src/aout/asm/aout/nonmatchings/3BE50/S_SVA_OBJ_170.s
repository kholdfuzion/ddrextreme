.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_170
/* A9844 800B9044 0B008010 */  beqz       $a0, S_SVA_OBJ_1A0
/* A9848 800B9048 00000000 */   nop
/* A984C 800B904C 08000386 */  lh         $v1, 8($s0)
/* A9850 800B9050 00000000 */  nop
/* A9854 800B9054 80006228 */  slti       $v0, $v1, 0x80
/* A9858 800B9058 03004014 */  bnez       $v0, .L800B9068
/* A985C 800B905C 00000000 */   nop
/* A9860 800B9060 1DE40208 */  j          S_SVA_OBJ_1A0
/* A9864 800B9064 7F000524 */   addiu     $a1, $zero, 0x7f
.L800B9068:
/* A9868 800B9068 02006104 */  bgez       $v1, S_SVA_OBJ_1A0
/* A986C 800B906C 00000000 */   nop
/* A9870 800B9070 21280000 */  addu       $a1, $zero, $zero
