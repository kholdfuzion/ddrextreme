.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_DMA_OBJ_278
/* C4AC 8001BCAC 0600A010 */  beqz       $a1, .L8001BCC8
/* C4B0 8001BCB0 FFFFA224 */   addiu     $v0, $a1, -1
/* C4B4 8001BCB4 FFFF0324 */  addiu      $v1, $zero, -1
.L8001BCB8:
/* C4B8 8001BCB8 000080AC */  sw         $zero, ($a0)
/* C4BC 8001BCBC FFFF4224 */  addiu      $v0, $v0, -1
/* C4C0 8001BCC0 FDFF4314 */  bne        $v0, $v1, .L8001BCB8
/* C4C4 8001BCC4 04008424 */   addiu     $a0, $a0, 4
.L8001BCC8:
/* C4C8 8001BCC8 0800E003 */  jr         $ra
/* C4CC 8001BCCC 00000000 */   nop
/* C4D0 8001BCD0 00000000 */  nop
