.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800555ec
/* 45DEC 800555EC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 45DF0 800555F0 3400B1AF */  sw         $s1, 0x34($sp)
/* 45DF4 800555F4 21888000 */  addu       $s1, $a0, $zero
/* 45DF8 800555F8 0180043C */  lui        $a0, %hi(D_80013E64)
/* 45DFC 800555FC 643E8424 */  addiu      $a0, $a0, %lo(D_80013E64)
/* 45E00 80055600 3800BFAF */  sw         $ra, 0x38($sp)
/* 45E04 80055604 7878000C */  jal        getgameloopmode_8001e1e0
/* 45E08 80055608 3000B0AF */   sw        $s0, 0x30($sp)
/* 45E0C 8005560C 0F80033C */  lui        $v1, %hi(D_800F001C)
/* 45E10 80055610 1C00648C */  lw         $a0, %lo(D_800F001C)($v1)
/* 45E14 80055614 8888053C */  lui        $a1, 0x8888
/* 45E18 80055618 8988A534 */  ori        $a1, $a1, 0x8889
/* 45E1C 8005561C 00230400 */  sll        $a0, $a0, 0xc
/* 45E20 80055620 19008500 */  multu      $a0, $a1
/* 45E24 80055624 1380033C */  lui        $v1, %hi(D_801280E0)
/* 45E28 80055628 E0806324 */  addiu      $v1, $v1, %lo(D_801280E0)
/* 45E2C 8005562C 21104300 */  addu       $v0, $v0, $v1
/* 45E30 80055630 00004590 */  lbu        $a1, ($v0)
/* 45E34 80055634 1380023C */  lui        $v0, %hi(D_801282E0)
/* 45E38 80055638 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 45E3C 8005563C C0180500 */  sll        $v1, $a1, 3
/* 45E40 80055640 23186500 */  subu       $v1, $v1, $a1
/* 45E44 80055644 80180300 */  sll        $v1, $v1, 2
/* 45E48 80055648 21806200 */  addu       $s0, $v1, $v0
/* 45E4C 8005564C 10200000 */  mfhi       $a0
/* 45E50 80055650 F4F1000C */  jal        rsin
/* 45E54 80055654 42210400 */   srl       $a0, $a0, 5
/* 45E58 80055658 21200000 */  addu       $a0, $zero, $zero
/* 45E5C 8005565C C0FE0224 */  addiu      $v0, $zero, -0x140
/* 45E60 80055660 10FF0324 */  addiu      $v1, $zero, -0xf0
/* 45E64 80055664 1400A2AF */  sw         $v0, 0x14($sp)
/* 45E68 80055668 80020224 */  addiu      $v0, $zero, 0x280
/* 45E6C 8005566C 1800A3AF */  sw         $v1, 0x18($sp)
/* 45E70 80055670 E0010324 */  addiu      $v1, $zero, 0x1e0
/* 45E74 80055674 FF000524 */  addiu      $a1, $zero, 0xff
/* 45E78 80055678 21302002 */  addu       $a2, $s1, $zero
/* 45E7C 8005567C 2138C000 */  addu       $a3, $a2, $zero
/* 45E80 80055680 1000B1AF */  sw         $s1, 0x10($sp)
/* 45E84 80055684 1C00B0AF */  sw         $s0, 0x1c($sp)
/* 45E88 80055688 2000A0AF */  sw         $zero, 0x20($sp)
/* 45E8C 8005568C 2400A0AF */  sw         $zero, 0x24($sp)
/* 45E90 80055690 2800A2AF */  sw         $v0, 0x28($sp)
/* 45E94 80055694 58AD010C */  jal        FUN_8006b560
/* 45E98 80055698 2C00A3AF */   sw        $v1, 0x2c($sp)
/* 45E9C 8005569C 3800BF8F */  lw         $ra, 0x38($sp)
/* 45EA0 800556A0 3400B18F */  lw         $s1, 0x34($sp)
/* 45EA4 800556A4 3000B08F */  lw         $s0, 0x30($sp)
/* 45EA8 800556A8 0800E003 */  jr         $ra
/* 45EAC 800556AC 4000BD27 */   addiu     $sp, $sp, 0x40
