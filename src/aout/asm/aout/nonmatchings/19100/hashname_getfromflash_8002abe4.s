.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel hashname_getfromflash_8002abe4
/* 1B3E4 8002ABE4 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 1B3E8 8002ABE8 C1040C3C */  lui        $t4, 0x4c1
/* 1B3EC 8002ABEC B71D8C35 */  ori        $t4, $t4, 0x1db7
/* 1B3F0 8002ABF0 21580000 */  addu       $t3, $zero, $zero
/* 1B3F4 8002ABF4 21688000 */  addu       $t5, $a0, $zero
/* 1B3F8 8002ABF8 5000BFAF */  sw         $ra, 0x50($sp)
/* 1B3FC 8002ABFC 0000A891 */  lbu        $t0, ($t5)
/* 1B400 8002AC00 00000000 */  nop
/* 1B404 8002AC04 11000011 */  beqz       $t0, .L8002AC4C
/* 1B408 8002AC08 0100A225 */   addiu     $v0, $t5, 1
.L8002AC0C:
/* 1B40C 8002AC0C 21380000 */  addu       $a3, $zero, $zero
/* 1B410 8002AC10 00004A90 */  lbu        $t2, ($v0)
/* 1B414 8002AC14 01004924 */  addiu      $t1, $v0, 1
.L8002AC18:
/* 1B418 8002AC18 40200B00 */  sll        $a0, $t3, 1
/* 1B41C 8002AC1C 0710E800 */  srav       $v0, $t0, $a3
/* 1B420 8002AC20 01004230 */  andi       $v0, $v0, 1
/* 1B424 8002AC24 25208200 */  or         $a0, $a0, $v0
/* 1B428 8002AC28 C31F0B00 */  sra        $v1, $t3, 0x1f
/* 1B42C 8002AC2C 24186C00 */  and        $v1, $v1, $t4
/* 1B430 8002AC30 0100E724 */  addiu      $a3, $a3, 1
/* 1B434 8002AC34 0600E228 */  slti       $v0, $a3, 6
/* 1B438 8002AC38 F7FF4014 */  bnez       $v0, .L8002AC18
/* 1B43C 8002AC3C 26588300 */   xor       $t3, $a0, $v1
/* 1B440 8002AC40 21404001 */  addu       $t0, $t2, $zero
/* 1B444 8002AC44 F1FF0015 */  bnez       $t0, .L8002AC0C
/* 1B448 8002AC48 21102001 */   addu      $v0, $t1, $zero
.L8002AC4C:
/* 1B44C 8002AC4C 21480000 */  addu       $t1, $zero, $zero
/* 1B450 8002AC50 0E80023C */  lui        $v0, %hi(D_800D8D2C)
/* 1B454 8002AC54 2C8D478C */  lw         $a3, %lo(D_800D8D2C)($v0)
/* 1B458 8002AC58 14800E3C */  lui        $t6, 0x8014
.L8002AC5C:
/* 1B45C 8002AC5C 2A102701 */  slt        $v0, $t1, $a3
/* 1B460 8002AC60 11004010 */  beqz       $v0, .L8002ACA8
/* 1B464 8002AC64 21604000 */   addu      $t4, $v0, $zero
/* 1B468 8002AC68 21102701 */  addu       $v0, $t1, $a3
/* 1B46C 8002AC6C 43200200 */  sra        $a0, $v0, 1
/* 1B470 8002AC70 E02BCA25 */  addiu      $t2, $t6, 0x2be0
/* 1B474 8002AC74 00410400 */  sll        $t0, $a0, 4
/* 1B478 8002AC78 21100A01 */  addu       $v0, $t0, $t2
/* 1B47C 8002AC7C 0000428C */  lw         $v0, ($v0)
/* 1B480 8002AC80 00000000 */  nop
/* 1B484 8002AC84 2B186201 */  sltu       $v1, $t3, $v0
/* 1B488 8002AC88 03006010 */  beqz       $v1, .L8002AC98
/* 1B48C 8002AC8C 2B104B00 */   sltu      $v0, $v0, $t3
/* 1B490 8002AC90 17AB0008 */  j          .L8002AC5C
/* 1B494 8002AC94 21388000 */   addu      $a3, $a0, $zero
.L8002AC98:
/* 1B498 8002AC98 F0FF4014 */  bnez       $v0, .L8002AC5C
/* 1B49C 8002AC9C 01008924 */   addiu     $t1, $a0, 1
/* 1B4A0 8002ACA0 0D008015 */  bnez       $t4, .L8002ACD8
/* 1B4A4 8002ACA4 21104801 */   addu      $v0, $t2, $t0
.L8002ACA8:
/* 1B4A8 8002ACA8 1000A427 */  addiu      $a0, $sp, 0x10
/* 1B4AC 8002ACAC 0180053C */  lui        $a1, %hi(D_80010FEC)
/* 1B4B0 8002ACB0 EC0FA524 */  addiu      $a1, $a1, %lo(D_80010FEC)
/* 1B4B4 8002ACB4 8E81000C */  jal        sprintf
/* 1B4B8 8002ACB8 2130A001 */   addu      $a2, $t5, $zero
/* 1B4BC 8002ACBC 0180043C */  lui        $a0, %hi(D_80010FFC)
/* 1B4C0 8002ACC0 FC0F8424 */  addiu      $a0, $a0, %lo(D_80010FFC)
/* 1B4C4 8002ACC4 FFFF0524 */  addiu      $a1, $zero, -1
/* 1B4C8 8002ACC8 58AA000C */  jal        error_8002a960
/* 1B4CC 8002ACCC 21300000 */   addu      $a2, $zero, $zero
/* 1B4D0 8002ACD0 46AB0008 */  j          .L8002AD18
/* 1B4D4 8002ACD4 FFFF0224 */   addiu     $v0, $zero, -1
.L8002ACD8:
/* 1B4D8 8002ACD8 0C00438C */  lw         $v1, 0xc($v0)
/* 1B4DC 8002ACDC 00000000 */  nop
/* 1B4E0 8002ACE0 0000C3AC */  sw         $v1, ($a2)
/* 1B4E4 8002ACE4 0400448C */  lw         $a0, 4($v0)
/* 1B4E8 8002ACE8 FF7F0224 */  addiu      $v0, $zero, 0x7fff
/* 1B4EC 8002ACEC 2A104400 */  slt        $v0, $v0, $a0
/* 1B4F0 8002ACF0 07004014 */  bnez       $v0, .L8002AD10
/* 1B4F4 8002ACF4 0000A4AC */   sw        $a0, ($a1)
/* 1B4F8 8002ACF8 0E80033C */  lui        $v1, %hi(D_800D8D28)
/* 1B4FC 8002ACFC 288D628C */  lw         $v0, %lo(D_800D8D28)($v1)
/* 1B500 8002AD00 00000000 */  nop
/* 1B504 8002AD04 C0130200 */  sll        $v0, $v0, 0xf
/* 1B508 8002AD08 21108200 */  addu       $v0, $a0, $v0
/* 1B50C 8002AD0C 0000A2AC */  sw         $v0, ($a1)
.L8002AD10:
/* 1B510 8002AD10 21184801 */  addu       $v1, $t2, $t0
/* 1B514 8002AD14 0800628C */  lw         $v0, 8($v1)
.L8002AD18:
/* 1B518 8002AD18 5000BF8F */  lw         $ra, 0x50($sp)
/* 1B51C 8002AD1C 00000000 */  nop
/* 1B520 8002AD20 0800E003 */  jr         $ra
/* 1B524 8002AD24 5800BD27 */   addiu     $sp, $sp, 0x58
