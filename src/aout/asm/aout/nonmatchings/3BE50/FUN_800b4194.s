.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b4194
/* A4994 800B4194 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A4998 800B4198 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A499C 800B419C 21988000 */  addu       $s3, $a0, $zero
/* A49A0 800B41A0 1E80023C */  lui        $v0, 0x801e
/* A49A4 800B41A4 1000B0AF */  sw         $s0, 0x10($sp)
/* A49A8 800B41A8 01001024 */  addiu      $s0, $zero, 1
/* A49AC 800B41AC 2400BFAF */  sw         $ra, 0x24($sp)
/* A49B0 800B41B0 2000B4AF */  sw         $s4, 0x20($sp)
/* A49B4 800B41B4 1800B2AF */  sw         $s2, 0x18($sp)
/* A49B8 800B41B8 1400B1AF */  sw         $s1, 0x14($sp)
/* A49BC 800B41BC 06006686 */  lh         $a2, 6($s3)
/* A49C0 800B41C0 88075124 */  addiu      $s1, $v0, 0x788
/* A49C4 800B41C4 880750A0 */  sb         $s0, 0x788($v0)
/* A49C8 800B41C8 1C0033AE */  sw         $s3, 0x1c($s1)
/* A49CC 800B41CC 0100A290 */  lbu        $v0, 1($a1)
/* A49D0 800B41D0 00000000 */  nop
/* A49D4 800B41D4 030022A2 */  sb         $v0, 3($s1)
/* A49D8 800B41D8 0200A390 */  lbu        $v1, 2($a1)
/* A49DC 800B41DC 00000000 */  nop
/* A49E0 800B41E0 040023A2 */  sb         $v1, 4($s1)
/* A49E4 800B41E4 0000A290 */  lbu        $v0, ($a1)
/* A49E8 800B41E8 1E80143C */  lui        $s4, %hi(D_801E07D8)
/* A49EC 800B41EC 020022A2 */  sb         $v0, 2($s1)
/* A49F0 800B41F0 0C00A38C */  lw         $v1, 0xc($a1)
/* A49F4 800B41F4 D807848E */  lw         $a0, %lo(D_801E07D8)($s4)
/* A49F8 800B41F8 0C0020AE */  sw         $zero, 0xc($s1)
/* A49FC 800B41FC 180023AE */  sw         $v1, 0x18($s1)
/* A4A00 800B4200 1400828C */  lw         $v0, 0x14($a0)
/* A4A04 800B4204 00000000 */  nop
/* A4A08 800B4208 100022AE */  sw         $v0, 0x10($s1)
/* A4A0C 800B420C 0800A394 */  lhu        $v1, 8($a1)
/* A4A10 800B4210 00000000 */  nop
/* A4A14 800B4214 060023A6 */  sh         $v1, 6($s1)
/* A4A18 800B4218 0600A290 */  lbu        $v0, 6($a1)
/* A4A1C 800B421C 40310600 */  sll        $a2, $a2, 5
/* A4A20 800B4220 050022A2 */  sb         $v0, 5($s1)
/* A4A24 800B4224 1E80023C */  lui        $v0, %hi(D_801E07E0)
/* A4A28 800B4228 0A00A394 */  lhu        $v1, 0xa($a1)
/* A4A2C 800B422C E0074224 */  addiu      $v0, $v0, %lo(D_801E07E0)
/* A4A30 800B4230 080023A6 */  sh         $v1, 8($s1)
/* A4A34 800B4234 1000648E */  lw         $a0, 0x10($s3)
/* A4A38 800B4238 39E3020C */  jal        SpuSetTransferStartAddr
/* A4A3C 800B423C 2190C200 */   addu      $s2, $a2, $v0
/* A4A40 800B4240 0800638E */  lw         $v1, 8($s3)
/* A4A44 800B4244 D807858E */  lw         $a1, 0x7d8($s4)
/* A4A48 800B4248 010030A2 */  sb         $s0, 1($s1)
/* A4A4C 800B424C 140023AE */  sw         $v1, 0x14($s1)
/* A4A50 800B4250 1000A48C */  lw         $a0, 0x10($a1)
/* A4A54 800B4254 21806000 */  addu       $s0, $v1, $zero
/* A4A58 800B4258 2B109000 */  sltu       $v0, $a0, $s0
/* A4A5C 800B425C 02004010 */  beqz       $v0, .L800B4268
/* A4A60 800B4260 00000000 */   nop
/* A4A64 800B4264 21808000 */  addu       $s0, $a0, $zero
.L800B4268:
/* A4A68 800B4268 0800448E */  lw         $a0, 8($s2)
/* A4A6C 800B426C 0C00A58C */  lw         $a1, 0xc($a1)
/* A4A70 800B4270 0C00668E */  lw         $a2, 0xc($s3)
/* A4A74 800B4274 8DDA020C */  jal        FUN_800b6a34
/* A4A78 800B4278 21380002 */   addu      $a3, $s0, $zero
/* A4A7C 800B427C D807828E */  lw         $v0, 0x7d8($s4)
/* A4A80 800B4280 00000000 */  nop
/* A4A84 800B4284 0C00448C */  lw         $a0, 0xc($v0)
/* A4A88 800B4288 21E3020C */  jal        SpuRead
/* A4A8C 800B428C 21280002 */   addu      $a1, $s0, $zero
/* A4A90 800B4290 1400238E */  lw         $v1, 0x14($s1)
/* A4A94 800B4294 2400BF8F */  lw         $ra, 0x24($sp)
/* A4A98 800B4298 2000B48F */  lw         $s4, 0x20($sp)
/* A4A9C 800B429C 1C00B38F */  lw         $s3, 0x1c($sp)
/* A4AA0 800B42A0 1800B28F */  lw         $s2, 0x18($sp)
/* A4AA4 800B42A4 23187000 */  subu       $v1, $v1, $s0
/* A4AA8 800B42A8 140023AE */  sw         $v1, 0x14($s1)
/* A4AAC 800B42AC 1400B18F */  lw         $s1, 0x14($sp)
/* A4AB0 800B42B0 1000B08F */  lw         $s0, 0x10($sp)
/* A4AB4 800B42B4 0800E003 */  jr         $ra
/* A4AB8 800B42B8 2800BD27 */   addiu     $sp, $sp, 0x28
