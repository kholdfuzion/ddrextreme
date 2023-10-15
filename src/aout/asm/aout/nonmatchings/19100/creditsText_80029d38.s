.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel creditsText_80029d38
/* 1A538 80029D38 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1A53C 80029D3C 2130E000 */  addu       $a2, $a3, $zero
/* 1A540 80029D40 1580033C */  lui        $v1, %hi(D_8014BA60)
/* 1A544 80029D44 3400A98F */  lw         $t1, 0x34($sp)
/* 1A548 80029D48 3800A88F */  lw         $t0, 0x38($sp)
/* 1A54C 80029D4C 60BA6284 */  lh         $v0, %lo(D_8014BA60)($v1)
/* 1A550 80029D50 3C00A78F */  lw         $a3, 0x3c($sp)
/* 1A554 80029D54 06004010 */  beqz       $v0, .L80029D70
/* 1A558 80029D58 1800BFAF */   sw        $ra, 0x18($sp)
/* 1A55C 80029D5C 0180053C */  lui        $a1, %hi(D_80010ED8)
/* 1A560 80029D60 8E81000C */  jal        sprintf
/* 1A564 80029D64 D80EA524 */   addiu     $a1, $a1, %lo(D_80010ED8)
/* 1A568 80029D68 7BA70008 */  j          .L80029DEC
/* 1A56C 80029D6C 00000000 */   nop
.L80029D70:
/* 1A570 80029D70 01000224 */  addiu      $v0, $zero, 1
/* 1A574 80029D74 1000E210 */  beq        $a3, $v0, .L80029DB8
/* 1A578 80029D78 00000000 */   nop
/* 1A57C 80029D7C 0A000011 */  beqz       $t0, .L80029DA8
/* 1A580 80029D80 0180053C */   lui       $a1, 0x8001
/* 1A584 80029D84 08002011 */  beqz       $t1, .L80029DA8
/* 1A588 80029D88 00000000 */   nop
/* 1A58C 80029D8C 0180053C */  lui        $a1, %hi(D_80010F50)
/* 1A590 80029D90 500FA524 */  addiu      $a1, $a1, %lo(D_80010F50)
/* 1A594 80029D94 1000A9AF */  sw         $t1, 0x10($sp)
/* 1A598 80029D98 8E81000C */  jal        sprintf
/* 1A59C 80029D9C 1400A8AF */   sw        $t0, 0x14($sp)
/* 1A5A0 80029DA0 7BA70008 */  j          .L80029DEC
/* 1A5A4 80029DA4 00000000 */   nop
.L80029DA8:
/* 1A5A8 80029DA8 8E81000C */  jal        sprintf
/* 1A5AC 80029DAC 700FA524 */   addiu     $a1, $a1, 0xf70
/* 1A5B0 80029DB0 7BA70008 */  j          .L80029DEC
/* 1A5B4 80029DB4 00000000 */   nop
.L80029DB8:
/* 1A5B8 80029DB8 0A000011 */  beqz       $t0, .L80029DE4
/* 1A5BC 80029DBC 0180053C */   lui       $a1, 0x8001
/* 1A5C0 80029DC0 08002011 */  beqz       $t1, .L80029DE4
/* 1A5C4 80029DC4 00000000 */   nop
/* 1A5C8 80029DC8 1000A8AF */  sw         $t0, 0x10($sp)
/* 1A5CC 80029DCC 0180053C */  lui        $a1, %hi(D_80010F8C)
/* 1A5D0 80029DD0 8C0FA524 */  addiu      $a1, $a1, %lo(D_80010F8C)
/* 1A5D4 80029DD4 8E81000C */  jal        sprintf
/* 1A5D8 80029DD8 21382001 */   addu      $a3, $t1, $zero
/* 1A5DC 80029DDC 7BA70008 */  j          .L80029DEC
/* 1A5E0 80029DE0 00000000 */   nop
.L80029DE4:
/* 1A5E4 80029DE4 8E81000C */  jal        sprintf
/* 1A5E8 80029DE8 A80FA524 */   addiu     $a1, $a1, 0xfa8
.L80029DEC:
/* 1A5EC 80029DEC 1800BF8F */  lw         $ra, 0x18($sp)
/* 1A5F0 80029DF0 00000000 */  nop
/* 1A5F4 80029DF4 0800E003 */  jr         $ra
/* 1A5F8 80029DF8 2000BD27 */   addiu     $sp, $sp, 0x20
