.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005ad90
/* 4B590 8005AD90 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4B594 8005AD94 21408000 */  addu       $t0, $a0, $zero
/* 4B598 8005AD98 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B59C 8005AD9C A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B5A0 8005ADA0 80100800 */  sll        $v0, $t0, 2
/* 4B5A4 8005ADA4 21104800 */  addu       $v0, $v0, $t0
/* 4B5A8 8005ADA8 C0100200 */  sll        $v0, $v0, 3
/* 4B5AC 8005ADAC 21104800 */  addu       $v0, $v0, $t0
/* 4B5B0 8005ADB0 C0100200 */  sll        $v0, $v0, 3
/* 4B5B4 8005ADB4 23104800 */  subu       $v0, $v0, $t0
/* 4B5B8 8005ADB8 80100200 */  sll        $v0, $v0, 2
/* 4B5BC 8005ADBC 21104800 */  addu       $v0, $v0, $t0
/* 4B5C0 8005ADC0 C0100200 */  sll        $v0, $v0, 3
/* 4B5C4 8005ADC4 1000BFAF */  sw         $ra, 0x10($sp)
/* 4B5C8 8005ADC8 40200300 */  sll        $a0, $v1, 1
/* 4B5CC 8005ADCC 21208300 */  addu       $a0, $a0, $v1
/* 4B5D0 8005ADD0 C0200400 */  sll        $a0, $a0, 3
/* 4B5D4 8005ADD4 23208300 */  subu       $a0, $a0, $v1
/* 4B5D8 8005ADD8 C0210400 */  sll        $a0, $a0, 7
/* 4B5DC 8005ADDC 21208300 */  addu       $a0, $a0, $v1
/* 4B5E0 8005ADE0 80200400 */  sll        $a0, $a0, 2
/* 4B5E4 8005ADE4 21208300 */  addu       $a0, $a0, $v1
/* 4B5E8 8005ADE8 C0200400 */  sll        $a0, $a0, 3
/* 4B5EC 8005ADEC 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B5F0 8005ADF0 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B5F4 8005ADF4 21104300 */  addu       $v0, $v0, $v1
/* 4B5F8 8005ADF8 21208200 */  addu       $a0, $a0, $v0
/* 4B5FC 8005ADFC A8288384 */  lh         $v1, 0x28a8($a0)
/* 4B600 8005AE00 00000000 */  nop
/* 4B604 8005AE04 09006514 */  bne        $v1, $a1, .L8005AE2C
/* 4B608 8005AE08 00000000 */   nop
/* 4B60C 8005AE0C AA288284 */  lh         $v0, 0x28aa($a0)
/* 4B610 8005AE10 00000000 */  nop
/* 4B614 8005AE14 05004614 */  bne        $v0, $a2, .L8005AE2C
/* 4B618 8005AE18 00000000 */   nop
/* 4B61C 8005AE1C AC288284 */  lh         $v0, 0x28ac($a0)
/* 4B620 8005AE20 00000000 */  nop
/* 4B624 8005AE24 06004710 */  beq        $v0, $a3, .L8005AE40
/* 4B628 8005AE28 00000000 */   nop
.L8005AE2C:
/* 4B62C 8005AE2C A82885A4 */  sh         $a1, 0x28a8($a0)
/* 4B630 8005AE30 AA2886A4 */  sh         $a2, 0x28aa($a0)
/* 4B634 8005AE34 AC2887A4 */  sh         $a3, 0x28ac($a0)
/* 4B638 8005AE38 6461010C */  jal        FUN_80058590
/* 4B63C 8005AE3C 21200001 */   addu      $a0, $t0, $zero
.L8005AE40:
/* 4B640 8005AE40 1000BF8F */  lw         $ra, 0x10($sp)
/* 4B644 8005AE44 00000000 */  nop
/* 4B648 8005AE48 0800E003 */  jr         $ra
/* 4B64C 8005AE4C 1800BD27 */   addiu     $sp, $sp, 0x18
