.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002bde8
/* 1C5E8 8002BDE8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 1C5EC 8002BDEC 1580023C */  lui        $v0, %hi(D_8014C1F0)
/* 1C5F0 8002BDF0 F0C14384 */  lh         $v1, %lo(D_8014C1F0)($v0)
/* 1C5F4 8002BDF4 21288000 */  addu       $a1, $a0, $zero
/* 1C5F8 8002BDF8 3800B0AF */  sw         $s0, 0x38($sp)
/* 1C5FC 8002BDFC F0C15024 */  addiu      $s0, $v0, -0x3e10
/* 1C600 8002BE00 4000BFAF */  sw         $ra, 0x40($sp)
/* 1C604 8002BE04 43006010 */  beqz       $v1, .L8002BF14
/* 1C608 8002BE08 3C00B1AF */   sw        $s1, 0x3c($sp)
/* 1C60C 8002BE0C 40180500 */  sll        $v1, $a1, 1
/* 1C610 8002BE10 C4000426 */  addiu      $a0, $s0, 0xc4
/* 1C614 8002BE14 21186400 */  addu       $v1, $v1, $a0
/* 1C618 8002BE18 00006294 */  lhu        $v0, ($v1)
/* 1C61C 8002BE1C 80200500 */  sll        $a0, $a1, 2
/* 1C620 8002BE20 01004224 */  addiu      $v0, $v0, 1
/* 1C624 8002BE24 000062A4 */  sh         $v0, ($v1)
/* 1C628 8002BE28 40000226 */  addiu      $v0, $s0, 0x40
/* 1C62C 8002BE2C 21288200 */  addu       $a1, $a0, $v0
/* 1C630 8002BE30 0000A394 */  lhu        $v1, ($a1)
/* 1C634 8002BE34 FFFF1134 */  ori        $s1, $zero, 0xffff
/* 1C638 8002BE38 06007114 */  bne        $v1, $s1, .L8002BE54
/* 1C63C 8002BE3C 42000326 */   addiu     $v1, $s0, 0x42
/* 1C640 8002BE40 21188300 */  addu       $v1, $a0, $v1
/* 1C644 8002BE44 00006294 */  lhu        $v0, ($v1)
/* 1C648 8002BE48 00000000 */  nop
/* 1C64C 8002BE4C 01004224 */  addiu      $v0, $v0, 1
/* 1C650 8002BE50 000062A4 */  sh         $v0, ($v1)
.L8002BE54:
/* 1C654 8002BE54 0000A294 */  lhu        $v0, ($a1)
/* 1C658 8002BE58 1000A427 */  addiu      $a0, $sp, 0x10
/* 1C65C 8002BE5C 01004224 */  addiu      $v0, $v0, 1
/* 1C660 8002BE60 5EB1000C */  jal        FUN_8002c578
/* 1C664 8002BE64 0000A2A4 */   sh        $v0, ($a1)
/* 1C668 8002BE68 1800A28F */  lw         $v0, 0x18($sp)
/* 1C66C 8002BE6C 48000526 */  addiu      $a1, $s0, 0x48
/* 1C670 8002BE70 80200200 */  sll        $a0, $v0, 2
/* 1C674 8002BE74 21108500 */  addu       $v0, $a0, $a1
/* 1C678 8002BE78 00004394 */  lhu        $v1, ($v0)
/* 1C67C 8002BE7C 00000000 */  nop
/* 1C680 8002BE80 06007114 */  bne        $v1, $s1, .L8002BE9C
/* 1C684 8002BE84 4A000326 */   addiu     $v1, $s0, 0x4a
/* 1C688 8002BE88 21188300 */  addu       $v1, $a0, $v1
/* 1C68C 8002BE8C 00006294 */  lhu        $v0, ($v1)
/* 1C690 8002BE90 00000000 */  nop
/* 1C694 8002BE94 01004224 */  addiu      $v0, $v0, 1
/* 1C698 8002BE98 000062A4 */  sh         $v0, ($v1)
.L8002BE9C:
/* 1C69C 8002BE9C 1800A38F */  lw         $v1, 0x18($sp)
/* 1C6A0 8002BEA0 2800A48F */  lw         $a0, 0x28($sp)
/* 1C6A4 8002BEA4 80180300 */  sll        $v1, $v1, 2
/* 1C6A8 8002BEA8 21186500 */  addu       $v1, $v1, $a1
/* 1C6AC 8002BEAC 80200400 */  sll        $a0, $a0, 2
/* 1C6B0 8002BEB0 00006294 */  lhu        $v0, ($v1)
/* 1C6B4 8002BEB4 A8000526 */  addiu      $a1, $s0, 0xa8
/* 1C6B8 8002BEB8 01004224 */  addiu      $v0, $v0, 1
/* 1C6BC 8002BEBC 000062A4 */  sh         $v0, ($v1)
/* 1C6C0 8002BEC0 21108500 */  addu       $v0, $a0, $a1
/* 1C6C4 8002BEC4 00004394 */  lhu        $v1, ($v0)
/* 1C6C8 8002BEC8 00000000 */  nop
/* 1C6CC 8002BECC 06007114 */  bne        $v1, $s1, .L8002BEE8
/* 1C6D0 8002BED0 AA000326 */   addiu     $v1, $s0, 0xaa
/* 1C6D4 8002BED4 21188300 */  addu       $v1, $a0, $v1
/* 1C6D8 8002BED8 00006294 */  lhu        $v0, ($v1)
/* 1C6DC 8002BEDC 00000000 */  nop
/* 1C6E0 8002BEE0 01004224 */  addiu      $v0, $v0, 1
/* 1C6E4 8002BEE4 000062A4 */  sh         $v0, ($v1)
.L8002BEE8:
/* 1C6E8 8002BEE8 2800A48F */  lw         $a0, 0x28($sp)
/* 1C6EC 8002BEEC 00000000 */  nop
/* 1C6F0 8002BEF0 80200400 */  sll        $a0, $a0, 2
/* 1C6F4 8002BEF4 21208500 */  addu       $a0, $a0, $a1
/* 1C6F8 8002BEF8 0E80053C */  lui        $a1, %hi(D_800D8D38)
/* 1C6FC 8002BEFC 388DA28C */  lw         $v0, %lo(D_800D8D38)($a1)
/* 1C700 8002BF00 00008394 */  lhu        $v1, ($a0)
/* 1C704 8002BF04 08004234 */  ori        $v0, $v0, 8
/* 1C708 8002BF08 01006324 */  addiu      $v1, $v1, 1
/* 1C70C 8002BF0C 388DA2AC */  sw         $v0, -0x72c8($a1)
/* 1C710 8002BF10 000083A4 */  sh         $v1, ($a0)
.L8002BF14:
/* 1C714 8002BF14 4000BF8F */  lw         $ra, 0x40($sp)
/* 1C718 8002BF18 3C00B18F */  lw         $s1, 0x3c($sp)
/* 1C71C 8002BF1C 3800B08F */  lw         $s0, 0x38($sp)
/* 1C720 8002BF20 0800E003 */  jr         $ra
/* 1C724 8002BF24 4800BD27 */   addiu     $sp, $sp, 0x48
