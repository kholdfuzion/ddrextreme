.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_480
/* A9B54 800B9354 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A9B58 800B9358 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A9B5C 800B935C 40201300 */  sll        $a0, $s3, 1
/* A9B60 800B9360 21208200 */  addu       $a0, $a0, $v0
/* A9B64 800B9364 0A008294 */  lhu        $v0, 0xa($a0)
/* A9B68 800B9368 00000000 */  nop
/* A9B6C 800B936C 3F004330 */  andi       $v1, $v0, 0x3f
/* A9B70 800B9370 2510A600 */  or         $v0, $a1, $a2
/* A9B74 800B9374 80110200 */  sll        $v0, $v0, 6
/* A9B78 800B9378 25186200 */  or         $v1, $v1, $v0
/* A9B7C 800B937C 0A0083A4 */  sh         $v1, 0xa($a0)
.L800B9380:
/* A9B80 800B9380 03004016 */  bnez       $s2, .L800B9390
/* A9B84 800B9384 00402232 */   andi      $v0, $s1, 0x4000
/* A9B88 800B9388 1C004010 */  beqz       $v0, .L800B93FC
/* A9B8C 800B938C 00000000 */   nop
.L800B9390:
/* A9B90 800B9390 36000596 */  lhu        $a1, 0x36($s0)
/* A9B94 800B9394 00000000 */  nop
/* A9B98 800B9398 2000A22C */  sltiu      $v0, $a1, 0x20
/* A9B9C 800B939C 02004014 */  bnez       $v0, .L800B93A8
/* A9BA0 800B93A0 00000000 */   nop
/* A9BA4 800B93A4 1F000524 */  addiu      $a1, $zero, 0x1f
.L800B93A8:
/* A9BA8 800B93A8 04004016 */  bnez       $s2, .L800B93BC
/* A9BAC 800B93AC 21300000 */   addu      $a2, $zero, $zero
/* A9BB0 800B93B0 00042232 */  andi       $v0, $s1, 0x400
/* A9BB4 800B93B4 08004010 */  beqz       $v0, .L800B93D8
/* A9BB8 800B93B8 00000000 */   nop
.L800B93BC:
/* A9BBC 800B93BC 2C00038E */  lw         $v1, 0x2c($s0)
/* A9BC0 800B93C0 03000224 */  addiu      $v0, $zero, 3
/* A9BC4 800B93C4 04006210 */  beq        $v1, $v0, .L800B93D8
/* A9BC8 800B93C8 07000224 */   addiu     $v0, $zero, 7
/* A9BCC 800B93CC 02006214 */  bne        $v1, $v0, .L800B93D8
/* A9BD0 800B93D0 00000000 */   nop
/* A9BD4 800B93D4 20000624 */  addiu      $a2, $zero, 0x20
.L800B93D8:
/* A9BD8 800B93D8 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A9BDC 800B93DC F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A9BE0 800B93E0 40201300 */  sll        $a0, $s3, 1
/* A9BE4 800B93E4 21208200 */  addu       $a0, $a0, $v0
/* A9BE8 800B93E8 0A008294 */  lhu        $v0, 0xa($a0)
/* A9BEC 800B93EC 2518A600 */  or         $v1, $a1, $a2
/* A9BF0 800B93F0 C0FF4230 */  andi       $v0, $v0, 0xffc0
/* A9BF4 800B93F4 25104300 */  or         $v0, $v0, $v1
/* A9BF8 800B93F8 0A0082A4 */  sh         $v0, 0xa($a0)
.L800B93FC:
/* A9BFC 800B93FC 03004016 */  bnez       $s2, .L800B940C
/* A9C00 800B9400 00802232 */   andi      $v0, $s1, 0x8000
/* A9C04 800B9404 10004010 */  beqz       $v0, .L800B9448
/* A9C08 800B9408 00000000 */   nop
.L800B940C:
/* A9C0C 800B940C 38000596 */  lhu        $a1, 0x38($s0)
/* A9C10 800B9410 00000000 */  nop
/* A9C14 800B9414 1000A22C */  sltiu      $v0, $a1, 0x10
/* A9C18 800B9418 02004014 */  bnez       $v0, .L800B9424
/* A9C1C 800B941C 00000000 */   nop
/* A9C20 800B9420 0F000524 */  addiu      $a1, $zero, 0xf
.L800B9424:
/* A9C24 800B9424 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A9C28 800B9428 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A9C2C 800B942C 40181300 */  sll        $v1, $s3, 1
/* A9C30 800B9430 21186200 */  addu       $v1, $v1, $v0
/* A9C34 800B9434 08006294 */  lhu        $v0, 8($v1)
/* A9C38 800B9438 00000000 */  nop
/* A9C3C 800B943C F0FF4230 */  andi       $v0, $v0, 0xfff0
/* A9C40 800B9440 25104500 */  or         $v0, $v0, $a1
/* A9C44 800B9444 080062A4 */  sh         $v0, 8($v1)
.L800B9448:
/* A9C48 800B9448 01009426 */  addiu      $s4, $s4, 1
/* A9C4C 800B944C 1800822A */  slti       $v0, $s4, 0x18
/* A9C50 800B9450 AEFE4014 */  bnez       $v0, .L800B8F0C
/* A9C54 800B9454 0200B526 */   addiu     $s5, $s5, 2
/* A9C58 800B9458 01000224 */  addiu      $v0, $zero, 1
/* A9C5C 800B945C 1400A2AF */  sw         $v0, 0x14($sp)
/* A9C60 800B9460 25E50208 */  j          S_SVA_OBJ_5C0
/* A9C64 800B9464 1000A0AF */   sw        $zero, 0x10($sp)
.L800B9468:
/* A9C68 800B9468 1400A38F */  lw         $v1, 0x14($sp)
/* A9C6C 800B946C 00000000 */  nop
/* A9C70 800B9470 40100300 */  sll        $v0, $v1, 1
/* A9C74 800B9474 21104300 */  addu       $v0, $v0, $v1
/* A9C78 800B9478 80100200 */  sll        $v0, $v0, 2
/* A9C7C 800B947C 21104300 */  addu       $v0, $v0, $v1
/* A9C80 800B9480 1400A2AF */  sw         $v0, 0x14($sp)
/* A9C84 800B9484 1000A28F */  lw         $v0, 0x10($sp)
/* A9C88 800B9488 00000000 */  nop
/* A9C8C 800B948C 01004224 */  addiu      $v0, $v0, 1
/* A9C90 800B9490 1000A2AF */  sw         $v0, 0x10($sp)
