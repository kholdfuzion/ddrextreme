.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetCommonAttr
/* A9ED4 800B96D4 21300000 */  addu       $a2, $zero, $zero
/* A9ED8 800B96D8 0000898C */  lw         $t1, ($a0)
/* A9EDC 800B96DC 00000000 */  nop
/* A9EE0 800B96E0 01002A2D */  sltiu      $t2, $t1, 1
/* A9EE4 800B96E4 06004015 */  bnez       $t2, .L800B9700
/* A9EE8 800B96E8 21400000 */   addu      $t0, $zero, $zero
/* A9EEC 800B96EC 01002231 */  andi       $v0, $t1, 1
/* A9EF0 800B96F0 2D004010 */  beqz       $v0, .L800B97A8
/* A9EF4 800B96F4 04002231 */   andi      $v0, $t1, 4
/* A9EF8 800B96F8 1A004010 */  beqz       $v0, S_SCA_OBJ_90
/* A9EFC 800B96FC 00000000 */   nop
.L800B9700:
/* A9F00 800B9700 08008384 */  lh         $v1, 8($a0)
/* A9F04 800B9704 00000000 */  nop
/* A9F08 800B9708 0800622C */  sltiu      $v0, $v1, 8
/* A9F0C 800B970C 15004010 */  beqz       $v0, S_SCA_OBJ_90
/* A9F10 800B9710 80100300 */   sll       $v0, $v1, 2
/* A9F14 800B9714 0180013C */  lui        $at, %hi(D_800173A0)
/* A9F18 800B9718 21082200 */  addu       $at, $at, $v0
/* A9F1C 800B971C A073228C */  lw         $v0, %lo(D_800173A0)($at)
/* A9F20 800B9720 00000000 */  nop
/* A9F24 800B9724 08004000 */  jr         $v0
/* A9F28 800B9728 00000000 */   nop
