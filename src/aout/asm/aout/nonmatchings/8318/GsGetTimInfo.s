.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsGetTimInfo
/* F864 8001F064 0000828C */  lw         $v0, ($a0)
/* F868 8001F068 00000000 */  nop
/* F86C 8001F06C 0000A2AC */  sw         $v0, ($a1)
/* F870 8001F070 C2100200 */  srl        $v0, $v0, 3
/* F874 8001F074 01004230 */  andi       $v0, $v0, 1
/* F878 8001F078 23004010 */  beqz       $v0, .L8001F108
/* F87C 8001F07C 00000000 */   nop
/* F880 8001F080 04008424 */  addiu      $a0, $a0, 4
/* F884 8001F084 0000828C */  lw         $v0, ($a0)
/* F888 8001F088 00000000 */  nop
/* F88C 8001F08C 82100200 */  srl        $v0, $v0, 2
/* F890 8001F090 80100200 */  sll        $v0, $v0, 2
/* F894 8001F094 21108200 */  addu       $v0, $a0, $v0
/* F898 8001F098 04008424 */  addiu      $a0, $a0, 4
/* F89C 8001F09C 00008394 */  lhu        $v1, ($a0)
/* F8A0 8001F0A0 00000000 */  nop
/* F8A4 8001F0A4 1000A3A4 */  sh         $v1, 0x10($a1)
/* F8A8 8001F0A8 02008394 */  lhu        $v1, 2($a0)
/* F8AC 8001F0AC 04008424 */  addiu      $a0, $a0, 4
/* F8B0 8001F0B0 1200A3A4 */  sh         $v1, 0x12($a1)
/* F8B4 8001F0B4 00008394 */  lhu        $v1, ($a0)
/* F8B8 8001F0B8 04004224 */  addiu      $v0, $v0, 4
/* F8BC 8001F0BC 1400A3A4 */  sh         $v1, 0x14($a1)
/* F8C0 8001F0C0 02008394 */  lhu        $v1, 2($a0)
/* F8C4 8001F0C4 04008424 */  addiu      $a0, $a0, 4
/* F8C8 8001F0C8 1800A4AC */  sw         $a0, 0x18($a1)
/* F8CC 8001F0CC 1600A3A4 */  sh         $v1, 0x16($a1)
/* F8D0 8001F0D0 00004394 */  lhu        $v1, ($v0)
/* F8D4 8001F0D4 00000000 */  nop
/* F8D8 8001F0D8 0400A3A4 */  sh         $v1, 4($a1)
/* F8DC 8001F0DC 02004394 */  lhu        $v1, 2($v0)
/* F8E0 8001F0E0 04004224 */  addiu      $v0, $v0, 4
/* F8E4 8001F0E4 0600A3A4 */  sh         $v1, 6($a1)
/* F8E8 8001F0E8 00004394 */  lhu        $v1, ($v0)
/* F8EC 8001F0EC 00000000 */  nop
/* F8F0 8001F0F0 0800A3A4 */  sh         $v1, 8($a1)
/* F8F4 8001F0F4 02004394 */  lhu        $v1, 2($v0)
/* F8F8 8001F0F8 04004224 */  addiu      $v0, $v0, 4
/* F8FC 8001F0FC 0C00A2AC */  sw         $v0, 0xc($a1)
/* F900 8001F100 507C0008 */  j          GS_122_OBJ_DC
/* F904 8001F104 0A00A3A4 */   sh        $v1, 0xa($a1)
.L8001F108:
/* F908 8001F108 08008424 */  addiu      $a0, $a0, 8
/* F90C 8001F10C 00008294 */  lhu        $v0, ($a0)
/* F910 8001F110 00000000 */  nop
/* F914 8001F114 0400A2A4 */  sh         $v0, 4($a1)
/* F918 8001F118 02008294 */  lhu        $v0, 2($a0)
/* F91C 8001F11C 04008424 */  addiu      $a0, $a0, 4
/* F920 8001F120 0600A2A4 */  sh         $v0, 6($a1)
/* F924 8001F124 00008294 */  lhu        $v0, ($a0)
/* F928 8001F128 00000000 */  nop
/* F92C 8001F12C 0800A2A4 */  sh         $v0, 8($a1)
/* F930 8001F130 02008294 */  lhu        $v0, 2($a0)
/* F934 8001F134 04008424 */  addiu      $a0, $a0, 4
/* F938 8001F138 0C00A4AC */  sw         $a0, 0xc($a1)
/* F93C 8001F13C 0A00A2A4 */  sh         $v0, 0xa($a1)
