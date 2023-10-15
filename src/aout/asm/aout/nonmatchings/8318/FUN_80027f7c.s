.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80027f7c
/* 1877C 80027F7C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 18780 80027F80 FFFF063C */  lui        $a2, 0xffff
/* 18784 80027F84 FF0FC634 */  ori        $a2, $a2, 0xfff
/* 18788 80027F88 21200000 */  addu       $a0, $zero, $zero
/* 1878C 80027F8C 2400B1AF */  sw         $s1, 0x24($sp)
/* 18790 80027F90 1380113C */  lui        $s1, %hi(D_80129DA8)
/* 18794 80027F94 2000B0AF */  sw         $s0, 0x20($sp)
/* 18798 80027F98 A89D3026 */  addiu      $s0, $s1, %lo(D_80129DA8)
/* 1879C 80027F9C 01000224 */  addiu      $v0, $zero, 1
/* 187A0 80027FA0 04000326 */  addiu      $v1, $s0, 4
/* 187A4 80027FA4 2800BFAF */  sw         $ra, 0x28($sp)
/* 187A8 80027FA8 A89D20AE */  sw         $zero, -0x6258($s1)
/* 187AC 80027FAC 2C0C03AE */  sw         $v1, 0xc2c($s0)
/* 187B0 80027FB0 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 187B4 80027FB4 B00D02A2 */  sb         $v0, 0xdb0($s0)
/* 187B8 80027FB8 B40D028E */  lw         $v0, 0xdb4($s0)
/* 187BC 80027FBC F0FF0524 */  addiu      $a1, $zero, -0x10
/* 187C0 80027FC0 B10D00A2 */  sb         $zero, 0xdb1($s0)
/* 187C4 80027FC4 24104300 */  and        $v0, $v0, $v1
/* 187C8 80027FC8 24104500 */  and        $v0, $v0, $a1
/* 187CC 80027FCC 24104600 */  and        $v0, $v0, $a2
/* 187D0 80027FD0 FFF00324 */  addiu      $v1, $zero, -0xf01
/* 187D4 80027FD4 24104300 */  and        $v0, $v0, $v1
/* 187D8 80027FD8 5660000C */  jal        SetGraphDebug
/* 187DC 80027FDC B40D02AE */   sw        $v0, 0xdb4($s0)
/* 187E0 80027FE0 B40D078E */  lw         $a3, 0xdb4($s0)
/* 187E4 80027FE4 00000000 */  nop
/* 187E8 80027FE8 0F00E230 */  andi       $v0, $a3, 0xf
/* 187EC 80027FEC 0F004014 */  bnez       $v0, .L8002802C
/* 187F0 80027FF0 E0010524 */   addiu     $a1, $zero, 0x1e0
/* 187F4 80027FF4 1000A0AF */  sw         $zero, 0x10($sp)
/* 187F8 80027FF8 40010424 */  addiu      $a0, $zero, 0x140
/* 187FC 80027FFC F0000524 */  addiu      $a1, $zero, 0xf0
/* 18800 80028000 04000624 */  addiu      $a2, $zero, 4
/* 18804 80028004 023A0700 */  srl        $a3, $a3, 8
/* 18808 80028008 8284000C */  jal        GsInitGraph
/* 1880C 8002800C 0F00E730 */   andi      $a3, $a3, 0xf
/* 18810 80028010 21200000 */  addu       $a0, $zero, $zero
/* 18814 80028014 21280000 */  addu       $a1, $zero, $zero
/* 18818 80028018 21300000 */  addu       $a2, $zero, $zero
/* 1881C 8002801C D0A1000C */  jal        GsDefDispBuff
/* 18820 80028020 00010724 */   addiu     $a3, $zero, 0x100
/* 18824 80028024 16A00008 */  j          .L80028058
/* 18828 80028028 00000000 */   nop
.L8002802C:
/* 1882C 8002802C 1000A0AF */  sw         $zero, 0x10($sp)
/* 18830 80028030 80020424 */  addiu      $a0, $zero, 0x280
/* 18834 80028034 04000624 */  addiu      $a2, $zero, 4
/* 18838 80028038 023A0700 */  srl        $a3, $a3, 8
/* 1883C 8002803C 8284000C */  jal        GsInitGraph
/* 18840 80028040 0F00E730 */   andi      $a3, $a3, 0xf
/* 18844 80028044 21200000 */  addu       $a0, $zero, $zero
/* 18848 80028048 21280000 */  addu       $a1, $zero, $zero
/* 1884C 8002804C 21300000 */  addu       $a2, $zero, $zero
/* 18850 80028050 D0A1000C */  jal        GsDefDispBuff
/* 18854 80028054 21380000 */   addu      $a3, $zero, $zero
.L80028058:
/* 18858 80028058 D860000C */  jal        DrawSync
/* 1885C 8002805C 21200000 */   addu      $a0, $zero, $zero
/* 18860 80028060 1800A427 */  addiu      $a0, $sp, 0x18
/* 18864 80028064 FF000524 */  addiu      $a1, $zero, 0xff
/* 18868 80028068 FF000624 */  addiu      $a2, $zero, 0xff
/* 1886C 8002806C FF000724 */  addiu      $a3, $zero, 0xff
/* 18870 80028070 00040224 */  addiu      $v0, $zero, 0x400
/* 18874 80028074 00021024 */  addiu      $s0, $zero, 0x200
/* 18878 80028078 1800A0A7 */  sh         $zero, 0x18($sp)
/* 1887C 8002807C 1A00A0A7 */  sh         $zero, 0x1a($sp)
/* 18880 80028080 1C00A2A7 */  sh         $v0, 0x1c($sp)
/* 18884 80028084 3961000C */  jal        ClearImage
/* 18888 80028088 1E00B0A7 */   sh        $s0, 0x1e($sp)
/* 1888C 8002808C D860000C */  jal        DrawSync
/* 18890 80028090 21200000 */   addu      $a0, $zero, $zero
/* 18894 80028094 1800A427 */  addiu      $a0, $sp, 0x18
/* 18898 80028098 FF000524 */  addiu      $a1, $zero, 0xff
/* 1889C 8002809C FF000624 */  addiu      $a2, $zero, 0xff
/* 188A0 800280A0 FF000724 */  addiu      $a3, $zero, 0xff
/* 188A4 800280A4 3961000C */  jal        ClearImage
/* 188A8 800280A8 1A00B0A7 */   sh        $s0, 0x1a($sp)
/* 188AC 800280AC D860000C */  jal        DrawSync
/* 188B0 800280B0 21200000 */   addu      $a0, $zero, $zero
/* 188B4 800280B4 4A86000C */  jal        GsInit3D
/* 188B8 800280B8 00000000 */   nop
/* 188BC 800280BC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 188C0 800280C0 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 188C4 800280C4 300D4424 */  addiu      $a0, $v0, 0xd30
/* 188C8 800280C8 340C4224 */  addiu      $v0, $v0, 0xc34
/* 188CC 800280CC 1F000324 */  addiu      $v1, $zero, 0x1f
.L800280D0:
/* 188D0 800280D0 000040A4 */  sh         $zero, ($v0)
/* 188D4 800280D4 000080AC */  sw         $zero, ($a0)
/* 188D8 800280D8 04008424 */  addiu      $a0, $a0, 4
/* 188DC 800280DC FFFF6324 */  addiu      $v1, $v1, -1
/* 188E0 800280E0 FBFF6104 */  bgez       $v1, .L800280D0
/* 188E4 800280E4 08004224 */   addiu     $v0, $v0, 8
/* 188E8 800280E8 21200000 */  addu       $a0, $zero, $zero
/* 188EC 800280EC 21280000 */  addu       $a1, $zero, $zero
/* 188F0 800280F0 A89D3026 */  addiu      $s0, $s1, -0x6258
/* 188F4 800280F4 04000626 */  addiu      $a2, $s0, 4
/* 188F8 800280F8 1380023C */  lui        $v0, %hi(D_801291A0)
/* 188FC 800280FC A0914224 */  addiu      $v0, $v0, %lo(D_801291A0)
/* 18900 80028100 300D02AE */  sw         $v0, 0xd30($s0)
/* 18904 80028104 00044224 */  addiu      $v0, $v0, 0x400
/* 18908 80028108 08000324 */  addiu      $v1, $zero, 8
/* 1890C 8002810C 340D02AE */  sw         $v0, 0xd34($s0)
/* 18910 80028110 18000226 */  addiu      $v0, $s0, 0x18
/* 18914 80028114 180603AE */  sw         $v1, 0x618($s0)
/* 18918 80028118 040003AE */  sw         $v1, 4($s0)
/* 1891C 8002811C 2C060326 */  addiu      $v1, $s0, 0x62c
/* 18920 80028120 080002AE */  sw         $v0, 8($s0)
/* 18924 80028124 04A2000C */  jal        GsClearOt
/* 18928 80028128 1C0603AE */   sw        $v1, 0x61c($s0)
/* 1892C 8002812C 21200000 */  addu       $a0, $zero, $zero
/* 18930 80028130 21280000 */  addu       $a1, $zero, $zero
/* 18934 80028134 04A2000C */  jal        GsClearOt
/* 18938 80028138 18060626 */   addiu     $a2, $s0, 0x618
/* 1893C 8002813C 1CA2000C */  jal        FUN_80028870
/* 18940 80028140 18040426 */   addiu     $a0, $s0, 0x418
/* 18944 80028144 B260000C */  jal        SetDispMask
/* 18948 80028148 01000424 */   addiu     $a0, $zero, 1
/* 1894C 8002814C 7CAA000C */  jal        vsync_8002a9f0
/* 18950 80028150 00000000 */   nop
/* 18954 80028154 1D6E000C */  jal        FUN_8001b874
/* 18958 80028158 00000000 */   nop
/* 1895C 8002815C 0380043C */  lui        $a0, %hi(func_80028564)
/* 18960 80028160 7D6C000C */  jal        VSyncCallback
/* 18964 80028164 64858424 */   addiu     $a0, $a0, %lo(func_80028564)
/* 18968 80028168 0380043C */  lui        $a0, %hi(func_8002855C)
/* 1896C 8002816C 9A60000C */  jal        DrawSyncCallback
/* 18970 80028170 5C858424 */   addiu     $a0, $a0, %lo(func_8002855C)
/* 18974 80028174 216E000C */  jal        FUN_8001b884
/* 18978 80028178 00000000 */   nop
/* 1897C 8002817C 2800BF8F */  lw         $ra, 0x28($sp)
/* 18980 80028180 2400B18F */  lw         $s1, 0x24($sp)
/* 18984 80028184 2000B08F */  lw         $s0, 0x20($sp)
/* 18988 80028188 0800E003 */  jr         $ra
/* 1898C 8002818C 3000BD27 */   addiu     $sp, $sp, 0x30
