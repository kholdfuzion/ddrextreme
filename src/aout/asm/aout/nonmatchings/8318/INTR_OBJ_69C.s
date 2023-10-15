.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_69C
/* C000 8001B800 0600A010 */  beqz       $a1, .L8001B81C
/* C004 8001B804 FFFFA224 */   addiu     $v0, $a1, -1
/* C008 8001B808 FFFF0324 */  addiu      $v1, $zero, -1
.L8001B80C:
/* C00C 8001B80C 000080AC */  sw         $zero, ($a0)
/* C010 8001B810 FFFF4224 */  addiu      $v0, $v0, -1
/* C014 8001B814 FDFF4314 */  bne        $v0, $v1, .L8001B80C
/* C018 8001B818 04008424 */   addiu     $a0, $a0, 4
.L8001B81C:
/* C01C 8001B81C 0800E003 */  jr         $ra
/* C020 8001B820 00000000 */   nop
