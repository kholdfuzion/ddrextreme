.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_DMA_OBJ_270
/* C4A4 8001BCA4 0800E003 */  jr         $ra
/* C4A8 8001BCA8 00000000 */   nop
