.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel error_8002a960
/* 1B160 8002A960 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 1B164 8002A964 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 1B168 8002A968 21888000 */  addu       $s1, $a0, $zero
/* 1B16C 8002A96C 2000B2AF */  sw         $s2, 0x20($sp)
/* 1B170 8002A970 2190A000 */  addu       $s2, $a1, $zero
/* 1B174 8002A974 2400B3AF */  sw         $s3, 0x24($sp)
/* 1B178 8002A978 2198C000 */  addu       $s3, $a2, $zero
/* 1B17C 8002A97C 2800BFAF */  sw         $ra, 0x28($sp)
/* 1B180 8002A980 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1B184 8002A984 1800B0AF */   sw        $s0, 0x18($sp)
/* 1B188 8002A988 B3A6000C */  jal        FUN_80029acc
/* 1B18C 8002A98C 21804000 */   addu      $s0, $v0, $zero
/* 1B190 8002A990 21202002 */  addu       $a0, $s1, $zero
/* 1B194 8002A994 21284002 */  addu       $a1, $s2, $zero
/* 1B198 8002A998 21306002 */  addu       $a2, $s3, $zero
/* 1B19C 8002A99C 21380002 */  addu       $a3, $s0, $zero
/* 1B1A0 8002A9A0 27F3020C */  jal        HardWareError_800bcc9c
/* 1B1A4 8002A9A4 1000A2AF */   sw        $v0, 0x10($sp)
/* 1B1A8 8002A9A8 2800BF8F */  lw         $ra, 0x28($sp)
/* 1B1AC 8002A9AC 2400B38F */  lw         $s3, 0x24($sp)
/* 1B1B0 8002A9B0 2000B28F */  lw         $s2, 0x20($sp)
/* 1B1B4 8002A9B4 1C00B18F */  lw         $s1, 0x1c($sp)
/* 1B1B8 8002A9B8 1800B08F */  lw         $s0, 0x18($sp)
/* 1B1BC 8002A9BC 0800E003 */  jr         $ra
/* 1B1C0 8002A9C0 3000BD27 */   addiu     $sp, $sp, 0x30
