.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800697a8
/* 59FA8 800697A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 59FAC 800697AC 1400B1AF */  sw         $s1, 0x14($sp)
/* 59FB0 800697B0 21888000 */  addu       $s1, $a0, $zero
/* 59FB4 800697B4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 59FB8 800697B8 21980000 */  addu       $s3, $zero, $zero
/* 59FBC 800697BC 2000BFAF */  sw         $ra, 0x20($sp)
/* 59FC0 800697C0 1800B2AF */  sw         $s2, 0x18($sp)
/* 59FC4 800697C4 1000B0AF */  sw         $s0, 0x10($sp)
/* 59FC8 800697C8 F40320AE */  sw         $zero, 0x3f4($s1)
.L800697CC:
/* 59FCC 800697CC 1BA2020C */  jal        FUN_800a886c
/* 59FD0 800697D0 21206002 */   addu      $a0, $s3, $zero
/* 59FD4 800697D4 21804000 */  addu       $s0, $v0, $zero
/* 59FD8 800697D8 30000012 */  beqz       $s0, .L8006989C
/* 59FDC 800697DC 10003226 */   addiu     $s2, $s1, 0x10
/* 59FE0 800697E0 21200002 */  addu       $a0, $s0, $zero
/* 59FE4 800697E4 F0A3020C */  jal        FUN_800a8fc0
/* 59FE8 800697E8 21280000 */   addu      $a1, $zero, $zero
/* 59FEC 800697EC 2B004010 */  beqz       $v0, .L8006989C
/* 59FF0 800697F0 00000000 */   nop
/* 59FF4 800697F4 2400038E */  lw         $v1, 0x24($s0)
/* 59FF8 800697F8 00000000 */  nop
/* 59FFC 800697FC 02006230 */  andi       $v0, $v1, 2
/* 5A000 80069800 26004014 */  bnez       $v0, .L8006989C
/* 5A004 80069804 00E0023C */   lui       $v0, 0xe000
/* 5A008 80069808 24106200 */  and        $v0, $v1, $v0
/* 5A00C 8006980C 0D004010 */  beqz       $v0, .L80069844
/* 5A010 80069810 60006230 */   andi      $v0, $v1, 0x60
/* 5A014 80069814 08000486 */  lh         $a0, 8($s0)
/* 5A018 80069818 AEA5010C */  jal        FUN_800696b8
/* 5A01C 8006981C 00000000 */   nop
/* 5A020 80069820 05004014 */  bnez       $v0, .L80069838
/* 5A024 80069824 00000000 */   nop
/* 5A028 80069828 F8E9020C */  jal        FUN_800ba7e0
/* 5A02C 8006982C 00000000 */   nop
/* 5A030 80069830 1A004010 */  beqz       $v0, .L8006989C
/* 5A034 80069834 00000000 */   nop
.L80069838:
/* 5A038 80069838 2400038E */  lw         $v1, 0x24($s0)
/* 5A03C 8006983C 00000000 */  nop
/* 5A040 80069840 60006230 */  andi       $v0, $v1, 0x60
.L80069844:
/* 5A044 80069844 0C004010 */  beqz       $v0, .L80069878
/* 5A048 80069848 80006230 */   andi      $v0, $v1, 0x80
/* 5A04C 8006984C 0A004014 */  bnez       $v0, .L80069878
/* 5A050 80069850 00000000 */   nop
/* 5A054 80069854 08000486 */  lh         $a0, 8($s0)
/* 5A058 80069858 AEA5010C */  jal        FUN_800696b8
/* 5A05C 8006985C 00000000 */   nop
/* 5A060 80069860 05004014 */  bnez       $v0, .L80069878
/* 5A064 80069864 00000000 */   nop
/* 5A068 80069868 F3E9020C */  jal        FUN_800ba7cc
/* 5A06C 8006986C 10003226 */   addiu     $s2, $s1, 0x10
/* 5A070 80069870 0A004010 */  beqz       $v0, .L8006989C
/* 5A074 80069874 00000000 */   nop
.L80069878:
/* 5A078 80069878 F403228E */  lw         $v0, 0x3f4($s1)
/* 5A07C 8006987C 10002426 */  addiu      $a0, $s1, 0x10
/* 5A080 80069880 80100200 */  sll        $v0, $v0, 2
/* 5A084 80069884 21108200 */  addu       $v0, $a0, $v0
/* 5A088 80069888 000050AC */  sw         $s0, ($v0)
/* 5A08C 8006988C F403238E */  lw         $v1, 0x3f4($s1)
/* 5A090 80069890 21908000 */  addu       $s2, $a0, $zero
/* 5A094 80069894 01006324 */  addiu      $v1, $v1, 1
/* 5A098 80069898 F40323AE */  sw         $v1, 0x3f4($s1)
.L8006989C:
/* 5A09C 8006989C 01007326 */  addiu      $s3, $s3, 1
/* 5A0A0 800698A0 F900622A */  slti       $v0, $s3, 0xf9
/* 5A0A4 800698A4 C9FF4014 */  bnez       $v0, .L800697CC
/* 5A0A8 800698A8 20000424 */   addiu     $a0, $zero, 0x20
/* 5A0AC 800698AC FFFF0524 */  addiu      $a1, $zero, -1
/* 5A0B0 800698B0 F403228E */  lw         $v0, 0x3f4($s1)
/* 5A0B4 800698B4 FFFF0624 */  addiu      $a2, $zero, -1
/* 5A0B8 800698B8 80100200 */  sll        $v0, $v0, 2
/* 5A0BC 800698BC 21104202 */  addu       $v0, $s2, $v0
/* 5A0C0 800698C0 8876000C */  jal        FUN_8001da20
/* 5A0C4 800698C4 000040AC */   sw        $zero, ($v0)
/* 5A0C8 800698C8 2000BF8F */  lw         $ra, 0x20($sp)
/* 5A0CC 800698CC 1C00B38F */  lw         $s3, 0x1c($sp)
/* 5A0D0 800698D0 1800B28F */  lw         $s2, 0x18($sp)
/* 5A0D4 800698D4 1400B18F */  lw         $s1, 0x14($sp)
/* 5A0D8 800698D8 1000B08F */  lw         $s0, 0x10($sp)
/* 5A0DC 800698DC 0800E003 */  jr         $ra
/* 5A0E0 800698E0 2800BD27 */   addiu     $sp, $sp, 0x28
