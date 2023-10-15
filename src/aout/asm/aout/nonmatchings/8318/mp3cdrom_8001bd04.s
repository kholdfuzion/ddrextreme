.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel mp3cdrom_8001bd04
/* C504 8001BD04 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* C508 8001BD08 3400B1AF */  sw         $s1, 0x34($sp)
/* C50C 8001BD0C 2800B127 */  addiu      $s1, $sp, 0x28
/* C510 8001BD10 3800B2AF */  sw         $s2, 0x38($sp)
/* C514 8001BD14 2C00B227 */  addiu      $s2, $sp, 0x2c
/* C518 8001BD18 3C00B3AF */  sw         $s3, 0x3c($sp)
/* C51C 8001BD1C 0180133C */  lui        $s3, 0x8001
/* C520 8001BD20 FF000324 */  addiu      $v1, $zero, 0xff
/* C524 8001BD24 801F023C */  lui        $v0, 0x1f80
/* C528 8001BD28 FC034234 */  ori        $v0, $v0, 0x3fc
/* C52C 8001BD2C 4000BFAF */  sw         $ra, 0x40($sp)
/* C530 8001BD30 3000B0AF */  sw         $s0, 0x30($sp)
.L8001BD34:
/* C534 8001BD34 000040AC */  sw         $zero, ($v0)
/* C538 8001BD38 FFFF6324 */  addiu      $v1, $v1, -1
/* C53C 8001BD3C FDFF6104 */  bgez       $v1, .L8001BD34
/* C540 8001BD40 FCFF4224 */   addiu     $v0, $v0, -4
/* C544 8001BD44 71AA000C */  jal        vsyncrelated_8002a9c4
/* C548 8001BD48 FFFF1024 */   addiu     $s0, $zero, -1
/* C54C 8001BD4C 7CAA000C */  jal        vsync_8002a9f0
/* C550 8001BD50 00000000 */   nop
/* C554 8001BD54 0F80033C */  lui        $v1, %hi(D_800F0028)
/* C558 8001BD58 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* C55C 8001BD5C A8FF4224 */  addiu      $v0, $v0, %lo(D_800EFFA8)
/* C560 8001BD60 280060A4 */  sh         $zero, %lo(D_800F0028)($v1)
/* C564 8001BD64 01000324 */  addiu      $v1, $zero, 1
/* C568 8001BD68 6C0040AC */  sw         $zero, 0x6c($v0)
/* C56C 8001BD6C 700040AC */  sw         $zero, 0x70($v0)
/* C570 8001BD70 740040AC */  sw         $zero, 0x74($v0)
/* C574 8001BD74 780040AC */  sw         $zero, 0x78($v0)
/* C578 8001BD78 75C9020C */  jal        printBOOTCHECKMSG_800b25d4
/* C57C 8001BD7C 7D0043A0 */   sb        $v1, 0x7d($v0)
/* C580 8001BD80 8BF8020C */  jal        flashlib_800be22c
/* C584 8001BD84 00000000 */   nop
/* C588 8001BD88 33B4000C */  jal        FUN_8002d0cc
/* C58C 8001BD8C 00000000 */   nop
/* C590 8001BD90 7CAA000C */  jal        vsync_8002a9f0
/* C594 8001BD94 00000000 */   nop
/* C598 8001BD98 BDEF020C */  jal        FUN_800bbef4
/* C59C 8001BD9C 21200000 */   addu      $a0, $zero, $zero
/* C5A0 8001BDA0 21200000 */  addu       $a0, $zero, $zero
/* C5A4 8001BDA4 0280053C */  lui        $a1, %hi(func_8001C0D4)
/* C5A8 8001BDA8 1CC7020C */  jal        FUN_800b1c70
/* C5AC 8001BDAC D4C0A524 */   addiu     $a1, $a1, %lo(func_8001C0D4)
/* C5B0 8001BDB0 07005014 */  bne        $v0, $s0, .L8001BDD0
/* C5B4 8001BDB4 FFFF0524 */   addiu     $a1, $zero, -1
/* C5B8 8001BDB8 1000B0AF */  sw         $s0, 0x10($sp)
/* C5BC 8001BDBC 0180043C */  lui        $a0, %hi(D_80010384)
/* C5C0 8001BDC0 84038424 */  addiu      $a0, $a0, %lo(D_80010384)
/* C5C4 8001BDC4 21300000 */  addu       $a2, $zero, $zero
/* C5C8 8001BDC8 27F3020C */  jal        HardWareError_800bcc9c
/* C5CC 8001BDCC FFFF0724 */   addiu     $a3, $zero, -1
.L8001BDD0:
/* C5D0 8001BDD0 3A49030C */  jal        FUN_800d24e8
/* C5D4 8001BDD4 21200000 */   addu      $a0, $zero, $zero
/* C5D8 8001BDD8 21200000 */  addu       $a0, $zero, $zero
/* C5DC 8001BDDC 5149030C */  jal        FUN_800d2544
/* C5E0 8001BDE0 21280000 */   addu      $a1, $zero, $zero
/* C5E4 8001BDE4 7CAA000C */  jal        vsync_8002a9f0
/* C5E8 8001BDE8 00000000 */   nop
/* C5EC 8001BDEC 40A2000C */  jal        FUN_80028900
/* C5F0 8001BDF0 00000000 */   nop
/* C5F4 8001BDF4 02A3000C */  jal        FUN_80028c08
/* C5F8 8001BDF8 00000000 */   nop
/* C5FC 8001BDFC E8A9000C */  jal        FUN_8002a7a0
/* C600 8001BE00 21200000 */   addu      $a0, $zero, $zero
/* C604 8001BE04 CDAE000C */  jal        FUN_8002bb34
/* C608 8001BE08 00000000 */   nop
/* C60C 8001BE0C 7CAA000C */  jal        vsync_8002a9f0
/* C610 8001BE10 00000000 */   nop
/* C614 8001BE14 F79B020C */  jal        FUN_800a6fdc
/* C618 8001BE18 00000000 */   nop
/* C61C 8001BE1C 7CAA000C */  jal        vsync_8002a9f0
/* C620 8001BE20 00000000 */   nop
/* C624 8001BE24 C6CA020C */  jal        FUN_800b2b18
/* C628 8001BE28 00000000 */   nop
/* C62C 8001BE2C C8B9000C */  jal        FUN_8002e720
/* C630 8001BE30 00000000 */   nop
/* C634 8001BE34 7CAA000C */  jal        vsync_8002a9f0
/* C638 8001BE38 00000000 */   nop
/* C63C 8001BE3C DEB8000C */  jal        FUN_8002e378
/* C640 8001BE40 00000000 */   nop
/* C644 8001BE44 7CAA000C */  jal        vsync_8002a9f0
/* C648 8001BE48 00000000 */   nop
/* C64C 8001BE4C 0D80043C */  lui        $a0, %hi(D_800D3E78)
/* C650 8001BE50 783E8424 */  addiu      $a0, $a0, %lo(D_800D3E78)
/* C654 8001BE54 CF0F030C */  jal        FUN_800c3f3c
/* C658 8001BE58 FC490524 */   addiu     $a1, $zero, 0x49fc
/* C65C 8001BE5C 0180043C */  lui        $a0, %hi(D_8001039C)
/* C660 8001BE60 9C038424 */  addiu      $a0, $a0, %lo(D_8001039C)
/* C664 8001BE64 21282002 */  addu       $a1, $s1, $zero
/* C668 8001BE68 F9AA000C */  jal        hashname_getfromflash_8002abe4
/* C66C 8001BE6C 21304002 */   addu      $a2, $s2, $zero
/* C670 8001BE70 2C00A38F */  lw         $v1, 0x2c($sp)
/* C674 8001BE74 2800A48F */  lw         $a0, 0x28($sp)
/* C678 8001BE78 FF076524 */  addiu      $a1, $v1, 0x7ff
/* C67C 8001BE7C 0300A104 */  bgez       $a1, .L8001BE8C
/* C680 8001BE80 C32A0500 */   sra       $a1, $a1, 0xb
/* C684 8001BE84 FE0F6524 */  addiu      $a1, $v1, 0xffe
/* C688 8001BE88 C32A0500 */  sra        $a1, $a1, 0xb
.L8001BE8C:
/* C68C 8001BE8C 2580063C */  lui        $a2, 0x8025
/* C690 8001BE90 0080C634 */  ori        $a2, $a2, 0x8000
/* C694 8001BE94 96AB000C */  jal        FUN_8002ae58
/* C698 8001BE98 21384000 */   addu      $a3, $v0, $zero
/* C69C 8001BE9C 7CAA000C */  jal        vsync_8002a9f0
/* C6A0 8001BEA0 00000000 */   nop
/* C6A4 8001BEA4 2580043C */  lui        $a0, 0x8025
/* C6A8 8001BEA8 2C00A58F */  lw         $a1, 0x2c($sp)
/* C6AC 8001BEAC 1CC4020C */  jal        FUN_800b1070
/* C6B0 8001BEB0 00808434 */   ori       $a0, $a0, 0x8000
/* C6B4 8001BEB4 07004010 */  beqz       $v0, .L8001BED4
/* C6B8 8001BEB8 0180043C */   lui       $a0, %hi(D_800103B4)
/* C6BC 8001BEBC 1000B0AF */  sw         $s0, 0x10($sp)
/* C6C0 8001BEC0 B4038424 */  addiu      $a0, $a0, %lo(D_800103B4)
/* C6C4 8001BEC4 21284000 */  addu       $a1, $v0, $zero
/* C6C8 8001BEC8 01000624 */  addiu      $a2, $zero, 1
/* C6CC 8001BECC 27F3020C */  jal        HardWareError_800bcc9c
/* C6D0 8001BED0 FFFF0724 */   addiu     $a3, $zero, -1
.L8001BED4:
/* C6D4 8001BED4 7CAA000C */  jal        vsync_8002a9f0
/* C6D8 8001BED8 21880000 */   addu      $s1, $zero, $zero
/* C6DC 8001BEDC FFFF1224 */  addiu      $s2, $zero, -1
/* C6E0 8001BEE0 24046226 */  addiu      $v0, $s3, 0x424
/* C6E4 8001BEE4 2404638E */  lw         $v1, 0x424($s3)
/* C6E8 8001BEE8 0400448C */  lw         $a0, 4($v0)
/* C6EC 8001BEEC 0800458C */  lw         $a1, 8($v0)
/* C6F0 8001BEF0 1800B027 */  addiu      $s0, $sp, 0x18
/* C6F4 8001BEF4 1800A3AF */  sw         $v1, 0x18($sp)
/* C6F8 8001BEF8 1C00A4AF */  sw         $a0, 0x1c($sp)
/* C6FC 8001BEFC 2000A5AF */  sw         $a1, 0x20($sp)
.L8001BF00:
/* C700 8001BF00 C0251100 */  sll        $a0, $s1, 0x17
/* C704 8001BF04 B1C3020C */  jal        FUN_800b0ec4
/* C708 8001BF08 8000053C */   lui       $a1, 0x80
/* C70C 8001BF0C 06005214 */  bne        $v0, $s2, .L8001BF28
/* C710 8001BF10 FFFF0524 */   addiu     $a1, $zero, -1
/* C714 8001BF14 21300000 */  addu       $a2, $zero, $zero
/* C718 8001BF18 0000048E */  lw         $a0, ($s0)
/* C71C 8001BF1C FFFF0724 */  addiu      $a3, $zero, -1
/* C720 8001BF20 27F3020C */  jal        HardWareError_800bcc9c
/* C724 8001BF24 1000A2AF */   sw        $v0, 0x10($sp)
.L8001BF28:
/* C728 8001BF28 01003126 */  addiu      $s1, $s1, 1
/* C72C 8001BF2C 0300222A */  slti       $v0, $s1, 3
/* C730 8001BF30 F3FF4014 */  bnez       $v0, .L8001BF00
/* C734 8001BF34 04001026 */   addiu     $s0, $s0, 4
/* C738 8001BF38 30C3020C */  jal        FUN_800b0cc0
/* C73C 8001BF3C 21200000 */   addu      $a0, $zero, $zero
/* C740 8001BF40 7CAA000C */  jal        vsync_8002a9f0
/* C744 8001BF44 00000000 */   nop
/* C748 8001BF48 0B80023C */  lui        $v0, %hi(D_800A97B0)
/* C74C 8001BF4C B0974224 */  addiu      $v0, $v0, %lo(D_800A97B0)
/* C750 8001BF50 21200000 */  addu       $a0, $zero, $zero
/* C754 8001BF54 FE000524 */  addiu      $a1, $zero, 0xfe
/* C758 8001BF58 07000624 */  addiu      $a2, $zero, 7
/* C75C 8001BF5C 0B80073C */  lui        $a3, %hi(FUN_800a974c)
/* C760 8001BF60 4C97E724 */  addiu      $a3, $a3, %lo(FUN_800a974c)
/* C764 8001BF64 24BD020C */  jal        FUN_800af490
/* C768 8001BF68 1000A2AF */   sw        $v0, 0x10($sp)
/* C76C 8001BF6C 7CAA000C */  jal        vsync_8002a9f0
/* C770 8001BF70 00000000 */   nop
/* C774 8001BF74 01CF010C */  jal        FUN_80073c04
/* C778 8001BF78 00000000 */   nop
/* C77C 8001BF7C 09D1010C */  jal        FUN_80074424
/* C780 8001BF80 00000000 */   nop
/* C784 8001BF84 DF9F000C */  jal        FUN_80027f7c
/* C788 8001BF88 00000000 */   nop
/* C78C 8001BF8C 7CAA000C */  jal        vsync_8002a9f0
/* C790 8001BF90 00000000 */   nop
/* C794 8001BF94 7CAA000C */  jal        vsync_8002a9f0
/* C798 8001BF98 00000000 */   nop
/* C79C 8001BF9C DC71000C */  jal        FUN_8001c770
/* C7A0 8001BFA0 00000000 */   nop
/* C7A4 8001BFA4 7CAA000C */  jal        vsync_8002a9f0
/* C7A8 8001BFA8 00000000 */   nop
/* C7AC 8001BFAC E8A9000C */  jal        FUN_8002a7a0
/* C7B0 8001BFB0 01000424 */   addiu     $a0, $zero, 1
/* C7B4 8001BFB4 4000BF8F */  lw         $ra, 0x40($sp)
/* C7B8 8001BFB8 3C00B38F */  lw         $s3, 0x3c($sp)
/* C7BC 8001BFBC 3800B28F */  lw         $s2, 0x38($sp)
/* C7C0 8001BFC0 3400B18F */  lw         $s1, 0x34($sp)
/* C7C4 8001BFC4 3000B08F */  lw         $s0, 0x30($sp)
/* C7C8 8001BFC8 0800E003 */  jr         $ra
/* C7CC 8001BFCC 4800BD27 */   addiu     $sp, $sp, 0x48
