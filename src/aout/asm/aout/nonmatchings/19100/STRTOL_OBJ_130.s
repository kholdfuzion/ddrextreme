.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel STRTOL_OBJ_130
/* 1F6F4 8002EEF4 00000482 */  lb         $a0, ($s0)
/* 1F6F8 8002EEF8 629B000C */  jal        todigit
/* 1F6FC 8002EEFC 01001026 */   addiu     $s0, $s0, 1
/* 1F700 8002EF00 21184000 */  addu       $v1, $v0, $zero
/* 1F704 8002EF04 2A107100 */  slt        $v0, $v1, $s1
/* 1F708 8002EF08 04004010 */  beqz       $v0, .L8002EF1C
/* 1F70C 8002EF0C 18005102 */   mult      $s2, $s1
/* 1F710 8002EF10 12900000 */  mflo       $s2
/* 1F714 8002EF14 BDBB0008 */  j          STRTOL_OBJ_130
/* 1F718 8002EF18 21904302 */   addu      $s2, $s2, $v1
.L8002EF1C:
/* 1F71C 8002EF1C 02008012 */  beqz       $s4, .L8002EF28
/* 1F720 8002EF20 FFFF1026 */   addiu     $s0, $s0, -1
/* 1F724 8002EF24 000090AE */  sw         $s0, ($s4)
.L8002EF28:
/* 1F728 8002EF28 18005302 */  mult       $s2, $s3
/* 1F72C 8002EF2C 12100000 */  mflo       $v0
.L8002EF30:
/* 1F730 8002EF30 2400BF8F */  lw         $ra, 0x24($sp)
/* 1F734 8002EF34 2000B48F */  lw         $s4, 0x20($sp)
/* 1F738 8002EF38 1C00B38F */  lw         $s3, 0x1c($sp)
/* 1F73C 8002EF3C 1800B28F */  lw         $s2, 0x18($sp)
/* 1F740 8002EF40 1400B18F */  lw         $s1, 0x14($sp)
/* 1F744 8002EF44 1000B08F */  lw         $s0, 0x10($sp)
/* 1F748 8002EF48 0800E003 */  jr         $ra
/* 1F74C 8002EF4C 2800BD27 */   addiu     $sp, $sp, 0x28
/* 1F750 8002EF50 00000000 */  nop
