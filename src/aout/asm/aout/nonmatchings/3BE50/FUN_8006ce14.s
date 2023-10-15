.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006ce14
/* 5D614 8006CE14 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 5D618 8006CE18 21C00000 */  addu       $t8, $zero, $zero
/* 5D61C 8006CE1C 21708000 */  addu       $t6, $a0, $zero
/* 5D620 8006CE20 2400B5AF */  sw         $s5, 0x24($sp)
/* 5D624 8006CE24 0100D525 */  addiu      $s5, $t6, 1
/* 5D628 8006CE28 2000B4AF */  sw         $s4, 0x20($sp)
/* 5D62C 8006CE2C 0200D425 */  addiu      $s4, $t6, 2
/* 5D630 8006CE30 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 5D634 8006CE34 0300D325 */  addiu      $s3, $t6, 3
/* 5D638 8006CE38 1800B2AF */  sw         $s2, 0x18($sp)
/* 5D63C 8006CE3C 0400D225 */  addiu      $s2, $t6, 4
/* 5D640 8006CE40 1400B1AF */  sw         $s1, 0x14($sp)
/* 5D644 8006CE44 1C00D125 */  addiu      $s1, $t6, 0x1c
/* 5D648 8006CE48 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 5D64C 8006CE4C 2C00B7AF */  sw         $s7, 0x2c($sp)
/* 5D650 8006CE50 50BA5724 */  addiu      $s7, $v0, %lo(D_8014BA50)
/* 5D654 8006CE54 3000BEAF */  sw         $fp, 0x30($sp)
/* 5D658 8006CE58 6406FE26 */  addiu      $fp, $s7, 0x664
/* 5D65C 8006CE5C 3400BFAF */  sw         $ra, 0x34($sp)
/* 5D660 8006CE60 2800B6AF */  sw         $s6, 0x28($sp)
/* 5D664 8006CE64 1000B0AF */  sw         $s0, 0x10($sp)
/* 5D668 8006CE68 21500000 */  addu       $t2, $zero, $zero
.L8006CE6C:
/* 5D66C 8006CE6C 80801800 */  sll        $s0, $t8, 2
/* 5D670 8006CE70 01001627 */  addiu      $s6, $t8, 1
/* 5D674 8006CE74 21480000 */  addu       $t1, $zero, $zero
.L8006CE78:
/* 5D678 8006CE78 01005925 */  addiu      $t9, $t2, 1
/* 5D67C 8006CE7C 02004C25 */  addiu      $t4, $t2, 2
/* 5D680 8006CE80 21788001 */  addu       $t7, $t4, $zero
/* 5D684 8006CE84 21680000 */  addu       $t5, $zero, $zero
/* 5D688 8006CE88 40180A00 */  sll        $v1, $t2, 1
/* 5D68C 8006CE8C 21180303 */  addu       $v1, $t8, $v1
/* 5D690 8006CE90 80100300 */  sll        $v0, $v1, 2
/* 5D694 8006CE94 21104300 */  addu       $v0, $v0, $v1
/* 5D698 8006CE98 C0100200 */  sll        $v0, $v0, 3
/* 5D69C 8006CE9C 21405E00 */  addu       $t0, $v0, $fp
/* 5D6A0 8006CEA0 21385700 */  addu       $a3, $v0, $s7
.L8006CEA4:
/* 5D6A4 8006CEA4 2110E001 */  addu       $v0, $t7, $zero
/* 5D6A8 8006CEA8 02004104 */  bgez       $v0, .L8006CEB4
/* 5D6AC 8006CEAC 80580900 */   sll       $t3, $t1, 2
/* 5D6B0 8006CEB0 05004225 */  addiu      $v0, $t2, 5
.L8006CEB4:
/* 5D6B4 8006CEB4 83100200 */  sra        $v0, $v0, 2
/* 5D6B8 8006CEB8 80100200 */  sll        $v0, $v0, 2
/* 5D6BC 8006CEBC 23108201 */  subu       $v0, $t4, $v0
/* 5D6C0 8006CEC0 21100202 */  addu       $v0, $s0, $v0
/* 5D6C4 8006CEC4 40300200 */  sll        $a2, $v0, 1
/* 5D6C8 8006CEC8 2130C200 */  addu       $a2, $a2, $v0
/* 5D6CC 8006CECC 00310600 */  sll        $a2, $a2, 4
/* 5D6D0 8006CED0 2128A601 */  addu       $a1, $t5, $a2
/* 5D6D4 8006CED4 0500AD25 */  addiu      $t5, $t5, 5
/* 5D6D8 8006CED8 01002925 */  addiu      $t1, $t1, 1
/* 5D6DC 8006CEDC 2110C501 */  addu       $v0, $t6, $a1
/* 5D6E0 8006CEE0 21306601 */  addu       $a2, $t3, $a2
/* 5D6E4 8006CEE4 6006E390 */  lbu        $v1, 0x660($a3)
/* 5D6E8 8006CEE8 21302602 */  addu       $a2, $s1, $a2
/* 5D6EC 8006CEEC 000043A0 */  sb         $v1, ($v0)
/* 5D6F0 8006CEF0 6106E490 */  lbu        $a0, 0x661($a3)
/* 5D6F4 8006CEF4 2110A502 */  addu       $v0, $s5, $a1
/* 5D6F8 8006CEF8 000044A0 */  sb         $a0, ($v0)
/* 5D6FC 8006CEFC 6206E390 */  lbu        $v1, 0x662($a3)
/* 5D700 8006CF00 21108502 */  addu       $v0, $s4, $a1
/* 5D704 8006CF04 000043A0 */  sb         $v1, ($v0)
/* 5D708 8006CF08 6306E490 */  lbu        $a0, 0x663($a3)
/* 5D70C 8006CF0C 0800E724 */  addiu      $a3, $a3, 8
/* 5D710 8006CF10 21106502 */  addu       $v0, $s3, $a1
/* 5D714 8006CF14 21284502 */  addu       $a1, $s2, $a1
/* 5D718 8006CF18 000044A0 */  sb         $a0, ($v0)
/* 5D71C 8006CF1C 0000A0A0 */  sb         $zero, ($a1)
/* 5D720 8006CF20 0000038D */  lw         $v1, ($t0)
/* 5D724 8006CF24 08000825 */  addiu      $t0, $t0, 8
/* 5D728 8006CF28 05002229 */  slti       $v0, $t1, 5
/* 5D72C 8006CF2C DDFF4014 */  bnez       $v0, .L8006CEA4
/* 5D730 8006CF30 0000C3AC */   sw        $v1, ($a2)
/* 5D734 8006CF34 21502003 */  addu       $t2, $t9, $zero
/* 5D738 8006CF38 04004229 */  slti       $v0, $t2, 4
/* 5D73C 8006CF3C CEFF4014 */  bnez       $v0, .L8006CE78
/* 5D740 8006CF40 21480000 */   addu      $t1, $zero, $zero
/* 5D744 8006CF44 21C0C002 */  addu       $t8, $s6, $zero
/* 5D748 8006CF48 0200022B */  slti       $v0, $t8, 2
/* 5D74C 8006CF4C C7FF4014 */  bnez       $v0, .L8006CE6C
/* 5D750 8006CF50 21500000 */   addu      $t2, $zero, $zero
/* 5D754 8006CF54 D20B010C */  jal        FUN_80042f48
/* 5D758 8006CF58 00000000 */   nop
/* 5D75C 8006CF5C 0180043C */  lui        $a0, %hi(D_80014754)
/* 5D760 8006CF60 7878000C */  jal        getgameloopmode_8001e1e0
/* 5D764 8006CF64 54478424 */   addiu     $a0, $a0, %lo(D_80014754)
/* 5D768 8006CF68 21204000 */  addu       $a0, $v0, $zero
/* 5D76C 8006CF6C FFFF0524 */  addiu      $a1, $zero, -1
/* 5D770 8006CF70 8876000C */  jal        FUN_8001da20
/* 5D774 8006CF74 FFFF0624 */   addiu     $a2, $zero, -1
/* 5D778 8006CF78 0180043C */  lui        $a0, %hi(D_80014760)
/* 5D77C 8006CF7C 7878000C */  jal        getgameloopmode_8001e1e0
/* 5D780 8006CF80 60478424 */   addiu     $a0, $a0, %lo(D_80014760)
/* 5D784 8006CF84 21204000 */  addu       $a0, $v0, $zero
/* 5D788 8006CF88 FFFF0524 */  addiu      $a1, $zero, -1
/* 5D78C 8006CF8C 8876000C */  jal        FUN_8001da20
/* 5D790 8006CF90 FFFF0624 */   addiu     $a2, $zero, -1
/* 5D794 8006CF94 0180043C */  lui        $a0, %hi(D_8001476C)
/* 5D798 8006CF98 7878000C */  jal        getgameloopmode_8001e1e0
/* 5D79C 8006CF9C 6C478424 */   addiu     $a0, $a0, %lo(D_8001476C)
/* 5D7A0 8006CFA0 21204000 */  addu       $a0, $v0, $zero
/* 5D7A4 8006CFA4 FFFF0524 */  addiu      $a1, $zero, -1
/* 5D7A8 8006CFA8 8876000C */  jal        FUN_8001da20
/* 5D7AC 8006CFAC FFFF0624 */   addiu     $a2, $zero, -1
/* 5D7B0 8006CFB0 0180043C */  lui        $a0, %hi(D_80014774)
/* 5D7B4 8006CFB4 7878000C */  jal        getgameloopmode_8001e1e0
/* 5D7B8 8006CFB8 74478424 */   addiu     $a0, $a0, %lo(D_80014774)
/* 5D7BC 8006CFBC 21204000 */  addu       $a0, $v0, $zero
/* 5D7C0 8006CFC0 FFFF0524 */  addiu      $a1, $zero, -1
/* 5D7C4 8006CFC4 8876000C */  jal        FUN_8001da20
/* 5D7C8 8006CFC8 FFFF0624 */   addiu     $a2, $zero, -1
/* 5D7CC 8006CFCC 3400BF8F */  lw         $ra, 0x34($sp)
/* 5D7D0 8006CFD0 3000BE8F */  lw         $fp, 0x30($sp)
/* 5D7D4 8006CFD4 2C00B78F */  lw         $s7, 0x2c($sp)
/* 5D7D8 8006CFD8 2800B68F */  lw         $s6, 0x28($sp)
/* 5D7DC 8006CFDC 2400B58F */  lw         $s5, 0x24($sp)
/* 5D7E0 8006CFE0 2000B48F */  lw         $s4, 0x20($sp)
/* 5D7E4 8006CFE4 1C00B38F */  lw         $s3, 0x1c($sp)
/* 5D7E8 8006CFE8 1800B28F */  lw         $s2, 0x18($sp)
/* 5D7EC 8006CFEC 1400B18F */  lw         $s1, 0x14($sp)
/* 5D7F0 8006CFF0 1000B08F */  lw         $s0, 0x10($sp)
/* 5D7F4 8006CFF4 0800E003 */  jr         $ra
/* 5D7F8 8006CFF8 3800BD27 */   addiu     $sp, $sp, 0x38
