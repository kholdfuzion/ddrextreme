.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001e620
/* EE20 8001E620 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* EE24 8001E624 4400B1AF */  sw         $s1, 0x44($sp)
/* EE28 8001E628 21888000 */  addu       $s1, $a0, $zero
/* EE2C 8001E62C 0F80043C */  lui        $a0, %hi(D_800F0028)
/* EE30 8001E630 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* EE34 8001E634 80101100 */  sll        $v0, $s1, 2
/* EE38 8001E638 21105100 */  addu       $v0, $v0, $s1
/* EE3C 8001E63C C0190200 */  sll        $v1, $v0, 7
/* EE40 8001E640 21104300 */  addu       $v0, $v0, $v1
/* EE44 8001E644 40110200 */  sll        $v0, $v0, 5
/* EE48 8001E648 23105100 */  subu       $v0, $v0, $s1
/* EE4C 8001E64C 80100200 */  sll        $v0, $v0, 2
/* EE50 8001E650 21104400 */  addu       $v0, $v0, $a0
/* EE54 8001E654 FFFF0324 */  addiu      $v1, $zero, -1
/* EE58 8001E658 4800BFAF */  sw         $ra, 0x48($sp)
/* EE5C 8001E65C 4000B0AF */  sw         $s0, 0x40($sp)
/* EE60 8001E660 7470000C */  jal        getcoinslot1_8001c1d0
/* EE64 8001E664 410043A0 */   sb        $v1, 0x41($v0)
/* EE68 8001E668 25004010 */  beqz       $v0, .L8001E700
/* EE6C 8001E66C 2380053C */   lui       $a1, 0x8023
/* EE70 8001E670 0180043C */  lui        $a0, %hi(D_80010860)
/* EE74 8001E674 60088424 */  addiu      $a0, $a0, %lo(D_80010860)
/* EE78 8001E678 DDB3000C */  jal        decodefile_8002cf74
/* EE7C 8001E67C 0080A534 */   ori       $a1, $a1, 0x8000
/* EE80 8001E680 2380043C */  lui        $a0, 0x8023
/* EE84 8001E684 04808434 */  ori        $a0, $a0, 0x8004
/* EE88 8001E688 2000A527 */  addiu      $a1, $sp, 0x20
/* EE8C 8001E68C 197C000C */  jal        GsGetTimInfo
/* EE90 8001E690 00821100 */   sll       $s0, $s1, 8
/* EE94 8001E694 2800A397 */  lhu        $v1, 0x28($sp)
/* EE98 8001E698 2A00A497 */  lhu        $a0, 0x2a($sp)
/* EE9C 8001E69C 3400A597 */  lhu        $a1, 0x34($sp)
/* EEA0 8001E6A0 3600A697 */  lhu        $a2, 0x36($sp)
/* EEA4 8001E6A4 00020224 */  addiu      $v0, $zero, 0x200
/* EEA8 8001E6A8 1000A2A7 */  sh         $v0, 0x10($sp)
/* EEAC 8001E6AC F4002226 */  addiu      $v0, $s1, 0xf4
/* EEB0 8001E6B0 1200B0A7 */  sh         $s0, 0x12($sp)
/* EEB4 8001E6B4 1800A0A7 */  sh         $zero, 0x18($sp)
/* EEB8 8001E6B8 1A00A2A7 */  sh         $v0, 0x1a($sp)
/* EEBC 8001E6BC 1400A3A7 */  sh         $v1, 0x14($sp)
/* EEC0 8001E6C0 1600A4A7 */  sh         $a0, 0x16($sp)
/* EEC4 8001E6C4 1C00A5A7 */  sh         $a1, 0x1c($sp)
/* EEC8 8001E6C8 7CAA000C */  jal        vsync_8002a9f0
/* EECC 8001E6CC 1E00A6A7 */   sh        $a2, 0x1e($sp)
/* EED0 8001E6D0 2C00A58F */  lw         $a1, 0x2c($sp)
/* EED4 8001E6D4 8361000C */  jal        LoadImage
/* EED8 8001E6D8 1000A427 */   addiu     $a0, $sp, 0x10
/* EEDC 8001E6DC 7CAA000C */  jal        vsync_8002a9f0
/* EEE0 8001E6E0 00000000 */   nop
/* EEE4 8001E6E4 3800A58F */  lw         $a1, 0x38($sp)
/* EEE8 8001E6E8 8361000C */  jal        LoadImage
/* EEEC 8001E6EC 1800A427 */   addiu     $a0, $sp, 0x18
/* EEF0 8001E6F0 D860000C */  jal        DrawSync
/* EEF4 8001E6F4 21200000 */   addu      $a0, $zero, $zero
/* EEF8 8001E6F8 E2790008 */  j          .L8001E788
/* EEFC 8001E6FC 00000000 */   nop
.L8001E700:
/* EF00 8001E700 0180043C */  lui        $a0, %hi(D_80010880)
/* EF04 8001E704 80088424 */  addiu      $a0, $a0, %lo(D_80010880)
/* EF08 8001E708 DDB3000C */  jal        decodefile_8002cf74
/* EF0C 8001E70C 0080A534 */   ori       $a1, $a1, 0x8000
/* EF10 8001E710 2380043C */  lui        $a0, 0x8023
/* EF14 8001E714 04808434 */  ori        $a0, $a0, 0x8004
/* EF18 8001E718 2000A527 */  addiu      $a1, $sp, 0x20
/* EF1C 8001E71C 197C000C */  jal        GsGetTimInfo
/* EF20 8001E720 00821100 */   sll       $s0, $s1, 8
/* EF24 8001E724 2800A397 */  lhu        $v1, 0x28($sp)
/* EF28 8001E728 2A00A497 */  lhu        $a0, 0x2a($sp)
/* EF2C 8001E72C 3400A597 */  lhu        $a1, 0x34($sp)
/* EF30 8001E730 3600A697 */  lhu        $a2, 0x36($sp)
/* EF34 8001E734 00020224 */  addiu      $v0, $zero, 0x200
/* EF38 8001E738 1000A2A7 */  sh         $v0, 0x10($sp)
/* EF3C 8001E73C F4002226 */  addiu      $v0, $s1, 0xf4
/* EF40 8001E740 1200B0A7 */  sh         $s0, 0x12($sp)
/* EF44 8001E744 1800A0A7 */  sh         $zero, 0x18($sp)
/* EF48 8001E748 1A00A2A7 */  sh         $v0, 0x1a($sp)
/* EF4C 8001E74C 1400A3A7 */  sh         $v1, 0x14($sp)
/* EF50 8001E750 1600A4A7 */  sh         $a0, 0x16($sp)
/* EF54 8001E754 1C00A5A7 */  sh         $a1, 0x1c($sp)
/* EF58 8001E758 7CAA000C */  jal        vsync_8002a9f0
/* EF5C 8001E75C 1E00A6A7 */   sh        $a2, 0x1e($sp)
/* EF60 8001E760 2C00A58F */  lw         $a1, 0x2c($sp)
/* EF64 8001E764 8361000C */  jal        LoadImage
/* EF68 8001E768 1000A427 */   addiu     $a0, $sp, 0x10
/* EF6C 8001E76C 7CAA000C */  jal        vsync_8002a9f0
/* EF70 8001E770 00000000 */   nop
/* EF74 8001E774 3800A58F */  lw         $a1, 0x38($sp)
/* EF78 8001E778 8361000C */  jal        LoadImage
/* EF7C 8001E77C 1800A427 */   addiu     $a0, $sp, 0x18
/* EF80 8001E780 D860000C */  jal        DrawSync
/* EF84 8001E784 21200000 */   addu      $a0, $zero, $zero
.L8001E788:
/* EF88 8001E788 4800BF8F */  lw         $ra, 0x48($sp)
/* EF8C 8001E78C 4400B18F */  lw         $s1, 0x44($sp)
/* EF90 8001E790 4000B08F */  lw         $s0, 0x40($sp)
/* EF94 8001E794 0800E003 */  jr         $ra
/* EF98 8001E798 5000BD27 */   addiu     $sp, $sp, 0x50
