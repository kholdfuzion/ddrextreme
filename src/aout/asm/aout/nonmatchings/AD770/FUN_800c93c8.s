.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c93c8
/* B9BC8 800C93C8 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B9BCC 800C93CC FCB7428C */  lw         $v0, %lo(D_801FB7FC)($v0)
/* B9BD0 800C93D0 0800E003 */  jr         $ra
/* B9BD4 800C93D4 00000000 */   nop
