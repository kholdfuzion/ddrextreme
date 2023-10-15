.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c830
/* D030 8001C830 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* D034 8001C834 0F80063C */  lui        $a2, %hi(D_800EFFA8)
/* D038 8001C838 A8FFC624 */  addiu      $a2, $a2, %lo(D_800EFFA8)
/* D03C 8001C83C 2000B2AF */  sw         $s2, 0x20($sp)
/* D040 8001C840 1280123C */  lui        $s2, %hi(D_8011A2A0)
/* D044 8001C844 2400B3AF */  sw         $s3, 0x24($sp)
/* D048 8001C848 A0A25326 */  addiu      $s3, $s2, %lo(D_8011A2A0)
/* D04C 8001C84C 21206002 */  addu       $a0, $s3, $zero
/* D050 8001C850 0E80033C */  lui        $v1, %hi(D_800D887C)
/* D054 8001C854 2800BFAF */  sw         $ra, 0x28($sp)
/* D058 8001C858 1C00B1AF */  sw         $s1, 0x1c($sp)
/* D05C 8001C85C 1800B0AF */  sw         $s0, 0x18($sp)
/* D060 8001C860 7400C28C */  lw         $v0, 0x74($a2)
/* D064 8001C864 7C887124 */  addiu      $s1, $v1, %lo(D_800D887C)
/* D068 8001C868 01004224 */  addiu      $v0, $v0, 1
/* D06C 8001C86C 7400C2AC */  sw         $v0, 0x74($a2)
/* D070 8001C870 A0A2458E */  lw         $a1, -0x5d60($s2)
/* D074 8001C874 7800C38C */  lw         $v1, 0x78($a2)
/* D078 8001C878 80280500 */  sll        $a1, $a1, 2
/* D07C 8001C87C 21282502 */  addu       $a1, $s1, $a1
/* D080 8001C880 1000A28C */  lw         $v0, 0x10($a1)
/* D084 8001C884 01006324 */  addiu      $v1, $v1, 1
/* D088 8001C888 09F84000 */  jalr       $v0
/* D08C 8001C88C 7800C3AC */   sw        $v1, 0x78($a2)
/* D090 8001C890 A0A2438E */  lw         $v1, -0x5d60($s2)
/* D094 8001C894 21804000 */  addu       $s0, $v0, $zero
/* D098 8001C898 0F000312 */  beq        $s0, $v1, .L8001C8D8
/* D09C 8001C89C 21206002 */   addu      $a0, $s3, $zero
/* D0A0 8001C8A0 80100300 */  sll        $v0, $v1, 2
/* D0A4 8001C8A4 21102202 */  addu       $v0, $s1, $v0
/* D0A8 8001C8A8 2000438C */  lw         $v1, 0x20($v0)
/* D0AC 8001C8AC 00000000 */  nop
/* D0B0 8001C8B0 09F86000 */  jalr       $v1
/* D0B4 8001C8B4 21280002 */   addu      $a1, $s0, $zero
/* D0B8 8001C8B8 80101000 */  sll        $v0, $s0, 2
/* D0BC 8001C8BC 21105100 */  addu       $v0, $v0, $s1
/* D0C0 8001C8C0 A0A2458E */  lw         $a1, -0x5d60($s2)

glabel FUN_8001c8c4
/* D0C4 8001C8C4 0000438C */  lw         $v1, ($v0)
/* D0C8 8001C8C8 00000000 */  nop
/* D0CC 8001C8CC 09F86000 */  jalr       $v1
/* D0D0 8001C8D0 21206002 */   addu      $a0, $s3, $zero
/* D0D4 8001C8D4 A0A250AE */  sw         $s0, -0x5d60($s2)
.L8001C8D8:
/* D0D8 8001C8D8 316E010C */  jal        FUN_8005b8c4
/* D0DC 8001C8DC 00000000 */   nop
/* D0E0 8001C8E0 2800BF8F */  lw         $ra, 0x28($sp)
/* D0E4 8001C8E4 2400B38F */  lw         $s3, 0x24($sp)
/* D0E8 8001C8E8 2000B28F */  lw         $s2, 0x20($sp)
/* D0EC 8001C8EC 1C00B18F */  lw         $s1, 0x1c($sp)
/* D0F0 8001C8F0 1800B08F */  lw         $s0, 0x18($sp)
/* D0F4 8001C8F4 0800E003 */  jr         $ra
/* D0F8 8001C8F8 3000BD27 */   addiu     $sp, $sp, 0x30
