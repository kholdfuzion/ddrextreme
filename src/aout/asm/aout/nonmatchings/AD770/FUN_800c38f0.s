.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c38f0
/* B40F0 800C38F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B40F4 800C38F4 1000B0AF */  sw         $s0, 0x10($sp)
/* B40F8 800C38F8 1F80103C */  lui        $s0, %hi(D_801F72F8)
/* B40FC 800C38FC F8721026 */  addiu      $s0, $s0, %lo(D_801F72F8)
/* B4100 800C3900 21200002 */  addu       $a0, $s0, $zero
/* B4104 800C3904 21280000 */  addu       $a1, $zero, $zero
/* B4108 800C3908 1400BFAF */  sw         $ra, 0x14($sp)
/* B410C 800C390C F6A2000C */  jal        memset
/* B4110 800C3910 08010624 */   addiu     $a2, $zero, 0x108
/* B4114 800C3914 E80000AE */  sw         $zero, 0xe8($s0)
/* B4118 800C3918 022A030C */  jal        FUN_800ca808
/* B411C 800C391C 040100AE */   sw        $zero, 0x104($s0)
/* B4120 800C3920 3C0D030C */  jal        FUN_800c34f0
/* B4124 800C3924 000102AE */   sw        $v0, 0x100($s0)
/* B4128 800C3928 C50E030C */  jal        FUN_800c3b14
/* B412C 800C392C 00000000 */   nop
/* B4130 800C3930 1400BF8F */  lw         $ra, 0x14($sp)
/* B4134 800C3934 1000B08F */  lw         $s0, 0x10($sp)
/* B4138 800C3938 0800E003 */  jr         $ra
/* B413C 800C393C 1800BD27 */   addiu     $sp, $sp, 0x18
