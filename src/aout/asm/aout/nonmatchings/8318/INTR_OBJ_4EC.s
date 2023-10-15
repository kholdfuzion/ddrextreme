.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_4EC
/* BE50 8001B650 08002016 */  bnez       $s1, .L8001B674
/* BE54 8001B654 04000224 */   addiu     $v0, $zero, 4
/* BE58 8001B658 0100502E */  sltiu      $s0, $s2, 1
/* BE5C 8001B65C 516C000C */  jal        ChangeClearPAD
/* BE60 8001B660 21200002 */   addu      $a0, $s0, $zero
/* BE64 8001B664 03000424 */  addiu      $a0, $zero, 3
/* BE68 8001B668 556C000C */  jal        ChangeClearRCnt
/* BE6C 8001B66C 21280002 */   addu      $a1, $s0, $zero
/* BE70 8001B670 04000224 */  addiu      $v0, $zero, 4
.L8001B674:
/* BE74 8001B674 05002216 */  bne        $s1, $v0, .L8001B68C
/* BE78 8001B678 05000224 */   addiu     $v0, $zero, 5
/* BE7C 8001B67C 21200000 */  addu       $a0, $zero, $zero
/* BE80 8001B680 556C000C */  jal        ChangeClearRCnt
/* BE84 8001B684 0100452E */   sltiu     $a1, $s2, 1
/* BE88 8001B688 05000224 */  addiu      $v0, $zero, 5
.L8001B68C:
/* BE8C 8001B68C 05002216 */  bne        $s1, $v0, .L8001B6A4
/* BE90 8001B690 06000224 */   addiu     $v0, $zero, 6
/* BE94 8001B694 01000424 */  addiu      $a0, $zero, 1
/* BE98 8001B698 556C000C */  jal        ChangeClearRCnt
/* BE9C 8001B69C 0100452E */   sltiu     $a1, $s2, 1
/* BEA0 8001B6A0 06000224 */  addiu      $v0, $zero, 6
.L8001B6A4:
/* BEA4 8001B6A4 03002216 */  bne        $s1, $v0, .L8001B6B4
/* BEA8 8001B6A8 02000424 */   addiu     $a0, $zero, 2
/* BEAC 8001B6AC 556C000C */  jal        ChangeClearRCnt
/* BEB0 8001B6B0 0100452E */   sltiu     $a1, $s2, 1
.L8001B6B4:
/* BEB4 8001B6B4 0D80023C */  lui        $v0, %hi(D_800D3DF0)
/* BEB8 8001B6B8 F03D428C */  lw         $v0, %lo(D_800D3DF0)($v0)
/* BEBC 8001B6BC 00000000 */  nop
/* BEC0 8001B6C0 000053A4 */  sh         $s3, ($v0)
.L8001B6C4:
/* BEC4 8001B6C4 21108002 */  addu       $v0, $s4, $zero
.L8001B6C8:
/* BEC8 8001B6C8 2400BF8F */  lw         $ra, 0x24($sp)
/* BECC 8001B6CC 2000B48F */  lw         $s4, 0x20($sp)
/* BED0 8001B6D0 1C00B38F */  lw         $s3, 0x1c($sp)
/* BED4 8001B6D4 1800B28F */  lw         $s2, 0x18($sp)
/* BED8 8001B6D8 1400B18F */  lw         $s1, 0x14($sp)
/* BEDC 8001B6DC 1000B08F */  lw         $s0, 0x10($sp)
/* BEE0 8001B6E0 0800E003 */  jr         $ra
/* BEE4 8001B6E4 2800BD27 */   addiu     $sp, $sp, 0x28
