.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005a45c
/* 4AC5C 8005A45C 2150A000 */  addu       $t2, $a1, $zero
/* 4AC60 8005A460 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4AC64 8005A464 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4AC68 8005A468 80100400 */  sll        $v0, $a0, 2
/* 4AC6C 8005A46C 21104400 */  addu       $v0, $v0, $a0
/* 4AC70 8005A470 C0100200 */  sll        $v0, $v0, 3
/* 4AC74 8005A474 21104400 */  addu       $v0, $v0, $a0
/* 4AC78 8005A478 C0100200 */  sll        $v0, $v0, 3
/* 4AC7C 8005A47C 23104400 */  subu       $v0, $v0, $a0
/* 4AC80 8005A480 80100200 */  sll        $v0, $v0, 2
/* 4AC84 8005A484 21104400 */  addu       $v0, $v0, $a0
/* 4AC88 8005A488 C0100200 */  sll        $v0, $v0, 3
/* 4AC8C 8005A48C 00FFEB30 */  andi       $t3, $a3, 0xff00
/* 4AC90 8005A490 FF00E730 */  andi       $a3, $a3, 0xff
/* 4AC94 8005A494 1800A98F */  lw         $t1, 0x18($sp)
/* 4AC98 8005A498 1C00AE8F */  lw         $t6, 0x1c($sp)
/* 4AC9C 8005A49C 40280300 */  sll        $a1, $v1, 1
/* 4ACA0 8005A4A0 2128A300 */  addu       $a1, $a1, $v1
/* 4ACA4 8005A4A4 C0280500 */  sll        $a1, $a1, 3
/* 4ACA8 8005A4A8 2328A300 */  subu       $a1, $a1, $v1
/* 4ACAC 8005A4AC C0290500 */  sll        $a1, $a1, 7
/* 4ACB0 8005A4B0 2128A300 */  addu       $a1, $a1, $v1
/* 4ACB4 8005A4B4 80280500 */  sll        $a1, $a1, 2
/* 4ACB8 8005A4B8 2128A300 */  addu       $a1, $a1, $v1
/* 4ACBC 8005A4BC C0280500 */  sll        $a1, $a1, 3
/* 4ACC0 8005A4C0 1780033C */  lui        $v1, %hi(D_80172958)
/* 4ACC4 8005A4C4 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4ACC8 8005A4C8 21104300 */  addu       $v0, $v0, $v1
/* 4ACCC 8005A4CC 2128A200 */  addu       $a1, $a1, $v0
/* 4ACD0 8005A4D0 A000A824 */  addiu      $t0, $a1, 0xa0
/* 4ACD4 8005A4D4 02000224 */  addiu      $v0, $zero, 2
/* 4ACD8 8005A4D8 23104900 */  subu       $v0, $v0, $t1
/* 4ACDC 8005A4DC 07104600 */  srav       $v0, $a2, $v0
/* 4ACE0 8005A4E0 C0FF4F30 */  andi       $t7, $v0, 0xffc0
/* 4ACE4 8005A4E4 FF000224 */  addiu      $v0, $zero, 0xff
/* 4ACE8 8005A4E8 07102201 */  srav       $v0, $v0, $t1
/* 4ACEC 8005A4EC 2430C200 */  and        $a2, $a2, $v0
/* 4ACF0 8005A4F0 1000A38F */  lw         $v1, 0x10($sp)
/* 4ACF4 8005A4F4 1400A28F */  lw         $v0, 0x14($sp)
/* 4ACF8 8005A4F8 2168C300 */  addu       $t5, $a2, $v1
/* 4ACFC 8005A4FC 0800C005 */  bltz       $t6, .L8005A520
/* 4AD00 8005A500 2160E200 */   addu      $t4, $a3, $v0
/* 4AD04 8005A504 80200A00 */  sll        $a0, $t2, 2
/* 4AD08 8005A508 21188A00 */  addu       $v1, $a0, $t2
/* 4AD0C 8005A50C C0180300 */  sll        $v1, $v1, 3
/* 4AD10 8005A510 21186800 */  addu       $v1, $v1, $t0
/* 4AD14 8005A514 07006290 */  lbu        $v0, 7($v1)
/* 4AD18 8005A518 4F690108 */  j          .L8005A53C
/* 4AD1C 8005A51C 02004234 */   ori       $v0, $v0, 2
.L8005A520:
/* 4AD20 8005A520 80200A00 */  sll        $a0, $t2, 2
/* 4AD24 8005A524 21188A00 */  addu       $v1, $a0, $t2
/* 4AD28 8005A528 C0180300 */  sll        $v1, $v1, 3
/* 4AD2C 8005A52C 21186800 */  addu       $v1, $v1, $t0
/* 4AD30 8005A530 07006290 */  lbu        $v0, 7($v1)
/* 4AD34 8005A534 00000000 */  nop
/* 4AD38 8005A538 FD004230 */  andi       $v0, $v0, 0xfd
.L8005A53C:
/* 4AD3C 8005A53C 070062A0 */  sb         $v0, 7($v1)
/* 4AD40 8005A540 21288A00 */  addu       $a1, $a0, $t2
/* 4AD44 8005A544 C0280500 */  sll        $a1, $a1, 3
/* 4AD48 8005A548 2128A800 */  addu       $a1, $a1, $t0
/* 4AD4C 8005A54C 03002431 */  andi       $a0, $t1, 3
/* 4AD50 8005A550 C0210400 */  sll        $a0, $a0, 7
/* 4AD54 8005A554 0300C231 */  andi       $v0, $t6, 3
/* 4AD58 8005A558 40110200 */  sll        $v0, $v0, 5
/* 4AD5C 8005A55C 25208200 */  or         $a0, $a0, $v0
/* 4AD60 8005A560 00016331 */  andi       $v1, $t3, 0x100
/* 4AD64 8005A564 03190300 */  sra        $v1, $v1, 4
/* 4AD68 8005A568 25208300 */  or         $a0, $a0, $v1
/* 4AD6C 8005A56C FF03E231 */  andi       $v0, $t7, 0x3ff
/* 4AD70 8005A570 83110200 */  sra        $v0, $v0, 6
/* 4AD74 8005A574 25208200 */  or         $a0, $a0, $v0
/* 4AD78 8005A578 00026331 */  andi       $v1, $t3, 0x200
/* 4AD7C 8005A57C 80180300 */  sll        $v1, $v1, 2
/* 4AD80 8005A580 25208300 */  or         $a0, $a0, $v1
/* 4AD84 8005A584 1600A4A4 */  sh         $a0, 0x16($a1)
/* 4AD88 8005A588 0C00A6A0 */  sb         $a2, 0xc($a1)
/* 4AD8C 8005A58C 0D00A7A0 */  sb         $a3, 0xd($a1)
/* 4AD90 8005A590 1400ADA0 */  sb         $t5, 0x14($a1)
/* 4AD94 8005A594 1500A7A0 */  sb         $a3, 0x15($a1)
/* 4AD98 8005A598 1C00A6A0 */  sb         $a2, 0x1c($a1)
/* 4AD9C 8005A59C 1D00ACA0 */  sb         $t4, 0x1d($a1)
/* 4ADA0 8005A5A0 2400ADA0 */  sb         $t5, 0x24($a1)
/* 4ADA4 8005A5A4 0800E003 */  jr         $ra
/* 4ADA8 8005A5A8 2500ACA0 */   sb        $t4, 0x25($a1)
