.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_A88
/* A7F3C 800B773C 0F80043C */  lui        $a0, %hi(D_800EC804)
/* A7F40 800B7740 04C8848C */  lw         $a0, %lo(D_800EC804)($a0)
/* A7F44 800B7744 FFF0033C */  lui        $v1, 0xf0ff
/* A7F48 800B7748 0000828C */  lw         $v0, ($a0)
/* A7F4C 800B774C FFFF6334 */  ori        $v1, $v1, 0xffff
/* A7F50 800B7750 24104300 */  and        $v0, $v0, $v1
/* A7F54 800B7754 0020033C */  lui        $v1, 0x2000
/* A7F58 800B7758 25104300 */  or         $v0, $v0, $v1
/* A7F5C 800B775C 0800E003 */  jr         $ra
/* A7F60 800B7760 000082AC */   sw        $v0, ($a0)
