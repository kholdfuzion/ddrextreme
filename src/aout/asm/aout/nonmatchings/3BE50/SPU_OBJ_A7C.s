.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_A7C
/* A7F30 800B7730 25186400 */  or         $v1, $v1, $a0
/* A7F34 800B7734 0800E003 */  jr         $ra
/* A7F38 800B7738 000043AC */   sw        $v1, ($v0)
