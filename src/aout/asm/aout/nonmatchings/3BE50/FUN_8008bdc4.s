.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8008bdc4
/* 7C5C4 8008BDC4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 7C5C8 8008BDC8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 7C5CC 8008BDCC 21988000 */  addu       $s3, $a0, $zero
/* 7C5D0 8008BDD0 0F80023C */  lui        $v0, %hi(D_800F00B2)
/* 7C5D4 8008BDD4 B2004390 */  lbu        $v1, %lo(D_800F00B2)($v0)
/* 7C5D8 8008BDD8 07000224 */  addiu      $v0, $zero, 7
/* 7C5DC 8008BDDC 2000BFAF */  sw         $ra, 0x20($sp)
/* 7C5E0 8008BDE0 1800B2AF */  sw         $s2, 0x18($sp)
/* 7C5E4 8008BDE4 1400B1AF */  sw         $s1, 0x14($sp)
/* 7C5E8 8008BDE8 09006210 */  beq        $v1, $v0, .L8008BE10
/* 7C5EC 8008BDEC 1000B0AF */   sw        $s0, 0x10($sp)
/* 7C5F0 8008BDF0 07006010 */  beqz       $v1, .L8008BE10
/* 7C5F4 8008BDF4 01000224 */   addiu     $v0, $zero, 1
/* 7C5F8 8008BDF8 17006210 */  beq        $v1, $v0, .L8008BE58
/* 7C5FC 8008BDFC 05000224 */   addiu     $v0, $zero, 5
/* 7C600 8008BE00 11006214 */  bne        $v1, $v0, .L8008BE48
/* 7C604 8008BE04 02000224 */   addiu     $v0, $zero, 2
/* 7C608 8008BE08 972F0208 */  j          .L8008BE5C
/* 7C60C 8008BE0C 21900000 */   addu      $s2, $zero, $zero
.L8008BE10:
/* 7C610 8008BE10 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7C614 8008BE14 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 7C618 8008BE18 0100033C */  lui        $v1, 1
/* 7C61C 8008BE1C 21104300 */  addu       $v0, $v0, $v1
/* 7C620 8008BE20 06434390 */  lbu        $v1, 0x4306($v0)
/* 7C624 8008BE24 07000224 */  addiu      $v0, $zero, 7
/* 7C628 8008BE28 0C006210 */  beq        $v1, $v0, .L8008BE5C
/* 7C62C 8008BE2C 21900000 */   addu      $s2, $zero, $zero
/* 7C630 8008BE30 0A006010 */  beqz       $v1, .L8008BE5C
/* 7C634 8008BE34 01000224 */   addiu     $v0, $zero, 1
/* 7C638 8008BE38 08006210 */  beq        $v1, $v0, .L8008BE5C
/* 7C63C 8008BE3C 05000224 */   addiu     $v0, $zero, 5
/* 7C640 8008BE40 06006210 */  beq        $v1, $v0, .L8008BE5C
/* 7C644 8008BE44 02000224 */   addiu     $v0, $zero, 2
.L8008BE48:
/* 7C648 8008BE48 04006214 */  bne        $v1, $v0, .L8008BE5C
/* 7C64C 8008BE4C 01001224 */   addiu     $s2, $zero, 1
/* 7C650 8008BE50 972F0208 */  j          .L8008BE5C
/* 7C654 8008BE54 21904000 */   addu      $s2, $v0, $zero
.L8008BE58:
/* 7C658 8008BE58 21900000 */  addu       $s2, $zero, $zero
.L8008BE5C:
/* 7C65C 8008BE5C 84AC020C */  jal        FUN_800ab210
/* 7C660 8008BE60 21200000 */   addu      $a0, $zero, $zero
/* 7C664 8008BE64 03004104 */  bgez       $v0, .L8008BE74
/* 7C668 8008BE68 00000000 */   nop
/* 7C66C 8008BE6C E8AD020C */  jal        FUN_800ab7a0
/* 7C670 8008BE70 21200000 */   addu      $a0, $zero, $zero
.L8008BE74:
/* 7C674 8008BE74 84AC020C */  jal        FUN_800ab210
/* 7C678 8008BE78 01000424 */   addiu     $a0, $zero, 1
/* 7C67C 8008BE7C 04004104 */  bgez       $v0, .L8008BE90
/* 7C680 8008BE80 21800000 */   addu      $s0, $zero, $zero
/* 7C684 8008BE84 E8AD020C */  jal        FUN_800ab7a0
/* 7C688 8008BE88 01000424 */   addiu     $a0, $zero, 1
/* 7C68C 8008BE8C 21800000 */  addu       $s0, $zero, $zero
.L8008BE90:
/* 7C690 8008BE90 21887002 */  addu       $s1, $s3, $s0
.L8008BE94:
/* 7C694 8008BE94 A80B20A2 */  sb         $zero, 0xba8($s1)
/* 7C698 8008BE98 1BA2020C */  jal        FUN_800a886c
/* 7C69C 8008BE9C 21200002 */   addu      $a0, $s0, $zero
/* 7C6A0 8008BEA0 04004010 */  beqz       $v0, .L8008BEB4
/* 7C6A4 8008BEA4 21204000 */   addu      $a0, $v0, $zero
/* 7C6A8 8008BEA8 79AE020C */  jal        FUN_800ab9e4
/* 7C6AC 8008BEAC 21284002 */   addu      $a1, $s2, $zero
/* 7C6B0 8008BEB0 A80B22A2 */  sb         $v0, 0xba8($s1)
.L8008BEB4:
/* 7C6B4 8008BEB4 0F000232 */  andi       $v0, $s0, 0xf
/* 7C6B8 8008BEB8 03004014 */  bnez       $v0, .L8008BEC8
/* 7C6BC 8008BEBC 00000000 */   nop
/* 7C6C0 8008BEC0 7CAA000C */  jal        vsync_8002a9f0
/* 7C6C4 8008BEC4 00000000 */   nop
.L8008BEC8:
/* 7C6C8 8008BEC8 01001026 */  addiu      $s0, $s0, 1
/* 7C6CC 8008BECC F900022A */  slti       $v0, $s0, 0xf9
/* 7C6D0 8008BED0 F0FF4014 */  bnez       $v0, .L8008BE94
/* 7C6D4 8008BED4 21887002 */   addu      $s1, $s3, $s0
/* 7C6D8 8008BED8 2000BF8F */  lw         $ra, 0x20($sp)
/* 7C6DC 8008BEDC 1C00B38F */  lw         $s3, 0x1c($sp)
/* 7C6E0 8008BEE0 1800B28F */  lw         $s2, 0x18($sp)
/* 7C6E4 8008BEE4 1400B18F */  lw         $s1, 0x14($sp)
/* 7C6E8 8008BEE8 1000B08F */  lw         $s0, 0x10($sp)
/* 7C6EC 8008BEEC 0800E003 */  jr         $ra
/* 7C6F0 8008BEF0 2800BD27 */   addiu     $sp, $sp, 0x28
