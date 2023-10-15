.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c7148
/* B7948 800C7148 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B794C 800C714C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B7950 800C7150 21988000 */  addu       $s3, $a0, $zero
/* B7954 800C7154 1400B1AF */  sw         $s1, 0x14($sp)
/* B7958 800C7158 2188A000 */  addu       $s1, $a1, $zero
/* B795C 800C715C 2000B4AF */  sw         $s4, 0x20($sp)
/* B7960 800C7160 80007426 */  addiu      $s4, $s3, 0x80
/* B7964 800C7164 FFFF0234 */  ori        $v0, $zero, 0xffff
/* B7968 800C7168 3000BFAF */  sw         $ra, 0x30($sp)
/* B796C 800C716C 2C00B7AF */  sw         $s7, 0x2c($sp)
/* B7970 800C7170 2800B6AF */  sw         $s6, 0x28($sp)
/* B7974 800C7174 2400B5AF */  sw         $s5, 0x24($sp)
/* B7978 800C7178 1800B2AF */  sw         $s2, 0x18($sp)
/* B797C 800C717C 12002212 */  beq        $s1, $v0, .L800C71C8
/* B7980 800C7180 1000B0AF */   sw        $s0, 0x10($sp)
/* B7984 800C7184 01001724 */  addiu      $s7, $zero, 1
/* B7988 800C7188 A0001224 */  addiu      $s2, $zero, 0xa0
/* B798C 800C718C 21B04000 */  addu       $s6, $v0, $zero
/* B7990 800C7190 21A84000 */  addu       $s5, $v0, $zero
.L800C7194:
/* B7994 800C7194 21103302 */  addu       $v0, $s1, $s3
/* B7998 800C7198 C0811100 */  sll        $s0, $s1, 7
/* B799C 800C719C 21809002 */  addu       $s0, $s4, $s0
/* B79A0 800C71A0 21200002 */  addu       $a0, $s0, $zero
/* B79A4 800C71A4 21280000 */  addu       $a1, $zero, $zero
/* B79A8 800C71A8 412057A0 */  sb         $s7, 0x2041($v0)
/* B79AC 800C71AC 08001196 */  lhu        $s1, 8($s0)
/* B79B0 800C71B0 F6A2000C */  jal        memset
/* B79B4 800C71B4 80000624 */   addiu     $a2, $zero, 0x80
/* B79B8 800C71B8 000012AE */  sw         $s2, ($s0)
/* B79BC 800C71BC 080016A6 */  sh         $s6, 8($s0)
/* B79C0 800C71C0 F4FF3516 */  bne        $s1, $s5, .L800C7194
/* B79C4 800C71C4 7F0012A2 */   sb        $s2, 0x7f($s0)
.L800C71C8:
/* B79C8 800C71C8 3000BF8F */  lw         $ra, 0x30($sp)
/* B79CC 800C71CC 2C00B78F */  lw         $s7, 0x2c($sp)
/* B79D0 800C71D0 2800B68F */  lw         $s6, 0x28($sp)
/* B79D4 800C71D4 2400B58F */  lw         $s5, 0x24($sp)
/* B79D8 800C71D8 2000B48F */  lw         $s4, 0x20($sp)
/* B79DC 800C71DC 1C00B38F */  lw         $s3, 0x1c($sp)
/* B79E0 800C71E0 1800B28F */  lw         $s2, 0x18($sp)
/* B79E4 800C71E4 1400B18F */  lw         $s1, 0x14($sp)
/* B79E8 800C71E8 1000B08F */  lw         $s0, 0x10($sp)
/* B79EC 800C71EC 0800E003 */  jr         $ra
/* B79F0 800C71F0 3800BD27 */   addiu     $sp, $sp, 0x38
