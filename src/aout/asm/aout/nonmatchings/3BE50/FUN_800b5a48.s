.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b5a48
/* A6248 800B5A48 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A624C 800B5A4C 1800B2AF */  sw         $s2, 0x18($sp)
/* A6250 800B5A50 FF009230 */  andi       $s2, $a0, 0xff
/* A6254 800B5A54 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A6258 800B5A58 1400B1AF */  sw         $s1, 0x14($sp)
/* A625C 800B5A5C AE6C000C */  jal        CheckCallback
/* A6260 800B5A60 1000B0AF */   sw        $s0, 0x10($sp)
/* A6264 800B5A64 0D004014 */  bnez       $v0, .L800B5A9C
/* A6268 800B5A68 00141200 */   sll       $v0, $s2, 0x10
/* A626C 800B5A6C 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A6270 800B5A70 B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A6274 800B5A74 00000000 */  nop
/* A6278 800B5A78 03004014 */  bnez       $v0, .L800B5A88
/* A627C 800B5A7C 00000000 */   nop
/* A6280 800B5A80 1D6E000C */  jal        FUN_8001b874
/* A6284 800B5A84 00000000 */   nop
.L800B5A88:
/* A6288 800B5A88 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A628C 800B5A8C 00000000 */  nop
/* A6290 800B5A90 01004224 */  addiu      $v0, $v0, 1
/* A6294 800B5A94 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A6298 800B5A98 00141200 */  sll        $v0, $s2, 0x10
.L800B5A9C:
/* A629C 800B5A9C AE6C000C */  jal        CheckCallback
/* A62A0 800B5AA0 00805134 */   ori       $s1, $v0, 0x8000
/* A62A4 800B5AA4 0D004014 */  bnez       $v0, .L800B5ADC
/* A62A8 800B5AA8 00802432 */   andi      $a0, $s1, 0x8000
/* A62AC 800B5AAC 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A62B0 800B5AB0 B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A62B4 800B5AB4 00000000 */  nop
/* A62B8 800B5AB8 03004014 */  bnez       $v0, .L800B5AC8
/* A62BC 800B5ABC 00000000 */   nop
/* A62C0 800B5AC0 1D6E000C */  jal        FUN_8001b874
/* A62C4 800B5AC4 00000000 */   nop
.L800B5AC8:
/* A62C8 800B5AC8 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A62CC 800B5ACC 00000000 */  nop
/* A62D0 800B5AD0 01004224 */  addiu      $v0, $v0, 1
/* A62D4 800B5AD4 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A62D8 800B5AD8 00802432 */  andi       $a0, $s1, 0x8000
.L800B5ADC:
/* A62DC 800B5ADC 022C1100 */  srl        $a1, $s1, 0x10
/* A62E0 800B5AE0 DCCE020C */  jal        FUN_800b3b70
/* A62E4 800B5AE4 7F00A530 */   andi      $a1, $a1, 0x7f
/* A62E8 800B5AE8 AE6C000C */  jal        CheckCallback
/* A62EC 800B5AEC 00000000 */   nop
/* A62F0 800B5AF0 0D004014 */  bnez       $v0, .L800B5B28
/* A62F4 800B5AF4 1E80023C */   lui       $v0, 0x801e
/* A62F8 800B5AF8 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A62FC 800B5AFC B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A6300 800B5B00 01000224 */  addiu      $v0, $zero, 1
/* A6304 800B5B04 03006214 */  bne        $v1, $v0, .L800B5B14
/* A6308 800B5B08 00000000 */   nop
/* A630C 800B5B0C 216E000C */  jal        FUN_8001b884
/* A6310 800B5B10 00000000 */   nop
.L800B5B14:
/* A6314 800B5B14 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A6318 800B5B18 00000000 */  nop
/* A631C 800B5B1C FFFF4224 */  addiu      $v0, $v0, -1
/* A6320 800B5B20 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A6324 800B5B24 1E80023C */  lui        $v0, %hi(D_801E09F8)
.L800B5B28:
/* A6328 800B5B28 F8094424 */  addiu      $a0, $v0, %lo(D_801E09F8)
/* A632C 800B5B2C E0018324 */  addiu      $v1, $a0, 0x1e0
/* A6330 800B5B30 2B108300 */  sltu       $v0, $a0, $v1
/* A6334 800B5B34 14004010 */  beqz       $v0, .L800B5B88
/* A6338 800B5B38 1E80113C */   lui       $s1, 0x801e
/* A633C 800B5B3C 02000624 */  addiu      $a2, $zero, 2
/* A6340 800B5B40 21286000 */  addu       $a1, $v1, $zero
.L800B5B44:
/* A6344 800B5B44 1000838C */  lw         $v1, 0x10($a0)
/* A6348 800B5B48 00000000 */  nop
/* A634C 800B5B4C 14006290 */  lbu        $v0, 0x14($v1)
/* A6350 800B5B50 00000000 */  nop
/* A6354 800B5B54 2B105200 */  sltu       $v0, $v0, $s2
/* A6358 800B5B58 07004014 */  bnez       $v0, .L800B5B78
/* A635C 800B5B5C 00000000 */   nop
/* A6360 800B5B60 00008290 */  lbu        $v0, ($a0)
/* A6364 800B5B64 00000000 */  nop
/* A6368 800B5B68 03004010 */  beqz       $v0, .L800B5B78
/* A636C 800B5B6C 00000000 */   nop
/* A6370 800B5B70 000066A4 */  sh         $a2, ($v1)
/* A6374 800B5B74 000080A0 */  sb         $zero, ($a0)
.L800B5B78:
/* A6378 800B5B78 14008424 */  addiu      $a0, $a0, 0x14
/* A637C 800B5B7C 2B108500 */  sltu       $v0, $a0, $a1
/* A6380 800B5B80 F0FF4014 */  bnez       $v0, .L800B5B44
/* A6384 800B5B84 00000000 */   nop
.L800B5B88:
/* A6388 800B5B88 D807238E */  lw         $v1, 0x7d8($s1)
/* A638C 800B5B8C 00000000 */  nop
/* A6390 800B5B90 00006294 */  lhu        $v0, ($v1)
/* A6394 800B5B94 0800708C */  lw         $s0, 8($v1)
/* A6398 800B5B98 40110200 */  sll        $v0, $v0, 5
/* A639C 800B5B9C 21100202 */  addu       $v0, $s0, $v0
/* A63A0 800B5BA0 2B100202 */  sltu       $v0, $s0, $v0
/* A63A4 800B5BA4 19004010 */  beqz       $v0, .L800B5C0C
/* A63A8 800B5BA8 00000000 */   nop
.L800B5BAC:
/* A63AC 800B5BAC 14000292 */  lbu        $v0, 0x14($s0)
/* A63B0 800B5BB0 00000000 */  nop
/* A63B4 800B5BB4 2B105200 */  sltu       $v0, $v0, $s2
/* A63B8 800B5BB8 0B004014 */  bnez       $v0, .L800B5BE8
/* A63BC 800B5BBC 00000000 */   nop
/* A63C0 800B5BC0 00000296 */  lhu        $v0, ($s0)
/* A63C4 800B5BC4 00000000 */  nop
/* A63C8 800B5BC8 FEFF4224 */  addiu      $v0, $v0, -2
/* A63CC 800B5BCC 0200422C */  sltiu      $v0, $v0, 2
/* A63D0 800B5BD0 05004010 */  beqz       $v0, .L800B5BE8
/* A63D4 800B5BD4 00000000 */   nop
/* A63D8 800B5BD8 1000048E */  lw         $a0, 0x10($s0)
/* A63DC 800B5BDC 28D1020C */  jal        FUN_800b44a0
/* A63E0 800B5BE0 00000000 */   nop
/* A63E4 800B5BE4 000000A6 */  sh         $zero, ($s0)
.L800B5BE8:
/* A63E8 800B5BE8 D807248E */  lw         $a0, 0x7d8($s1)
/* A63EC 800B5BEC 20001026 */  addiu      $s0, $s0, 0x20
/* A63F0 800B5BF0 00008394 */  lhu        $v1, ($a0)
/* A63F4 800B5BF4 0800828C */  lw         $v0, 8($a0)
/* A63F8 800B5BF8 40190300 */  sll        $v1, $v1, 5
/* A63FC 800B5BFC 21104300 */  addu       $v0, $v0, $v1
/* A6400 800B5C00 2B100202 */  sltu       $v0, $s0, $v0
/* A6404 800B5C04 E9FF4014 */  bnez       $v0, .L800B5BAC
/* A6408 800B5C08 00000000 */   nop
.L800B5C0C:
/* A640C 800B5C0C AE6C000C */  jal        CheckCallback
/* A6410 800B5C10 00000000 */   nop
/* A6414 800B5C14 0B004014 */  bnez       $v0, .L800B5C44
/* A6418 800B5C18 1E80103C */   lui       $s0, %hi(D_801E07B0)
/* A641C 800B5C1C B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A6420 800B5C20 01000224 */  addiu      $v0, $zero, 1
/* A6424 800B5C24 03006214 */  bne        $v1, $v0, .L800B5C34
/* A6428 800B5C28 00000000 */   nop
/* A642C 800B5C2C 216E000C */  jal        FUN_8001b884
/* A6430 800B5C30 00000000 */   nop
.L800B5C34:
/* A6434 800B5C34 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A6438 800B5C38 00000000 */  nop
/* A643C 800B5C3C FFFF4224 */  addiu      $v0, $v0, -1
/* A6440 800B5C40 B00702A2 */  sb         $v0, 0x7b0($s0)
.L800B5C44:
/* A6444 800B5C44 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A6448 800B5C48 1800B28F */  lw         $s2, 0x18($sp)
/* A644C 800B5C4C 1400B18F */  lw         $s1, 0x14($sp)
/* A6450 800B5C50 1000B08F */  lw         $s0, 0x10($sp)
/* A6454 800B5C54 0800E003 */  jr         $ra
/* A6458 800B5C58 2000BD27 */   addiu     $sp, $sp, 0x20
