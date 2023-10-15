.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80049fdc
/* 3A7DC 80049FDC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3A7E0 80049FE0 21200000 */  addu       $a0, $zero, $zero
/* 3A7E4 80049FE4 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A7E8 80049FE8 FFFF0624 */  addiu      $a2, $zero, -1
/* 3A7EC 80049FEC FFFF0724 */  addiu      $a3, $zero, -1
/* 3A7F0 80049FF0 1800B0AF */  sw         $s0, 0x18($sp)
/* 3A7F4 80049FF4 FFFF1024 */  addiu      $s0, $zero, -1
/* 3A7F8 80049FF8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 3A7FC 80049FFC 766C010C */  jal        FUN_8005b1d8
/* 3A800 8004A000 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A804 8004A004 01000424 */  addiu      $a0, $zero, 1
/* 3A808 8004A008 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A80C 8004A00C FFFF0624 */  addiu      $a2, $zero, -1
/* 3A810 8004A010 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A814 8004A014 766C010C */  jal        FUN_8005b1d8
/* 3A818 8004A018 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A81C 8004A01C 03000424 */  addiu      $a0, $zero, 3
/* 3A820 8004A020 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A824 8004A024 FFFF0624 */  addiu      $a2, $zero, -1
/* 3A828 8004A028 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A82C 8004A02C 766C010C */  jal        FUN_8005b1d8
/* 3A830 8004A030 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A834 8004A034 04000424 */  addiu      $a0, $zero, 4
/* 3A838 8004A038 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A83C 8004A03C FFFF0624 */  addiu      $a2, $zero, -1
/* 3A840 8004A040 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A844 8004A044 766C010C */  jal        FUN_8005b1d8
/* 3A848 8004A048 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A84C 8004A04C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 3A850 8004A050 1800B08F */  lw         $s0, 0x18($sp)
/* 3A854 8004A054 0800E003 */  jr         $ra
/* 3A858 8004A058 2000BD27 */   addiu     $sp, $sp, 0x20
