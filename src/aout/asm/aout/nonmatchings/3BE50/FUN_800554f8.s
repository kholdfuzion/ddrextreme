.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800554f8
/* 45CF8 800554F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45CFC 800554FC 1000BFAF */  sw         $ra, 0x10($sp)
/* 45D00 80055500 D20B010C */  jal        FUN_80042f48
/* 45D04 80055504 00000000 */   nop
/* 45D08 80055508 0180043C */  lui        $a0, %hi(D_80013E0C)
/* 45D0C 8005550C 7878000C */  jal        getgameloopmode_8001e1e0
/* 45D10 80055510 0C3E8424 */   addiu     $a0, $a0, %lo(D_80013E0C)
/* 45D14 80055514 21204000 */  addu       $a0, $v0, $zero
/* 45D18 80055518 FFFF0524 */  addiu      $a1, $zero, -1
/* 45D1C 8005551C 8876000C */  jal        FUN_8001da20
/* 45D20 80055520 FFFF0624 */   addiu     $a2, $zero, -1
/* 45D24 80055524 0180043C */  lui        $a0, %hi(D_80013E18)
/* 45D28 80055528 7878000C */  jal        getgameloopmode_8001e1e0
/* 45D2C 8005552C 183E8424 */   addiu     $a0, $a0, %lo(D_80013E18)
/* 45D30 80055530 21204000 */  addu       $a0, $v0, $zero
/* 45D34 80055534 FFFF0524 */  addiu      $a1, $zero, -1
/* 45D38 80055538 8876000C */  jal        FUN_8001da20
/* 45D3C 8005553C FFFF0624 */   addiu     $a2, $zero, -1
/* 45D40 80055540 76000424 */  addiu      $a0, $zero, 0x76
/* 45D44 80055544 FFFF0524 */  addiu      $a1, $zero, -1
/* 45D48 80055548 8876000C */  jal        FUN_8001da20
/* 45D4C 8005554C FFFF0624 */   addiu     $a2, $zero, -1
/* 45D50 80055550 1580033C */  lui        $v1, %hi(D_8014BA50)
/* 45D54 80055554 50BA6324 */  addiu      $v1, $v1, %lo(D_8014BA50)
/* 45D58 80055558 1E006284 */  lh         $v0, 0x1e($v1)
/* 45D5C 8005555C 00000000 */  nop
/* 45D60 80055560 0D004010 */  beqz       $v0, .L80055598
/* 45D64 80055564 00000000 */   nop
/* 45D68 80055568 10006284 */  lh         $v0, 0x10($v1)
/* 45D6C 8005556C 00000000 */  nop
/* 45D70 80055570 0A004014 */  bnez       $v0, .L8005559C
/* 45D74 80055574 1380033C */   lui       $v1, 0x8013
/* 45D78 80055578 74000424 */  addiu      $a0, $zero, 0x74
/* 45D7C 8005557C FFFF0524 */  addiu      $a1, $zero, -1
/* 45D80 80055580 8876000C */  jal        FUN_8001da20
/* 45D84 80055584 FFFF0624 */   addiu     $a2, $zero, -1
/* 45D88 80055588 7D000424 */  addiu      $a0, $zero, 0x7d
/* 45D8C 8005558C FFFF0524 */  addiu      $a1, $zero, -1
/* 45D90 80055590 8876000C */  jal        FUN_8001da20
/* 45D94 80055594 FFFF0624 */   addiu     $a2, $zero, -1
.L80055598:
/* 45D98 80055598 1380033C */  lui        $v1, %hi(D_8012AB59)
.L8005559C:
/* 45D9C 8005559C 1000BF8F */  lw         $ra, 0x10($sp)
/* 45DA0 800555A0 01000224 */  addiu      $v0, $zero, 1
/* 45DA4 800555A4 59AB62A0 */  sb         $v0, %lo(D_8012AB59)($v1)
/* 45DA8 800555A8 0800E003 */  jr         $ra
/* 45DAC 800555AC 1800BD27 */   addiu     $sp, $sp, 0x18
