.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d64c
/* 4DE4C 8005D64C 21400000 */  addu       $t0, $zero, $zero
/* 4DE50 8005D650 21488000 */  addu       $t1, $a0, $zero
/* 4DE54 8005D654 C2110500 */  srl        $v0, $a1, 7
/* 4DE58 8005D658 01004230 */  andi       $v0, $v0, 1
/* 4DE5C 8005D65C 1F004010 */  beqz       $v0, .L8005D6DC
/* 4DE60 8005D660 0F00A630 */   andi      $a2, $a1, 0xf
/* 4DE64 8005D664 0180043C */  lui        $a0, %hi(D_80014278)
/* 4DE68 8005D668 78428424 */  addiu      $a0, $a0, %lo(D_80014278)
/* 4DE6C 8005D66C 80300600 */  sll        $a2, $a2, 2
/* 4DE70 8005D670 0180023C */  lui        $v0, %hi(D_800141F8)
/* 4DE74 8005D674 F8414224 */  addiu      $v0, $v0, %lo(D_800141F8)
/* 4DE78 8005D678 2110C200 */  addu       $v0, $a2, $v0
/* 4DE7C 8005D67C 2130C400 */  addu       $a2, $a2, $a0
/* 4DE80 8005D680 0000458C */  lw         $a1, ($v0)
/* 4DE84 8005D684 1A80023C */  lui        $v0, %hi(D_801A09B0)
/* 4DE88 8005D688 B0094224 */  addiu      $v0, $v0, %lo(D_801A09B0)
/* 4DE8C 8005D68C 00002491 */  lbu        $a0, ($t1)
/* 4DE90 8005D690 0000C68C */  lw         $a2, ($a2)
/* 4DE94 8005D694 40180500 */  sll        $v1, $a1, 1
/* 4DE98 8005D698 21186500 */  addu       $v1, $v1, $a1
/* 4DE9C 8005D69C 001A0300 */  sll        $v1, $v1, 8
/* 4DEA0 8005D6A0 20008010 */  beqz       $a0, .L8005D724
/* 4DEA4 8005D6A4 21286200 */   addu      $a1, $v1, $v0
/* 4DEA8 8005D6A8 21202001 */  addu       $a0, $t1, $zero
/* 4DEAC 8005D6AC 00008290 */  lbu        $v0, ($a0)
.L8005D6B0:
/* 4DEB0 8005D6B0 01008424 */  addiu      $a0, $a0, 1
/* 4DEB4 8005D6B4 E0FF4224 */  addiu      $v0, $v0, -0x20
/* 4DEB8 8005D6B8 C0100200 */  sll        $v0, $v0, 3
/* 4DEBC 8005D6BC 2110A200 */  addu       $v0, $a1, $v0
/* 4DEC0 8005D6C0 04004394 */  lhu        $v1, 4($v0)
/* 4DEC4 8005D6C4 00008290 */  lbu        $v0, ($a0)
/* 4DEC8 8005D6C8 21186600 */  addu       $v1, $v1, $a2
/* 4DECC 8005D6CC F8FF4014 */  bnez       $v0, .L8005D6B0
/* 4DED0 8005D6D0 21400301 */   addu      $t0, $t0, $v1
/* 4DED4 8005D6D4 0800E003 */  jr         $ra
/* 4DED8 8005D6D8 21100001 */   addu      $v0, $t0, $zero
.L8005D6DC:
/* 4DEDC 8005D6DC 00002291 */  lbu        $v0, ($t1)
/* 4DEE0 8005D6E0 00000000 */  nop
/* 4DEE4 8005D6E4 0F004010 */  beqz       $v0, .L8005D724
/* 4DEE8 8005D6E8 21380000 */   addu      $a3, $zero, $zero
/* 4DEEC 8005D6EC 02220500 */  srl        $a0, $a1, 8
/* 4DEF0 8005D6F0 0180033C */  lui        $v1, %hi(D_800140B8)
/* 4DEF4 8005D6F4 B8406324 */  addiu      $v1, $v1, %lo(D_800140B8)
/* 4DEF8 8005D6F8 80100600 */  sll        $v0, $a2, 2
/* 4DEFC 8005D6FC 21104300 */  addu       $v0, $v0, $v1
/* 4DF00 8005D700 0000458C */  lw         $a1, ($v0)
/* 4DF04 8005D704 FF008430 */  andi       $a0, $a0, 0xff
/* 4DF08 8005D708 21208500 */  addu       $a0, $a0, $a1
.L8005D70C:
/* 4DF0C 8005D70C 0100E724 */  addiu      $a3, $a3, 1
/* 4DF10 8005D710 21102701 */  addu       $v0, $t1, $a3
/* 4DF14 8005D714 00004390 */  lbu        $v1, ($v0)
/* 4DF18 8005D718 00000000 */  nop
/* 4DF1C 8005D71C FBFF6014 */  bnez       $v1, .L8005D70C
/* 4DF20 8005D720 21400401 */   addu      $t0, $t0, $a0
.L8005D724:
/* 4DF24 8005D724 21100001 */  addu       $v0, $t0, $zero
/* 4DF28 8005D728 0800E003 */  jr         $ra
/* 4DF2C 8005D72C 00000000 */   nop
