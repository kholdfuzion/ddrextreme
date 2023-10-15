.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel decodefile_8002cf74
/* 1D774 8002CF74 D0BFBD27 */  addiu      $sp, $sp, -0x4030
/* 1D778 8002CF78 2840B4AF */  sw         $s4, 0x4028($sp)
/* 1D77C 8002CF7C 21A0A000 */  addu       $s4, $a1, $zero
/* 1D780 8002CF80 2C40BFAF */  sw         $ra, 0x402c($sp)
/* 1D784 8002CF84 2440B3AF */  sw         $s3, 0x4024($sp)
/* 1D788 8002CF88 2040B2AF */  sw         $s2, 0x4020($sp)
/* 1D78C 8002CF8C 1C40B1AF */  sw         $s1, 0x401c($sp)
/* 1D790 8002CF90 03008014 */  bnez       $a0, .L8002CFA0
/* 1D794 8002CF94 1840B0AF */   sw        $s0, 0x4018($sp)
/* 1D798 8002CF98 2BB40008 */  j          .L8002D0AC
/* 1D79C 8002CF9C FFFF0224 */   addiu     $v0, $zero, -1
.L8002CFA0:
/* 1D7A0 8002CFA0 1040A527 */  addiu      $a1, $sp, 0x4010
/* 1D7A4 8002CFA4 F9AA000C */  jal        hashname_getfromflash_8002abe4
/* 1D7A8 8002CFA8 1440A627 */   addiu     $a2, $sp, 0x4014
/* 1D7AC 8002CFAC 21804000 */  addu       $s0, $v0, $zero
/* 1D7B0 8002CFB0 FF000232 */  andi       $v0, $s0, 0xff
/* 1D7B4 8002CFB4 32004014 */  bnez       $v0, .L8002D080
/* 1D7B8 8002CFB8 00000000 */   nop
/* 1D7BC 8002CFBC 1440A38F */  lw         $v1, 0x4014($sp)
/* 1D7C0 8002CFC0 00000000 */  nop
/* 1D7C4 8002CFC4 0140622C */  sltiu      $v0, $v1, 0x4001
/* 1D7C8 8002CFC8 0F004010 */  beqz       $v0, .L8002D008
/* 1D7CC 8002CFCC FF076524 */   addiu     $a1, $v1, 0x7ff
/* 1D7D0 8002CFD0 1040A48F */  lw         $a0, 0x4010($sp)
/* 1D7D4 8002CFD4 0300A104 */  bgez       $a1, .L8002CFE4
/* 1D7D8 8002CFD8 C32A0500 */   sra       $a1, $a1, 0xb
/* 1D7DC 8002CFDC FE0F6524 */  addiu      $a1, $v1, 0xffe
/* 1D7E0 8002CFE0 C32A0500 */  sra        $a1, $a1, 0xb
.L8002CFE4:
/* 1D7E4 8002CFE4 1000A627 */  addiu      $a2, $sp, 0x10
/* 1D7E8 8002CFE8 96AB000C */  jal        FUN_8002ae58
/* 1D7EC 8002CFEC 21380002 */   addu      $a3, $s0, $zero
/* 1D7F0 8002CFF0 21208002 */  addu       $a0, $s4, $zero
/* 1D7F4 8002CFF4 1440A68F */  lw         $a2, 0x4014($sp)
/* 1D7F8 8002CFF8 BD6B000C */  jal        memcpy
/* 1D7FC 8002CFFC 1000A527 */   addiu     $a1, $sp, 0x10
/* 1D800 8002D000 2AB40008 */  j          .L8002D0A8
/* 1D804 8002D004 00000000 */   nop
.L8002D008:
/* 1D808 8002D008 21106000 */  addu       $v0, $v1, $zero
/* 1D80C 8002D00C 02006104 */  bgez       $v1, .L8002D018
/* 1D810 8002D010 21988302 */   addu      $s3, $s4, $v1
/* 1D814 8002D014 FF076224 */  addiu      $v0, $v1, 0x7ff
.L8002D018:
/* 1D818 8002D018 1000B227 */  addiu      $s2, $sp, 0x10
/* 1D81C 8002D01C 21204002 */  addu       $a0, $s2, $zero
/* 1D820 8002D020 21286002 */  addu       $a1, $s3, $zero
/* 1D824 8002D024 C3120200 */  sra        $v0, $v0, 0xb
/* 1D828 8002D028 C0120200 */  sll        $v0, $v0, 0xb
/* 1D82C 8002D02C 23106200 */  subu       $v0, $v1, $v0
/* 1D830 8002D030 00080324 */  addiu      $v1, $zero, 0x800
/* 1D834 8002D034 23886200 */  subu       $s1, $v1, $v0
/* 1D838 8002D038 BD6B000C */  jal        memcpy
/* 1D83C 8002D03C 21302002 */   addu      $a2, $s1, $zero
/* 1D840 8002D040 1440A28F */  lw         $v0, 0x4014($sp)
/* 1D844 8002D044 1040A48F */  lw         $a0, 0x4010($sp)
/* 1D848 8002D048 FF074524 */  addiu      $a1, $v0, 0x7ff
/* 1D84C 8002D04C 0300A104 */  bgez       $a1, .L8002D05C
/* 1D850 8002D050 C32A0500 */   sra       $a1, $a1, 0xb
/* 1D854 8002D054 FE0F4524 */  addiu      $a1, $v0, 0xffe
/* 1D858 8002D058 C32A0500 */  sra        $a1, $a1, 0xb
.L8002D05C:
/* 1D85C 8002D05C 21308002 */  addu       $a2, $s4, $zero
/* 1D860 8002D060 96AB000C */  jal        FUN_8002ae58
/* 1D864 8002D064 21380002 */   addu      $a3, $s0, $zero
/* 1D868 8002D068 21206002 */  addu       $a0, $s3, $zero
/* 1D86C 8002D06C 21284002 */  addu       $a1, $s2, $zero
/* 1D870 8002D070 BD6B000C */  jal        memcpy
/* 1D874 8002D074 21302002 */   addu      $a2, $s1, $zero
/* 1D878 8002D078 2AB40008 */  j          .L8002D0A8
/* 1D87C 8002D07C 00000000 */   nop
.L8002D080:
/* 1D880 8002D080 1440A28F */  lw         $v0, 0x4014($sp)
/* 1D884 8002D084 1040A48F */  lw         $a0, 0x4010($sp)
/* 1D888 8002D088 FF074524 */  addiu      $a1, $v0, 0x7ff
/* 1D88C 8002D08C 0300A104 */  bgez       $a1, .L8002D09C
/* 1D890 8002D090 C32A0500 */   sra       $a1, $a1, 0xb
/* 1D894 8002D094 FE0F4524 */  addiu      $a1, $v0, 0xffe
/* 1D898 8002D098 C32A0500 */  sra        $a1, $a1, 0xb
.L8002D09C:
/* 1D89C 8002D09C 21308002 */  addu       $a2, $s4, $zero
/* 1D8A0 8002D0A0 96AB000C */  jal        FUN_8002ae58
/* 1D8A4 8002D0A4 21380002 */   addu      $a3, $s0, $zero
.L8002D0A8:
/* 1D8A8 8002D0A8 1440A28F */  lw         $v0, 0x4014($sp)
.L8002D0AC:
/* 1D8AC 8002D0AC 2C40BF8F */  lw         $ra, 0x402c($sp)
/* 1D8B0 8002D0B0 2840B48F */  lw         $s4, 0x4028($sp)
/* 1D8B4 8002D0B4 2440B38F */  lw         $s3, 0x4024($sp)
/* 1D8B8 8002D0B8 2040B28F */  lw         $s2, 0x4020($sp)
/* 1D8BC 8002D0BC 1C40B18F */  lw         $s1, 0x401c($sp)
/* 1D8C0 8002D0C0 1840B08F */  lw         $s0, 0x4018($sp)
/* 1D8C4 8002D0C4 0800E003 */  jr         $ra
/* 1D8C8 8002D0C8 3040BD27 */   addiu     $sp, $sp, 0x4030
