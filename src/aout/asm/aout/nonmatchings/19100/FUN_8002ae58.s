.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ae58
/* 1B658 8002AE58 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 1B65C 8002AE5C 3400B5AF */  sw         $s5, 0x34($sp)
/* 1B660 8002AE60 C0AA0400 */  sll        $s5, $a0, 0xb
/* 1B664 8002AE64 1580043C */  lui        $a0, %hi(D_8014ABE0)
/* 1B668 8002AE68 01000224 */  addiu      $v0, $zero, 1
/* 1B66C 8002AE6C E0AB82AC */  sw         $v0, %lo(D_8014ABE0)($a0)
/* 1B670 8002AE70 1E80023C */  lui        $v0, %hi(D_801E179A)
/* 1B674 8002AE74 9A174394 */  lhu        $v1, %lo(D_801E179A)($v0)
/* 1B678 8002AE78 3000B4AF */  sw         $s4, 0x30($sp)
/* 1B67C 8002AE7C C0A20500 */  sll        $s4, $a1, 0xb
/* 1B680 8002AE80 4400BFAF */  sw         $ra, 0x44($sp)
/* 1B684 8002AE84 4000BEAF */  sw         $fp, 0x40($sp)
/* 1B688 8002AE88 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 1B68C 8002AE8C 3800B6AF */  sw         $s6, 0x38($sp)
/* 1B690 8002AE90 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 1B694 8002AE94 2800B2AF */  sw         $s2, 0x28($sp)
/* 1B698 8002AE98 2400B1AF */  sw         $s1, 0x24($sp)
/* 1B69C 8002AE9C 2000B0AF */  sw         $s0, 0x20($sp)
/* 1B6A0 8002AEA0 1000A6AF */  sw         $a2, 0x10($sp)
/* 1B6A4 8002AEA4 5400A7AF */  sw         $a3, 0x54($sp)
/* 1B6A8 8002AEA8 02110300 */  srl        $v0, $v1, 4
/* 1B6AC 8002AEAC 03004230 */  andi       $v0, $v0, 3
/* 1B6B0 8002AEB0 0F006330 */  andi       $v1, $v1, 0xf
/* 1B6B4 8002AEB4 1400A2AF */  sw         $v0, 0x14($sp)
/* 1B6B8 8002AEB8 6C008012 */  beqz       $s4, .L8002B06C
/* 1B6BC 8002AEBC 1800A3AF */   sw        $v1, 0x18($sp)
/* 1B6C0 8002AEC0 82261500 */  srl        $a0, $s5, 0x1a
.L8002AEC4:
/* 1B6C4 8002AEC4 3F00023C */  lui        $v0, 0x3f
/* 1B6C8 8002AEC8 FFFF4234 */  ori        $v0, $v0, 0xffff
/* 1B6CC 8002AECC 821D1500 */  srl        $v1, $s5, 0x16
/* 1B6D0 8002AED0 0F006530 */  andi       $a1, $v1, 0xf
/* 1B6D4 8002AED4 2480A202 */  and        $s0, $s5, $v0
/* 1B6D8 8002AED8 001F033C */  lui        $v1, 0x1f00
/* 1B6DC 8002AEDC 03008014 */  bnez       $a0, .L8002AEEC
/* 1B6E0 8002AEE0 21900302 */   addu      $s2, $s0, $v1
/* 1B6E4 8002AEE4 0E80023C */  lui        $v0, %hi(D_800D8D28)
/* 1B6E8 8002AEE8 288D448C */  lw         $a0, %lo(D_800D8D28)($v0)
.L8002AEEC:
/* 1B6EC 8002AEEC 97F6020C */  jal        flash_library_related_800bda5c
/* 1B6F0 8002AEF0 21300000 */   addu      $a2, $zero, $zero
/* 1B6F4 8002AEF4 0A004014 */  bnez       $v0, .L8002AF20
/* 1B6F8 8002AEF8 1580023C */   lui       $v0, %hi(D_8014ABE0)
/* 1B6FC 8002AEFC 1400A48F */  lw         $a0, 0x14($sp)
/* 1B700 8002AF00 E0AB40AC */  sw         $zero, %lo(D_8014ABE0)($v0)
/* 1B704 8002AF04 57F0020C */  jal        FUN_800bc15c
/* 1B708 8002AF08 00000000 */   nop
/* 1B70C 8002AF0C 1800A48F */  lw         $a0, 0x18($sp)
/* 1B710 8002AF10 34F0020C */  jal        FUN_800bc0d0
/* 1B714 8002AF14 00000000 */   nop
/* 1B718 8002AF18 24AC0008 */  j          .L8002B090
/* 1B71C 8002AF1C FFFF0224 */   addiu     $v0, $zero, -1
.L8002AF20:
/* 1B720 8002AF20 4000023C */  lui        $v0, 0x40
/* 1B724 8002AF24 23885000 */  subu       $s1, $v0, $s0
/* 1B728 8002AF28 2B105400 */  sltu       $v0, $v0, $s4
/* 1B72C 8002AF2C 05004014 */  bnez       $v0, .L8002AF44
/* 1B730 8002AF30 21204002 */   addu      $a0, $s2, $zero
/* 1B734 8002AF34 2B109102 */  sltu       $v0, $s4, $s1
/* 1B738 8002AF38 02004010 */  beqz       $v0, .L8002AF44
/* 1B73C 8002AF3C 00000000 */   nop
/* 1B740 8002AF40 21888002 */  addu       $s1, $s4, $zero
.L8002AF44:
/* 1B744 8002AF44 60F8020C */  jal        FUN_800be180
/* 1B748 8002AF48 1000B727 */   addiu     $s7, $sp, 0x10
/* 1B74C 8002AF4C 5400A38F */  lw         $v1, 0x54($sp)
/* 1B750 8002AF50 21204002 */  addu       $a0, $s2, $zero
/* 1B754 8002AF54 03120300 */  sra        $v0, $v1, 8
/* 1B758 8002AF58 09004010 */  beqz       $v0, .L8002AF80
/* 1B75C 8002AF5C FF007030 */   andi      $s0, $v1, 0xff
/* 1B760 8002AF60 21282002 */  addu       $a1, $s1, $zero
/* 1B764 8002AF64 0180023C */  lui        $v0, %hi(D_80011018)
/* 1B768 8002AF68 1380073C */  lui        $a3, %hi(D_8012ABE0)
/* 1B76C 8002AF6C E0ABE724 */  addiu      $a3, $a3, %lo(D_8012ABE0)
/* 1B770 8002AF70 E5BB000C */  jal        FUN_8002ef94
/* 1B774 8002AF74 18104624 */   addiu     $a2, $v0, %lo(D_80011018)
/* 1B778 8002AF78 1380043C */  lui        $a0, %hi(D_8012ABE0)
/* 1B77C 8002AF7C E0AB8424 */  addiu      $a0, $a0, %lo(D_8012ABE0)
.L8002AF80:
/* 1B780 8002AF80 01000224 */  addiu      $v0, $zero, 1
/* 1B784 8002AF84 27000212 */  beq        $s0, $v0, .L8002B024
/* 1B788 8002AF88 0200022A */   slti      $v0, $s0, 2
/* 1B78C 8002AF8C 05004010 */  beqz       $v0, .L8002AFA4
/* 1B790 8002AF90 02000224 */   addiu     $v0, $zero, 2
/* 1B794 8002AF94 08000012 */  beqz       $s0, .L8002AFB8
/* 1B798 8002AF98 01002226 */   addiu     $v0, $s1, 1
/* 1B79C 8002AF9C ECAB0008 */  j          .L8002AFB0
/* 1B7A0 8002AFA0 21A8B102 */   addu      $s5, $s5, $s1
.L8002AFA4:
/* 1B7A4 8002AFA4 25000212 */  beq        $s0, $v0, .L8002B03C
/* 1B7A8 8002AFA8 00000000 */   nop
/* 1B7AC 8002AFAC 21A8B102 */  addu       $s5, $s5, $s1
.L8002AFB0:
/* 1B7B0 8002AFB0 17AC0008 */  j          .L8002B05C
/* 1B7B4 8002AFB4 23889102 */   subu      $s1, $s4, $s1
.L8002AFB8:
/* 1B7B8 8002AFB8 42800200 */  srl        $s0, $v0, 1
/* 1B7BC 8002AFBC 21B00000 */  addu       $s6, $zero, $zero
/* 1B7C0 8002AFC0 21988000 */  addu       $s3, $a0, $zero
/* 1B7C4 8002AFC4 1000B28F */  lw         $s2, 0x10($sp)
/* 1B7C8 8002AFC8 FFFF1026 */  addiu      $s0, $s0, -1
/* 1B7CC 8002AFCC 21A8B102 */  addu       $s5, $s5, $s1
/* 1B7D0 8002AFD0 23889102 */  subu       $s1, $s4, $s1
/* 1B7D4 8002AFD4 FFFF0224 */  addiu      $v0, $zero, -1
/* 1B7D8 8002AFD8 0D000212 */  beq        $s0, $v0, .L8002B010
/* 1B7DC 8002AFDC 15801E3C */   lui       $fp, 0x8015
/* 1B7E0 8002AFE0 FFFF1424 */  addiu      $s4, $zero, -1
.L8002AFE4:
/* 1B7E4 8002AFE4 FFFFC232 */  andi       $v0, $s6, 0xffff
/* 1B7E8 8002AFE8 03004014 */  bnez       $v0, .L8002AFF8
/* 1B7EC 8002AFEC 0100D626 */   addiu     $s6, $s6, 1
/* 1B7F0 8002AFF0 7CAA000C */  jal        vsync_8002a9f0
/* 1B7F4 8002AFF4 00000000 */   nop
.L8002AFF8:
/* 1B7F8 8002AFF8 00006296 */  lhu        $v0, ($s3)
/* 1B7FC 8002AFFC 02007326 */  addiu      $s3, $s3, 2
/* 1B800 8002B000 FFFF1026 */  addiu      $s0, $s0, -1
/* 1B804 8002B004 000042A6 */  sh         $v0, ($s2)
/* 1B808 8002B008 F6FF1416 */  bne        $s0, $s4, .L8002AFE4
/* 1B80C 8002B00C 02005226 */   addiu     $s2, $s2, 2
.L8002B010:
/* 1B810 8002B010 0000E28E */  lw         $v0, ($s7)
/* 1B814 8002B014 0000F2AE */  sw         $s2, ($s7)
/* 1B818 8002B018 23104202 */  subu       $v0, $s2, $v0
/* 1B81C 8002B01C 17AC0008 */  j          .L8002B05C
/* 1B820 8002B020 E4ABC2AF */   sw        $v0, -0x541c($fp)
.L8002B024:
/* 1B824 8002B024 21A8B102 */  addu       $s5, $s5, $s1
/* 1B828 8002B028 1000A58F */  lw         $a1, 0x10($sp)
/* 1B82C 8002B02C 98AA000C */  jal        FUN_8002aa60
/* 1B830 8002B030 23889102 */   subu      $s1, $s4, $s1
/* 1B834 8002B034 16AC0008 */  j          .L8002B058
/* 1B838 8002B038 1580033C */   lui       $v1, 0x8015
.L8002B03C:
/* 1B83C 8002B03C 21A8B102 */  addu       $s5, $s5, $s1
/* 1B840 8002B040 1000A58F */  lw         $a1, 0x10($sp)
/* 1B844 8002B044 ABBE000C */  jal        FUN_8002faac
/* 1B848 8002B048 23889102 */   subu      $s1, $s4, $s1
/* 1B84C 8002B04C 26C1000C */  jal        FUN_80030498
/* 1B850 8002B050 00000000 */   nop
/* 1B854 8002B054 1580033C */  lui        $v1, %hi(D_8014ABE4)
.L8002B058:
/* 1B858 8002B058 E4AB62AC */  sw         $v0, %lo(D_8014ABE4)($v1)
.L8002B05C:
/* 1B85C 8002B05C 7CAA000C */  jal        vsync_8002a9f0
/* 1B860 8002B060 21A02002 */   addu      $s4, $s1, $zero
/* 1B864 8002B064 97FF8016 */  bnez       $s4, .L8002AEC4
/* 1B868 8002B068 82261500 */   srl       $a0, $s5, 0x1a
.L8002B06C:
/* 1B86C 8002B06C 1400A48F */  lw         $a0, 0x14($sp)
/* 1B870 8002B070 1580033C */  lui        $v1, %hi(D_8014ABE0)
/* 1B874 8002B074 E0AB60AC */  sw         $zero, %lo(D_8014ABE0)($v1)
/* 1B878 8002B078 57F0020C */  jal        FUN_800bc15c
/* 1B87C 8002B07C 00000000 */   nop
/* 1B880 8002B080 1800A48F */  lw         $a0, 0x18($sp)
/* 1B884 8002B084 34F0020C */  jal        FUN_800bc0d0
/* 1B888 8002B088 00000000 */   nop
/* 1B88C 8002B08C 21100000 */  addu       $v0, $zero, $zero
.L8002B090:
/* 1B890 8002B090 4400BF8F */  lw         $ra, 0x44($sp)
/* 1B894 8002B094 4000BE8F */  lw         $fp, 0x40($sp)
/* 1B898 8002B098 3C00B78F */  lw         $s7, 0x3c($sp)
/* 1B89C 8002B09C 3800B68F */  lw         $s6, 0x38($sp)
/* 1B8A0 8002B0A0 3400B58F */  lw         $s5, 0x34($sp)
/* 1B8A4 8002B0A4 3000B48F */  lw         $s4, 0x30($sp)
/* 1B8A8 8002B0A8 2C00B38F */  lw         $s3, 0x2c($sp)
/* 1B8AC 8002B0AC 2800B28F */  lw         $s2, 0x28($sp)
/* 1B8B0 8002B0B0 2400B18F */  lw         $s1, 0x24($sp)
/* 1B8B4 8002B0B4 2000B08F */  lw         $s0, 0x20($sp)
/* 1B8B8 8002B0B8 0800E003 */  jr         $ra
/* 1B8BC 8002B0BC 4800BD27 */   addiu     $sp, $sp, 0x48
