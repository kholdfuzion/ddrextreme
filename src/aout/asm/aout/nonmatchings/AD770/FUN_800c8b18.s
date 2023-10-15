.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c8b18
/* B9318 800C8B18 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B931C 800C8B1C 2400B3AF */  sw         $s3, 0x24($sp)
/* B9320 800C8B20 FFFF1324 */  addiu      $s3, $zero, -1
/* B9324 800C8B24 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B9328 800C8B28 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B932C 800C8B2C F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B9330 800C8B30 1800B0AF */  sw         $s0, 0x18($sp)
/* B9334 800C8B34 28005024 */  addiu      $s0, $v0, 0x28
/* B9338 800C8B38 2800BFAF */  sw         $ra, 0x28($sp)
/* B933C 800C8B3C 2000B2AF */  sw         $s2, 0x20($sp)
/* B9340 800C8B40 0800438C */  lw         $v1, 8($v0)
/* B9344 800C8B44 0400528C */  lw         $s2, 4($v0)
/* B9348 800C8B48 0800622C */  sltiu      $v0, $v1, 8
/* B934C 800C8B4C 76004010 */  beqz       $v0, .L800C8D28
/* B9350 800C8B50 21880000 */   addu      $s1, $zero, $zero
/* B9354 800C8B54 0180023C */  lui        $v0, %hi(D_80017A58)
/* B9358 800C8B58 587A4224 */  addiu      $v0, $v0, %lo(D_80017A58)
/* B935C 800C8B5C 80180300 */  sll        $v1, $v1, 2
/* B9360 800C8B60 21186200 */  addu       $v1, $v1, $v0
/* B9364 800C8B64 0000628C */  lw         $v0, ($v1)
/* B9368 800C8B68 00000000 */  nop
/* B936C 800C8B6C 08004000 */  jr         $v0
/* B9370 800C8B70 00000000 */   nop
/* B9374 800C8B74 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9378 800C8B78 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B937C 800C8B7C 0800628C */  lw         $v0, 8($v1)
/* B9380 800C8B80 00000000 */  nop
/* B9384 800C8B84 01004224 */  addiu      $v0, $v0, 1
/* B9388 800C8B88 080062AC */  sw         $v0, 8($v1)
/* B938C 800C8B8C 21200002 */  addu       $a0, $s0, $zero
/* B9390 800C8B90 0200063C */  lui        $a2, 2
/* B9394 800C8B94 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B9398 800C8B98 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B939C 800C8B9C F0B71026 */  addiu      $s0, $s0, -0x4810
/* B93A0 800C8BA0 9000028E */  lw         $v0, 0x90($s0)
/* B93A4 800C8BA4 06000724 */  addiu      $a3, $zero, 6
/* B93A8 800C8BA8 9726030C */  jal        FUN_800c9a5c
/* B93AC 800C8BAC 1000A2AF */   sw        $v0, 0x10($sp)
/* B93B0 800C8BB0 16230308 */  j          .L800C8C58
/* B93B4 800C8BB4 00000000 */   nop
/* B93B8 800C8BB8 EE09030C */  jal        FUN_800c27b8
/* B93BC 800C8BBC 21200002 */   addu      $a0, $s0, $zero
/* B93C0 800C8BC0 21184000 */  addu       $v1, $v0, $zero
/* B93C4 800C8BC4 FEFF0224 */  addiu      $v0, $zero, -2
/* B93C8 800C8BC8 57006210 */  beq        $v1, $v0, .L800C8D28
/* B93CC 800C8BCC 01000224 */   addiu     $v0, $zero, 1
/* B93D0 800C8BD0 2E006214 */  bne        $v1, $v0, .L800C8C8C
/* B93D4 800C8BD4 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B93D8 800C8BD8 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B93DC 800C8BDC 0800628C */  lw         $v0, 8($v1)
/* B93E0 800C8BE0 00000000 */  nop
/* B93E4 800C8BE4 01004224 */  addiu      $v0, $v0, 1
/* B93E8 800C8BE8 080062AC */  sw         $v0, 8($v1)
/* B93EC 800C8BEC 21200002 */  addu       $a0, $s0, $zero
/* B93F0 800C8BF0 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B93F4 800C8BF4 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B93F8 800C8BF8 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B93FC 800C8BFC 9C00068E */  lw         $a2, 0x9c($s0)
/* B9400 800C8C00 A828030C */  jal        FUN_800ca2a0
/* B9404 800C8C04 0200073C */   lui       $a3, 2
/* B9408 800C8C08 16230308 */  j          .L800C8C58
/* B940C 800C8C0C 00000000 */   nop
/* B9410 800C8C10 EE09030C */  jal        FUN_800c27b8
/* B9414 800C8C14 21200002 */   addu      $a0, $s0, $zero
/* B9418 800C8C18 21184000 */  addu       $v1, $v0, $zero
/* B941C 800C8C1C FEFF0224 */  addiu      $v0, $zero, -2
/* B9420 800C8C20 41006210 */  beq        $v1, $v0, .L800C8D28
/* B9424 800C8C24 01000224 */   addiu     $v0, $zero, 1
/* B9428 800C8C28 18006214 */  bne        $v1, $v0, .L800C8C8C
/* B942C 800C8C2C 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B9430 800C8C30 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9434 800C8C34 0800628C */  lw         $v0, 8($v1)
/* B9438 800C8C38 00000000 */  nop
/* B943C 800C8C3C 01004224 */  addiu      $v0, $v0, 1
/* B9440 800C8C40 080062AC */  sw         $v0, 8($v1)
/* B9444 800C8C44 21200002 */  addu       $a0, $s0, $zero
/* B9448 800C8C48 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B944C 800C8C4C F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B9450 800C8C50 8A27030C */  jal        FUN_800c9e28
/* B9454 800C8C54 F0B71026 */   addiu     $s0, $s0, -0x4810
.L800C8C58:
/* B9458 800C8C58 0800028E */  lw         $v0, 8($s0)
/* B945C 800C8C5C 00000000 */  nop
/* B9460 800C8C60 01004224 */  addiu      $v0, $v0, 1
/* B9464 800C8C64 4A230308 */  j          .L800C8D28
/* B9468 800C8C68 080002AE */   sw        $v0, 8($s0)
/* B946C 800C8C6C EE09030C */  jal        FUN_800c27b8
/* B9470 800C8C70 21200002 */   addu      $a0, $s0, $zero
/* B9474 800C8C74 21184000 */  addu       $v1, $v0, $zero
/* B9478 800C8C78 FEFF0224 */  addiu      $v0, $zero, -2
/* B947C 800C8C7C 2A006210 */  beq        $v1, $v0, .L800C8D28
/* B9480 800C8C80 01000224 */   addiu     $v0, $zero, 1
/* B9484 800C8C84 03006210 */  beq        $v1, $v0, .L800C8C94
/* B9488 800C8C88 00000000 */   nop
.L800C8C8C:
/* B948C 800C8C8C 4A230308 */  j          .L800C8D28
/* B9490 800C8C90 21884000 */   addu      $s1, $v0, $zero
.L800C8C94:
/* B9494 800C8C94 1C00048E */  lw         $a0, 0x1c($s0)
/* B9498 800C8C98 00000000 */  nop
/* B949C 800C8C9C 00008290 */  lbu        $v0, ($a0)
/* B94A0 800C8CA0 00000000 */  nop
/* B94A4 800C8CA4 10004230 */  andi       $v0, $v0, 0x10
/* B94A8 800C8CA8 07004010 */  beqz       $v0, .L800C8CC8
/* B94AC 800C8CAC 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B94B0 800C8CB0 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B94B4 800C8CB4 0800628C */  lw         $v0, 8($v1)
/* B94B8 800C8CB8 00000000 */  nop
/* B94BC 800C8CBC FFFF4224 */  addiu      $v0, $v0, -1
/* B94C0 800C8CC0 4A230308 */  j          .L800C8D28
/* B94C4 800C8CC4 080062AC */   sw        $v0, 8($v1)
.L800C8CC8:
/* B94C8 800C8CC8 01008490 */  lbu        $a0, 1($a0)
/* B94CC 800C8CCC 00000000 */  nop
/* B94D0 800C8CD0 60008230 */  andi       $v0, $a0, 0x60
/* B94D4 800C8CD4 0B004010 */  beqz       $v0, .L800C8D04
/* B94D8 800C8CD8 40008230 */   andi      $v0, $a0, 0x40
/* B94DC 800C8CDC 02004010 */  beqz       $v0, .L800C8CE8
/* B94E0 800C8CE0 FAFF1324 */   addiu     $s3, $zero, -6
/* B94E4 800C8CE4 FBFF1324 */  addiu      $s3, $zero, -5
.L800C8CE8:
/* B94E8 800C8CE8 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B94EC 800C8CEC F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B94F0 800C8CF0 9C00628C */  lw         $v0, 0x9c($v1)
/* B94F4 800C8CF4 01001124 */  addiu      $s1, $zero, 1
/* B94F8 800C8CF8 21104300 */  addu       $v0, $v0, $v1
/* B94FC 800C8CFC 4A230308 */  j          .L800C8D28
/* B9500 800C8D00 1E0040A0 */   sb        $zero, 0x1e($v0)
.L800C8D04:
/* B9504 800C8D04 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9508 800C8D08 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B950C 800C8D0C 0800628C */  lw         $v0, 8($v1)
/* B9510 800C8D10 00000000 */  nop
/* B9514 800C8D14 01004224 */  addiu      $v0, $v0, 1
/* B9518 800C8D18 080062AC */  sw         $v0, 8($v1)
/* B951C 800C8D1C 21900000 */  addu       $s2, $zero, $zero
/* B9520 800C8D20 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B9524 800C8D24 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C8D28:
/* B9528 800C8D28 03002012 */  beqz       $s1, .L800C8D38
/* B952C 800C8D2C 2080023C */   lui       $v0, %hi(D_801FB7FC)
/* B9530 800C8D30 21900000 */  addu       $s2, $zero, $zero
/* B9534 800C8D34 FCB753AC */  sw         $s3, %lo(D_801FB7FC)($v0)
.L800C8D38:
/* B9538 800C8D38 21104002 */  addu       $v0, $s2, $zero
/* B953C 800C8D3C 2800BF8F */  lw         $ra, 0x28($sp)
/* B9540 800C8D40 2400B38F */  lw         $s3, 0x24($sp)
/* B9544 800C8D44 2000B28F */  lw         $s2, 0x20($sp)
/* B9548 800C8D48 1C00B18F */  lw         $s1, 0x1c($sp)
/* B954C 800C8D4C 1800B08F */  lw         $s0, 0x18($sp)
/* B9550 800C8D50 0800E003 */  jr         $ra
/* B9554 800C8D54 3000BD27 */   addiu     $sp, $sp, 0x30
