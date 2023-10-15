.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_23A8
/* AB8C 8001A38C 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* AB90 8001A390 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* AB94 8001A394 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AB98 8001A398 1800BFAF */  sw         $ra, 0x18($sp)
/* AB9C 8001A39C 1400B1AF */  sw         $s1, 0x14($sp)
/* ABA0 8001A3A0 1000B0AF */  sw         $s0, 0x10($sp)
/* ABA4 8001A3A4 0000428C */  lw         $v0, ($v0)
/* ABA8 8001A3A8 0001103C */  lui        $s0, 0x100
/* ABAC 8001A3AC 24105000 */  and        $v0, $v0, $s0
/* ABB0 8001A3B0 89004014 */  bnez       $v0, .L8001A5D8
/* ABB4 8001A3B4 01000224 */   addiu     $v0, $zero, 1
/* ABB8 8001A3B8 B86C000C */  jal        SetIntrMask
/* ABBC 8001A3BC 21200000 */   addu      $a0, $zero, $zero
/* ABC0 8001A3C0 0D80043C */  lui        $a0, %hi(D_800D2CC0)
/* ABC4 8001A3C4 C02C848C */  lw         $a0, %lo(D_800D2CC0)($a0)
/* ABC8 8001A3C8 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* ABCC 8001A3CC C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* ABD0 8001A3D0 0D80013C */  lui        $at, %hi(D_800D2CCC)
/* ABD4 8001A3D4 59008310 */  beq        $a0, $v1, .L8001A53C
/* ABD8 8001A3D8 CC2C22AC */   sw        $v0, %lo(D_800D2CCC)($at)
/* ABDC 8001A3DC 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* ABE0 8001A3E0 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* ABE4 8001A3E4 00000000 */  nop
/* ABE8 8001A3E8 0000428C */  lw         $v0, ($v0)
/* ABEC 8001A3EC 00000000 */  nop
/* ABF0 8001A3F0 24105000 */  and        $v0, $v0, $s0
/* ABF4 8001A3F4 51004014 */  bnez       $v0, .L8001A53C
/* ABF8 8001A3F8 00000000 */   nop
/* ABFC 8001A3FC 0004113C */  lui        $s1, 0x400
/* AC00 8001A400 0001103C */  lui        $s0, 0x100
.L8001A404:
/* AC04 8001A404 0D80023C */  lui        $v0, %hi(D_800D2CC4)
/* AC08 8001A408 C42C428C */  lw         $v0, %lo(D_800D2CC4)($v0)
/* AC0C 8001A40C 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AC10 8001A410 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AC14 8001A414 01004224 */  addiu      $v0, $v0, 1
/* AC18 8001A418 3F004230 */  andi       $v0, $v0, 0x3f
/* AC1C 8001A41C 08004314 */  bne        $v0, $v1, .L8001A440
/* AC20 8001A420 00000000 */   nop
/* AC24 8001A424 0D80023C */  lui        $v0, %hi(D_800D2BA4)
/* AC28 8001A428 A42B428C */  lw         $v0, %lo(D_800D2BA4)($v0)
/* AC2C 8001A42C 00000000 */  nop
/* AC30 8001A430 03004014 */  bnez       $v0, .L8001A440
/* AC34 8001A434 02000424 */   addiu     $a0, $zero, 2
/* AC38 8001A438 716C000C */  jal        DMACallback
/* AC3C 8001A43C 21280000 */   addu      $a1, $zero, $zero
.L8001A440:
/* AC40 8001A440 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* AC44 8001A444 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* AC48 8001A448 00000000 */  nop
/* AC4C 8001A44C 0000628C */  lw         $v0, ($v1)
/* AC50 8001A450 00000000 */  nop
/* AC54 8001A454 24105100 */  and        $v0, $v0, $s1
/* AC58 8001A458 06004014 */  bnez       $v0, .L8001A474
/* AC5C 8001A45C 0004043C */   lui       $a0, 0x400
.L8001A460:
/* AC60 8001A460 0000628C */  lw         $v0, ($v1)
/* AC64 8001A464 00000000 */  nop
/* AC68 8001A468 24104400 */  and        $v0, $v0, $a0
/* AC6C 8001A46C FCFF4010 */  beqz       $v0, .L8001A460
/* AC70 8001A470 00000000 */   nop
.L8001A474:
/* AC74 8001A474 0D80053C */  lui        $a1, %hi(D_800D2CC4)
/* AC78 8001A478 C42CA58C */  lw         $a1, %lo(D_800D2CC4)($a1)
/* AC7C 8001A47C 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* AC80 8001A480 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* AC84 8001A484 00000000 */  nop
/* AC88 8001A488 40100300 */  sll        $v0, $v1, 1
/* AC8C 8001A48C 21104300 */  addu       $v0, $v0, $v1
/* AC90 8001A490 40110200 */  sll        $v0, $v0, 5
/* AC94 8001A494 40180500 */  sll        $v1, $a1, 1
/* AC98 8001A498 21186500 */  addu       $v1, $v1, $a1
/* AC9C 8001A49C 0F80043C */  lui        $a0, %hi(D_800EE7AC)
/* ACA0 8001A4A0 21208200 */  addu       $a0, $a0, $v0
/* ACA4 8001A4A4 ACE7848C */  lw         $a0, %lo(D_800EE7AC)($a0)
/* ACA8 8001A4A8 0D80053C */  lui        $a1, %hi(D_800D2CC4)
/* ACAC 8001A4AC C42CA58C */  lw         $a1, %lo(D_800D2CC4)($a1)
/* ACB0 8001A4B0 40190300 */  sll        $v1, $v1, 5
/* ACB4 8001A4B4 40100500 */  sll        $v0, $a1, 1
/* ACB8 8001A4B8 21104500 */  addu       $v0, $v0, $a1
/* ACBC 8001A4BC 40110200 */  sll        $v0, $v0, 5
/* ACC0 8001A4C0 0F80053C */  lui        $a1, %hi(D_800EE7B0)
/* ACC4 8001A4C4 2128A200 */  addu       $a1, $a1, $v0
/* ACC8 8001A4C8 B0E7A58C */  lw         $a1, %lo(D_800EE7B0)($a1)
/* ACCC 8001A4CC 0F80023C */  lui        $v0, %hi(D_800EE7A8)
/* ACD0 8001A4D0 21104300 */  addu       $v0, $v0, $v1
/* ACD4 8001A4D4 A8E7428C */  lw         $v0, %lo(D_800EE7A8)($v0)
/* ACD8 8001A4D8 00000000 */  nop
/* ACDC 8001A4DC 09F84000 */  jalr       $v0
/* ACE0 8001A4E0 00000000 */   nop
/* ACE4 8001A4E4 0D80023C */  lui        $v0, %hi(D_800D2CC4)
/* ACE8 8001A4E8 C42C428C */  lw         $v0, %lo(D_800D2CC4)($v0)
/* ACEC 8001A4EC 00000000 */  nop
/* ACF0 8001A4F0 01004224 */  addiu      $v0, $v0, 1
/* ACF4 8001A4F4 3F004230 */  andi       $v0, $v0, 0x3f
/* ACF8 8001A4F8 0D80013C */  lui        $at, %hi(D_800D2CC4)
/* ACFC 8001A4FC C42C22AC */  sw         $v0, %lo(D_800D2CC4)($at)
/* AD00 8001A500 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AD04 8001A504 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AD08 8001A508 0D80023C */  lui        $v0, %hi(D_800D2CC4)
/* AD0C 8001A50C C42C428C */  lw         $v0, %lo(D_800D2CC4)($v0)
/* AD10 8001A510 00000000 */  nop
/* AD14 8001A514 09006210 */  beq        $v1, $v0, .L8001A53C
/* AD18 8001A518 00000000 */   nop
/* AD1C 8001A51C 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* AD20 8001A520 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* AD24 8001A524 00000000 */  nop
/* AD28 8001A528 0000428C */  lw         $v0, ($v0)
/* AD2C 8001A52C 00000000 */  nop
/* AD30 8001A530 24105000 */  and        $v0, $v0, $s0
/* AD34 8001A534 B3FF4010 */  beqz       $v0, .L8001A404
/* AD38 8001A538 00000000 */   nop
.L8001A53C:
/* AD3C 8001A53C 0D80043C */  lui        $a0, %hi(D_800D2CCC)
/* AD40 8001A540 CC2C848C */  lw         $a0, %lo(D_800D2CCC)($a0)
/* AD44 8001A544 B86C000C */  jal        SetIntrMask
/* AD48 8001A548 00000000 */   nop
/* AD4C 8001A54C 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AD50 8001A550 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AD54 8001A554 0D80023C */  lui        $v0, %hi(D_800D2CC4)
/* AD58 8001A558 C42C428C */  lw         $v0, %lo(D_800D2CC4)($v0)
/* AD5C 8001A55C 00000000 */  nop
/* AD60 8001A560 16006214 */  bne        $v1, $v0, .L8001A5BC
/* AD64 8001A564 00000000 */   nop
/* AD68 8001A568 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* AD6C 8001A56C AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* AD70 8001A570 00000000 */  nop
/* AD74 8001A574 0000428C */  lw         $v0, ($v0)
/* AD78 8001A578 0001033C */  lui        $v1, 0x100
/* AD7C 8001A57C 24104300 */  and        $v0, $v0, $v1
/* AD80 8001A580 0E004014 */  bnez       $v0, .L8001A5BC
/* AD84 8001A584 00000000 */   nop
/* AD88 8001A588 0D80033C */  lui        $v1, %hi(D_800D2BA0)
/* AD8C 8001A58C A02B6324 */  addiu      $v1, $v1, %lo(D_800D2BA0)
/* AD90 8001A590 0000628C */  lw         $v0, ($v1)
/* AD94 8001A594 00000000 */  nop
/* AD98 8001A598 08004010 */  beqz       $v0, .L8001A5BC
/* AD9C 8001A59C 00000000 */   nop
/* ADA0 8001A5A0 0400648C */  lw         $a0, 4($v1)
/* ADA4 8001A5A4 00000000 */  nop
/* ADA8 8001A5A8 04008010 */  beqz       $a0, .L8001A5BC
/* ADAC 8001A5AC F8FF6224 */   addiu     $v0, $v1, -8
/* ADB0 8001A5B0 080040AC */  sw         $zero, 8($v0)
/* ADB4 8001A5B4 09F88000 */  jalr       $a0
/* ADB8 8001A5B8 00000000 */   nop
.L8001A5BC:
/* ADBC 8001A5BC 0D80023C */  lui        $v0, %hi(D_800D2CC0)
/* ADC0 8001A5C0 C02C428C */  lw         $v0, %lo(D_800D2CC0)($v0)
/* ADC4 8001A5C4 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* ADC8 8001A5C8 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* ADCC 8001A5CC 00000000 */  nop
/* ADD0 8001A5D0 23104300 */  subu       $v0, $v0, $v1
/* ADD4 8001A5D4 3F004230 */  andi       $v0, $v0, 0x3f
.L8001A5D8:
/* ADD8 8001A5D8 1800BF8F */  lw         $ra, 0x18($sp)
/* ADDC 8001A5DC 1400B18F */  lw         $s1, 0x14($sp)
/* ADE0 8001A5E0 1000B08F */  lw         $s0, 0x10($sp)
/* ADE4 8001A5E4 0800E003 */  jr         $ra
/* ADE8 8001A5E8 2000BD27 */   addiu     $sp, $sp, 0x20
