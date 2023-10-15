.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800caf58
/* BB758 800CAF58 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BB75C 800CAF5C 21200000 */  addu       $a0, $zero, $zero
/* BB760 800CAF60 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BB764 800CAF64 6DF0020C */  jal        FUN_800bc1b4
/* BB768 800CAF68 1800B0AF */   sw        $s0, 0x18($sp)
/* BB76C 800CAF6C 21800000 */  addu       $s0, $zero, $zero
/* BB770 800CAF70 21280002 */  addu       $a1, $s0, $zero
/* BB774 800CAF74 2080073C */  lui        $a3, 0x8020
/* BB778 800CAF78 6A1F063C */  lui        $a2, 0x1f6a
/* BB77C 800CAF7C 401F0A3C */  lui        $t2, 0x1f40
/* BB780 800CAF80 07000924 */  addiu      $t1, $zero, 7
/* BB784 800CAF84 FDFF0824 */  addiu      $t0, $zero, -3
/* BB788 800CAF88 21100000 */  addu       $v0, $zero, $zero
.L800CAF8C:
/* BB78C 800CAF8C FFFF4224 */  addiu      $v0, $v0, -1
.L800CAF90:
/* BB790 800CAF90 FFFF4104 */  bgez       $v0, .L800CAF90
/* BB794 800CAF94 FFFF4224 */   addiu     $v0, $v0, -1
/* BB798 800CAF98 A0BCE294 */  lhu        $v0, -0x4360($a3)
/* BB79C 800CAF9C 00000000 */  nop
/* BB7A0 800CAFA0 02004234 */  ori        $v0, $v0, 2
/* BB7A4 800CAFA4 0000C2A4 */  sh         $v0, ($a2)
/* BB7A8 800CAFA8 0000C394 */  lhu        $v1, ($a2)
/* BB7AC 800CAFAC 21200000 */  addu       $a0, $zero, $zero
/* BB7B0 800CAFB0 A0BCE2A4 */  sh         $v0, -0x4360($a3)
/* BB7B4 800CAFB4 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB7B8 800CAFB8 FFFF8424 */  addiu      $a0, $a0, -1
.L800CAFBC:
/* BB7BC 800CAFBC FFFF8104 */  bgez       $a0, .L800CAFBC
/* BB7C0 800CAFC0 FFFF8424 */   addiu     $a0, $a0, -1
/* BB7C4 800CAFC4 23202501 */  subu       $a0, $t1, $a1
/* BB7C8 800CAFC8 0100A524 */  addiu      $a1, $a1, 1
/* BB7CC 800CAFCC A0BCE394 */  lhu        $v1, -0x4360($a3)
/* BB7D0 800CAFD0 06004295 */  lhu        $v0, 6($t2)
/* BB7D4 800CAFD4 24186800 */  and        $v1, $v1, $t0
/* BB7D8 800CAFD8 82100200 */  srl        $v0, $v0, 2
/* BB7DC 800CAFDC 01004230 */  andi       $v0, $v0, 1
/* BB7E0 800CAFE0 04108200 */  sllv       $v0, $v0, $a0
/* BB7E4 800CAFE4 25800202 */  or         $s0, $s0, $v0
/* BB7E8 800CAFE8 0000C3A4 */  sh         $v1, ($a2)
/* BB7EC 800CAFEC 0000C494 */  lhu        $a0, ($a2)
/* BB7F0 800CAFF0 0800A228 */  slti       $v0, $a1, 8
/* BB7F4 800CAFF4 A0BCE3A4 */  sh         $v1, -0x4360($a3)
/* BB7F8 800CAFF8 1000A4A7 */  sh         $a0, 0x10($sp)
/* BB7FC 800CAFFC E3FF4014 */  bnez       $v0, .L800CAF8C
/* BB800 800CB000 21100000 */   addu      $v0, $zero, $zero
/* BB804 800CB004 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BB808 800CB008 A0BCA294 */  lhu        $v0, %lo(D_801FBCA0)($a1)
/* BB80C 800CB00C 6A1F033C */  lui        $v1, 0x1f6a
/* BB810 800CB010 FEFF4230 */  andi       $v0, $v0, 0xfffe
/* BB814 800CB014 000062A4 */  sh         $v0, ($v1)
/* BB818 800CB018 00006394 */  lhu        $v1, ($v1)
/* BB81C 800CB01C A0BCA2A4 */  sh         $v0, -0x4360($a1)
/* BB820 800CB020 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB824 800CB024 6DF0020C */  jal        FUN_800bc1b4
/* BB828 800CB028 01000424 */   addiu     $a0, $zero, 1
/* BB82C 800CB02C 21100000 */  addu       $v0, $zero, $zero
/* BB830 800CB030 FFFF4224 */  addiu      $v0, $v0, -1
.L800CB034:
/* BB834 800CB034 FFFF4104 */  bgez       $v0, .L800CB034
/* BB838 800CB038 FFFF4224 */   addiu     $v0, $v0, -1
/* BB83C 800CB03C 2080043C */  lui        $a0, %hi(D_801FBCA0)
/* BB840 800CB040 A0BC8294 */  lhu        $v0, %lo(D_801FBCA0)($a0)
/* BB844 800CB044 6A1F033C */  lui        $v1, 0x1f6a
/* BB848 800CB048 02004234 */  ori        $v0, $v0, 2
/* BB84C 800CB04C 000062A4 */  sh         $v0, ($v1)
/* BB850 800CB050 00006394 */  lhu        $v1, ($v1)
/* BB854 800CB054 21280000 */  addu       $a1, $zero, $zero
/* BB858 800CB058 A0BC82A4 */  sh         $v0, -0x4360($a0)
/* BB85C 800CB05C 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB860 800CB060 FFFFA524 */  addiu      $a1, $a1, -1
.L800CB064:
/* BB864 800CB064 FFFFA104 */  bgez       $a1, .L800CB064
/* BB868 800CB068 FFFFA524 */   addiu     $a1, $a1, -1
/* BB86C 800CB06C 0100A524 */  addiu      $a1, $a1, 1
/* BB870 800CB070 2080043C */  lui        $a0, %hi(D_801FBCA0)
/* BB874 800CB074 6A1F033C */  lui        $v1, 0x1f6a
/* BB878 800CB078 A0BC8294 */  lhu        $v0, %lo(D_801FBCA0)($a0)
/* BB87C 800CB07C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BB880 800CB080 FDFF4230 */  andi       $v0, $v0, 0xfffd
/* BB884 800CB084 000062A4 */  sh         $v0, ($v1)
/* BB888 800CB088 A0BC82A4 */  sh         $v0, -0x4360($a0)
/* BB88C 800CB08C 21100002 */  addu       $v0, $s0, $zero
/* BB890 800CB090 00006394 */  lhu        $v1, ($v1)
/* BB894 800CB094 1800B08F */  lw         $s0, 0x18($sp)
/* BB898 800CB098 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB89C 800CB09C 0800E003 */  jr         $ra
/* BB8A0 800CB0A0 2000BD27 */   addiu     $sp, $sp, 0x20
