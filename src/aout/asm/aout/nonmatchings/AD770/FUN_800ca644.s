.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca644
/* BAE44 800CA644 D0FBBD27 */  addiu      $sp, $sp, -0x430
/* BAE48 800CA648 2804B4AF */  sw         $s4, 0x428($sp)
/* BAE4C 800CA64C 21A08000 */  addu       $s4, $a0, $zero
/* BAE50 800CA650 1004A427 */  addiu      $a0, $sp, 0x410
/* BAE54 800CA654 2C04BFAF */  sw         $ra, 0x42c($sp)
/* BAE58 800CA658 2404B3AF */  sw         $s3, 0x424($sp)
/* BAE5C 800CA65C 2004B2AF */  sw         $s2, 0x420($sp)
/* BAE60 800CA660 1C04B1AF */  sw         $s1, 0x41c($sp)
/* BAE64 800CA664 222D030C */  jal        FUN_800cb488
/* BAE68 800CA668 1804B0AF */   sw        $s0, 0x418($sp)
/* BAE6C 800CA66C 21180000 */  addu       $v1, $zero, $zero
/* BAE70 800CA670 1404A28F */  lw         $v0, 0x414($sp)
/* BAE74 800CA674 00000000 */  nop
/* BAE78 800CA678 0E004018 */  blez       $v0, .L800CA6B4
/* BAE7C 800CA67C 21806000 */   addu      $s0, $v1, $zero
/* BAE80 800CA680 1000A427 */  addiu      $a0, $sp, 0x10
/* BAE84 800CA684 FF000524 */  addiu      $a1, $zero, 0xff
/* BAE88 800CA688 21109000 */  addu       $v0, $a0, $s0
.L800CA68C:
/* BAE8C 800CA68C 000043A0 */  sb         $v1, ($v0)
/* BAE90 800CA690 01006324 */  addiu      $v1, $v1, 1
/* BAE94 800CA694 02006514 */  bne        $v1, $a1, .L800CA6A0
/* BAE98 800CA698 00000000 */   nop
/* BAE9C 800CA69C 21180000 */  addu       $v1, $zero, $zero
.L800CA6A0:
/* BAEA0 800CA6A0 1404A28F */  lw         $v0, 0x414($sp)
/* BAEA4 800CA6A4 01001026 */  addiu      $s0, $s0, 1
/* BAEA8 800CA6A8 2A100202 */  slt        $v0, $s0, $v0
/* BAEAC 800CA6AC F7FF4014 */  bnez       $v0, .L800CA68C
/* BAEB0 800CA6B0 21109000 */   addu      $v0, $a0, $s0
.L800CA6B4:
/* BAEB4 800CA6B4 21880000 */  addu       $s1, $zero, $zero
/* BAEB8 800CA6B8 1000B227 */  addiu      $s2, $sp, 0x10
/* BAEBC 800CA6BC 1002B327 */  addiu      $s3, $sp, 0x210
.L800CA6C0:
/* BAEC0 800CA6C0 1404A28F */  lw         $v0, 0x414($sp)
/* BAEC4 800CA6C4 00000000 */  nop
/* BAEC8 800CA6C8 10004018 */  blez       $v0, .L800CA70C
/* BAECC 800CA6CC 21800000 */   addu      $s0, $zero, $zero
.L800CA6D0:
/* BAED0 800CA6D0 4A70000C */  jal        FUN_8001c128
/* BAED4 800CA6D4 00000000 */   nop
/* BAED8 800CA6D8 21208002 */  addu       $a0, $s4, $zero
/* BAEDC 800CA6DC 21280002 */  addu       $a1, $s0, $zero
/* BAEE0 800CA6E0 21305002 */  addu       $a2, $s2, $s0
/* BAEE4 800CA6E4 6B2D030C */  jal        FUN_800cb5ac
/* BAEE8 800CA6E8 08000724 */   addiu     $a3, $zero, 8
/* BAEEC 800CA6EC 3E004014 */  bnez       $v0, .L800CA7E8
/* BAEF0 800CA6F0 08001026 */   addiu     $s0, $s0, 8
/* BAEF4 800CA6F4 1404A28F */  lw         $v0, 0x414($sp)
/* BAEF8 800CA6F8 00000000 */  nop
/* BAEFC 800CA6FC 2A100202 */  slt        $v0, $s0, $v0
/* BAF00 800CA700 F3FF4014 */  bnez       $v0, .L800CA6D0
/* BAF04 800CA704 00000000 */   nop
/* BAF08 800CA708 1404A28F */  lw         $v0, 0x414($sp)
.L800CA70C:
/* BAF0C 800CA70C 00000000 */  nop
/* BAF10 800CA710 0F004018 */  blez       $v0, .L800CA750
/* BAF14 800CA714 21800000 */   addu      $s0, $zero, $zero
.L800CA718:
/* BAF18 800CA718 4A70000C */  jal        FUN_8001c128
/* BAF1C 800CA71C 00000000 */   nop
/* BAF20 800CA720 21208002 */  addu       $a0, $s4, $zero
/* BAF24 800CA724 21280002 */  addu       $a1, $s0, $zero
/* BAF28 800CA728 21307002 */  addu       $a2, $s3, $s0
/* BAF2C 800CA72C 592D030C */  jal        FUN_800cb564
/* BAF30 800CA730 08000724 */   addiu     $a3, $zero, 8
/* BAF34 800CA734 2C004014 */  bnez       $v0, .L800CA7E8
/* BAF38 800CA738 08001026 */   addiu     $s0, $s0, 8
/* BAF3C 800CA73C 1404A28F */  lw         $v0, 0x414($sp)
/* BAF40 800CA740 00000000 */  nop
/* BAF44 800CA744 2A100202 */  slt        $v0, $s0, $v0
/* BAF48 800CA748 F3FF4014 */  bnez       $v0, .L800CA718
/* BAF4C 800CA74C 00000000 */   nop
.L800CA750:
/* BAF50 800CA750 1404A28F */  lw         $v0, 0x414($sp)
/* BAF54 800CA754 00000000 */  nop
/* BAF58 800CA758 0E004018 */  blez       $v0, .L800CA794
/* BAF5C 800CA75C 21800000 */   addu      $s0, $zero, $zero
/* BAF60 800CA760 21284000 */  addu       $a1, $v0, $zero
/* BAF64 800CA764 21105002 */  addu       $v0, $s2, $s0
.L800CA768:
/* BAF68 800CA768 21187002 */  addu       $v1, $s3, $s0
/* BAF6C 800CA76C 00004490 */  lbu        $a0, ($v0)
/* BAF70 800CA770 00006290 */  lbu        $v0, ($v1)
/* BAF74 800CA774 00000000 */  nop
/* BAF78 800CA778 03008210 */  beq        $a0, $v0, .L800CA788
/* BAF7C 800CA77C 01001026 */   addiu     $s0, $s0, 1
/* BAF80 800CA780 FA290308 */  j          .L800CA7E8
/* BAF84 800CA784 F6FF0224 */   addiu     $v0, $zero, -0xa
.L800CA788:
/* BAF88 800CA788 2A100502 */  slt        $v0, $s0, $a1
/* BAF8C 800CA78C F6FF4014 */  bnez       $v0, .L800CA768
/* BAF90 800CA790 21105002 */   addu      $v0, $s2, $s0
.L800CA794:
/* BAF94 800CA794 10002016 */  bnez       $s1, .L800CA7D8
/* BAF98 800CA798 00000000 */   nop
/* BAF9C 800CA79C 1404A28F */  lw         $v0, 0x414($sp)
/* BAFA0 800CA7A0 00000000 */  nop
/* BAFA4 800CA7A4 2A102202 */  slt        $v0, $s1, $v0
/* BAFA8 800CA7A8 0B004010 */  beqz       $v0, .L800CA7D8
/* BAFAC 800CA7AC 21800000 */   addu      $s0, $zero, $zero
/* BAFB0 800CA7B0 21105002 */  addu       $v0, $s2, $s0
.L800CA7B4:
/* BAFB4 800CA7B4 00004390 */  lbu        $v1, ($v0)
/* BAFB8 800CA7B8 00000000 */  nop
/* BAFBC 800CA7BC 27180300 */  nor        $v1, $zero, $v1
/* BAFC0 800CA7C0 000043A0 */  sb         $v1, ($v0)
/* BAFC4 800CA7C4 1404A28F */  lw         $v0, 0x414($sp)
/* BAFC8 800CA7C8 01001026 */  addiu      $s0, $s0, 1
/* BAFCC 800CA7CC 2A100202 */  slt        $v0, $s0, $v0
/* BAFD0 800CA7D0 F8FF4014 */  bnez       $v0, .L800CA7B4
/* BAFD4 800CA7D4 21105002 */   addu      $v0, $s2, $s0
.L800CA7D8:
/* BAFD8 800CA7D8 01003126 */  addiu      $s1, $s1, 1
/* BAFDC 800CA7DC 0200222A */  slti       $v0, $s1, 2
/* BAFE0 800CA7E0 B7FF4014 */  bnez       $v0, .L800CA6C0
/* BAFE4 800CA7E4 21100000 */   addu      $v0, $zero, $zero
.L800CA7E8:
/* BAFE8 800CA7E8 2C04BF8F */  lw         $ra, 0x42c($sp)
/* BAFEC 800CA7EC 2804B48F */  lw         $s4, 0x428($sp)
/* BAFF0 800CA7F0 2404B38F */  lw         $s3, 0x424($sp)
/* BAFF4 800CA7F4 2004B28F */  lw         $s2, 0x420($sp)
/* BAFF8 800CA7F8 1C04B18F */  lw         $s1, 0x41c($sp)
/* BAFFC 800CA7FC 1804B08F */  lw         $s0, 0x418($sp)
/* BB000 800CA800 0800E003 */  jr         $ra
/* BB004 800CA804 3004BD27 */   addiu     $sp, $sp, 0x430
