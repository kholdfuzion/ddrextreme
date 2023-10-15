.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001cc8c
/* D48C 8001CC8C 1580043C */  lui        $a0, %hi(D_8014BA50)
/* D490 8001CC90 50BA8224 */  addiu      $v0, $a0, %lo(D_8014BA50)
/* D494 8001CC94 30004584 */  lh         $a1, 0x30($v0)
/* D498 8001CC98 01000324 */  addiu      $v1, $zero, 1
/* D49C 8001CC9C 0E00A314 */  bne        $a1, $v1, .L8001CCD8
/* D4A0 8001CCA0 0F80033C */   lui       $v1, %hi(D_800F0028)
/* D4A4 8001CCA4 28006294 */  lhu        $v0, %lo(D_800F0028)($v1)
/* D4A8 8001CCA8 00000000 */  nop
/* D4AC 8001CCAC E1FF4224 */  addiu      $v0, $v0, -0x1f
/* D4B0 8001CCB0 0B00422C */  sltiu      $v0, $v0, 0xb
/* D4B4 8001CCB4 04004010 */  beqz       $v0, .L8001CCC8
/* D4B8 8001CCB8 1280023C */   lui       $v0, %hi(D_8011A2AC)
/* D4BC 8001CCBC ACA2428C */  lw         $v0, %lo(D_8011A2AC)($v0)
/* D4C0 8001CCC0 34730008 */  j          .L8001CCD0
/* D4C4 8001CCC4 03004230 */   andi      $v0, $v0, 3
.L8001CCC8:
/* D4C8 8001CCC8 21100000 */  addu       $v0, $zero, $zero
/* D4CC 8001CCCC 03004230 */  andi       $v0, $v0, 3
.L8001CCD0:
/* D4D0 8001CCD0 11004014 */  bnez       $v0, .L8001CD18
/* D4D4 8001CCD4 50BA8224 */   addiu     $v0, $a0, -0x45b0
.L8001CCD8:
/* D4D8 8001CCD8 30004484 */  lh         $a0, 0x30($v0)
/* D4DC 8001CCDC 02000324 */  addiu      $v1, $zero, 2
/* D4E0 8001CCE0 0F008314 */  bne        $a0, $v1, .L8001CD20
/* D4E4 8001CCE4 0F80033C */   lui       $v1, %hi(D_800F0028)
/* D4E8 8001CCE8 28006294 */  lhu        $v0, %lo(D_800F0028)($v1)
/* D4EC 8001CCEC 00000000 */  nop
/* D4F0 8001CCF0 E1FF4224 */  addiu      $v0, $v0, -0x1f
/* D4F4 8001CCF4 0B00422C */  sltiu      $v0, $v0, 0xb
/* D4F8 8001CCF8 04004010 */  beqz       $v0, .L8001CD0C
/* D4FC 8001CCFC 1280023C */   lui       $v0, %hi(D_8011A2AC)
/* D500 8001CD00 ACA2428C */  lw         $v0, %lo(D_8011A2AC)($v0)
/* D504 8001CD04 44730008 */  j          .L8001CD10
/* D508 8001CD08 00000000 */   nop
.L8001CD0C:
/* D50C 8001CD0C 21100000 */  addu       $v0, $zero, $zero
.L8001CD10:
/* D510 8001CD10 03004010 */  beqz       $v0, .L8001CD20
/* D514 8001CD14 00000000 */   nop
.L8001CD18:
/* D518 8001CD18 0800E003 */  jr         $ra
/* D51C 8001CD1C 01000224 */   addiu     $v0, $zero, 1
.L8001CD20:
/* D520 8001CD20 0800E003 */  jr         $ra
/* D524 8001CD24 21100000 */   addu      $v0, $zero, $zero
