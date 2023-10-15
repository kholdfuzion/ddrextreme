.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_150
/* AA024 800B9824 06008894 */  lhu        $t0, 6($a0)
/* AA028 800B9828 21280000 */  addu       $a1, $zero, $zero
