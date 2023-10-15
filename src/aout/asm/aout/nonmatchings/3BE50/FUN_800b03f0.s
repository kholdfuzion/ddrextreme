.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b03f0
/* A0BF0 800B03F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A0BF4 800B03F4 1400B1AF */  sw         $s1, 0x14($sp)
/* A0BF8 800B03F8 21880000 */  addu       $s1, $zero, $zero
/* A0BFC 800B03FC 1D80023C */  lui        $v0, %hi(D_801CC948)
/* A0C00 800B0400 1000B0AF */  sw         $s0, 0x10($sp)
/* A0C04 800B0404 48C95024 */  addiu      $s0, $v0, %lo(D_801CC948)
/* A0C08 800B0408 1800BFAF */  sw         $ra, 0x18($sp)
.L800B040C:
/* A0C0C 800B040C 05000292 */  lbu        $v0, 5($s0)
/* A0C10 800B0410 00000000 */  nop
/* A0C14 800B0414 30004010 */  beqz       $v0, .L800B04D8
/* A0C18 800B0418 FFFF0224 */   addiu     $v0, $zero, -1
/* A0C1C 800B041C 0E000382 */  lb         $v1, 0xe($s0)
/* A0C20 800B0420 00000000 */  nop
/* A0C24 800B0424 12006014 */  bnez       $v1, .L800B0470
/* A0C28 800B0428 FDFF0224 */   addiu     $v0, $zero, -3
/* A0C2C 800B042C 1D80033C */  lui        $v1, %hi(D_801D0048)
/* A0C30 800B0430 48006280 */  lb         $v0, %lo(D_801D0048)($v1)
/* A0C34 800B0434 00000000 */  nop
/* A0C38 800B0438 01004238 */  xori       $v0, $v0, 1
/* A0C3C 800B043C 26004010 */  beqz       $v0, .L800B04D8
/* A0C40 800B0440 21102002 */   addu      $v0, $s1, $zero
/* A0C44 800B0444 A4BF020C */  jal        FUN_800afe90
/* A0C48 800B0448 FFFF2432 */   andi      $a0, $s1, 0xffff
/* A0C4C 800B044C FFFF0324 */  addiu      $v1, $zero, -1
/* A0C50 800B0450 03004314 */  bne        $v0, $v1, .L800B0460
/* A0C54 800B0454 FDFF0224 */   addiu     $v0, $zero, -3
/* A0C58 800B0458 36C10208 */  j          .L800B04D8
/* A0C5C 800B045C FFFF0224 */   addiu     $v0, $zero, -1
.L800B0460:
/* A0C60 800B0460 35C10208 */  j          .L800B04D4
/* A0C64 800B0464 0E0002A2 */   sb        $v0, 0xe($s0)
.L800B0468:
/* A0C68 800B0468 2BC10208 */  j          .L800B04AC
/* A0C6C 800B046C 21108000 */   addu      $v0, $a0, $zero
.L800B0470:
/* A0C70 800B0470 13006214 */  bne        $v1, $v0, .L800B04C0
/* A0C74 800B0474 1D80023C */   lui       $v0, %hi(D_801D10B8)
/* A0C78 800B0478 FFFF2632 */  andi       $a2, $s1, 0xffff
/* A0C7C 800B047C 21280000 */  addu       $a1, $zero, $zero
/* A0C80 800B0480 B8104324 */  addiu      $v1, $v0, %lo(D_801D10B8)
/* A0C84 800B0484 21206000 */  addu       $a0, $v1, $zero
.L800B0488:
/* A0C88 800B0488 00006294 */  lhu        $v0, ($v1)
/* A0C8C 800B048C 00000000 */  nop
/* A0C90 800B0490 F5FF4610 */  beq        $v0, $a2, .L800B0468
/* A0C94 800B0494 10006324 */   addiu     $v1, $v1, 0x10
/* A0C98 800B0498 0100A524 */  addiu      $a1, $a1, 1
/* A0C9C 800B049C 2C01A228 */  slti       $v0, $a1, 0x12c
/* A0CA0 800B04A0 F9FF4014 */  bnez       $v0, .L800B0488
/* A0CA4 800B04A4 10008424 */   addiu     $a0, $a0, 0x10
/* A0CA8 800B04A8 21100000 */  addu       $v0, $zero, $zero
.L800B04AC:
/* A0CAC 800B04AC 07004390 */  lbu        $v1, 7($v0)
/* A0CB0 800B04B0 02000224 */  addiu      $v0, $zero, 2
/* A0CB4 800B04B4 07006214 */  bne        $v1, $v0, .L800B04D4
/* A0CB8 800B04B8 FCFF0224 */   addiu     $v0, $zero, -4
/* A0CBC 800B04BC 0E0002A2 */  sb         $v0, 0xe($s0)
.L800B04C0:
/* A0CC0 800B04C0 01003126 */  addiu      $s1, $s1, 1
/* A0CC4 800B04C4 FEFF0234 */  ori        $v0, $zero, 0xfffe
/* A0CC8 800B04C8 2A105100 */  slt        $v0, $v0, $s1
/* A0CCC 800B04CC CFFF4010 */  beqz       $v0, .L800B040C
/* A0CD0 800B04D0 18001026 */   addiu     $s0, $s0, 0x18
.L800B04D4:
/* A0CD4 800B04D4 21102002 */  addu       $v0, $s1, $zero
.L800B04D8:
/* A0CD8 800B04D8 1800BF8F */  lw         $ra, 0x18($sp)
/* A0CDC 800B04DC 1400B18F */  lw         $s1, 0x14($sp)
/* A0CE0 800B04E0 1000B08F */  lw         $s0, 0x10($sp)
/* A0CE4 800B04E4 0800E003 */  jr         $ra
/* A0CE8 800B04E8 2000BD27 */   addiu     $sp, $sp, 0x20
