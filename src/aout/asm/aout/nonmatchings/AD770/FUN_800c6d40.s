.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6d40
/* B7540 800C6D40 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B7544 800C6D44 FFFF0424 */  addiu      $a0, $zero, -1
/* B7548 800C6D48 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B754C 800C6D4C 1800B2AF */  sw         $s2, 0x18($sp)
/* B7550 800C6D50 1400B1AF */  sw         $s1, 0x14($sp)
/* B7554 800C6D54 CD6B000C */  jal        VSync
/* B7558 800C6D58 1000B0AF */   sw        $s0, 0x10($sp)
/* B755C 800C6D5C 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B7560 800C6D60 21804000 */  addu       $s0, $v0, $zero
/* B7564 800C6D64 1874718C */  lw         $s1, %lo(D_801F7418)($v1)
/* B7568 800C6D68 FF25030C */  jal        FUN_800c97fc
/* B756C 800C6D6C 18747224 */   addiu     $s2, $v1, 0x7418
/* B7570 800C6D70 05004014 */  bnez       $v0, .L800C6D88
/* B7574 800C6D74 00000000 */   nop
/* B7578 800C6D78 321C030C */  jal        FUN_800c70c8
/* B757C 800C6D7C 00000000 */   nop
/* B7580 800C6D80 7D1B0308 */  j          .L800C6DF4
/* B7584 800C6D84 21102002 */   addu      $v0, $s1, $zero
.L800C6D88:
/* B7588 800C6D88 0800428E */  lw         $v0, 8($s2)
/* B758C 800C6D8C 00000000 */  nop
/* B7590 800C6D90 09004010 */  beqz       $v0, .L800C6DB8
/* B7594 800C6D94 1F80023C */   lui       $v0, 0x801f
/* B7598 800C6D98 0C00428E */  lw         $v0, 0xc($s2)
/* B759C 800C6D9C 00000000 */  nop
/* B75A0 800C6DA0 23100202 */  subu       $v0, $s0, $v0
/* B75A4 800C6DA4 10004228 */  slti       $v0, $v0, 0x10
/* B75A8 800C6DA8 03004014 */  bnez       $v0, .L800C6DB8
/* B75AC 800C6DAC 1F80023C */   lui       $v0, %hi(D_801F7418)
/* B75B0 800C6DB0 7B1B0308 */  j          .L800C6DEC
/* B75B4 800C6DB4 01001124 */   addiu     $s1, $zero, 1
.L800C6DB8:
/* B75B8 800C6DB8 18745024 */  addiu      $s0, $v0, %lo(D_801F7418)
/* B75BC 800C6DBC 6843028E */  lw         $v0, 0x4368($s0)
/* B75C0 800C6DC0 00000000 */  nop
/* B75C4 800C6DC4 0B004010 */  beqz       $v0, .L800C6DF4
/* B75C8 800C6DC8 21102002 */   addu      $v0, $s1, $zero
/* B75CC 800C6DCC 1400028E */  lw         $v0, 0x14($s0)
/* B75D0 800C6DD0 00000000 */  nop
/* B75D4 800C6DD4 0700401C */  bgtz       $v0, .L800C6DF4
/* B75D8 800C6DD8 21102002 */   addu      $v0, $s1, $zero
/* B75DC 800C6DDC 0C29030C */  jal        FUN_800ca430
/* B75E0 800C6DE0 68430426 */   addiu     $a0, $s0, 0x4368
/* B75E4 800C6DE4 704302AE */  sw         $v0, 0x4370($s0)
/* B75E8 800C6DE8 0400518C */  lw         $s1, 4($v0)
.L800C6DEC:
/* B75EC 800C6DEC 00000000 */  nop
/* B75F0 800C6DF0 21102002 */  addu       $v0, $s1, $zero
.L800C6DF4:
/* B75F4 800C6DF4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B75F8 800C6DF8 1800B28F */  lw         $s2, 0x18($sp)
/* B75FC 800C6DFC 1400B18F */  lw         $s1, 0x14($sp)
/* B7600 800C6E00 1000B08F */  lw         $s0, 0x10($sp)
/* B7604 800C6E04 0800E003 */  jr         $ra
/* B7608 800C6E08 2000BD27 */   addiu     $sp, $sp, 0x20
