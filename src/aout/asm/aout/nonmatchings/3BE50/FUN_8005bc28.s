.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005bc28
/* 4C428 8005BC28 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 4C42C 8005BC2C 4800B4AF */  sw         $s4, 0x48($sp)
/* 4C430 8005BC30 21A0A000 */  addu       $s4, $a1, $zero
/* 4C434 8005BC34 7400A58F */  lw         $a1, 0x74($sp)
/* 4C438 8005BC38 7000A88F */  lw         $t0, 0x70($sp)
/* 4C43C 8005BC3C 4400B3AF */  sw         $s3, 0x44($sp)
/* 4C440 8005BC40 2198C000 */  addu       $s3, $a2, $zero
/* 4C444 8005BC44 5C00BFAF */  sw         $ra, 0x5c($sp)
/* 4C448 8005BC48 5800BEAF */  sw         $fp, 0x58($sp)
/* 4C44C 8005BC4C 5400B7AF */  sw         $s7, 0x54($sp)
/* 4C450 8005BC50 5000B6AF */  sw         $s6, 0x50($sp)
/* 4C454 8005BC54 4C00B5AF */  sw         $s5, 0x4c($sp)
/* 4C458 8005BC58 4000B2AF */  sw         $s2, 0x40($sp)
/* 4C45C 8005BC5C 3C00B1AF */  sw         $s1, 0x3c($sp)
/* 4C460 8005BC60 3800B0AF */  sw         $s0, 0x38($sp)
/* 4C464 8005BC64 6000A4AF */  sw         $a0, 0x60($sp)
/* 4C468 8005BC68 C2110500 */  srl        $v0, $a1, 7
/* 4C46C 8005BC6C 01004230 */  andi       $v0, $v0, 1
/* 4C470 8005BC70 80004014 */  bnez       $v0, .L8005BE74
/* 4C474 8005BC74 6C00A7AF */   sw        $a3, 0x6c($sp)
/* 4C478 8005BC78 0F00A330 */  andi       $v1, $a1, 0xf
/* 4C47C 8005BC7C 80380300 */  sll        $a3, $v1, 2
/* 4C480 8005BC80 0180023C */  lui        $v0, %hi(D_800140F8)
/* 4C484 8005BC84 F8404224 */  addiu      $v0, $v0, %lo(D_800140F8)
/* 4C488 8005BC88 2110E200 */  addu       $v0, $a3, $v0
/* 4C48C 8005BC8C 1380043C */  lui        $a0, 0x8013
/* 4C490 8005BC90 00005E8C */  lw         $fp, ($v0)
/* 4C494 8005BC94 0180023C */  lui        $v0, %hi(D_80014038)
/* 4C498 8005BC98 38404224 */  addiu      $v0, $v0, %lo(D_80014038)
/* 4C49C 8005BC9C 2110E200 */  addu       $v0, $a3, $v0
/* 4C4A0 8005BCA0 0000438C */  lw         $v1, ($v0)
/* 4C4A4 8005BCA4 E0808424 */  addiu      $a0, $a0, -0x7f20
/* 4C4A8 8005BCA8 21186400 */  addu       $v1, $v1, $a0
/* 4C4AC 8005BCAC 00006290 */  lbu        $v0, ($v1)
/* 4C4B0 8005BCB0 FFFFC327 */  addiu      $v1, $fp, -1
/* 4C4B4 8005BCB4 2000A3AF */  sw         $v1, 0x20($sp)
/* 4C4B8 8005BCB8 0180033C */  lui        $v1, %hi(D_80014078)
/* 4C4BC 8005BCBC 78406324 */  addiu      $v1, $v1, %lo(D_80014078)
/* 4C4C0 8005BCC0 2118E300 */  addu       $v1, $a3, $v1
/* 4C4C4 8005BCC4 0000778C */  lw         $s7, ($v1)
/* 4C4C8 8005BCC8 C0200200 */  sll        $a0, $v0, 3
/* 4C4CC 8005BCCC 23208200 */  subu       $a0, $a0, $v0
/* 4C4D0 8005BCD0 80200400 */  sll        $a0, $a0, 2
/* 4C4D4 8005BCD4 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4C4D8 8005BCD8 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4C4DC 8005BCDC 21B08200 */  addu       $s6, $a0, $v0
/* 4C4E0 8005BCE0 0D000224 */  addiu      $v0, $zero, 0xd
/* 4C4E4 8005BCE4 0300C217 */  bne        $fp, $v0, .L8005BCF4
/* 4C4E8 8005BCE8 00000000 */   nop
/* 4C4EC 8005BCEC 10001E24 */  addiu      $fp, $zero, 0x10
/* 4C4F0 8005BCF0 2000A2AF */  sw         $v0, 0x20($sp)
.L8005BCF4:
/* 4C4F4 8005BCF4 02110500 */  srl        $v0, $a1, 4
/* 4C4F8 8005BCF8 03004230 */  andi       $v0, $v0, 3
/* 4C4FC 8005BCFC FFFF4224 */  addiu      $v0, $v0, -1
/* 4C500 8005BD00 02320500 */  srl        $a2, $a1, 8
/* 4C504 8005BD04 FF00C630 */  andi       $a2, $a2, 0xff
/* 4C508 8005BD08 021D0500 */  srl        $v1, $a1, 0x14
/* 4C50C 8005BD0C F0006330 */  andi       $v1, $v1, 0xf0
/* 4C510 8005BD10 2C00A2AF */  sw         $v0, 0x2c($sp)
/* 4C514 8005BD14 0180023C */  lui        $v0, %hi(D_800140B8)
/* 4C518 8005BD18 B8404224 */  addiu      $v0, $v0, %lo(D_800140B8)
/* 4C51C 8005BD1C 2110E200 */  addu       $v0, $a3, $v0
/* 4C520 8005BD20 0000458C */  lw         $a1, ($v0)
/* 4C524 8005BD24 0180023C */  lui        $v0, %hi(D_80014178)
/* 4C528 8005BD28 78414224 */  addiu      $v0, $v0, %lo(D_80014178)
/* 4C52C 8005BD2C 1600C486 */  lh         $a0, 0x16($s6)
/* 4C530 8005BD30 2110E200 */  addu       $v0, $a3, $v0
/* 4C534 8005BD34 21208300 */  addu       $a0, $a0, $v1
/* 4C538 8005BD38 21A8C500 */  addu       $s5, $a2, $a1
/* 4C53C 8005BD3C 0180033C */  lui        $v1, %hi(D_80014138)
/* 4C540 8005BD40 38416324 */  addiu      $v1, $v1, %lo(D_80014138)
/* 4C544 8005BD44 2118E300 */  addu       $v1, $a3, $v1
/* 4C548 8005BD48 2400A4AF */  sw         $a0, 0x24($sp)
/* 4C54C 8005BD4C 0400C686 */  lh         $a2, 4($s6)
/* 4C550 8005BD50 0000648C */  lw         $a0, ($v1)
/* 4C554 8005BD54 0600C586 */  lh         $a1, 6($s6)
/* 4C558 8005BD58 0000438C */  lw         $v1, ($v0)
/* 4C55C 8005BD5C 2130C400 */  addu       $a2, $a2, $a0
/* 4C560 8005BD60 2128A300 */  addu       $a1, $a1, $v1
/* 4C564 8005BD64 3000A6AF */  sw         $a2, 0x30($sp)
/* 4C568 8005BD68 3400A5AF */  sw         $a1, 0x34($sp)
/* 4C56C 8005BD6C 00000291 */  lbu        $v0, ($t0)
/* 4C570 8005BD70 1800C386 */  lh         $v1, 0x18($s6)
/* 4C574 8005BD74 21908002 */  addu       $s2, $s4, $zero
/* 4C578 8005BD78 3B004010 */  beqz       $v0, .L8005BE68
/* 4C57C 8005BD7C 2800A3AF */   sw        $v1, 0x28($sp)
/* 4C580 8005BD80 21880001 */  addu       $s1, $t0, $zero
.L8005BD84:
/* 4C584 8005BD84 00002392 */  lbu        $v1, ($s1)
/* 4C588 8005BD88 7E000224 */  addiu      $v0, $zero, 0x7e
/* 4C58C 8005BD8C 03006214 */  bne        $v1, $v0, .L8005BD9C
/* 4C590 8005BD90 43101500 */   sra       $v0, $s5, 1
/* 4C594 8005BD94 866F0108 */  j          .L8005BE18
/* 4C598 8005BD98 21986202 */   addu      $s3, $s3, $v0
.L8005BD9C:
/* 4C59C 8005BD9C 00002292 */  lbu        $v0, ($s1)
/* 4C5A0 8005BDA0 00000000 */  nop
/* 4C5A4 8005BDA4 E0FF5024 */  addiu      $s0, $v0, -0x20
/* 4C5A8 8005BDA8 1A000012 */  beqz       $s0, .L8005BE14
/* 4C5AC 8005BDAC 21288002 */   addu      $a1, $s4, $zero
/* 4C5B0 8005BDB0 6000A48F */  lw         $a0, 0x60($sp)
/* 4C5B4 8005BDB4 6C00A78F */  lw         $a3, 0x6c($sp)
/* 4C5B8 8005BDB8 9BB2010C */  jal        FUN_8006ca6c
/* 4C5BC 8005BDBC 21306002 */   addu      $a2, $s3, $zero
/* 4C5C0 8005BDC0 03311000 */  sra        $a2, $s0, 4
/* 4C5C4 8005BDC4 1800E602 */  mult       $s7, $a2
/* 4C5C8 8005BDC8 0F000732 */  andi       $a3, $s0, 0xf
/* 4C5CC 8005BDCC 6000A48F */  lw         $a0, 0x60($sp)
/* 4C5D0 8005BDD0 12300000 */  mflo       $a2
/* 4C5D4 8005BDD4 0C00C286 */  lh         $v0, 0xc($s6)
/* 4C5D8 8005BDD8 2000A38F */  lw         $v1, 0x20($sp)
/* 4C5DC 8005BDDC 1800C703 */  mult       $fp, $a3
/* 4C5E0 8005BDE0 1400A3AF */  sw         $v1, 0x14($sp)
/* 4C5E4 8005BDE4 2C00A38F */  lw         $v1, 0x2c($sp)
/* 4C5E8 8005BDE8 1800A2AF */  sw         $v0, 0x18($sp)
/* 4C5EC 8005BDEC 3000A28F */  lw         $v0, 0x30($sp)
/* 4C5F0 8005BDF0 21288002 */  addu       $a1, $s4, $zero
/* 4C5F4 8005BDF4 1000B7AF */  sw         $s7, 0x10($sp)
/* 4C5F8 8005BDF8 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 4C5FC 8005BDFC 3400A38F */  lw         $v1, 0x34($sp)
/* 4C600 8005BE00 21304600 */  addu       $a2, $v0, $a2
/* 4C604 8005BE04 12380000 */  mflo       $a3
/* 4C608 8005BE08 25B2010C */  jal        FUN_8006c894
/* 4C60C 8005BE0C 21386700 */   addu      $a3, $v1, $a3
/* 4C610 8005BE10 01009426 */  addiu      $s4, $s4, 1
.L8005BE14:
/* 4C614 8005BE14 21987502 */  addu       $s3, $s3, $s5
.L8005BE18:
/* 4C618 8005BE18 01003126 */  addiu      $s1, $s1, 1
/* 4C61C 8005BE1C 00002292 */  lbu        $v0, ($s1)
/* 4C620 8005BE20 00000000 */  nop
/* 4C624 8005BE24 D7FF4014 */  bnez       $v0, .L8005BD84
/* 4C628 8005BE28 2A105402 */   slt       $v0, $s2, $s4
/* 4C62C 8005BE2C 9B6F0108 */  j          .L8005BE6C
/* 4C630 8005BE30 00000000 */   nop
.L8005BE34:
/* 4C634 8005BE34 6000A48F */  lw         $a0, 0x60($sp)
/* 4C638 8005BE38 2400A68F */  lw         $a2, 0x24($sp)
/* 4C63C 8005BE3C 2800A78F */  lw         $a3, 0x28($sp)
/* 4C640 8005BE40 FBB2010C */  jal        FUN_8006cbec
/* 4C644 8005BE44 21284002 */   addu      $a1, $s2, $zero
/* 4C648 8005BE48 21284002 */  addu       $a1, $s2, $zero
/* 4C64C 8005BE4C 7800A28F */  lw         $v0, 0x78($sp)
/* 4C650 8005BE50 6000A48F */  lw         $a0, 0x60($sp)
/* 4C654 8005BE54 21304000 */  addu       $a2, $v0, $zero
/* 4C658 8005BE58 21384000 */  addu       $a3, $v0, $zero
/* 4C65C 8005BE5C 79B2010C */  jal        FUN_8006c9e4
/* 4C660 8005BE60 1000A2AF */   sw        $v0, 0x10($sp)
/* 4C664 8005BE64 01005226 */  addiu      $s2, $s2, 1
.L8005BE68:
/* 4C668 8005BE68 2A105402 */  slt        $v0, $s2, $s4
.L8005BE6C:
/* 4C66C 8005BE6C F1FF4014 */  bnez       $v0, .L8005BE34
/* 4C670 8005BE70 00000000 */   nop
.L8005BE74:
/* 4C674 8005BE74 21108002 */  addu       $v0, $s4, $zero
/* 4C678 8005BE78 5C00BF8F */  lw         $ra, 0x5c($sp)
/* 4C67C 8005BE7C 5800BE8F */  lw         $fp, 0x58($sp)
/* 4C680 8005BE80 5400B78F */  lw         $s7, 0x54($sp)
/* 4C684 8005BE84 5000B68F */  lw         $s6, 0x50($sp)
/* 4C688 8005BE88 4C00B58F */  lw         $s5, 0x4c($sp)
/* 4C68C 8005BE8C 4800B48F */  lw         $s4, 0x48($sp)
/* 4C690 8005BE90 4400B38F */  lw         $s3, 0x44($sp)
/* 4C694 8005BE94 4000B28F */  lw         $s2, 0x40($sp)
/* 4C698 8005BE98 3C00B18F */  lw         $s1, 0x3c($sp)
/* 4C69C 8005BE9C 3800B08F */  lw         $s0, 0x38($sp)
/* 4C6A0 8005BEA0 0800E003 */  jr         $ra
/* 4C6A4 8005BEA4 6000BD27 */   addiu     $sp, $sp, 0x60
