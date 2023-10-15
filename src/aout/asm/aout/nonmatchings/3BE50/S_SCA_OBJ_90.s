.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_90
/* A9F64 800B9764 04008694 */  lhu        $a2, 4($a0)
/* A9F68 800B9768 21280000 */  addu       $a1, $zero, $zero
