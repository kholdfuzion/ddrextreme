.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cfc6c
/* C046C 800CFC6C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C0470 800CFC70 2800BFAF */  sw         $ra, 0x28($sp)
/* C0474 800CFC74 2400B5AF */  sw         $s5, 0x24($sp)
/* C0478 800CFC78 2000B4AF */  sw         $s4, 0x20($sp)
/* C047C 800CFC7C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* C0480 800CFC80 1800B2AF */  sw         $s2, 0x18($sp)
/* C0484 800CFC84 1400B1AF */  sw         $s1, 0x14($sp)
/* C0488 800CFC88 1D008010 */  beqz       $a0, .L800CFD00
/* C048C 800CFC8C 1000B0AF */   sw        $s0, 0x10($sp)
/* C0490 800CFC90 561F103C */  lui        $s0, 0x1f56
/* C0494 800CFC94 000000A6 */  sh         $zero, ($s0)
/* C0498 800CFC98 20001224 */  addiu      $s2, $zero, 0x20
/* C049C 800CFC9C CD6B000C */  jal        VSync
/* C04A0 800CFCA0 01000424 */   addiu     $a0, $zero, 1
/* C04A4 800CFCA4 FFFF5130 */  andi       $s1, $v0, 0xffff
/* C04A8 800CFCA8 0F80133C */  lui        $s3, 0x800f
.L800CFCAC:
/* C04AC 800CFCAC CD6B000C */  jal        VSync
/* C04B0 800CFCB0 01000424 */   addiu     $a0, $zero, 1
/* C04B4 800CFCB4 23105100 */  subu       $v0, $v0, $s1
/* C04B8 800CFCB8 FFFF4230 */  andi       $v0, $v0, 0xffff
/* C04BC 800CFCBC 2A104202 */  slt        $v0, $s2, $v0
/* C04C0 800CFCC0 FAFF4010 */  beqz       $v0, .L800CFCAC
/* C04C4 800CFCC4 01000224 */   addiu     $v0, $zero, 1
/* C04C8 800CFCC8 000002A6 */  sh         $v0, ($s0)
/* C04CC 800CFCCC 20001124 */  addiu      $s1, $zero, 0x20
/* C04D0 800CFCD0 CD6B000C */  jal        VSync
/* C04D4 800CFCD4 01000424 */   addiu     $a0, $zero, 1
/* C04D8 800CFCD8 FFFF5030 */  andi       $s0, $v0, 0xffff
.L800CFCDC:
/* C04DC 800CFCDC CD6B000C */  jal        VSync
/* C04E0 800CFCE0 01000424 */   addiu     $a0, $zero, 1
/* C04E4 800CFCE4 23105000 */  subu       $v0, $v0, $s0
/* C04E8 800CFCE8 FFFF4230 */  andi       $v0, $v0, 0xffff
/* C04EC 800CFCEC 2A102202 */  slt        $v0, $s1, $v0
/* C04F0 800CFCF0 FAFF4010 */  beqz       $v0, .L800CFCDC
/* C04F4 800CFCF4 00000000 */   nop
/* C04F8 800CFCF8 4F3F0308 */  j          .L800CFD3C
/* C04FC 800CFCFC 00000000 */   nop
.L800CFD00:
/* C0500 800CFD00 561F033C */  lui        $v1, 0x1f56
/* C0504 800CFD04 01000224 */  addiu      $v0, $zero, 1
/* C0508 800CFD08 000062A4 */  sh         $v0, ($v1)
/* C050C 800CFD0C 20001124 */  addiu      $s1, $zero, 0x20
/* C0510 800CFD10 CD6B000C */  jal        VSync
/* C0514 800CFD14 01000424 */   addiu     $a0, $zero, 1
/* C0518 800CFD18 FFFF5030 */  andi       $s0, $v0, 0xffff
/* C051C 800CFD1C 0F80133C */  lui        $s3, 0x800f
.L800CFD20:
/* C0520 800CFD20 CD6B000C */  jal        VSync
/* C0524 800CFD24 01000424 */   addiu     $a0, $zero, 1
/* C0528 800CFD28 23105000 */  subu       $v0, $v0, $s0
/* C052C 800CFD2C FFFF4230 */  andi       $v0, $v0, 0xffff
/* C0530 800CFD30 2A102202 */  slt        $v0, $s1, $v0
/* C0534 800CFD34 FAFF4010 */  beqz       $v0, .L800CFD20
/* C0538 800CFD38 00000000 */   nop
.L800CFD3C:
/* C053C 800CFD3C 40E7628E */  lw         $v0, -0x18c0($s3)
/* C0540 800CFD40 00000000 */  nop
/* C0544 800CFD44 0A004014 */  bnez       $v0, .L800CFD70
/* C0548 800CFD48 21880000 */   addu      $s1, $zero, $zero
/* C054C 800CFD4C 0B001124 */  addiu      $s1, $zero, 0xb
.L800CFD50:
/* C0550 800CFD50 CD6B000C */  jal        VSync
/* C0554 800CFD54 21200000 */   addu      $a0, $zero, $zero
/* C0558 800CFD58 4A70000C */  jal        FUN_8001c128
/* C055C 800CFD5C FFFF3126 */   addiu     $s1, $s1, -1
/* C0560 800CFD60 FBFF2106 */  bgez       $s1, .L800CFD50
/* C0564 800CFD64 01000224 */   addiu     $v0, $zero, 1
/* C0568 800CFD68 40E762AE */  sw         $v0, -0x18c0($s3)
/* C056C 800CFD6C 21880000 */  addu       $s1, $zero, $zero
.L800CFD70:
/* C0570 800CFD70 481F153C */  lui        $s5, 0x1f48
/* C0574 800CFD74 01003126 */  addiu      $s1, $s1, 1
.L800CFD78:
/* C0578 800CFD78 0900222A */  slti       $v0, $s1, 9
/* C057C 800CFD7C 34004010 */  beqz       $v0, .L800CFE50
/* C0580 800CFD80 FFFF0224 */   addiu     $v0, $zero, -1
/* C0584 800CFD84 CD6B000C */  jal        VSync
/* C0588 800CFD88 FFFF0424 */   addiu     $a0, $zero, -1
/* C058C 800CFD8C E0011324 */  addiu      $s3, $zero, 0x1e0
/* C0590 800CFD90 0E00A392 */  lbu        $v1, 0xe($s5)
/* C0594 800CFD94 21804000 */  addu       $s0, $v0, $zero
/* C0598 800CFD98 80006330 */  andi       $v1, $v1, 0x80
/* C059C 800CFD9C 0F006010 */  beqz       $v1, .L800CFDDC
/* C05A0 800CFDA0 481F143C */   lui       $s4, 0x1f48
/* C05A4 800CFDA4 21908002 */  addu       $s2, $s4, $zero
.L800CFDA8:
/* C05A8 800CFDA8 CD6B000C */  jal        VSync
/* C05AC 800CFDAC FFFF0424 */   addiu     $a0, $zero, -1
/* C05B0 800CFDB0 23105000 */  subu       $v0, $v0, $s0
/* C05B4 800CFDB4 2A106202 */  slt        $v0, $s3, $v0
/* C05B8 800CFDB8 09004014 */  bnez       $v0, .L800CFDE0
/* C05BC 800CFDBC FFFF0224 */   addiu     $v0, $zero, -1
/* C05C0 800CFDC0 4A70000C */  jal        FUN_8001c128
/* C05C4 800CFDC4 00000000 */   nop
/* C05C8 800CFDC8 0E004292 */  lbu        $v0, 0xe($s2)
/* C05CC 800CFDCC 00000000 */  nop
/* C05D0 800CFDD0 80004230 */  andi       $v0, $v0, 0x80
/* C05D4 800CFDD4 F4FF4014 */  bnez       $v0, .L800CFDA8
/* C05D8 800CFDD8 00000000 */   nop
.L800CFDDC:
/* C05DC 800CFDDC 21100000 */  addu       $v0, $zero, $zero
.L800CFDE0:
/* C05E0 800CFDE0 E5FF4014 */  bnez       $v0, .L800CFD78
/* C05E4 800CFDE4 01003126 */   addiu     $s1, $s1, 1
/* C05E8 800CFDE8 FFFF3126 */  addiu      $s1, $s1, -1
/* C05EC 800CFDEC 2080033C */  lui        $v1, %hi(D_801FBD10)
/* C05F0 800CFDF0 10BD6324 */  addiu      $v1, $v1, %lo(D_801FBD10)
/* C05F4 800CFDF4 0E008492 */  lbu        $a0, 0xe($s4)
/* C05F8 800CFDF8 481F023C */  lui        $v0, 0x1f48
/* C05FC 800CFDFC D81164A0 */  sb         $a0, 0x11d8($v1)
/* C0600 800CFE00 02004490 */  lbu        $a0, 2($v0)
/* C0604 800CFE04 481F023C */  lui        $v0, 0x1f48
/* C0608 800CFE08 DE1164A0 */  sb         $a0, 0x11de($v1)
/* C060C 800CFE0C 481F033C */  lui        $v1, 0x1f48
/* C0610 800CFE10 0F008430 */  andi       $a0, $a0, 0xf
/* C0614 800CFE14 08004590 */  lbu        $a1, 8($v0)
/* C0618 800CFE18 01000224 */  addiu      $v0, $zero, 1
/* C061C 800CFE1C 0A006690 */  lbu        $a2, 0xa($v1)
/* C0620 800CFE20 FF00A530 */  andi       $a1, $a1, 0xff
/* C0624 800CFE24 03008210 */  beq        $a0, $v0, .L800CFE34
/* C0628 800CFE28 FF00C630 */   andi      $a2, $a2, 0xff
/* C062C 800CFE2C 943F0308 */  j          .L800CFE50
/* C0630 800CFE30 FFFF0224 */   addiu     $v0, $zero, -1
.L800CFE34:
/* C0634 800CFE34 14000224 */  addiu      $v0, $zero, 0x14
/* C0638 800CFE38 0500A214 */  bne        $a1, $v0, .L800CFE50
/* C063C 800CFE3C F7FF0224 */   addiu     $v0, $zero, -9
/* C0640 800CFE40 EB000224 */  addiu      $v0, $zero, 0xeb
/* C0644 800CFE44 0200C214 */  bne        $a2, $v0, .L800CFE50
/* C0648 800CFE48 F7FF0224 */   addiu     $v0, $zero, -9
/* C064C 800CFE4C 21100000 */  addu       $v0, $zero, $zero
.L800CFE50:
/* C0650 800CFE50 2800BF8F */  lw         $ra, 0x28($sp)
/* C0654 800CFE54 2400B58F */  lw         $s5, 0x24($sp)
/* C0658 800CFE58 2000B48F */  lw         $s4, 0x20($sp)
/* C065C 800CFE5C 1C00B38F */  lw         $s3, 0x1c($sp)
/* C0660 800CFE60 1800B28F */  lw         $s2, 0x18($sp)
/* C0664 800CFE64 1400B18F */  lw         $s1, 0x14($sp)
/* C0668 800CFE68 1000B08F */  lw         $s0, 0x10($sp)
/* C066C 800CFE6C 0800E003 */  jr         $ra
/* C0670 800CFE70 3000BD27 */   addiu     $sp, $sp, 0x30
