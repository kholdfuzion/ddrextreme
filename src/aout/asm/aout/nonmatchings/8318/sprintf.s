.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel sprintf
/* 10E38 80020638 0400A5AF */  sw         $a1, 4($sp)
/* 10E3C 8002063C 0800A6AF */  sw         $a2, 8($sp)
/* 10E40 80020640 0C00A7AF */  sw         $a3, 0xc($sp)
/* 10E44 80020644 B8FDBD27 */  addiu      $sp, $sp, -0x248
/* 10E48 80020648 3402B3AF */  sw         $s3, 0x234($sp)
/* 10E4C 8002064C 21988000 */  addu       $s3, $a0, $zero
/* 10E50 80020650 5002A227 */  addiu      $v0, $sp, 0x250
/* 10E54 80020654 4402BFAF */  sw         $ra, 0x244($sp)
/* 10E58 80020658 4002B6AF */  sw         $s6, 0x240($sp)
/* 10E5C 8002065C 3C02B5AF */  sw         $s5, 0x23c($sp)
/* 10E60 80020660 3802B4AF */  sw         $s4, 0x238($sp)
/* 10E64 80020664 3002B2AF */  sw         $s2, 0x230($sp)
/* 10E68 80020668 2C02B1AF */  sw         $s1, 0x22c($sp)
/* 10E6C 8002066C 2802B0AF */  sw         $s0, 0x228($sp)
/* 10E70 80020670 4C02A5AF */  sw         $a1, 0x24c($sp)
/* 10E74 80020674 2002A2AF */  sw         $v0, 0x220($sp)
/* 10E78 80020678 0000A580 */  lb         $a1, ($a1)
/* 10E7C 8002067C 00000000 */  nop
/* 10E80 80020680 0002A010 */  beqz       $a1, .L80020E84
/* 10E84 80020684 21900000 */   addu      $s2, $zero, $zero
/* 10E88 80020688 2D001524 */  addiu      $s5, $zero, 0x2d
/* 10E8C 8002068C 2B001624 */  addiu      $s6, $zero, 0x2b
/* 10E90 80020690 20001424 */  addiu      $s4, $zero, 0x20
/* 10E94 80020694 25000224 */  addiu      $v0, $zero, 0x25
.L80020698:
/* 10E98 80020698 CC01A214 */  bne        $a1, $v0, .L80020DCC
/* 10E9C 8002069C 21107202 */   addu      $v0, $s3, $s2
/* 10EA0 800206A0 0E80053C */  lui        $a1, %hi(D_800D8910)
/* 10EA4 800206A4 1089A524 */  addiu      $a1, $a1, %lo(D_800D8910)
/* 10EA8 800206A8 0000A28C */  lw         $v0, ($a1)
/* 10EAC 800206AC 0400A38C */  lw         $v1, 4($a1)
/* 10EB0 800206B0 0800A48C */  lw         $a0, 8($a1)
/* 10EB4 800206B4 1002A2AF */  sw         $v0, 0x210($sp)
/* 10EB8 800206B8 1402A3AF */  sw         $v1, 0x214($sp)
/* 10EBC 800206BC 1802A4AF */  sw         $a0, 0x218($sp)
/* 10EC0 800206C0 23000424 */  addiu      $a0, $zero, 0x23
/* 10EC4 800206C4 30000324 */  addiu      $v1, $zero, 0x30
