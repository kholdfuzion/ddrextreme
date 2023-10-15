.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_26C
/* BBD0 8001B3D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BBD4 8001B3D4 1400B1AF */  sw         $s1, 0x14($sp)
/* BBD8 8001B3D8 0D80113C */  lui        $s1, %hi(D_800D2D60)
/* BBDC 8001B3DC 602D3126 */  addiu      $s1, $s1, %lo(D_800D2D60)
/* BBE0 8001B3E0 2400BFAF */  sw         $ra, 0x24($sp)
/* BBE4 8001B3E4 2000B4AF */  sw         $s4, 0x20($sp)
/* BBE8 8001B3E8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BBEC 8001B3EC 1800B2AF */  sw         $s2, 0x18($sp)
/* BBF0 8001B3F0 1000B0AF */  sw         $s0, 0x10($sp)
/* BBF4 8001B3F4 00002296 */  lhu        $v0, ($s1)
/* BBF8 8001B3F8 00000000 */  nop
/* BBFC 8001B3FC 0A004014 */  bnez       $v0, .L8001B428
/* BC00 8001B400 00000000 */   nop
/* BC04 8001B404 0D80023C */  lui        $v0, %hi(D_800D3DEC)
/* BC08 8001B408 EC3D428C */  lw         $v0, %lo(D_800D3DEC)($v0)
/* BC0C 8001B40C 00000000 */  nop
/* BC10 8001B410 00004594 */  lhu        $a1, ($v0)
/* BC14 8001B414 0180043C */  lui        $a0, %hi(D_80010304)
/* BC18 8001B418 755F000C */  jal        FUN_80017dd4
/* BC1C 8001B41C 04038424 */   addiu     $a0, $a0, %lo(D_80010304)
/* BC20 8001B420 116E000C */  jal        ReturnFromException
/* BC24 8001B424 00000000 */   nop
.L8001B428:
/* BC28 8001B428 0D80043C */  lui        $a0, %hi(D_800D3DEC)
/* BC2C 8001B42C EC3D848C */  lw         $a0, %lo(D_800D3DEC)($a0)
/* BC30 8001B430 30002396 */  lhu        $v1, 0x30($s1)
/* BC34 8001B434 01000224 */  addiu      $v0, $zero, 1
/* BC38 8001B438 020022A6 */  sh         $v0, 2($s1)
/* BC3C 8001B43C 0D80023C */  lui        $v0, %hi(D_800D3DF0)
/* BC40 8001B440 F03D428C */  lw         $v0, %lo(D_800D3DF0)($v0)
/* BC44 8001B444 00008494 */  lhu        $a0, ($a0)
/* BC48 8001B448 00004294 */  lhu        $v0, ($v0)
/* BC4C 8001B44C 24186400 */  and        $v1, $v1, $a0
/* BC50 8001B450 24104300 */  and        $v0, $v0, $v1
/* BC54 8001B454 26004010 */  beqz       $v0, .L8001B4F0
/* BC58 8001B458 21804000 */   addu      $s0, $v0, $zero
/* BC5C 8001B45C 01001324 */  addiu      $s3, $zero, 1
/* BC60 8001B460 04003426 */  addiu      $s4, $s1, 4
.L8001B464:
/* BC64 8001B464 16000012 */  beqz       $s0, .L8001B4C0
/* BC68 8001B468 21880000 */   addu      $s1, $zero, $zero
/* BC6C 8001B46C 21908002 */  addu       $s2, $s4, $zero
.L8001B470:
/* BC70 8001B470 0B00222A */  slti       $v0, $s1, 0xb
/* BC74 8001B474 12004010 */  beqz       $v0, .L8001B4C0
/* BC78 8001B478 01000232 */   andi      $v0, $s0, 1
/* BC7C 8001B47C 0B004010 */  beqz       $v0, .L8001B4AC
/* BC80 8001B480 04103302 */   sllv      $v0, $s3, $s1
/* BC84 8001B484 0D80033C */  lui        $v1, %hi(D_800D3DEC)
/* BC88 8001B488 EC3D638C */  lw         $v1, %lo(D_800D3DEC)($v1)
/* BC8C 8001B48C 27100200 */  nor        $v0, $zero, $v0
/* BC90 8001B490 000062A4 */  sh         $v0, ($v1)
/* BC94 8001B494 0000428E */  lw         $v0, ($s2)
/* BC98 8001B498 00000000 */  nop
/* BC9C 8001B49C 03004010 */  beqz       $v0, .L8001B4AC
/* BCA0 8001B4A0 00000000 */   nop
/* BCA4 8001B4A4 09F84000 */  jalr       $v0
/* BCA8 8001B4A8 00000000 */   nop
.L8001B4AC:
/* BCAC 8001B4AC 04005226 */  addiu      $s2, $s2, 4
/* BCB0 8001B4B0 42801000 */  srl        $s0, $s0, 1
/* BCB4 8001B4B4 FFFF0232 */  andi       $v0, $s0, 0xffff
/* BCB8 8001B4B8 EDFF4014 */  bnez       $v0, .L8001B470
/* BCBC 8001B4BC 01003126 */   addiu     $s1, $s1, 1
.L8001B4C0:
/* BCC0 8001B4C0 0D80043C */  lui        $a0, %hi(D_800D3DEC)
/* BCC4 8001B4C4 EC3D848C */  lw         $a0, %lo(D_800D3DEC)($a0)
/* BCC8 8001B4C8 0D80033C */  lui        $v1, %hi(D_800D2D90)
/* BCCC 8001B4CC 902D6394 */  lhu        $v1, %lo(D_800D2D90)($v1)
/* BCD0 8001B4D0 0D80023C */  lui        $v0, %hi(D_800D3DF0)
/* BCD4 8001B4D4 F03D428C */  lw         $v0, %lo(D_800D3DF0)($v0)
/* BCD8 8001B4D8 00008494 */  lhu        $a0, ($a0)
/* BCDC 8001B4DC 00004294 */  lhu        $v0, ($v0)
/* BCE0 8001B4E0 24186400 */  and        $v1, $v1, $a0
/* BCE4 8001B4E4 24104300 */  and        $v0, $v0, $v1
/* BCE8 8001B4E8 DEFF4014 */  bnez       $v0, .L8001B464
/* BCEC 8001B4EC 21804000 */   addu      $s0, $v0, $zero
.L8001B4F0:
/* BCF0 8001B4F0 0D80053C */  lui        $a1, %hi(D_800D3DEC)
/* BCF4 8001B4F4 EC3DA58C */  lw         $a1, %lo(D_800D3DEC)($a1)
/* BCF8 8001B4F8 0D80063C */  lui        $a2, %hi(D_800D3DF0)
/* BCFC 8001B4FC F03DC68C */  lw         $a2, %lo(D_800D3DF0)($a2)
/* BD00 8001B500 0000A294 */  lhu        $v0, ($a1)
/* BD04 8001B504 0000C394 */  lhu        $v1, ($a2)
/* BD08 8001B508 00000000 */  nop
/* BD0C 8001B50C 24104300 */  and        $v0, $v0, $v1
/* BD10 8001B510 16004010 */  beqz       $v0, .L8001B56C
/* BD14 8001B514 00000000 */   nop
/* BD18 8001B518 0D80023C */  lui        $v0, %hi(D_800D3DF8)
/* BD1C 8001B51C F83D4224 */  addiu      $v0, $v0, %lo(D_800D3DF8)
/* BD20 8001B520 0000438C */  lw         $v1, ($v0)
/* BD24 8001B524 00000000 */  nop
/* BD28 8001B528 21206000 */  addu       $a0, $v1, $zero
/* BD2C 8001B52C 01006324 */  addiu      $v1, $v1, 1
/* BD30 8001B530 01088428 */  slti       $a0, $a0, 0x801
/* BD34 8001B534 0F008014 */  bnez       $a0, INTR_OBJ_410
/* BD38 8001B538 000043AC */   sw        $v1, ($v0)
/* BD3C 8001B53C 0180043C */  lui        $a0, %hi(D_80010320)
/* BD40 8001B540 20038424 */  addiu      $a0, $a0, %lo(D_80010320)
/* BD44 8001B544 0000A594 */  lhu        $a1, ($a1)
/* BD48 8001B548 0000C694 */  lhu        $a2, ($a2)
/* BD4C 8001B54C 755F000C */  jal        FUN_80017dd4
/* BD50 8001B550 00000000 */   nop
/* BD54 8001B554 0D80023C */  lui        $v0, %hi(D_800D3DEC)
/* BD58 8001B558 EC3D428C */  lw         $v0, %lo(D_800D3DEC)($v0)
/* BD5C 8001B55C 0D80013C */  lui        $at, %hi(D_800D3DF8)
/* BD60 8001B560 F83D20AC */  sw         $zero, %lo(D_800D3DF8)($at)
/* BD64 8001B564 5D6D0008 */  j          INTR_OBJ_410
/* BD68 8001B568 000040A4 */   sh        $zero, ($v0)
.L8001B56C:
/* BD6C 8001B56C 0D80013C */  lui        $at, %hi(D_800D3DF8)
/* BD70 8001B570 F83D20AC */  sw         $zero, %lo(D_800D3DF8)($at)
