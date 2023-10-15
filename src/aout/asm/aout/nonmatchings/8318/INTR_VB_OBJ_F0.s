.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_VB_OBJ_F0
/* C204 8001BA04 0600A010 */  beqz       $a1, .L8001BA20
/* C208 8001BA08 FFFFA224 */   addiu     $v0, $a1, -1
/* C20C 8001BA0C FFFF0324 */  addiu      $v1, $zero, -1
.L8001BA10:
/* C210 8001BA10 000080AC */  sw         $zero, ($a0)
/* C214 8001BA14 FFFF4224 */  addiu      $v0, $v0, -1
/* C218 8001BA18 FDFF4314 */  bne        $v0, $v1, .L8001BA10
/* C21C 8001BA1C 04008424 */   addiu     $a0, $a0, 4
.L8001BA20:
/* C220 8001BA20 0800E003 */  jr         $ra
/* C224 8001BA24 00000000 */   nop
/* C228 8001BA28 00000000 */  nop
/* C22C 8001BA2C 00000000 */  nop
/* C230 8001BA30 00000000 */  nop
