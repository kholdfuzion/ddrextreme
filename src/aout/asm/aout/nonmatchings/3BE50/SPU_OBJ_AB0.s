.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_AB0
/* A7F64 800B7764 0F80043C */  lui        $a0, %hi(D_800EC804)
/* A7F68 800B7768 04C8848C */  lw         $a0, %lo(D_800EC804)($a0)
/* A7F6C 800B776C FFF0033C */  lui        $v1, 0xf0ff
/* A7F70 800B7770 0000828C */  lw         $v0, ($a0)
/* A7F74 800B7774 FFFF6334 */  ori        $v1, $v1, 0xffff
/* A7F78 800B7778 24104300 */  and        $v0, $v0, $v1
/* A7F7C 800B777C 0022033C */  lui        $v1, 0x2200
/* A7F80 800B7780 25104300 */  or         $v0, $v0, $v1
/* A7F84 800B7784 0800E003 */  jr         $ra
/* A7F88 800B7788 000082AC */   sw        $v0, ($a0)
