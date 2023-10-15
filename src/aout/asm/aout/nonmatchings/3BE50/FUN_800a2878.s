.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2878
/* 93078 800A2878 21180000 */  addu       $v1, $zero, $zero
/* 9307C 800A287C 1B80023C */  lui        $v0, %hi(D_801B2B90)
/* 93080 800A2880 902B4624 */  addiu      $a2, $v0, %lo(D_801B2B90)
.L800A2884:
/* 93084 800A2884 0000C28C */  lw         $v0, ($a2)
/* 93088 800A2888 00000000 */  nop
/* 9308C 800A288C 04008214 */  bne        $a0, $v0, .L800A28A0
/* 93090 800A2890 01006224 */   addiu     $v0, $v1, 1
/* 93094 800A2894 0000A2AC */  sw         $v0, ($a1)
/* 93098 800A2898 0800E003 */  jr         $ra
/* 9309C 800A289C 01000224 */   addiu     $v0, $zero, 1
.L800A28A0:
/* 930A0 800A28A0 01006324 */  addiu      $v1, $v1, 1
/* 930A4 800A28A4 40006228 */  slti       $v0, $v1, 0x40
/* 930A8 800A28A8 F6FF4014 */  bnez       $v0, .L800A2884
/* 930AC 800A28AC 0400C624 */   addiu     $a2, $a2, 4
/* 930B0 800A28B0 21180000 */  addu       $v1, $zero, $zero
/* 930B4 800A28B4 1B80023C */  lui        $v0, %hi(D_801B2C90)
/* 930B8 800A28B8 902C4624 */  addiu      $a2, $v0, %lo(D_801B2C90)
.L800A28BC:
/* 930BC 800A28BC 0000C28C */  lw         $v0, ($a2)
/* 930C0 800A28C0 00000000 */  nop
/* 930C4 800A28C4 04008214 */  bne        $a0, $v0, .L800A28D8
/* 930C8 800A28C8 01006224 */   addiu     $v0, $v1, 1
/* 930CC 800A28CC 0000A2AC */  sw         $v0, ($a1)
/* 930D0 800A28D0 0800E003 */  jr         $ra
/* 930D4 800A28D4 02000224 */   addiu     $v0, $zero, 2
.L800A28D8:
/* 930D8 800A28D8 01006324 */  addiu      $v1, $v1, 1
/* 930DC 800A28DC 40006228 */  slti       $v0, $v1, 0x40
/* 930E0 800A28E0 F6FF4014 */  bnez       $v0, .L800A28BC
/* 930E4 800A28E4 0400C624 */   addiu     $a2, $a2, 4
/* 930E8 800A28E8 0000A0AC */  sw         $zero, ($a1)
/* 930EC 800A28EC 0800E003 */  jr         $ra
/* 930F0 800A28F0 21100000 */   addu      $v0, $zero, $zero
