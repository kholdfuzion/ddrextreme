.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca010
/* BA810 800CA010 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BA814 800CA014 2000B4AF */  sw         $s4, 0x20($sp)
/* BA818 800CA018 4000B48F */  lw         $s4, 0x40($sp)
/* BA81C 800CA01C 1800B2AF */  sw         $s2, 0x18($sp)
/* BA820 800CA020 21908000 */  addu       $s2, $a0, $zero
/* BA824 800CA024 2400B5AF */  sw         $s5, 0x24($sp)
/* BA828 800CA028 21A8A000 */  addu       $s5, $a1, $zero
/* BA82C 800CA02C 1000B0AF */  sw         $s0, 0x10($sp)
/* BA830 800CA030 2180C000 */  addu       $s0, $a2, $zero
/* BA834 800CA034 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA838 800CA038 1400B1AF */  sw         $s1, 0x14($sp)
/* BA83C 800CA03C 4400B18F */  lw         $s1, 0x44($sp)
/* BA840 800CA040 2800BFAF */  sw         $ra, 0x28($sp)
/* BA844 800CA044 A509030C */  jal        FUN_800c2694
/* BA848 800CA048 2198E000 */   addu      $s3, $a3, $zero
/* BA84C 800CA04C 21204002 */  addu       $a0, $s2, $zero
/* BA850 800CA050 09000224 */  addiu      $v0, $zero, 9
/* BA854 800CA054 72000324 */  addiu      $v1, $zero, 0x72
/* BA858 800CA058 30001026 */  addiu      $s0, $s0, 0x30
/* BA85C 800CA05C 2128A002 */  addu       $a1, $s5, $zero
/* BA860 800CA060 21300000 */  addu       $a2, $zero, $zero
/* BA864 800CA064 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA868 800CA068 0C00828C */  lw         $v0, 0xc($a0)
/* BA86C 800CA06C 2138C000 */  addu       $a3, $a2, $zero
/* BA870 800CA070 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA874 800CA074 000043A0 */  sb         $v1, ($v0)
/* BA878 800CA078 031C1100 */  sra        $v1, $s1, 0x10
/* BA87C 800CA07C 020043A0 */  sb         $v1, 2($v0)
/* BA880 800CA080 031A1100 */  sra        $v1, $s1, 8
/* BA884 800CA084 030043A0 */  sb         $v1, 3($v0)
/* BA888 800CA088 031A1300 */  sra        $v1, $s3, 8
/* BA88C 800CA08C 050043A0 */  sb         $v1, 5($v0)
/* BA890 800CA090 031A1400 */  sra        $v1, $s4, 8
/* BA894 800CA094 010050A0 */  sb         $s0, 1($v0)
/* BA898 800CA098 040051A0 */  sb         $s1, 4($v0)
/* BA89C 800CA09C 060053A0 */  sb         $s3, 6($v0)
/* BA8A0 800CA0A0 070043A0 */  sb         $v1, 7($v0)
/* BA8A4 800CA0A4 B209030C */  jal        FUN_800c26c8
/* BA8A8 800CA0A8 080054A0 */   sb        $s4, 8($v0)
/* BA8AC 800CA0AC 2800BF8F */  lw         $ra, 0x28($sp)
/* BA8B0 800CA0B0 2400B58F */  lw         $s5, 0x24($sp)
/* BA8B4 800CA0B4 2000B48F */  lw         $s4, 0x20($sp)
/* BA8B8 800CA0B8 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA8BC 800CA0BC 1800B28F */  lw         $s2, 0x18($sp)
/* BA8C0 800CA0C0 1400B18F */  lw         $s1, 0x14($sp)
/* BA8C4 800CA0C4 1000B08F */  lw         $s0, 0x10($sp)
/* BA8C8 800CA0C8 0800E003 */  jr         $ra
/* BA8CC 800CA0CC 3000BD27 */   addiu     $sp, $sp, 0x30
