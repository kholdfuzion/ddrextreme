.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel OPT_BookkeepingMain_80032144
/* 22944 80032144 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 22948 80032148 5C00B1AF */  sw         $s1, 0x5c($sp)
/* 2294C 8003214C 21888000 */  addu       $s1, $a0, $zero
/* 22950 80032150 21200000 */  addu       $a0, $zero, $zero
/* 22954 80032154 D4FF0524 */  addiu      $a1, $zero, -0x2c
/* 22958 80032158 A0FF0624 */  addiu      $a2, $zero, -0x60
/* 2295C 8003215C 00100724 */  addiu      $a3, $zero, 0x1000
/* 22960 80032160 5800B0AF */  sw         $s0, 0x58($sp)
/* 22964 80032164 00101024 */  addiu      $s0, $zero, 0x1000
/* 22968 80032168 0180023C */  lui        $v0, %hi(D_800115C0)
/* 2296C 8003216C C0154224 */  addiu      $v0, $v0, %lo(D_800115C0)
/* 22970 80032170 6000BFAF */  sw         $ra, 0x60($sp)
/* 22974 80032174 1000B0AF */  sw         $s0, 0x10($sp)
/* 22978 80032178 290A010C */  jal        PrintText_800428a4
/* 2297C 8003217C 1400A2AF */   sw        $v0, 0x14($sp)
/* 22980 80032180 21200000 */  addu       $a0, $zero, $zero
/* 22984 80032184 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 22988 80032188 52000624 */  addiu      $a2, $zero, 0x52
/* 2298C 8003218C 00100724 */  addiu      $a3, $zero, 0x1000
/* 22990 80032190 0180023C */  lui        $v0, %hi(D_800115CC)
/* 22994 80032194 CC154224 */  addiu      $v0, $v0, %lo(D_800115CC)
/* 22998 80032198 1000B0AF */  sw         $s0, 0x10($sp)
/* 2299C 8003219C 290A010C */  jal        PrintText_800428a4
/* 229A0 800321A0 1400A2AF */   sw        $v0, 0x14($sp)
/* 229A4 800321A4 21200000 */  addu       $a0, $zero, $zero
/* 229A8 800321A8 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 229AC 800321AC 5C000624 */  addiu      $a2, $zero, 0x5c
/* 229B0 800321B0 00100724 */  addiu      $a3, $zero, 0x1000
/* 229B4 800321B4 0180023C */  lui        $v0, %hi(D_800115F0)
/* 229B8 800321B8 F0154224 */  addiu      $v0, $v0, %lo(D_800115F0)
/* 229BC 800321BC 1000B0AF */  sw         $s0, 0x10($sp)
/* 229C0 800321C0 290A010C */  jal        PrintText_800428a4
/* 229C4 800321C4 1400A2AF */   sw        $v0, 0x14($sp)
/* 229C8 800321C8 7CAA000C */  jal        vsync_8002a9f0
/* 229CC 800321CC 00000000 */   nop
/* 229D0 800321D0 2000A427 */  addiu      $a0, $sp, 0x20
/* 229D4 800321D4 03000324 */  addiu      $v1, $zero, 3
/* 229D8 800321D8 2C00A227 */  addiu      $v0, $sp, 0x2c
.L800321DC:
/* 229DC 800321DC 000040AC */  sw         $zero, ($v0)
/* 229E0 800321E0 FFFF6324 */  addiu      $v1, $v1, -1
/* 229E4 800321E4 FDFF6104 */  bgez       $v1, .L800321DC
/* 229E8 800321E8 FCFF4224 */   addiu     $v0, $v0, -4
/* 229EC 800321EC 8CFF0524 */  addiu      $a1, $zero, -0x74
/* 229F0 800321F0 B8FF0624 */  addiu      $a2, $zero, -0x48
/* 229F4 800321F4 00100724 */  addiu      $a3, $zero, 0x1000
/* 229F8 800321F8 80101100 */  sll        $v0, $s1, 2
/* 229FC 800321FC 21108200 */  addu       $v0, $a0, $v0
/* 22A00 80032200 02000324 */  addiu      $v1, $zero, 2
/* 22A04 80032204 00101024 */  addiu      $s0, $zero, 0x1000
/* 22A08 80032208 000043AC */  sw         $v1, ($v0)
/* 22A0C 8003220C 0180023C */  lui        $v0, %hi(D_80011614)
/* 22A10 80032210 2000A48F */  lw         $a0, 0x20($sp)
/* 22A14 80032214 14164224 */  addiu      $v0, $v0, %lo(D_80011614)
/* 22A18 80032218 1000B0AF */  sw         $s0, 0x10($sp)
/* 22A1C 8003221C 290A010C */  jal        PrintText_800428a4
/* 22A20 80032220 1400A2AF */   sw        $v0, 0x14($sp)
/* 22A24 80032224 8CFF0524 */  addiu      $a1, $zero, -0x74
/* 22A28 80032228 C4FF0624 */  addiu      $a2, $zero, -0x3c
/* 22A2C 8003222C 00100724 */  addiu      $a3, $zero, 0x1000
/* 22A30 80032230 0180023C */  lui        $v0, %hi(D_80011634)
/* 22A34 80032234 2400A48F */  lw         $a0, 0x24($sp)
/* 22A38 80032238 34164224 */  addiu      $v0, $v0, %lo(D_80011634)
/* 22A3C 8003223C 1000B0AF */  sw         $s0, 0x10($sp)
/* 22A40 80032240 290A010C */  jal        PrintText_800428a4
/* 22A44 80032244 1400A2AF */   sw        $v0, 0x14($sp)
/* 22A48 80032248 B0FF0524 */  addiu      $a1, $zero, -0x50
/* 22A4C 8003224C D0FF0624 */  addiu      $a2, $zero, -0x30
/* 22A50 80032250 00100724 */  addiu      $a3, $zero, 0x1000
/* 22A54 80032254 0180023C */  lui        $v0, %hi(D_80011654)
/* 22A58 80032258 2800A48F */  lw         $a0, 0x28($sp)
/* 22A5C 8003225C 54164224 */  addiu      $v0, $v0, %lo(D_80011654)
/* 22A60 80032260 1000B0AF */  sw         $s0, 0x10($sp)
/* 22A64 80032264 290A010C */  jal        PrintText_800428a4
/* 22A68 80032268 1400A2AF */   sw        $v0, 0x14($sp)
/* 22A6C 8003226C F0FF0524 */  addiu      $a1, $zero, -0x10
/* 22A70 80032270 DCFF0624 */  addiu      $a2, $zero, -0x24
/* 22A74 80032274 00100724 */  addiu      $a3, $zero, 0x1000
/* 22A78 80032278 0180023C */  lui        $v0, %hi(D_80011668)
/* 22A7C 8003227C 2C00A48F */  lw         $a0, 0x2c($sp)
/* 22A80 80032280 68164224 */  addiu      $v0, $v0, %lo(D_80011668)
/* 22A84 80032284 1000B0AF */  sw         $s0, 0x10($sp)
/* 22A88 80032288 290A010C */  jal        PrintText_800428a4
/* 22A8C 8003228C 1400A2AF */   sw        $v0, 0x14($sp)
/* 22A90 80032290 7CAA000C */  jal        vsync_8002a9f0
/* 22A94 80032294 00000000 */   nop
/* 22A98 80032298 7DC4000C */  jal        get_astruct_800311f4
/* 22A9C 8003229C 00000000 */   nop
/* 22AA0 800322A0 00084384 */  lh         $v1, 0x800($v0)
/* 22AA4 800322A4 01000224 */  addiu      $v0, $zero, 1
/* 22AA8 800322A8 05006210 */  beq        $v1, $v0, .L800322C0
/* 22AAC 800322AC 00000000 */   nop
/* 22AB0 800322B0 8CF0020C */  jal        FUN_800bc230
/* 22AB4 800322B4 3000A427 */   addiu     $a0, $sp, 0x30
/* 22AB8 800322B8 B2C80008 */  j          .L800322C8
/* 22ABC 800322BC 00000000 */   nop
.L800322C0:
/* 22AC0 800322C0 5EB1000C */  jal        FUN_8002c578
/* 22AC4 800322C4 3000A427 */   addiu     $a0, $sp, 0x30
.L800322C8:
/* 22AC8 800322C8 7CAA000C */  jal        vsync_8002a9f0
/* 22ACC 800322CC 00101124 */   addiu     $s1, $zero, 0x1000
/* 22AD0 800322D0 21200000 */  addu       $a0, $zero, $zero
/* 22AD4 800322D4 9CFF0524 */  addiu      $a1, $zero, -0x64
/* 22AD8 800322D8 22000624 */  addiu      $a2, $zero, 0x22
/* 22ADC 800322DC 00100724 */  addiu      $a3, $zero, 0x1000
/* 22AE0 800322E0 0180023C */  lui        $v0, %hi(D_800115AC)
/* 22AE4 800322E4 AC154224 */  addiu      $v0, $v0, %lo(D_800115AC)
/* 22AE8 800322E8 1000B1AF */  sw         $s1, 0x10($sp)
/* 22AEC 800322EC 290A010C */  jal        PrintText_800428a4
/* 22AF0 800322F0 1400A2AF */   sw        $v0, 0x14($sp)
/* 22AF4 800322F4 21200000 */  addu       $a0, $zero, $zero
/* 22AF8 800322F8 D4FF0524 */  addiu      $a1, $zero, -0x2c
/* 22AFC 800322FC 22000624 */  addiu      $a2, $zero, 0x22
/* 22B00 80032300 00100724 */  addiu      $a3, $zero, 0x1000
/* 22B04 80032304 0180103C */  lui        $s0, %hi(D_800115BC)
/* 22B08 80032308 3800A28F */  lw         $v0, 0x38($sp)
/* 22B0C 8003230C BC151026 */  addiu      $s0, $s0, %lo(D_800115BC)
/* 22B10 80032310 1000B1AF */  sw         $s1, 0x10($sp)
/* 22B14 80032314 1400B0AF */  sw         $s0, 0x14($sp)
/* 22B18 80032318 290A010C */  jal        PrintText_800428a4
/* 22B1C 8003231C 1800A2AF */   sw        $v0, 0x18($sp)
/* 22B20 80032320 21200000 */  addu       $a0, $zero, $zero
/* 22B24 80032324 ECFF0524 */  addiu      $a1, $zero, -0x14
/* 22B28 80032328 22000624 */  addiu      $a2, $zero, 0x22
/* 22B2C 8003232C 3400A28F */  lw         $v0, 0x34($sp)
/* 22B30 80032330 00100724 */  addiu      $a3, $zero, 0x1000
/* 22B34 80032334 1000B1AF */  sw         $s1, 0x10($sp)
/* 22B38 80032338 1400B0AF */  sw         $s0, 0x14($sp)
/* 22B3C 8003233C 290A010C */  jal        PrintText_800428a4
/* 22B40 80032340 1800A2AF */   sw        $v0, 0x18($sp)
/* 22B44 80032344 21200000 */  addu       $a0, $zero, $zero
/* 22B48 80032348 04000524 */  addiu      $a1, $zero, 4
/* 22B4C 8003234C 22000624 */  addiu      $a2, $zero, 0x22
/* 22B50 80032350 3000A28F */  lw         $v0, 0x30($sp)
/* 22B54 80032354 00100724 */  addiu      $a3, $zero, 0x1000
/* 22B58 80032358 1000B1AF */  sw         $s1, 0x10($sp)
/* 22B5C 8003235C 1400B0AF */  sw         $s0, 0x14($sp)
/* 22B60 80032360 290A010C */  jal        PrintText_800428a4
/* 22B64 80032364 1800A2AF */   sw        $v0, 0x18($sp)
/* 22B68 80032368 7CAA000C */  jal        vsync_8002a9f0
/* 22B6C 8003236C 00000000 */   nop
/* 22B70 80032370 6000BF8F */  lw         $ra, 0x60($sp)
/* 22B74 80032374 5C00B18F */  lw         $s1, 0x5c($sp)
/* 22B78 80032378 5800B08F */  lw         $s0, 0x58($sp)
/* 22B7C 8003237C 0800E003 */  jr         $ra
/* 22B80 80032380 6800BD27 */   addiu     $sp, $sp, 0x68
