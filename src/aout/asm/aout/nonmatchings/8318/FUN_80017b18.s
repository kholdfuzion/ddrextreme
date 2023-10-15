.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80017b18
/* 8318 80017B18 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 831C 80017B1C 1800B0AF */  sw         $s0, 0x18($sp)
/* 8320 80017B20 21808000 */  addu       $s0, $a0, $zero
/* 8324 80017B24 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 8328 80017B28 2000BFAF */  sw         $ra, 0x20($sp)
/* 832C 80017B2C 735F000C */  jal        NULL_80017dcc
/* 8330 80017B30 2188A000 */   addu      $s1, $a1, $zero
/* 8334 80017B34 7BEE020C */  jal        FUN_800bb9ec
/* 8338 80017B38 00000000 */   nop
/* 833C 80017B3C 07000424 */  addiu      $a0, $zero, 7
/* 8340 80017B40 5FEF020C */  jal        FUN_800bbd7c
/* 8344 80017B44 21280000 */   addu      $a1, $zero, $zero
/* 8348 80017B48 21200002 */  addu       $a0, $s0, $zero
/* 834C 80017B4C DC0B030C */  jal        FUN_800c2f70
/* 8350 80017B50 21282002 */   addu      $a1, $s1, $zero
/* 8354 80017B54 0180043C */  lui        $a0, %hi(D_80010000)
/* 8358 80017B58 1F0B030C */  jal        file_800c2c7c
/* 835C 80017B5C 00008424 */   addiu     $a0, $a0, %lo(D_80010000)
/* 8360 80017B60 04004014 */  bnez       $v0, .L80017B74
/* 8364 80017B64 00000000 */   nop
/* 8368 80017B68 3F80043C */  lui        $a0, 0x803f
/* 836C 80017B6C 7D5F000C */  jal        FUN_80017df4
/* 8370 80017B70 00FF8434 */   ori       $a0, $a0, 0xff00
.L80017B74:
/* 8374 80017B74 BDEF020C */  jal        FUN_800bbef4
/* 8378 80017B78 21200000 */   addu      $a0, $zero, $zero
/* 837C 80017B7C 596C000C */  jal        ResetCallback
/* 8380 80017B80 00000000 */   nop
/* 8384 80017B84 F95F000C */  jal        ResetGraph
/* 8388 80017B88 21200000 */   addu      $a0, $zero, $zero
/* 838C 80017B8C B6FA020C */  jal        FUN_800bead8
/* 8390 80017B90 00000000 */   nop
/* 8394 80017B94 3C0E030C */  jal        FUN_800c38f0
/* 8398 80017B98 00000000 */   nop
/* 839C 80017B9C 5F96020C */  jal        FUN_800a597c
/* 83A0 80017BA0 00000000 */   nop
/* 83A4 80017BA4 47C9020C */  jal        FUN_800b251c
/* 83A8 80017BA8 00000000 */   nop
/* 83AC 80017BAC 0180043C */  lui        $a0, %hi(D_8001000C)
/* 83B0 80017BB0 1F0B030C */  jal        file_800c2c7c
/* 83B4 80017BB4 0C008424 */   addiu     $a0, $a0, %lo(D_8001000C)
/* 83B8 80017BB8 1E004010 */  beqz       $v0, .L80017C34
/* 83BC 80017BBC 21800000 */   addu      $s0, $zero, $zero
/* 83C0 80017BC0 00004290 */  lbu        $v0, ($v0)
/* 83C4 80017BC4 00000000 */  nop
/* 83C8 80017BC8 BFFF4424 */  addiu      $a0, $v0, -0x41
/* 83CC 80017BCC 1500832C */  sltiu      $v1, $a0, 0x15
/* 83D0 80017BD0 18006010 */  beqz       $v1, .L80017C34
/* 83D4 80017BD4 0180023C */   lui       $v0, %hi(D_80010030)
/* 83D8 80017BD8 30004224 */  addiu      $v0, $v0, %lo(D_80010030)
/* 83DC 80017BDC 80180400 */  sll        $v1, $a0, 2
/* 83E0 80017BE0 21186200 */  addu       $v1, $v1, $v0
/* 83E4 80017BE4 0000648C */  lw         $a0, ($v1)
/* 83E8 80017BE8 00000000 */  nop
/* 83EC 80017BEC 08008000 */  jr         $a0
/* 83F0 80017BF0 00000000 */   nop
/* 83F4 80017BF4 0D80023C */  lui        $v0, %hi(D_800D2B00)
/* 83F8 80017BF8 0C5F0008 */  j          .L80017C30
/* 83FC 80017BFC 002B40AC */   sw        $zero, %lo(D_800D2B00)($v0)
/* 8400 80017C00 0D80033C */  lui        $v1, 0x800d
/* 8404 80017C04 0B5F0008 */  j          .L80017C2C
/* 8408 80017C08 01000224 */   addiu     $v0, $zero, 1
/* 840C 80017C0C 0D80033C */  lui        $v1, 0x800d
/* 8410 80017C10 0B5F0008 */  j          .L80017C2C
/* 8414 80017C14 02000224 */   addiu     $v0, $zero, 2
/* 8418 80017C18 0D80033C */  lui        $v1, 0x800d
/* 841C 80017C1C 0B5F0008 */  j          .L80017C2C
/* 8420 80017C20 03000224 */   addiu     $v0, $zero, 3
/* 8424 80017C24 0D80033C */  lui        $v1, %hi(D_800D2B00)
/* 8428 80017C28 04000224 */  addiu      $v0, $zero, 4
.L80017C2C:
/* 842C 80017C2C 002B62AC */  sw         $v0, %lo(D_800D2B00)($v1)
.L80017C30:
/* 8430 80017C30 21800000 */  addu       $s0, $zero, $zero
.L80017C34:
/* 8434 80017C34 0180043C */  lui        $a0, %hi(D_8001001C)
/* 8438 80017C38 1F0B030C */  jal        file_800c2c7c
/* 843C 80017C3C 1C008424 */   addiu     $a0, $a0, %lo(D_8001001C)
/* 8440 80017C40 05004010 */  beqz       $v0, .L80017C58
/* 8444 80017C44 0180043C */   lui       $a0, %hi(D_80010028)
/* 8448 80017C48 28008424 */  addiu      $a0, $a0, %lo(D_80010028)
/* 844C 80017C4C DD5F000C */  jal        strcmp
/* 8450 80017C50 21284000 */   addu      $a1, $v0, $zero
/* 8454 80017C54 0100502C */  sltiu      $s0, $v0, 1
.L80017C58:
/* 8458 80017C58 F8EF020C */  jal        readbtniomaybe_800bbfe0
/* 845C 80017C5C 1000A427 */   addiu     $a0, $sp, 0x10
/* 8460 80017C60 1400A297 */  lhu        $v0, 0x14($sp)
/* 8464 80017C64 00000000 */  nop
/* 8468 80017C68 00044230 */  andi       $v0, $v0, 0x400
/* 846C 80017C6C 1D004010 */  beqz       $v0, .L80017CE4
/* 8470 80017C70 00000000 */   nop
/* 8474 80017C74 D9AD000C */  jal        FUN_8002b764
/* 8478 80017C78 01000424 */   addiu     $a0, $zero, 1
/* 847C 80017C7C 275F0008 */  j          .L80017C9C
/* 8480 80017C80 00000000 */   nop
.L80017C84:
/* 8484 80017C84 85C9020C */  jal        PRNT_RTCINIT_800b2614
/* 8488 80017C88 00000000 */   nop
/* 848C 80017C8C 23F0020C */  jal        FUN_800bc08c
/* 8490 80017C90 00000000 */   nop
/* 8494 80017C94 CD6B000C */  jal        VSync
/* 8498 80017C98 21200000 */   addu      $a0, $zero, $zero
.L80017C9C:
/* 849C 80017C9C F8EF020C */  jal        readbtniomaybe_800bbfe0
/* 84A0 80017CA0 1000A427 */   addiu     $a0, $sp, 0x10
/* 84A4 80017CA4 1400A297 */  lhu        $v0, 0x14($sp)
/* 84A8 80017CA8 00000000 */  nop
/* 84AC 80017CAC 00044230 */  andi       $v0, $v0, 0x400
/* 84B0 80017CB0 08004010 */  beqz       $v0, .L80017CD4
/* 84B4 80017CB4 00000000 */   nop
/* 84B8 80017CB8 F8EF020C */  jal        readbtniomaybe_800bbfe0
/* 84BC 80017CBC 1000A427 */   addiu     $a0, $sp, 0x10
/* 84C0 80017CC0 1400A297 */  lhu        $v0, 0x14($sp)
/* 84C4 80017CC4 00000000 */  nop
/* 84C8 80017CC8 00104230 */  andi       $v0, $v0, 0x1000
/* 84CC 80017CCC EDFF4010 */  beqz       $v0, .L80017C84
/* 84D0 80017CD0 00000000 */   nop
.L80017CD4:
/* 84D4 80017CD4 B9C9020C */  jal        FUN_800b26e4
/* 84D8 80017CD8 00000000 */   nop
/* 84DC 80017CDC 3B5F0008 */  j          .L80017CEC
/* 84E0 80017CE0 00000000 */   nop
.L80017CE4:
/* 84E4 80017CE4 D9AD000C */  jal        FUN_8002b764
/* 84E8 80017CE8 21200002 */   addu      $a0, $s0, $zero
.L80017CEC:
/* 84EC 80017CEC C25F000C */  jal        StopRCnt
/* 84F0 80017CF0 00F2043C */   lui       $a0, 0xf200
/* 84F4 80017CF4 00F2043C */  lui        $a0, 0xf200
/* 84F8 80017CF8 C25F000C */  jal        StopRCnt
/* 84FC 80017CFC 01008434 */   ori       $a0, $a0, 1
/* 8500 80017D00 00F2043C */  lui        $a0, 0xf200
/* 8504 80017D04 C25F000C */  jal        StopRCnt
/* 8508 80017D08 02008434 */   ori       $a0, $a0, 2
/* 850C 80017D0C 00F2043C */  lui        $a0, 0xf200
/* 8510 80017D10 C25F000C */  jal        StopRCnt
/* 8514 80017D14 03008434 */   ori       $a0, $a0, 3
/* 8518 80017D18 00F2043C */  lui        $a0, 0xf200
/* 851C 80017D1C B65F000C */  jal        StartRCnt
/* 8520 80017D20 01008434 */   ori       $a0, $a0, 1
/* 8524 80017D24 966C000C */  jal        StopCallback
/* 8528 80017D28 00000000 */   nop
/* 852C 80017D2C 596C000C */  jal        ResetCallback
/* 8530 80017D30 00000000 */   nop
/* 8534 80017D34 416F000C */  jal        mp3cdrom_8001bd04
/* 8538 80017D38 00000000 */   nop
.L80017D3C:
/* 853C 80017D3C F46F000C */  jal        FUN_8001bfd0
/* 8540 80017D40 00000000 */   nop
/* 8544 80017D44 4F5F0008 */  j          .L80017D3C
/* 8548 80017D48 00000000 */   nop
