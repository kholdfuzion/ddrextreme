.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2ED8
/* B6BC 8001AEBC 0600C010 */  beqz       $a2, .L8001AED8
/* B6C0 8001AEC0 FFFFC224 */   addiu     $v0, $a2, -1
/* B6C4 8001AEC4 FFFF0324 */  addiu      $v1, $zero, -1
.L8001AEC8:
/* B6C8 8001AEC8 000085A0 */  sb         $a1, ($a0)
/* B6CC 8001AECC FFFF4224 */  addiu      $v0, $v0, -1
/* B6D0 8001AED0 FDFF4314 */  bne        $v0, $v1, .L8001AEC8
/* B6D4 8001AED4 01008424 */   addiu     $a0, $a0, 1
.L8001AED8:
/* B6D8 8001AED8 0800E003 */  jr         $ra
/* B6DC 8001AEDC 00000000 */   nop
/* B6E0 8001AEE0 00000000 */  nop
