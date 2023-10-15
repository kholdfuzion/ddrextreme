.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel InfoString_800b2308
/* A2B08 800B2308 18FFBD27 */  addiu      $sp, $sp, -0xe8
/* A2B0C 800B230C CC00B3AF */  sw         $s3, 0xcc($sp)
/* A2B10 800B2310 2198A000 */  addu       $s3, $a1, $zero
/* A2B14 800B2314 C400B1AF */  sw         $s1, 0xc4($sp)
/* A2B18 800B2318 21888000 */  addu       $s1, $a0, $zero
/* A2B1C 800B231C 21200000 */  addu       $a0, $zero, $zero
/* A2B20 800B2320 D000B4AF */  sw         $s4, 0xd0($sp)
/* A2B24 800B2324 21A00000 */  addu       $s4, $zero, $zero
/* A2B28 800B2328 C000B0AF */  sw         $s0, 0xc0($sp)
/* A2B2C 800B232C 1000B027 */  addiu      $s0, $sp, 0x10
/* A2B30 800B2330 D800B6AF */  sw         $s6, 0xd8($sp)
/* A2B34 800B2334 21B0C000 */  addu       $s6, $a2, $zero
/* A2B38 800B2338 E000BEAF */  sw         $fp, 0xe0($sp)
/* A2B3C 800B233C 21F0E000 */  addu       $fp, $a3, $zero
/* A2B40 800B2340 C800B2AF */  sw         $s2, 0xc8($sp)
/* A2B44 800B2344 9000B227 */  addiu      $s2, $sp, 0x90
/* A2B48 800B2348 B800A527 */  addiu      $a1, $sp, 0xb8
/* A2B4C 800B234C FC00A68F */  lw         $a2, 0xfc($sp)
/* A2B50 800B2350 0001A727 */  addiu      $a3, $sp, 0x100
/* A2B54 800B2354 E400BFAF */  sw         $ra, 0xe4($sp)
/* A2B58 800B2358 DC00B7AF */  sw         $s7, 0xdc($sp)
/* A2B5C 800B235C D400B5AF */  sw         $s5, 0xd4($sp)
/* A2B60 800B2360 360D010C */  jal        FUN_800434d8
/* A2B64 800B2364 B800B0AF */   sw        $s0, 0xb8($sp)
/* A2B68 800B2368 09000224 */  addiu      $v0, $zero, 9
/* A2B6C 800B236C 1E80063C */  lui        $a2, %hi(D_801DF2B0)
/* A2B70 800B2370 B0F2C524 */  addiu      $a1, $a2, %lo(D_801DF2B0)
/* A2B74 800B2374 B800A38F */  lw         $v1, 0xb8($sp)
/* A2B78 800B2378 00891100 */  sll        $s1, $s1, 4
/* A2B7C 800B237C 000060A0 */  sb         $zero, ($v1)
/* A2B80 800B2380 2C000324 */  addiu      $v1, $zero, 0x2c
/* A2B84 800B2384 030042A2 */  sb         $v0, 3($s2)
/* A2B88 800B2388 070043A2 */  sb         $v1, 7($s2)
/* A2B8C 800B238C 0E00A394 */  lhu        $v1, 0xe($a1)
/* A2B90 800B2390 80000224 */  addiu      $v0, $zero, 0x80
/* A2B94 800B2394 040042A2 */  sb         $v0, 4($s2)
/* A2B98 800B2398 050042A2 */  sb         $v0, 5($s2)
/* A2B9C 800B239C 060042A2 */  sb         $v0, 6($s2)
/* A2BA0 800B23A0 0C00A284 */  lh         $v0, 0xc($a1)
/* A2BA4 800B23A4 0200A494 */  lhu        $a0, 2($a1)
/* A2BA8 800B23A8 80190300 */  sll        $v1, $v1, 6
/* A2BAC 800B23AC 21105100 */  addu       $v0, $v0, $s1
/* A2BB0 800B23B0 03110200 */  sra        $v0, $v0, 4
/* A2BB4 800B23B4 3F004230 */  andi       $v0, $v0, 0x3f
/* A2BB8 800B23B8 25186200 */  or         $v1, $v1, $v0
/* A2BBC 800B23BC 00018230 */  andi       $v0, $a0, 0x100
/* A2BC0 800B23C0 00140200 */  sll        $v0, $v0, 0x10
/* A2BC4 800B23C4 03150200 */  sra        $v0, $v0, 0x14
/* A2BC8 800B23C8 00028430 */  andi       $a0, $a0, 0x200
/* A2BCC 800B23CC 0E0043A6 */  sh         $v1, 0xe($s2)
/* A2BD0 800B23D0 B0F2C394 */  lhu        $v1, -0xd50($a2)
/* A2BD4 800B23D4 80200400 */  sll        $a0, $a0, 2
/* A2BD8 800B23D8 FF036330 */  andi       $v1, $v1, 0x3ff
/* A2BDC 800B23DC 82190300 */  srl        $v1, $v1, 6
/* A2BE0 800B23E0 25104300 */  or         $v0, $v0, $v1
/* A2BE4 800B23E4 25104400 */  or         $v0, $v0, $a0
/* A2BE8 800B23E8 160042A6 */  sh         $v0, 0x16($s2)
/* A2BEC 800B23EC 1000A393 */  lbu        $v1, 0x10($sp)
/* A2BF0 800B23F0 00000000 */  nop
/* A2BF4 800B23F4 3B006010 */  beqz       $v1, .L800B24E4
/* A2BF8 800B23F8 21A80002 */   addu      $s5, $s0, $zero
/* A2BFC 800B23FC C0181E00 */  sll        $v1, $fp, 3
/* A2C00 800B2400 031B0300 */  sra        $v1, $v1, 0xc
/* A2C04 800B2404 F800A28F */  lw         $v0, 0xf8($sp)
/* A2C08 800B2408 FFFF7724 */  addiu      $s7, $v1, -1
/* A2C0C 800B240C C0100200 */  sll        $v0, $v0, 3
/* A2C10 800B2410 03130200 */  sra        $v0, $v0, 0xc
/* A2C14 800B2414 FFFF4224 */  addiu      $v0, $v0, -1
/* A2C18 800B2418 2188C202 */  addu       $s1, $s6, $v0
.L800B241C:
/* A2C1C 800B241C 2110B402 */  addu       $v0, $s5, $s4
/* A2C20 800B2420 00004590 */  lbu        $a1, ($v0)
/* A2C24 800B2424 21107702 */  addu       $v0, $s3, $s7
/* A2C28 800B2428 1E80033C */  lui        $v1, %hi(D_801DF2B0)
/* A2C2C 800B242C 100042A6 */  sh         $v0, 0x10($s2)
/* A2C30 800B2430 200042A6 */  sh         $v0, 0x20($s2)
/* A2C34 800B2434 B0F26224 */  addiu      $v0, $v1, %lo(D_801DF2B0)
/* A2C38 800B2438 080053A6 */  sh         $s3, 8($s2)
/* A2C3C 800B243C 0A0056A6 */  sh         $s6, 0xa($s2)
/* A2C40 800B2440 120056A6 */  sh         $s6, 0x12($s2)
/* A2C44 800B2444 180053A6 */  sh         $s3, 0x18($s2)
/* A2C48 800B2448 1A0051A6 */  sh         $s1, 0x1a($s2)
/* A2C4C 800B244C 220051A6 */  sh         $s1, 0x22($s2)
/* A2C50 800B2450 1C00438C */  lw         $v1, 0x1c($v0)
/* A2C54 800B2454 E0FFA524 */  addiu      $a1, $a1, -0x20
/* A2C58 800B2458 C0280500 */  sll        $a1, $a1, 3
/* A2C5C 800B245C 2128A300 */  addu       $a1, $a1, $v1
/* A2C60 800B2460 0000A290 */  lbu        $v0, ($a1)
/* A2C64 800B2464 00000000 */  nop
/* A2C68 800B2468 0C0042A2 */  sb         $v0, 0xc($s2)
/* A2C6C 800B246C 0200A390 */  lbu        $v1, 2($a1)
/* A2C70 800B2470 00000000 */  nop
/* A2C74 800B2474 0D0043A2 */  sb         $v1, 0xd($s2)
/* A2C78 800B2478 0400A290 */  lbu        $v0, 4($a1)
/* A2C7C 800B247C 00000000 */  nop
/* A2C80 800B2480 140042A2 */  sb         $v0, 0x14($s2)
/* A2C84 800B2484 0200A390 */  lbu        $v1, 2($a1)
/* A2C88 800B2488 00000000 */  nop
/* A2C8C 800B248C 150043A2 */  sb         $v1, 0x15($s2)
/* A2C90 800B2490 0000A290 */  lbu        $v0, ($a1)
/* A2C94 800B2494 00000000 */  nop
/* A2C98 800B2498 1C0042A2 */  sb         $v0, 0x1c($s2)
/* A2C9C 800B249C 0600A390 */  lbu        $v1, 6($a1)
/* A2CA0 800B24A0 21204002 */  addu       $a0, $s2, $zero
/* A2CA4 800B24A4 1D0043A2 */  sb         $v1, 0x1d($s2)
/* A2CA8 800B24A8 0400A290 */  lbu        $v0, 4($a1)
/* A2CAC 800B24AC 01009426 */  addiu      $s4, $s4, 1
/* A2CB0 800B24B0 240042A2 */  sb         $v0, 0x24($s2)
/* A2CB4 800B24B4 0600A290 */  lbu        $v0, 6($a1)
/* A2CB8 800B24B8 2180A002 */  addu       $s0, $s5, $zero
/* A2CBC 800B24BC 3E62000C */  jal        DrawPrim
/* A2CC0 800B24C0 250042A2 */   sb        $v0, 0x25($s2)
/* A2CC4 800B24C4 D860000C */  jal        DrawSync
/* A2CC8 800B24C8 21200000 */   addu      $a0, $zero, $zero
/* A2CCC 800B24CC 431A1E00 */  sra        $v1, $fp, 9
/* A2CD0 800B24D0 21801402 */  addu       $s0, $s0, $s4
/* A2CD4 800B24D4 00000292 */  lbu        $v0, ($s0)
/* A2CD8 800B24D8 00000000 */  nop
/* A2CDC 800B24DC CFFF4014 */  bnez       $v0, .L800B241C
/* A2CE0 800B24E0 21986302 */   addu      $s3, $s3, $v1
.L800B24E4:
/* A2CE4 800B24E4 7CAA000C */  jal        vsync_8002a9f0
/* A2CE8 800B24E8 00000000 */   nop
/* A2CEC 800B24EC E400BF8F */  lw         $ra, 0xe4($sp)
/* A2CF0 800B24F0 E000BE8F */  lw         $fp, 0xe0($sp)
/* A2CF4 800B24F4 DC00B78F */  lw         $s7, 0xdc($sp)
/* A2CF8 800B24F8 D800B68F */  lw         $s6, 0xd8($sp)
/* A2CFC 800B24FC D400B58F */  lw         $s5, 0xd4($sp)
/* A2D00 800B2500 D000B48F */  lw         $s4, 0xd0($sp)
/* A2D04 800B2504 CC00B38F */  lw         $s3, 0xcc($sp)
/* A2D08 800B2508 C800B28F */  lw         $s2, 0xc8($sp)
/* A2D0C 800B250C C400B18F */  lw         $s1, 0xc4($sp)
/* A2D10 800B2510 C000B08F */  lw         $s0, 0xc0($sp)
/* A2D14 800B2514 0800E003 */  jr         $ra
/* A2D18 800B2518 E800BD27 */   addiu     $sp, $sp, 0xe8
