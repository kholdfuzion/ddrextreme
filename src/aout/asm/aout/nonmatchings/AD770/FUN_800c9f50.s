.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9f50
/* BA750 800C9F50 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BA754 800C9F54 2000B4AF */  sw         $s4, 0x20($sp)
/* BA758 800C9F58 4000B48F */  lw         $s4, 0x40($sp)
/* BA75C 800C9F5C 1800B2AF */  sw         $s2, 0x18($sp)
/* BA760 800C9F60 21908000 */  addu       $s2, $a0, $zero
/* BA764 800C9F64 2400B5AF */  sw         $s5, 0x24($sp)
/* BA768 800C9F68 21A8A000 */  addu       $s5, $a1, $zero
/* BA76C 800C9F6C 1000B0AF */  sw         $s0, 0x10($sp)
/* BA770 800C9F70 2180C000 */  addu       $s0, $a2, $zero
/* BA774 800C9F74 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA778 800C9F78 1400B1AF */  sw         $s1, 0x14($sp)
/* BA77C 800C9F7C 4400B18F */  lw         $s1, 0x44($sp)
/* BA780 800C9F80 2800BFAF */  sw         $ra, 0x28($sp)
/* BA784 800C9F84 A509030C */  jal        FUN_800c2694
/* BA788 800C9F88 2198E000 */   addu      $s3, $a3, $zero
/* BA78C 800C9F8C 21204002 */  addu       $a0, $s2, $zero
/* BA790 800C9F90 09000224 */  addiu      $v0, $zero, 9
/* BA794 800C9F94 72000324 */  addiu      $v1, $zero, 0x72
/* BA798 800C9F98 20001026 */  addiu      $s0, $s0, 0x20
/* BA79C 800C9F9C 2128A002 */  addu       $a1, $s5, $zero
/* BA7A0 800C9FA0 21300000 */  addu       $a2, $zero, $zero
/* BA7A4 800C9FA4 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA7A8 800C9FA8 0C00828C */  lw         $v0, 0xc($a0)
/* BA7AC 800C9FAC 2138C000 */  addu       $a3, $a2, $zero
/* BA7B0 800C9FB0 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA7B4 800C9FB4 000043A0 */  sb         $v1, ($v0)
/* BA7B8 800C9FB8 031A1300 */  sra        $v1, $s3, 8
/* BA7BC 800C9FBC 020043A0 */  sb         $v1, 2($v0)
/* BA7C0 800C9FC0 031C1100 */  sra        $v1, $s1, 0x10
/* BA7C4 800C9FC4 040043A0 */  sb         $v1, 4($v0)
/* BA7C8 800C9FC8 031A1100 */  sra        $v1, $s1, 8
/* BA7CC 800C9FCC 050043A0 */  sb         $v1, 5($v0)
/* BA7D0 800C9FD0 031A1400 */  sra        $v1, $s4, 8
/* BA7D4 800C9FD4 010050A0 */  sb         $s0, 1($v0)
/* BA7D8 800C9FD8 030053A0 */  sb         $s3, 3($v0)
/* BA7DC 800C9FDC 060051A0 */  sb         $s1, 6($v0)
/* BA7E0 800C9FE0 070043A0 */  sb         $v1, 7($v0)
/* BA7E4 800C9FE4 B209030C */  jal        FUN_800c26c8
/* BA7E8 800C9FE8 080054A0 */   sb        $s4, 8($v0)
/* BA7EC 800C9FEC 2800BF8F */  lw         $ra, 0x28($sp)
/* BA7F0 800C9FF0 2400B58F */  lw         $s5, 0x24($sp)
/* BA7F4 800C9FF4 2000B48F */  lw         $s4, 0x20($sp)
/* BA7F8 800C9FF8 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA7FC 800C9FFC 1800B28F */  lw         $s2, 0x18($sp)
/* BA800 800CA000 1400B18F */  lw         $s1, 0x14($sp)
/* BA804 800CA004 1000B08F */  lw         $s0, 0x10($sp)
/* BA808 800CA008 0800E003 */  jr         $ra
/* BA80C 800CA00C 3000BD27 */   addiu     $sp, $sp, 0x30
