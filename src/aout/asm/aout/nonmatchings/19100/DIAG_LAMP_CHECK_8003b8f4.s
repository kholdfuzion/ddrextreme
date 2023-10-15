.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DIAG_LAMP_CHECK_8003b8f4
/* 2C0F4 8003B8F4 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 2C0F8 8003B8F8 6000B0AF */  sw         $s0, 0x60($sp)
/* 2C0FC 8003B8FC 21808000 */  addu       $s0, $a0, $zero
/* 2C100 8003B900 6400B1AF */  sw         $s1, 0x64($sp)
/* 2C104 8003B904 6800BFAF */  sw         $ra, 0x68($sp)
/* 2C108 8003B908 7DC4000C */  jal        get_astruct_800311f4
/* 2C10C 8003B90C 2188A000 */   addu      $s1, $a1, $zero
/* 2C110 8003B910 21304000 */  addu       $a2, $v0, $zero
/* 2C114 8003B914 1800A527 */  addiu      $a1, $sp, 0x18
/* 2C118 8003B918 10000324 */  addiu      $v1, $zero, 0x10
/* 2C11C 8003B91C 5800A227 */  addiu      $v0, $sp, 0x58
.L8003B920:
/* 2C120 8003B920 000040AC */  sw         $zero, ($v0)
/* 2C124 8003B924 FFFF6324 */  addiu      $v1, $v1, -1
/* 2C128 8003B928 FDFF6104 */  bgez       $v1, .L8003B920
/* 2C12C 8003B92C FCFF4224 */   addiu     $v0, $v0, -4
/* 2C130 8003B930 80101000 */  sll        $v0, $s0, 2
/* 2C134 8003B934 2110A200 */  addu       $v0, $a1, $v0
/* 2C138 8003B938 02000324 */  addiu      $v1, $zero, 2
/* 2C13C 8003B93C 0F000424 */  addiu      $a0, $zero, 0xf
/* 2C140 8003B940 08000416 */  bne        $s0, $a0, .L8003B964
/* 2C144 8003B944 000043AC */   sw        $v1, ($v0)
/* 2C148 8003B948 E40EC28C */  lw         $v0, 0xee4($a2)
/* 2C14C 8003B94C 00000000 */  nop
/* 2C150 8003B950 04004010 */  beqz       $v0, .L8003B964
/* 2C154 8003B954 80101100 */   sll       $v0, $s1, 2
/* 2C158 8003B958 2110A200 */  addu       $v0, $a1, $v0
/* 2C15C 8003B95C 03000324 */  addiu      $v1, $zero, 3
/* 2C160 8003B960 000043AC */  sw         $v1, ($v0)
.L8003B964:
/* 2C164 8003B964 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C168 8003B968 B8FF0624 */  addiu      $a2, $zero, -0x48
/* 2C16C 8003B96C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C170 8003B970 00101024 */  addiu      $s0, $zero, 0x1000
/* 2C174 8003B974 0180023C */  lui        $v0, %hi(D_80012B24)
/* 2C178 8003B978 1800A48F */  lw         $a0, 0x18($sp)
/* 2C17C 8003B97C 242B4224 */  addiu      $v0, $v0, %lo(D_80012B24)
/* 2C180 8003B980 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C184 8003B984 290A010C */  jal        PrintText_800428a4
/* 2C188 8003B988 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C18C 8003B98C 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C190 8003B990 C0FF0624 */  addiu      $a2, $zero, -0x40
/* 2C194 8003B994 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C198 8003B998 0180023C */  lui        $v0, %hi(D_80012B30)
/* 2C19C 8003B99C 1C00A48F */  lw         $a0, 0x1c($sp)
/* 2C1A0 8003B9A0 302B4224 */  addiu      $v0, $v0, %lo(D_80012B30)
/* 2C1A4 8003B9A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C1A8 8003B9A8 290A010C */  jal        PrintText_800428a4
/* 2C1AC 8003B9AC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C1B0 8003B9B0 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C1B4 8003B9B4 C8FF0624 */  addiu      $a2, $zero, -0x38
/* 2C1B8 8003B9B8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C1BC 8003B9BC 0180023C */  lui        $v0, %hi(D_80012B40)
/* 2C1C0 8003B9C0 2000A48F */  lw         $a0, 0x20($sp)
/* 2C1C4 8003B9C4 402B4224 */  addiu      $v0, $v0, %lo(D_80012B40)
/* 2C1C8 8003B9C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C1CC 8003B9CC 290A010C */  jal        PrintText_800428a4
/* 2C1D0 8003B9D0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C1D4 8003B9D4 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C1D8 8003B9D8 D0FF0624 */  addiu      $a2, $zero, -0x30
/* 2C1DC 8003B9DC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C1E0 8003B9E0 0180023C */  lui        $v0, %hi(D_80012B50)
/* 2C1E4 8003B9E4 2400A48F */  lw         $a0, 0x24($sp)
/* 2C1E8 8003B9E8 502B4224 */  addiu      $v0, $v0, %lo(D_80012B50)
/* 2C1EC 8003B9EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C1F0 8003B9F0 290A010C */  jal        PrintText_800428a4
/* 2C1F4 8003B9F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C1F8 8003B9F8 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C1FC 8003B9FC D8FF0624 */  addiu      $a2, $zero, -0x28
/* 2C200 8003BA00 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C204 8003BA04 0180023C */  lui        $v0, %hi(D_80012B60)
/* 2C208 8003BA08 2800A48F */  lw         $a0, 0x28($sp)
/* 2C20C 8003BA0C 602B4224 */  addiu      $v0, $v0, %lo(D_80012B60)
/* 2C210 8003BA10 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C214 8003BA14 290A010C */  jal        PrintText_800428a4
/* 2C218 8003BA18 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C21C 8003BA1C 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C220 8003BA20 E0FF0624 */  addiu      $a2, $zero, -0x20
/* 2C224 8003BA24 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C228 8003BA28 0180023C */  lui        $v0, %hi(D_80012B6C)
/* 2C22C 8003BA2C 2C00A48F */  lw         $a0, 0x2c($sp)
/* 2C230 8003BA30 6C2B4224 */  addiu      $v0, $v0, %lo(D_80012B6C)
/* 2C234 8003BA34 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C238 8003BA38 290A010C */  jal        PrintText_800428a4
/* 2C23C 8003BA3C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C240 8003BA40 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C244 8003BA44 E8FF0624 */  addiu      $a2, $zero, -0x18
/* 2C248 8003BA48 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C24C 8003BA4C 0180023C */  lui        $v0, %hi(D_80012B7C)
/* 2C250 8003BA50 3000A48F */  lw         $a0, 0x30($sp)
/* 2C254 8003BA54 7C2B4224 */  addiu      $v0, $v0, %lo(D_80012B7C)
/* 2C258 8003BA58 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C25C 8003BA5C 290A010C */  jal        PrintText_800428a4
/* 2C260 8003BA60 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C264 8003BA64 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C268 8003BA68 F0FF0624 */  addiu      $a2, $zero, -0x10
/* 2C26C 8003BA6C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C270 8003BA70 0180023C */  lui        $v0, %hi(D_80012B8C)
/* 2C274 8003BA74 3400A48F */  lw         $a0, 0x34($sp)
/* 2C278 8003BA78 8C2B4224 */  addiu      $v0, $v0, %lo(D_80012B8C)
/* 2C27C 8003BA7C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C280 8003BA80 290A010C */  jal        PrintText_800428a4
/* 2C284 8003BA84 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C288 8003BA88 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C28C 8003BA8C F8FF0624 */  addiu      $a2, $zero, -8
/* 2C290 8003BA90 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C294 8003BA94 0180023C */  lui        $v0, %hi(D_80012B9C)
/* 2C298 8003BA98 3800A48F */  lw         $a0, 0x38($sp)
/* 2C29C 8003BA9C 9C2B4224 */  addiu      $v0, $v0, %lo(D_80012B9C)
/* 2C2A0 8003BAA0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C2A4 8003BAA4 290A010C */  jal        PrintText_800428a4
/* 2C2A8 8003BAA8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C2AC 8003BAAC 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C2B0 8003BAB0 21300000 */  addu       $a2, $zero, $zero
/* 2C2B4 8003BAB4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C2B8 8003BAB8 0180023C */  lui        $v0, %hi(D_80012BA8)
/* 2C2BC 8003BABC 3C00A48F */  lw         $a0, 0x3c($sp)
/* 2C2C0 8003BAC0 A82B4224 */  addiu      $v0, $v0, %lo(D_80012BA8)
/* 2C2C4 8003BAC4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C2C8 8003BAC8 290A010C */  jal        PrintText_800428a4
/* 2C2CC 8003BACC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C2D0 8003BAD0 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C2D4 8003BAD4 08000624 */  addiu      $a2, $zero, 8
/* 2C2D8 8003BAD8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C2DC 8003BADC 0180023C */  lui        $v0, %hi(D_80012BB4)
/* 2C2E0 8003BAE0 4000A48F */  lw         $a0, 0x40($sp)
/* 2C2E4 8003BAE4 B42B4224 */  addiu      $v0, $v0, %lo(D_80012BB4)
/* 2C2E8 8003BAE8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C2EC 8003BAEC 290A010C */  jal        PrintText_800428a4
/* 2C2F0 8003BAF0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C2F4 8003BAF4 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C2F8 8003BAF8 10000624 */  addiu      $a2, $zero, 0x10
/* 2C2FC 8003BAFC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C300 8003BB00 0180023C */  lui        $v0, %hi(D_80012BC4)
/* 2C304 8003BB04 4400A48F */  lw         $a0, 0x44($sp)
/* 2C308 8003BB08 C42B4224 */  addiu      $v0, $v0, %lo(D_80012BC4)
/* 2C30C 8003BB0C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C310 8003BB10 290A010C */  jal        PrintText_800428a4
/* 2C314 8003BB14 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C318 8003BB18 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C31C 8003BB1C 18000624 */  addiu      $a2, $zero, 0x18
/* 2C320 8003BB20 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C324 8003BB24 0180023C */  lui        $v0, %hi(D_80012BD4)
/* 2C328 8003BB28 4800A48F */  lw         $a0, 0x48($sp)
/* 2C32C 8003BB2C D42B4224 */  addiu      $v0, $v0, %lo(D_80012BD4)
/* 2C330 8003BB30 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C334 8003BB34 290A010C */  jal        PrintText_800428a4
/* 2C338 8003BB38 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C33C 8003BB3C 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C340 8003BB40 20000624 */  addiu      $a2, $zero, 0x20
/* 2C344 8003BB44 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C348 8003BB48 0180023C */  lui        $v0, %hi(D_80012BE4)
/* 2C34C 8003BB4C 4C00A48F */  lw         $a0, 0x4c($sp)
/* 2C350 8003BB50 E42B4224 */  addiu      $v0, $v0, %lo(D_80012BE4)
/* 2C354 8003BB54 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C358 8003BB58 290A010C */  jal        PrintText_800428a4
/* 2C35C 8003BB5C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C360 8003BB60 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C364 8003BB64 28000624 */  addiu      $a2, $zero, 0x28
/* 2C368 8003BB68 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C36C 8003BB6C 0180023C */  lui        $v0, %hi(D_80012BF4)
/* 2C370 8003BB70 5000A48F */  lw         $a0, 0x50($sp)
/* 2C374 8003BB74 F42B4224 */  addiu      $v0, $v0, %lo(D_80012BF4)
/* 2C378 8003BB78 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C37C 8003BB7C 290A010C */  jal        PrintText_800428a4
/* 2C380 8003BB80 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C384 8003BB84 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C388 8003BB88 30000624 */  addiu      $a2, $zero, 0x30
/* 2C38C 8003BB8C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C390 8003BB90 0180023C */  lui        $v0, %hi(D_80012BFC)
/* 2C394 8003BB94 5400A48F */  lw         $a0, 0x54($sp)
/* 2C398 8003BB98 FC2B4224 */  addiu      $v0, $v0, %lo(D_80012BFC)
/* 2C39C 8003BB9C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C3A0 8003BBA0 290A010C */  jal        PrintText_800428a4
/* 2C3A4 8003BBA4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C3A8 8003BBA8 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2C3AC 8003BBAC 40000624 */  addiu      $a2, $zero, 0x40
/* 2C3B0 8003BBB0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C3B4 8003BBB4 0180023C */  lui        $v0, %hi(D_80012C00)
/* 2C3B8 8003BBB8 5800A48F */  lw         $a0, 0x58($sp)
/* 2C3BC 8003BBBC 002C4224 */  addiu      $v0, $v0, %lo(D_80012C00)
/* 2C3C0 8003BBC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C3C4 8003BBC4 290A010C */  jal        PrintText_800428a4
/* 2C3C8 8003BBC8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C3CC 8003BBCC 21200000 */  addu       $a0, $zero, $zero
/* 2C3D0 8003BBD0 D0FF0524 */  addiu      $a1, $zero, -0x30
/* 2C3D4 8003BBD4 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2C3D8 8003BBD8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C3DC 8003BBDC 0180023C */  lui        $v0, %hi(D_80012C08)
/* 2C3E0 8003BBE0 082C4224 */  addiu      $v0, $v0, %lo(D_80012C08)
/* 2C3E4 8003BBE4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C3E8 8003BBE8 290A010C */  jal        PrintText_800428a4
/* 2C3EC 8003BBEC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C3F0 8003BBF0 21200000 */  addu       $a0, $zero, $zero
/* 2C3F4 8003BBF4 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2C3F8 8003BBF8 52000624 */  addiu      $a2, $zero, 0x52
/* 2C3FC 8003BBFC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C400 8003BC00 0180023C */  lui        $v0, %hi(D_80012C14)
/* 2C404 8003BC04 142C4224 */  addiu      $v0, $v0, %lo(D_80012C14)
/* 2C408 8003BC08 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C40C 8003BC0C 290A010C */  jal        PrintText_800428a4
/* 2C410 8003BC10 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C414 8003BC14 21200000 */  addu       $a0, $zero, $zero
/* 2C418 8003BC18 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2C41C 8003BC1C 62000624 */  addiu      $a2, $zero, 0x62
/* 2C420 8003BC20 00100724 */  addiu      $a3, $zero, 0x1000
/* 2C424 8003BC24 0180023C */  lui        $v0, %hi(D_80012C38)
/* 2C428 8003BC28 382C4224 */  addiu      $v0, $v0, %lo(D_80012C38)
/* 2C42C 8003BC2C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C430 8003BC30 290A010C */  jal        PrintText_800428a4
/* 2C434 8003BC34 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C438 8003BC38 6800BF8F */  lw         $ra, 0x68($sp)
/* 2C43C 8003BC3C 6400B18F */  lw         $s1, 0x64($sp)
/* 2C440 8003BC40 6000B08F */  lw         $s0, 0x60($sp)
/* 2C444 8003BC44 0800E003 */  jr         $ra
/* 2C448 8003BC48 7000BD27 */   addiu     $sp, $sp, 0x70
