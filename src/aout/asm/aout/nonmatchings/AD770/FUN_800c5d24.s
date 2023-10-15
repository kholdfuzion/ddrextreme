.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c5d24
/* B6524 800C5D24 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6528 800C5D28 1400B1AF */  sw         $s1, 0x14($sp)
/* B652C 800C5D2C 21880000 */  addu       $s1, $zero, $zero
/* B6530 800C5D30 2000B4AF */  sw         $s4, 0x20($sp)
/* B6534 800C5D34 2080023C */  lui        $v0, %hi(D_801FB764)
/* B6538 800C5D38 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B653C 800C5D3C 64B75324 */  addiu      $s3, $v0, %lo(D_801FB764)
/* B6540 800C5D40 1000B0AF */  sw         $s0, 0x10($sp)
/* B6544 800C5D44 B4BC7026 */  addiu      $s0, $s3, -0x434c
/* B6548 800C5D48 01000424 */  addiu      $a0, $zero, 1
/* B654C 800C5D4C 2400BFAF */  sw         $ra, 0x24($sp)
/* B6550 800C5D50 1800B2AF */  sw         $s2, 0x18($sp)
/* B6554 800C5D54 0400038E */  lw         $v1, 4($s0)
/* B6558 800C5D58 B4BC728E */  lw         $s2, -0x434c($s3)
/* B655C 800C5D5C 10006410 */  beq        $v1, $a0, .L800C5DA0
/* B6560 800C5D60 21A02002 */   addu      $s4, $s1, $zero
/* B6564 800C5D64 02006228 */  slti       $v0, $v1, 2
/* B6568 800C5D68 05004010 */  beqz       $v0, .L800C5D80
/* B656C 800C5D6C 00000000 */   nop
/* B6570 800C5D70 0A006010 */  beqz       $v1, .L800C5D9C
/* B6574 800C5D74 00000000 */   nop
/* B6578 800C5D78 83170308 */  j          .L800C5E0C
/* B657C 800C5D7C 00000000 */   nop
.L800C5D80:
/* B6580 800C5D80 02000224 */  addiu      $v0, $zero, 2
/* B6584 800C5D84 11006210 */  beq        $v1, $v0, .L800C5DCC
/* B6588 800C5D88 03000224 */   addiu     $v0, $zero, 3
/* B658C 800C5D8C 1D006210 */  beq        $v1, $v0, .L800C5E04
/* B6590 800C5D90 00000000 */   nop
/* B6594 800C5D94 83170308 */  j          .L800C5E0C
/* B6598 800C5D98 00000000 */   nop
.L800C5D9C:
/* B659C 800C5D9C 040004AE */  sw         $a0, 4($s0)
.L800C5DA0:
/* B65A0 800C5DA0 0C00648E */  lw         $a0, 0xc($s3)
/* B65A4 800C5DA4 1800658E */  lw         $a1, 0x18($s3)
/* B65A8 800C5DA8 BF25030C */  jal        FUN_800c96fc
/* B65AC 800C5DAC 00000000 */   nop
/* B65B0 800C5DB0 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B65B4 800C5DB4 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B65B8 800C5DB8 0400628C */  lw         $v0, 4($v1)
/* B65BC 800C5DBC 00000000 */  nop
/* B65C0 800C5DC0 01004224 */  addiu      $v0, $v0, 1
/* B65C4 800C5DC4 83170308 */  j          .L800C5E0C
/* B65C8 800C5DC8 040062AC */   sw        $v0, 4($v1)
.L800C5DCC:
/* B65CC 800C5DCC F224030C */  jal        FUN_800c93c8
/* B65D0 800C5DD0 00000000 */   nop
/* B65D4 800C5DD4 21884000 */  addu       $s1, $v0, $zero
/* B65D8 800C5DD8 FEFF0224 */  addiu      $v0, $zero, -2
/* B65DC 800C5DDC 0B002212 */  beq        $s1, $v0, .L800C5E0C
/* B65E0 800C5DE0 00000000 */   nop
/* B65E4 800C5DE4 03002012 */  beqz       $s1, .L800C5DF4
/* B65E8 800C5DE8 00000000 */   nop
/* B65EC 800C5DEC 83170308 */  j          .L800C5E0C
/* B65F0 800C5DF0 01001424 */   addiu     $s4, $zero, 1
.L800C5DF4:
/* B65F4 800C5DF4 0400028E */  lw         $v0, 4($s0)
/* B65F8 800C5DF8 00000000 */  nop
/* B65FC 800C5DFC 01004224 */  addiu      $v0, $v0, 1
/* B6600 800C5E00 040002AE */  sw         $v0, 4($s0)
.L800C5E04:
/* B6604 800C5E04 21900000 */  addu       $s2, $zero, $zero
/* B6608 800C5E08 080060AE */  sw         $zero, 8($s3)
.L800C5E0C:
/* B660C 800C5E0C 04008012 */  beqz       $s4, .L800C5E20
/* B6610 800C5E10 21104002 */   addu      $v0, $s2, $zero
/* B6614 800C5E14 21900000 */  addu       $s2, $zero, $zero
/* B6618 800C5E18 080071AE */  sw         $s1, 8($s3)
/* B661C 800C5E1C 21104002 */  addu       $v0, $s2, $zero
.L800C5E20:
/* B6620 800C5E20 2400BF8F */  lw         $ra, 0x24($sp)
/* B6624 800C5E24 2000B48F */  lw         $s4, 0x20($sp)
/* B6628 800C5E28 1C00B38F */  lw         $s3, 0x1c($sp)
/* B662C 800C5E2C 1800B28F */  lw         $s2, 0x18($sp)
/* B6630 800C5E30 1400B18F */  lw         $s1, 0x14($sp)
/* B6634 800C5E34 1000B08F */  lw         $s0, 0x10($sp)
/* B6638 800C5E38 0800E003 */  jr         $ra
/* B663C 800C5E3C 2800BD27 */   addiu     $sp, $sp, 0x28
