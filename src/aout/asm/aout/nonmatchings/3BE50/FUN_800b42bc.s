.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b42bc
/* A4ABC 800B42BC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A4AC0 800B42C0 1000B0AF */  sw         $s0, 0x10($sp)
/* A4AC4 800B42C4 21808000 */  addu       $s0, $a0, $zero
/* A4AC8 800B42C8 1800B2AF */  sw         $s2, 0x18($sp)
/* A4ACC 800B42CC 1E80123C */  lui        $s2, %hi(D_801E07D8)
/* A4AD0 800B42D0 D807428E */  lw         $v0, %lo(D_801E07D8)($s2)
/* A4AD4 800B42D4 0180033C */  lui        $v1, %hi(D_800172F0)
/* A4AD8 800B42D8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A4ADC 800B42DC 1400B1AF */  sw         $s1, 0x14($sp)
/* A4AE0 800B42E0 02004494 */  lhu        $a0, 2($v0)
/* A4AE4 800B42E4 F0726324 */  addiu      $v1, $v1, %lo(D_800172F0)
/* A4AE8 800B42E8 21208300 */  addu       $a0, $a0, $v1
/* A4AEC 800B42EC 00009190 */  lbu        $s1, ($a0)
/* A4AF0 800B42F0 A5DA020C */  jal        FUN_800b6a94
/* A4AF4 800B42F4 00000000 */   nop
/* A4AF8 800B42F8 FF0F0226 */  addiu      $v0, $s0, 0xfff
/* A4AFC 800B42FC 03004104 */  bgez       $v0, .L800B430C
/* A4B00 800B4300 00130200 */   sll       $v0, $v0, 0xc
/* A4B04 800B4304 FE1F0226 */  addiu      $v0, $s0, 0x1ffe
/* A4B08 800B4308 00130200 */  sll        $v0, $v0, 0xc
.L800B430C:
/* A4B0C 800B430C 03360200 */  sra        $a2, $v0, 0x18
/* A4B10 800B4310 5A00C004 */  bltz       $a2, .L800B447C
/* A4B14 800B4314 FEFF2226 */   addiu     $v0, $s1, -2
/* A4B18 800B4318 2A104600 */  slt        $v0, $v0, $a2
/* A4B1C 800B431C 57004014 */  bnez       $v0, .L800B447C
/* A4B20 800B4320 1E80053C */   lui       $a1, %hi(D_801E07B8)
/* A4B24 800B4324 D807428E */  lw         $v0, 0x7d8($s2)
/* A4B28 800B4328 B807A38C */  lw         $v1, %lo(D_801E07B8)($a1)
/* A4B2C 800B432C 00004494 */  lhu        $a0, ($v0)
/* A4B30 800B4330 00000000 */  nop
/* A4B34 800B4334 2B186400 */  sltu       $v1, $v1, $a0
/* A4B38 800B4338 50006010 */  beqz       $v1, .L800B447C
/* A4B3C 800B433C B807A224 */   addiu     $v0, $a1, 0x7b8
/* A4B40 800B4340 0400508C */  lw         $s0, 4($v0)
/* A4B44 800B4344 21184000 */  addu       $v1, $v0, $zero
/* A4B48 800B4348 2140A000 */  addu       $t0, $a1, $zero
.L800B434C:
/* A4B4C 800B434C 02000296 */  lhu        $v0, 2($s0)
/* A4B50 800B4350 00000000 */  nop
/* A4B54 800B4354 42004014 */  bnez       $v0, .L800B4460
/* A4B58 800B4358 00000000 */   nop
/* A4B5C 800B435C 01000492 */  lbu        $a0, 1($s0)
/* A4B60 800B4360 00000000 */  nop
/* A4B64 800B4364 2A108600 */  slt        $v0, $a0, $a2
/* A4B68 800B4368 3D004014 */  bnez       $v0, .L800B4460
/* A4B6C 800B436C 00000000 */   nop
/* A4B70 800B4370 0800638C */  lw         $v1, 8($v1)
/* A4B74 800B4374 00000000 */  nop
/* A4B78 800B4378 40000312 */  beq        $s0, $v1, .L800B447C
/* A4B7C 800B437C 2A10C400 */   slt       $v0, $a2, $a0
/* A4B80 800B4380 18004010 */  beqz       $v0, .L800B43E4
/* A4B84 800B4384 01000224 */   addiu     $v0, $zero, 1
/* A4B88 800B4388 0400628C */  lw         $v0, 4($v1)
/* A4B8C 800B438C 00000000 */  nop
/* A4B90 800B4390 13000212 */  beq        $s0, $v0, .L800B43E0
/* A4B94 800B4394 21200002 */   addu      $a0, $s0, $zero
/* A4B98 800B4398 1E80023C */  lui        $v0, %hi(D_801E07B8)
/* A4B9C 800B439C B8074724 */  addiu      $a3, $v0, %lo(D_801E07B8)
.L800B43A0:
/* A4BA0 800B43A0 0800858C */  lw         $a1, 8($a0)
/* A4BA4 800B43A4 00000000 */  nop
/* A4BA8 800B43A8 0000A290 */  lbu        $v0, ($a1)
/* A4BAC 800B43AC 00000000 */  nop
/* A4BB0 800B43B0 16005110 */  beq        $v0, $s1, .L800B440C
/* A4BB4 800B43B4 00000000 */   nop
/* A4BB8 800B43B8 0800E28C */  lw         $v0, 8($a3)
/* A4BBC 800B43BC 00000000 */  nop
/* A4BC0 800B43C0 0400428C */  lw         $v0, 4($v0)
/* A4BC4 800B43C4 00000000 */  nop
/* A4BC8 800B43C8 0400438C */  lw         $v1, 4($v0)
/* A4BCC 800B43CC 00000000 */  nop
/* A4BD0 800B43D0 2A008310 */  beq        $a0, $v1, .L800B447C
/* A4BD4 800B43D4 00000000 */   nop
/* A4BD8 800B43D8 F1FFA214 */  bne        $a1, $v0, .L800B43A0
/* A4BDC 800B43DC 2120A000 */   addu      $a0, $a1, $zero
.L800B43E0:
/* A4BE0 800B43E0 01000224 */  addiu      $v0, $zero, 1
.L800B43E4:
/* A4BE4 800B43E4 010006A2 */  sb         $a2, 1($s0)
/* A4BE8 800B43E8 020002A6 */  sh         $v0, 2($s0)
/* A4BEC 800B43EC B807038D */  lw         $v1, 0x7b8($t0)
/* A4BF0 800B43F0 00000000 */  nop
/* A4BF4 800B43F4 01006324 */  addiu      $v1, $v1, 1
/* A4BF8 800B43F8 B9DA020C */  jal        FUN_800b6ae4
/* A4BFC 800B43FC B80703AD */   sw        $v1, 0x7b8($t0)
/* A4C00 800B4400 00000292 */  lbu        $v0, ($s0)
/* A4C04 800B4404 22D10208 */  j          .L800B4488
/* A4C08 800B4408 00130200 */   sll       $v0, $v0, 0xc
.L800B440C:
/* A4C0C 800B440C 0800A28C */  lw         $v0, 8($a1)
/* A4C10 800B4410 00000000 */  nop
/* A4C14 800B4414 080082AC */  sw         $v0, 8($a0)
/* A4C18 800B4418 0800A38C */  lw         $v1, 8($a1)
/* A4C1C 800B441C 00000000 */  nop
/* A4C20 800B4420 040064AC */  sw         $a0, 4($v1)
/* A4C24 800B4424 0800048E */  lw         $a0, 8($s0)
/* A4C28 800B4428 0400B0AC */  sw         $s0, 4($a1)
/* A4C2C 800B442C 0800A4AC */  sw         $a0, 8($a1)
/* A4C30 800B4430 0800028E */  lw         $v0, 8($s0)
/* A4C34 800B4434 00000000 */  nop
/* A4C38 800B4438 040045AC */  sw         $a1, 4($v0)
/* A4C3C 800B443C 01000392 */  lbu        $v1, 1($s0)
/* A4C40 800B4440 080005AE */  sw         $a1, 8($s0)
/* A4C44 800B4444 23186600 */  subu       $v1, $v1, $a2
/* A4C48 800B4448 0100A3A0 */  sb         $v1, 1($a1)
/* A4C4C 800B444C 00000292 */  lbu        $v0, ($s0)
/* A4C50 800B4450 0800038E */  lw         $v1, 8($s0)
/* A4C54 800B4454 21104600 */  addu       $v0, $v0, $a2
/* A4C58 800B4458 F8D00208 */  j          .L800B43E0
/* A4C5C 800B445C 000062A0 */   sb        $v0, ($v1)
.L800B4460:
/* A4C60 800B4460 0800628C */  lw         $v0, 8($v1)
/* A4C64 800B4464 00000000 */  nop
/* A4C68 800B4468 04000212 */  beq        $s0, $v0, .L800B447C
/* A4C6C 800B446C 00000000 */   nop
/* A4C70 800B4470 0800108E */  lw         $s0, 8($s0)
/* A4C74 800B4474 D3D00208 */  j          .L800B434C
/* A4C78 800B4478 00000000 */   nop
.L800B447C:
/* A4C7C 800B447C B9DA020C */  jal        FUN_800b6ae4
/* A4C80 800B4480 00000000 */   nop
/* A4C84 800B4484 FFFF0224 */  addiu      $v0, $zero, -1
.L800B4488:
/* A4C88 800B4488 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A4C8C 800B448C 1800B28F */  lw         $s2, 0x18($sp)
/* A4C90 800B4490 1400B18F */  lw         $s1, 0x14($sp)
/* A4C94 800B4494 1000B08F */  lw         $s0, 0x10($sp)
/* A4C98 800B4498 0800E003 */  jr         $ra
/* A4C9C 800B449C 2000BD27 */   addiu     $sp, $sp, 0x20
