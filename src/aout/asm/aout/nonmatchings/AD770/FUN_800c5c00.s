.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c5c00
/* B6400 800C5C00 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6404 800C5C04 1800B2AF */  sw         $s2, 0x18($sp)
/* B6408 800C5C08 21900000 */  addu       $s2, $zero, $zero
/* B640C 800C5C0C 2000B4AF */  sw         $s4, 0x20($sp)
/* B6410 800C5C10 2080023C */  lui        $v0, %hi(D_801FB764)
/* B6414 800C5C14 1000B0AF */  sw         $s0, 0x10($sp)
/* B6418 800C5C18 64B75024 */  addiu      $s0, $v0, %lo(D_801FB764)
/* B641C 800C5C1C 1400B1AF */  sw         $s1, 0x14($sp)
/* B6420 800C5C20 B4BC1126 */  addiu      $s1, $s0, -0x434c
/* B6424 800C5C24 01000424 */  addiu      $a0, $zero, 1
/* B6428 800C5C28 2400BFAF */  sw         $ra, 0x24($sp)
/* B642C 800C5C2C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6430 800C5C30 0400238E */  lw         $v1, 4($s1)
/* B6434 800C5C34 B4BC138E */  lw         $s3, -0x434c($s0)
/* B6438 800C5C38 10006410 */  beq        $v1, $a0, .L800C5C7C
/* B643C 800C5C3C 21A04002 */   addu      $s4, $s2, $zero
/* B6440 800C5C40 02006228 */  slti       $v0, $v1, 2
/* B6444 800C5C44 05004010 */  beqz       $v0, .L800C5C5C
/* B6448 800C5C48 00000000 */   nop
/* B644C 800C5C4C 0A006010 */  beqz       $v1, .L800C5C78
/* B6450 800C5C50 00000000 */   nop
/* B6454 800C5C54 3C170308 */  j          .L800C5CF0
/* B6458 800C5C58 00000000 */   nop
.L800C5C5C:
/* B645C 800C5C5C 02000224 */  addiu      $v0, $zero, 2
/* B6460 800C5C60 13006210 */  beq        $v1, $v0, .L800C5CB0
/* B6464 800C5C64 03000224 */   addiu     $v0, $zero, 3
/* B6468 800C5C68 1F006210 */  beq        $v1, $v0, .L800C5CE8
/* B646C 800C5C6C 00000000 */   nop
/* B6470 800C5C70 3C170308 */  j          .L800C5CF0
/* B6474 800C5C74 00000000 */   nop
.L800C5C78:
/* B6478 800C5C78 040024AE */  sw         $a0, 4($s1)
.L800C5C7C:
/* B647C 800C5C7C 0C00048E */  lw         $a0, 0xc($s0)
/* B6480 800C5C80 1000058E */  lw         $a1, 0x10($s0)
/* B6484 800C5C84 1400068E */  lw         $a2, 0x14($s0)
/* B6488 800C5C88 1800078E */  lw         $a3, 0x18($s0)
/* B648C 800C5C8C 7225030C */  jal        FUN_800c95c8
/* B6490 800C5C90 00000000 */   nop
/* B6494 800C5C94 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B6498 800C5C98 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B649C 800C5C9C 0400628C */  lw         $v0, 4($v1)
/* B64A0 800C5CA0 00000000 */  nop
/* B64A4 800C5CA4 01004224 */  addiu      $v0, $v0, 1
/* B64A8 800C5CA8 3C170308 */  j          .L800C5CF0
/* B64AC 800C5CAC 040062AC */   sw        $v0, 4($v1)
.L800C5CB0:
/* B64B0 800C5CB0 F224030C */  jal        FUN_800c93c8
/* B64B4 800C5CB4 00000000 */   nop
/* B64B8 800C5CB8 21904000 */  addu       $s2, $v0, $zero
/* B64BC 800C5CBC FEFF0224 */  addiu      $v0, $zero, -2
/* B64C0 800C5CC0 0B004212 */  beq        $s2, $v0, .L800C5CF0
/* B64C4 800C5CC4 00000000 */   nop
/* B64C8 800C5CC8 03004012 */  beqz       $s2, .L800C5CD8
/* B64CC 800C5CCC 00000000 */   nop
/* B64D0 800C5CD0 3C170308 */  j          .L800C5CF0
/* B64D4 800C5CD4 01001424 */   addiu     $s4, $zero, 1
.L800C5CD8:
/* B64D8 800C5CD8 0400228E */  lw         $v0, 4($s1)
/* B64DC 800C5CDC 00000000 */  nop
/* B64E0 800C5CE0 01004224 */  addiu      $v0, $v0, 1
/* B64E4 800C5CE4 040022AE */  sw         $v0, 4($s1)
.L800C5CE8:
/* B64E8 800C5CE8 21980000 */  addu       $s3, $zero, $zero
/* B64EC 800C5CEC 080000AE */  sw         $zero, 8($s0)
.L800C5CF0:
/* B64F0 800C5CF0 04008012 */  beqz       $s4, .L800C5D04
/* B64F4 800C5CF4 21106002 */   addu      $v0, $s3, $zero
/* B64F8 800C5CF8 21980000 */  addu       $s3, $zero, $zero
/* B64FC 800C5CFC 080012AE */  sw         $s2, 8($s0)
/* B6500 800C5D00 21106002 */  addu       $v0, $s3, $zero
.L800C5D04:
/* B6504 800C5D04 2400BF8F */  lw         $ra, 0x24($sp)
/* B6508 800C5D08 2000B48F */  lw         $s4, 0x20($sp)
/* B650C 800C5D0C 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6510 800C5D10 1800B28F */  lw         $s2, 0x18($sp)
/* B6514 800C5D14 1400B18F */  lw         $s1, 0x14($sp)
/* B6518 800C5D18 1000B08F */  lw         $s0, 0x10($sp)
/* B651C 800C5D1C 0800E003 */  jr         $ra
/* B6520 800C5D20 2800BD27 */   addiu     $sp, $sp, 0x28
