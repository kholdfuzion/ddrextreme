.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800acf8c
/* 9D78C 800ACF8C B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 9D790 800ACF90 3000B4AF */  sw         $s4, 0x30($sp)
/* 9D794 800ACF94 21A08000 */  addu       $s4, $a0, $zero
/* 9D798 800ACF98 02000624 */  addiu      $a2, $zero, 2
/* 9D79C 800ACF9C 4400BFAF */  sw         $ra, 0x44($sp)
/* 9D7A0 800ACFA0 4000BEAF */  sw         $fp, 0x40($sp)
/* 9D7A4 800ACFA4 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 9D7A8 800ACFA8 3800B6AF */  sw         $s6, 0x38($sp)
/* 9D7AC 800ACFAC 3400B5AF */  sw         $s5, 0x34($sp)
/* 9D7B0 800ACFB0 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 9D7B4 800ACFB4 2800B2AF */  sw         $s2, 0x28($sp)
/* 9D7B8 800ACFB8 2400B1AF */  sw         $s1, 0x24($sp)
/* 9D7BC 800ACFBC 4000A610 */  beq        $a1, $a2, .L800AD0C0
/* 9D7C0 800ACFC0 2000B0AF */   sw        $s0, 0x20($sp)
/* 9D7C4 800ACFC4 0300A228 */  slti       $v0, $a1, 3
/* 9D7C8 800ACFC8 05004010 */  beqz       $v0, .L800ACFE0
/* 9D7CC 800ACFCC 00000000 */   nop
/* 9D7D0 800ACFD0 0800A010 */  beqz       $a1, .L800ACFF4
/* 9D7D4 800ACFD4 0F80023C */   lui       $v0, 0x800f
/* 9D7D8 800ACFD8 F9B40208 */  j          .L800AD3E4
/* 9D7DC 800ACFDC 00000000 */   nop
.L800ACFE0:
/* 9D7E0 800ACFE0 03000224 */  addiu      $v0, $zero, 3
/* 9D7E4 800ACFE4 7800A210 */  beq        $a1, $v0, .L800AD1C8
/* 9D7E8 800ACFE8 C0291400 */   sll       $a1, $s4, 7
/* 9D7EC 800ACFEC F9B40208 */  j          .L800AD3E4
/* 9D7F0 800ACFF0 00000000 */   nop
.L800ACFF4:
/* 9D7F4 800ACFF4 28004424 */  addiu      $a0, $v0, 0x28
/* 9D7F8 800ACFF8 8A008390 */  lbu        $v1, 0x8a($a0)
/* 9D7FC 800ACFFC 00000000 */  nop
/* 9D800 800AD000 07006610 */  beq        $v1, $a2, .L800AD020
/* 9D804 800AD004 32000524 */   addiu     $a1, $zero, 0x32
/* 9D808 800AD008 0100023C */  lui        $v0, 1
/* 9D80C 800AD00C 21108200 */  addu       $v0, $a0, $v0
/* 9D810 800AD010 06434390 */  lbu        $v1, 0x4306($v0)
/* 9D814 800AD014 00000000 */  nop
/* 9D818 800AD018 03006614 */  bne        $v1, $a2, .L800AD028
/* 9D81C 800AD01C 2130A000 */   addu      $a2, $a1, $zero
.L800AD020:
/* 9D820 800AD020 53000524 */  addiu      $a1, $zero, 0x53
/* 9D824 800AD024 2130A000 */  addu       $a2, $a1, $zero
.L800AD028:
/* 9D828 800AD028 1C80033C */  lui        $v1, %hi(D_801C4678)
/* 9D82C 800AD02C 21286000 */  addu       $a1, $v1, $zero
/* 9D830 800AD030 C0111400 */  sll        $v0, $s4, 7
/* 9D834 800AD034 21484000 */  addu       $t1, $v0, $zero
/* 9D838 800AD038 78466824 */  addiu      $t0, $v1, %lo(D_801C4678)
/* 9D83C 800AD03C 21105400 */  addu       $v0, $v0, $s4
/* 9D840 800AD040 C0390200 */  sll        $a3, $v0, 7
/* 9D844 800AD044 21180701 */  addu       $v1, $t0, $a3
/* 9D848 800AD048 01000424 */  addiu      $a0, $zero, 1
/* 9D84C 800AD04C 21106000 */  addu       $v0, $v1, $zero
/* 9D850 800AD050 024064A0 */  sb         $a0, 0x4002($v1)
/* 9D854 800AD054 034044A0 */  sb         $a0, 0x4003($v0)
/* 9D858 800AD058 044064A0 */  sb         $a0, 0x4004($v1)
/* 9D85C 800AD05C 054044A0 */  sb         $a0, 0x4005($v0)
/* 9D860 800AD060 2100C424 */  addiu      $a0, $a2, 0x21
/* 9D864 800AD064 2A10C400 */  slt        $v0, $a2, $a0
/* 9D868 800AD068 0A004010 */  beqz       $v0, .L800AD094
/* 9D86C 800AD06C 00400225 */   addiu     $v0, $t0, 0x4000
/* 9D870 800AD070 2110E200 */  addu       $v0, $a3, $v0
/* 9D874 800AD074 2118C200 */  addu       $v1, $a2, $v0
/* 9D878 800AD078 23308600 */  subu       $a2, $a0, $a2
.L800AD07C:
/* 9D87C 800AD07C 00006290 */  lbu        $v0, ($v1)
/* 9D880 800AD080 FFFFC624 */  addiu      $a2, $a2, -1
/* 9D884 800AD084 01004234 */  ori        $v0, $v0, 1
/* 9D888 800AD088 000062A0 */  sb         $v0, ($v1)
/* 9D88C 800AD08C FBFFC014 */  bnez       $a2, .L800AD07C
/* 9D890 800AD090 01006324 */   addiu     $v1, $v1, 1
.L800AD094:
/* 9D894 800AD094 7846A524 */  addiu      $a1, $a1, 0x4678
/* 9D898 800AD098 21183401 */  addu       $v1, $t1, $s4
/* 9D89C 800AD09C C0190300 */  sll        $v1, $v1, 7
/* 9D8A0 800AD0A0 2130A300 */  addu       $a2, $a1, $v1
/* 9D8A4 800AD0A4 01000424 */  addiu      $a0, $zero, 1
/* 9D8A8 800AD0A8 2110C000 */  addu       $v0, $a2, $zero
/* 9D8AC 800AD0AC 21284000 */  addu       $a1, $v0, $zero
/* 9D8B0 800AD0B0 7440C4A0 */  sb         $a0, 0x4074($a2)
/* 9D8B4 800AD0B4 754044A0 */  sb         $a0, 0x4075($v0)
/* 9D8B8 800AD0B8 F9B40208 */  j          .L800AD3E4
/* 9D8BC 800AD0BC 7740A4A0 */   sb        $a0, 0x4077($a1)
.L800AD0C0:
/* 9D8C0 800AD0C0 53000824 */  addiu      $t0, $zero, 0x53
/* 9D8C4 800AD0C4 0F80073C */  lui        $a3, 0x800f
/* 9D8C8 800AD0C8 1C80053C */  lui        $a1, 0x801c
/* 9D8CC 800AD0CC 1D80023C */  lui        $v0, %hi(D_801CC778)
/* 9D8D0 800AD0D0 78C74224 */  addiu      $v0, $v0, %lo(D_801CC778)
/* 9D8D4 800AD0D4 C0181400 */  sll        $v1, $s4, 3
/* 9D8D8 800AD0D8 23187400 */  subu       $v1, $v1, $s4
/* 9D8DC 800AD0DC 80180300 */  sll        $v1, $v1, 2
/* 9D8E0 800AD0E0 21187400 */  addu       $v1, $v1, $s4
/* 9D8E4 800AD0E4 C0180300 */  sll        $v1, $v1, 3
/* 9D8E8 800AD0E8 21186200 */  addu       $v1, $v1, $v0
/* 9D8EC 800AD0EC 0000648C */  lw         $a0, ($v1)
/* 9D8F0 800AD0F0 00000000 */  nop
/* 9D8F4 800AD0F4 0D008010 */  beqz       $a0, .L800AD12C
/* 9D8F8 800AD0F8 C0491400 */   sll       $t1, $s4, 7
/* 9D8FC 800AD0FC 7846A324 */  addiu      $v1, $a1, 0x4678
/* 9D900 800AD100 21103401 */  addu       $v0, $t1, $s4
/* 9D904 800AD104 C0110200 */  sll        $v0, $v0, 7
/* 9D908 800AD108 21186200 */  addu       $v1, $v1, $v0
/* 9D90C 800AD10C 06406324 */  addiu      $v1, $v1, 0x4006
/* 9D910 800AD110 2B000624 */  addiu      $a2, $zero, 0x2b
.L800AD114:
/* 9D914 800AD114 00006290 */  lbu        $v0, ($v1)
/* 9D918 800AD118 FFFFC624 */  addiu      $a2, $a2, -1
/* 9D91C 800AD11C 01004234 */  ori        $v0, $v0, 1
/* 9D920 800AD120 000062A0 */  sb         $v0, ($v1)
/* 9D924 800AD124 FBFFC104 */  bgez       $a2, .L800AD114
/* 9D928 800AD128 01006324 */   addiu     $v1, $v1, 1
.L800AD12C:
/* 9D92C 800AD12C 2800E324 */  addiu      $v1, $a3, 0x28
/* 9D930 800AD130 8A006290 */  lbu        $v0, 0x8a($v1)
/* 9D934 800AD134 02000424 */  addiu      $a0, $zero, 2
/* 9D938 800AD138 06004410 */  beq        $v0, $a0, .L800AD154
/* 9D93C 800AD13C 0100023C */   lui       $v0, 1
/* 9D940 800AD140 21106200 */  addu       $v0, $v1, $v0
/* 9D944 800AD144 06434390 */  lbu        $v1, 0x4306($v0)
/* 9D948 800AD148 00000000 */  nop
/* 9D94C 800AD14C 03006414 */  bne        $v1, $a0, .L800AD15C
/* 9D950 800AD150 21300001 */   addu      $a2, $t0, $zero
.L800AD154:
/* 9D954 800AD154 32000824 */  addiu      $t0, $zero, 0x32
/* 9D958 800AD158 21300001 */  addu       $a2, $t0, $zero
.L800AD15C:
/* 9D95C 800AD15C 2100C724 */  addiu      $a3, $a2, 0x21
/* 9D960 800AD160 2A10C700 */  slt        $v0, $a2, $a3
/* 9D964 800AD164 11004010 */  beqz       $v0, .L800AD1AC
/* 9D968 800AD168 1C80033C */   lui       $v1, %hi(D_801C4678)
/* 9D96C 800AD16C 78466324 */  addiu      $v1, $v1, %lo(D_801C4678)
/* 9D970 800AD170 21103401 */  addu       $v0, $t1, $s4
/* 9D974 800AD174 C0110200 */  sll        $v0, $v0, 7
/* 9D978 800AD178 00406324 */  addiu      $v1, $v1, 0x4000
/* 9D97C 800AD17C 21104300 */  addu       $v0, $v0, $v1
/* 9D980 800AD180 2120C200 */  addu       $a0, $a2, $v0
/* 9D984 800AD184 2330E600 */  subu       $a2, $a3, $a2
.L800AD188:
/* 9D988 800AD188 00008390 */  lbu        $v1, ($a0)
/* 9D98C 800AD18C 00000000 */  nop
/* 9D990 800AD190 02006230 */  andi       $v0, $v1, 2
/* 9D994 800AD194 02004010 */  beqz       $v0, .L800AD1A0
/* 9D998 800AD198 01006234 */   ori       $v0, $v1, 1
/* 9D99C 800AD19C 000082A0 */  sb         $v0, ($a0)
.L800AD1A0:
/* 9D9A0 800AD1A0 FFFFC624 */  addiu      $a2, $a2, -1
/* 9D9A4 800AD1A4 F8FFC014 */  bnez       $a2, .L800AD188
/* 9D9A8 800AD1A8 01008424 */   addiu     $a0, $a0, 1
.L800AD1AC:
/* 9D9AC 800AD1AC 7846A224 */  addiu      $v0, $a1, 0x4678
/* 9D9B0 800AD1B0 21183401 */  addu       $v1, $t1, $s4
/* 9D9B4 800AD1B4 C0190300 */  sll        $v1, $v1, 7
/* 9D9B8 800AD1B8 21104300 */  addu       $v0, $v0, $v1
/* 9D9BC 800AD1BC 01000424 */  addiu      $a0, $zero, 1
/* 9D9C0 800AD1C0 F9B40208 */  j          .L800AD3E4
/* 9D9C4 800AD1C4 764044A0 */   sb        $a0, 0x4076($v0)
.L800AD1C8:
/* 9D9C8 800AD1C8 2128B400 */  addu       $a1, $a1, $s4
/* 9D9CC 800AD1CC C0290500 */  sll        $a1, $a1, 7
/* 9D9D0 800AD1D0 1C80023C */  lui        $v0, %hi(D_801C47F8)
/* 9D9D4 800AD1D4 F8474224 */  addiu      $v0, $v0, %lo(D_801C47F8)
/* 9D9D8 800AD1D8 2118A200 */  addu       $v1, $a1, $v0
/* 9D9DC 800AD1DC 1000A3AF */  sw         $v1, 0x10($sp)
/* 9D9E0 800AD1E0 80014324 */  addiu      $v1, $v0, 0x180
/* 9D9E4 800AD1E4 2118A300 */  addu       $v1, $a1, $v1
/* 9D9E8 800AD1E8 80174424 */  addiu      $a0, $v0, 0x1780
/* 9D9EC 800AD1EC 21F0A400 */  addu       $fp, $a1, $a0
/* 9D9F0 800AD1F0 00284224 */  addiu      $v0, $v0, 0x2800
/* 9D9F4 800AD1F4 1400A3AF */  sw         $v1, 0x14($sp)
/* 9D9F8 800AD1F8 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 9D9FC 800AD1FC 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 9DA00 800AD200 8A006490 */  lbu        $a0, 0x8a($v1)
/* 9DA04 800AD204 00000000 */  nop
/* 9DA08 800AD208 07008610 */  beq        $a0, $a2, .L800AD228
/* 9DA0C 800AD20C 21B8A200 */   addu      $s7, $a1, $v0
/* 9DA10 800AD210 0100023C */  lui        $v0, 1
/* 9DA14 800AD214 21106200 */  addu       $v0, $v1, $v0
/* 9DA18 800AD218 06434390 */  lbu        $v1, 0x4306($v0)
/* 9DA1C 800AD21C 00000000 */  nop
/* 9DA20 800AD220 02006614 */  bne        $v1, $a2, .L800AD22C
/* 9DA24 800AD224 2198C003 */   addu      $s3, $fp, $zero
.L800AD228:
/* 9DA28 800AD228 2198E002 */  addu       $s3, $s7, $zero
.L800AD22C:
/* 9DA2C 800AD22C C0801400 */  sll        $s0, $s4, 3
/* 9DA30 800AD230 1D80033C */  lui        $v1, %hi(D_801CC778)
/* 9DA34 800AD234 78C76524 */  addiu      $a1, $v1, %lo(D_801CC778)
/* 9DA38 800AD238 23101402 */  subu       $v0, $s0, $s4
/* 9DA3C 800AD23C 80100200 */  sll        $v0, $v0, 2
/* 9DA40 800AD240 21105400 */  addu       $v0, $v0, $s4
/* 9DA44 800AD244 C0200200 */  sll        $a0, $v0, 3
/* 9DA48 800AD248 21188500 */  addu       $v1, $a0, $a1
/* 9DA4C 800AD24C 0000628C */  lw         $v0, ($v1)
/* 9DA50 800AD250 21900000 */  addu       $s2, $zero, $zero
/* 9DA54 800AD254 63004018 */  blez       $v0, .L800AD3E4
/* 9DA58 800AD258 1800B0AF */   sw        $s0, 0x18($sp)
/* 9DA5C 800AD25C 21A8A000 */  addu       $s5, $a1, $zero
/* 9DA60 800AD260 21B08000 */  addu       $s6, $a0, $zero
/* 9DA64 800AD264 80881200 */  sll        $s1, $s2, 2
.L800AD268:
/* 9DA68 800AD268 23801402 */  subu       $s0, $s0, $s4
/* 9DA6C 800AD26C 80801000 */  sll        $s0, $s0, 2
/* 9DA70 800AD270 21801402 */  addu       $s0, $s0, $s4
/* 9DA74 800AD274 C0801000 */  sll        $s0, $s0, 3
/* 9DA78 800AD278 21803002 */  addu       $s0, $s1, $s0
/* 9DA7C 800AD27C 2110B002 */  addu       $v0, $s5, $s0
/* 9DA80 800AD280 0800448C */  lw         $a0, 8($v0)
/* 9DA84 800AD284 1BA2020C */  jal        FUN_800a886c
/* 9DA88 800AD288 21883602 */   addu      $s1, $s1, $s6
/* 9DA8C 800AD28C 1D80043C */  lui        $a0, %hi(D_801CC79C)
/* 9DA90 800AD290 9CC78424 */  addiu      $a0, $a0, %lo(D_801CC79C)
/* 9DA94 800AD294 21800402 */  addu       $s0, $s0, $a0
/* 9DA98 800AD298 0000048E */  lw         $a0, ($s0)
/* 9DA9C 800AD29C 14004594 */  lhu        $a1, 0x14($v0)
/* 9DAA0 800AD2A0 1000A68F */  lw         $a2, 0x10($sp)
/* 9DAA4 800AD2A4 40180400 */  sll        $v1, $a0, 1
/* 9DAA8 800AD2A8 21186600 */  addu       $v1, $v1, $a2
/* 9DAAC 800AD2AC 000065A4 */  sh         $a1, ($v1)
/* 9DAB0 800AD2B0 7C00458C */  lw         $a1, 0x7c($v0)
/* 9DAB4 800AD2B4 1400A28F */  lw         $v0, 0x14($sp)
/* 9DAB8 800AD2B8 40210400 */  sll        $a0, $a0, 5
/* 9DABC 800AD2BC 057C000C */  jal        strcpy
/* 9DAC0 800AD2C0 21204400 */   addu      $a0, $v0, $a0
/* 9DAC4 800AD2C4 21400000 */  addu       $t0, $zero, $zero
/* 9DAC8 800AD2C8 01004B26 */  addiu      $t3, $s2, 1
/* 9DACC 800AD2CC 1D80033C */  lui        $v1, %hi(D_801CC79C)
/* 9DAD0 800AD2D0 9CC76324 */  addiu      $v1, $v1, %lo(D_801CC79C)
/* 9DAD4 800AD2D4 21502302 */  addu       $t2, $s1, $v1
/* 9DAD8 800AD2D8 40181200 */  sll        $v1, $s2, 1
/* 9DADC 800AD2DC 21187200 */  addu       $v1, $v1, $s2
/* 9DAE0 800AD2E0 C0180300 */  sll        $v1, $v1, 3
/* 9DAE4 800AD2E4 4100C226 */  addiu      $v0, $s6, 0x41
/* 9DAE8 800AD2E8 21106200 */  addu       $v0, $v1, $v0
/* 9DAEC 800AD2EC 21485500 */  addu       $t1, $v0, $s5
/* 9DAF0 800AD2F0 21887600 */  addu       $s1, $v1, $s6
/* 9DAF4 800AD2F4 0000048E */  lw         $a0, ($s0)
/* 9DAF8 800AD2F8 21382002 */  addu       $a3, $s1, $zero
/* 9DAFC 800AD2FC 40100400 */  sll        $v0, $a0, 1
/* 9DB00 800AD300 21104400 */  addu       $v0, $v0, $a0
/* 9DB04 800AD304 C0100200 */  sll        $v0, $v0, 3
/* 9DB08 800AD308 21185E00 */  addu       $v1, $v0, $fp
/* 9DB0C 800AD30C 00000492 */  lbu        $a0, ($s0)
/* 9DB10 800AD310 21105700 */  addu       $v0, $v0, $s7
/* 9DB14 800AD314 000064A0 */  sb         $a0, ($v1)
/* 9DB18 800AD318 000044A0 */  sb         $a0, ($v0)
.L800AD31C:
/* 9DB1C 800AD31C 1D80043C */  lui        $a0, %hi(D_801CC7C8)
/* 9DB20 800AD320 C8C78424 */  addiu      $a0, $a0, %lo(D_801CC7C8)
/* 9DB24 800AD324 2130E400 */  addu       $a2, $a3, $a0
/* 9DB28 800AD328 0200E724 */  addiu      $a3, $a3, 2
/* 9DB2C 800AD32C 80280800 */  sll        $a1, $t0, 2
/* 9DB30 800AD330 1D80043C */  lui        $a0, %hi(D_801CC7BC)
/* 9DB34 800AD334 0000438D */  lw         $v1, ($t2)
/* 9DB38 800AD338 BCC78424 */  addiu      $a0, $a0, %lo(D_801CC7BC)
/* 9DB3C 800AD33C 40100300 */  sll        $v0, $v1, 1
/* 9DB40 800AD340 21104300 */  addu       $v0, $v0, $v1
/* 9DB44 800AD344 C0100200 */  sll        $v0, $v0, 3
/* 9DB48 800AD348 21105300 */  addu       $v0, $v0, $s3
/* 9DB4C 800AD34C 21182402 */  addu       $v1, $s1, $a0
/* 9DB50 800AD350 21104500 */  addu       $v0, $v0, $a1
/* 9DB54 800AD354 0000648C */  lw         $a0, ($v1)
/* 9DB58 800AD358 04003126 */  addiu      $s1, $s1, 4
/* 9DB5C 800AD35C 040044AC */  sw         $a0, 4($v0)
/* 9DB60 800AD360 0000438D */  lw         $v1, ($t2)
/* 9DB64 800AD364 0000C494 */  lhu        $a0, ($a2)
/* 9DB68 800AD368 40100300 */  sll        $v0, $v1, 1
/* 9DB6C 800AD36C 21104300 */  addu       $v0, $v0, $v1
/* 9DB70 800AD370 C0100200 */  sll        $v0, $v0, 3
/* 9DB74 800AD374 21105300 */  addu       $v0, $v0, $s3
/* 9DB78 800AD378 40180800 */  sll        $v1, $t0, 1
/* 9DB7C 800AD37C 21104300 */  addu       $v0, $v0, $v1
/* 9DB80 800AD380 100044A4 */  sh         $a0, 0x10($v0)
/* 9DB84 800AD384 0000438D */  lw         $v1, ($t2)
/* 9DB88 800AD388 00002491 */  lbu        $a0, ($t1)
/* 9DB8C 800AD38C 01002925 */  addiu      $t1, $t1, 1
/* 9DB90 800AD390 40100300 */  sll        $v0, $v1, 1
/* 9DB94 800AD394 21104300 */  addu       $v0, $v0, $v1
/* 9DB98 800AD398 C0100200 */  sll        $v0, $v0, 3
/* 9DB9C 800AD39C 21105300 */  addu       $v0, $v0, $s3
/* 9DBA0 800AD3A0 21104800 */  addu       $v0, $v0, $t0
/* 9DBA4 800AD3A4 01000825 */  addiu      $t0, $t0, 1
/* 9DBA8 800AD3A8 03000329 */  slti       $v1, $t0, 3
/* 9DBAC 800AD3AC DBFF6014 */  bnez       $v1, .L800AD31C
/* 9DBB0 800AD3B0 010044A0 */   sb        $a0, 1($v0)
/* 9DBB4 800AD3B4 1800B08F */  lw         $s0, 0x18($sp)
/* 9DBB8 800AD3B8 00000000 */  nop
/* 9DBBC 800AD3BC 23101402 */  subu       $v0, $s0, $s4
/* 9DBC0 800AD3C0 80100200 */  sll        $v0, $v0, 2
/* 9DBC4 800AD3C4 21105400 */  addu       $v0, $v0, $s4
/* 9DBC8 800AD3C8 C0100200 */  sll        $v0, $v0, 3
/* 9DBCC 800AD3CC 21105500 */  addu       $v0, $v0, $s5
/* 9DBD0 800AD3D0 0000438C */  lw         $v1, ($v0)
/* 9DBD4 800AD3D4 21906001 */  addu       $s2, $t3, $zero
/* 9DBD8 800AD3D8 2A184302 */  slt        $v1, $s2, $v1
/* 9DBDC 800AD3DC A2FF6014 */  bnez       $v1, .L800AD268
/* 9DBE0 800AD3E0 80881200 */   sll       $s1, $s2, 2
.L800AD3E4:
/* 9DBE4 800AD3E4 4400BF8F */  lw         $ra, 0x44($sp)
/* 9DBE8 800AD3E8 4000BE8F */  lw         $fp, 0x40($sp)
/* 9DBEC 800AD3EC 3C00B78F */  lw         $s7, 0x3c($sp)
/* 9DBF0 800AD3F0 3800B68F */  lw         $s6, 0x38($sp)
/* 9DBF4 800AD3F4 3400B58F */  lw         $s5, 0x34($sp)
/* 9DBF8 800AD3F8 3000B48F */  lw         $s4, 0x30($sp)
/* 9DBFC 800AD3FC 2C00B38F */  lw         $s3, 0x2c($sp)
/* 9DC00 800AD400 2800B28F */  lw         $s2, 0x28($sp)
/* 9DC04 800AD404 2400B18F */  lw         $s1, 0x24($sp)
/* 9DC08 800AD408 2000B08F */  lw         $s0, 0x20($sp)
/* 9DC0C 800AD40C 0800E003 */  jr         $ra
/* 9DC10 800AD410 4800BD27 */   addiu     $sp, $sp, 0x48
