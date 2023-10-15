.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_194
/* BAF8 8001B2F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BAFC 8001B2FC 1000B0AF */  sw         $s0, 0x10($sp)
/* BB00 8001B300 0D80103C */  lui        $s0, %hi(D_800D2D60)
/* BB04 8001B304 602D1026 */  addiu      $s0, $s0, %lo(D_800D2D60)
/* BB08 8001B308 1400BFAF */  sw         $ra, 0x14($sp)
/* BB0C 8001B30C 00000296 */  lhu        $v0, ($s0)
/* BB10 8001B310 00000000 */  nop
/* BB14 8001B314 2A004014 */  bnez       $v0, .L8001B3C0
/* BB18 8001B318 21100000 */   addu      $v0, $zero, $zero
/* BB1C 8001B31C 0D80033C */  lui        $v1, %hi(D_800D3DEC)
/* BB20 8001B320 EC3D638C */  lw         $v1, %lo(D_800D3DEC)($v1)
/* BB24 8001B324 0D80023C */  lui        $v0, %hi(D_800D3DF0)
/* BB28 8001B328 F03D428C */  lw         $v0, %lo(D_800D3DF0)($v0)
/* BB2C 8001B32C 3333053C */  lui        $a1, 0x3333
/* BB30 8001B330 000040A4 */  sh         $zero, ($v0)
/* BB34 8001B334 00004294 */  lhu        $v0, ($v0)
/* BB38 8001B338 3333A534 */  ori        $a1, $a1, 0x3333
/* BB3C 8001B33C 000062A4 */  sh         $v0, ($v1)
/* BB40 8001B340 0D80023C */  lui        $v0, %hi(D_800D3DF4)
/* BB44 8001B344 F43D428C */  lw         $v0, %lo(D_800D3DF4)($v0)
/* BB48 8001B348 21200002 */  addu       $a0, $s0, $zero
/* BB4C 8001B34C 000045AC */  sw         $a1, ($v0)
/* BB50 8001B350 006E000C */  jal        INTR_OBJ_69C
/* BB54 8001B354 1A040524 */   addiu     $a1, $zero, 0x41a
/* BB58 8001B358 256E000C */  jal        setjmp
/* BB5C 8001B35C 38000426 */   addiu     $a0, $s0, 0x38
/* BB60 8001B360 03004010 */  beqz       $v0, .L8001B370
/* BB64 8001B364 00000000 */   nop
/* BB68 8001B368 F46C000C */  jal        INTR_OBJ_26C
/* BB6C 8001B36C 00000000 */   nop
.L8001B370:
/* BB70 8001B370 0D80103C */  lui        $s0, %hi(D_800D2D9C)
/* BB74 8001B374 9C2D1026 */  addiu      $s0, $s0, %lo(D_800D2D9C)
/* BB78 8001B378 FCFF0426 */  addiu      $a0, $s0, -4
/* BB7C 8001B37C DC0F0226 */  addiu      $v0, $s0, 0xfdc
/* BB80 8001B380 196E000C */  jal        HookEntryInt
/* BB84 8001B384 000002AE */   sw        $v0, ($s0)
/* BB88 8001B388 01000224 */  addiu      $v0, $zero, 1
/* BB8C 8001B38C 456E000C */  jal        startIntrVSync
/* BB90 8001B390 C4FF02A6 */   sh        $v0, -0x3c($s0)
/* BB94 8001B394 0D80033C */  lui        $v1, %hi(D_800D3DE8)
/* BB98 8001B398 E83D638C */  lw         $v1, %lo(D_800D3DE8)($v1)
/* BB9C 8001B39C 8D6E000C */  jal        startIntrDMA
/* BBA0 8001B3A0 140062AC */   sw        $v0, 0x14($v1)
/* BBA4 8001B3A4 0D80043C */  lui        $a0, %hi(D_800D3DE8)
/* BBA8 8001B3A8 E83D848C */  lw         $a0, %lo(D_800D3DE8)($a0)
/* BBAC 8001B3AC 0B6E000C */  jal        FUN_8001b82c
/* BBB0 8001B3B0 040082AC */   sw        $v0, 4($a0)
/* BBB4 8001B3B4 216E000C */  jal        FUN_8001b884
/* BBB8 8001B3B8 C4FF1026 */   addiu     $s0, $s0, -0x3c
/* BBBC 8001B3BC 21100002 */  addu       $v0, $s0, $zero
.L8001B3C0:
/* BBC0 8001B3C0 1400BF8F */  lw         $ra, 0x14($sp)
/* BBC4 8001B3C4 1000B08F */  lw         $s0, 0x10($sp)
/* BBC8 8001B3C8 0800E003 */  jr         $ra
/* BBCC 8001B3CC 1800BD27 */   addiu     $sp, $sp, 0x18
