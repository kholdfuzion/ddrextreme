.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3f3c
/* B473C 800C3F3C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B4740 800C3F40 1800B2AF */  sw         $s2, 0x18($sp)
/* B4744 800C3F44 21908000 */  addu       $s2, $a0, $zero
/* B4748 800C3F48 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B474C 800C3F4C 2198A000 */  addu       $s3, $a1, $zero
/* B4750 800C3F50 FFFF0424 */  addiu      $a0, $zero, -1
/* B4754 800C3F54 1000B0AF */  sw         $s0, 0x10($sp)
/* B4758 800C3F58 1F80103C */  lui        $s0, %hi(D_801F7418)
/* B475C 800C3F5C 187400AE */  sw         $zero, %lo(D_801F7418)($s0)
/* B4760 800C3F60 18741026 */  addiu      $s0, $s0, 0x7418
/* B4764 800C3F64 1400B1AF */  sw         $s1, 0x14($sp)
/* B4768 800C3F68 01001124 */  addiu      $s1, $zero, 1
/* B476C 800C3F6C 2000BFAF */  sw         $ra, 0x20($sp)
/* B4770 800C3F70 040000AE */  sw         $zero, 4($s0)
/* B4774 800C3F74 CD6B000C */  jal        VSync
/* B4778 800C3F78 080011AE */   sw        $s1, 8($s0)
/* B477C 800C3F7C 20000326 */  addiu      $v1, $s0, 0x20
/* B4780 800C3F80 21202002 */  addu       $a0, $s1, $zero
/* B4784 800C3F84 0C0002AE */  sw         $v0, 0xc($s0)
/* B4788 800C3F88 38430226 */  addiu      $v0, $s0, 0x4338
/* B478C 800C3F8C 100011AE */  sw         $s1, 0x10($s0)
/* B4790 800C3F90 140000AE */  sw         $zero, 0x14($s0)
/* B4794 800C3F94 180000AE */  sw         $zero, 0x18($s0)
/* B4798 800C3F98 1C0011AE */  sw         $s1, 0x1c($s0)
/* B479C 800C3F9C 384300AE */  sw         $zero, 0x4338($s0)
/* B47A0 800C3FA0 040040AC */  sw         $zero, 4($v0)
/* B47A4 800C3FA4 080040AC */  sw         $zero, 8($v0)
/* B47A8 800C3FA8 4C430226 */  addiu      $v0, $s0, 0x434c
/* B47AC 800C3FAC 4C4300AE */  sw         $zero, 0x434c($s0)
/* B47B0 800C3FB0 040040AC */  sw         $zero, 4($v0)
/* B47B4 800C3FB4 080040AC */  sw         $zero, 8($v0)
/* B47B8 800C3FB8 6C4300AE */  sw         $zero, 0x436c($s0)
/* B47BC 800C3FBC 684300AE */  sw         $zero, 0x4368($s0)
/* B47C0 800C3FC0 704300AE */  sw         $zero, 0x4370($s0)
.L800C3FC4:
/* B47C4 800C3FC4 802060AC */  sw         $zero, 0x2080($v1)
/* B47C8 800C3FC8 FFFF8424 */  addiu      $a0, $a0, -1
/* B47CC 800C3FCC FDFF8104 */  bgez       $a0, .L800C3FC4
/* B47D0 800C3FD0 84206324 */   addiu     $v1, $v1, 0x2084
/* B47D4 800C3FD4 2080023C */  lui        $v0, %hi(D_801FB540)
/* B47D8 800C3FD8 40B54524 */  addiu      $a1, $v0, %lo(D_801FB540)
/* B47DC 800C3FDC 21200000 */  addu       $a0, $zero, $zero
/* B47E0 800C3FE0 FFFF0624 */  addiu      $a2, $zero, -1
/* B47E4 800C3FE4 AC00A324 */  addiu      $v1, $a1, 0xac
.L800C3FE8:
/* B47E8 800C3FE8 0000A4AC */  sw         $a0, ($a1)
/* B47EC 800C3FEC 58FF60AC */  sw         $zero, -0xa8($v1)
/* B47F0 800C3FF0 5CFF60AC */  sw         $zero, -0xa4($v1)
/* B47F4 800C3FF4 60FF60AC */  sw         $zero, -0xa0($v1)
/* B47F8 800C3FF8 64FF60AC */  sw         $zero, -0x9c($v1)
/* B47FC 800C3FFC E8FF66AC */  sw         $a2, -0x18($v1)
/* B4800 800C4000 ECFF60AC */  sw         $zero, -0x14($v1)
/* B4804 800C4004 F0FF60AC */  sw         $zero, -0x10($v1)
/* B4808 800C4008 F4FF60AC */  sw         $zero, -0xc($v1)
/* B480C 800C400C F8FF60AC */  sw         $zero, -8($v1)
/* B4810 800C4010 FCFF60AC */  sw         $zero, -4($v1)
/* B4814 800C4014 000060AC */  sw         $zero, ($v1)
/* B4818 800C4018 C8006324 */  addiu      $v1, $v1, 0xc8
/* B481C 800C401C 01008424 */  addiu      $a0, $a0, 1
/* B4820 800C4020 02008228 */  slti       $v0, $a0, 2
/* B4824 800C4024 F0FF4014 */  bnez       $v0, .L800C3FE8
/* B4828 800C4028 C800A524 */   addiu     $a1, $a1, 0xc8
/* B482C 800C402C 2080043C */  lui        $a0, %hi(D_801FB6D0)
/* B4830 800C4030 D0B68424 */  addiu      $a0, $a0, %lo(D_801FB6D0)
/* B4834 800C4034 FF000524 */  addiu      $a1, $zero, 0xff
/* B4838 800C4038 F6A2000C */  jal        memset
/* B483C 800C403C 80000624 */   addiu     $a2, $zero, 0x80
/* B4840 800C4040 FFFF1024 */  addiu      $s0, $zero, -1
/* B4844 800C4044 21200000 */  addu       $a0, $zero, $zero
/* B4848 800C4048 21284002 */  addu       $a1, $s2, $zero
/* B484C 800C404C CA24030C */  jal        FUN_800c9328
/* B4850 800C4050 21306002 */   addu      $a2, $s3, $zero
/* B4854 800C4054 CD6B000C */  jal        VSync
/* B4858 800C4058 21200002 */   addu      $a0, $s0, $zero
/* B485C 800C405C 21884000 */  addu       $s1, $v0, $zero
/* B4860 800C4060 FEFF1224 */  addiu      $s2, $zero, -2
.L800C4064:
/* B4864 800C4064 CD6B000C */  jal        VSync
/* B4868 800C4068 FFFF0424 */   addiu     $a0, $zero, -1
/* B486C 800C406C 23105100 */  subu       $v0, $v0, $s1
/* B4870 800C4070 D1024228 */  slti       $v0, $v0, 0x2d1
/* B4874 800C4074 0C004010 */  beqz       $v0, .L800C40A8
/* B4878 800C4078 00000000 */   nop
/* B487C 800C407C F224030C */  jal        FUN_800c93c8
/* B4880 800C4080 00000000 */   nop
/* B4884 800C4084 07005214 */  bne        $v0, $s2, .L800C40A4
/* B4888 800C4088 00000000 */   nop
/* B488C 800C408C A31C030C */  jal        FUN_800c728c
/* B4890 800C4090 00000000 */   nop
/* B4894 800C4094 4270000C */  jal        FUN_8001c108
/* B4898 800C4098 00000000 */   nop
/* B489C 800C409C 19100308 */  j          .L800C4064
/* B48A0 800C40A0 00000000 */   nop
.L800C40A4:
/* B48A4 800C40A4 21804000 */  addu       $s0, $v0, $zero
.L800C40A8:
/* B48A8 800C40A8 03000012 */  beqz       $s0, .L800C40B8
/* B48AC 800C40AC 1F80023C */   lui       $v0, %hi(D_801F7434)
/* B48B0 800C40B0 321C030C */  jal        FUN_800c70c8
/* B48B4 800C40B4 347440AC */   sw        $zero, %lo(D_801F7434)($v0)
.L800C40B8:
/* B48B8 800C40B8 21100002 */  addu       $v0, $s0, $zero
/* B48BC 800C40BC 2000BF8F */  lw         $ra, 0x20($sp)
/* B48C0 800C40C0 1C00B38F */  lw         $s3, 0x1c($sp)
/* B48C4 800C40C4 1800B28F */  lw         $s2, 0x18($sp)
/* B48C8 800C40C8 1400B18F */  lw         $s1, 0x14($sp)
/* B48CC 800C40CC 1000B08F */  lw         $s0, 0x10($sp)
/* B48D0 800C40D0 0800E003 */  jr         $ra
/* B48D4 800C40D4 2800BD27 */   addiu     $sp, $sp, 0x28
