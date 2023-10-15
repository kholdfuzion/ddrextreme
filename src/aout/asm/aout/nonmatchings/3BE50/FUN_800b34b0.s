.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b34b0
/* A3CB0 800B34B0 58FFBD27 */  addiu      $sp, $sp, -0xa8
/* A3CB4 800B34B4 1E80023C */  lui        $v0, %hi(D_801E09F8)
/* A3CB8 800B34B8 8000B0AF */  sw         $s0, 0x80($sp)
/* A3CBC 800B34BC F8095024 */  addiu      $s0, $v0, %lo(D_801E09F8)
/* A3CC0 800B34C0 9800B6AF */  sw         $s6, 0x98($sp)
/* A3CC4 800B34C4 21B04000 */  addu       $s6, $v0, $zero
/* A3CC8 800B34C8 A400BFAF */  sw         $ra, 0xa4($sp)
/* A3CCC 800B34CC A000BEAF */  sw         $fp, 0xa0($sp)
/* A3CD0 800B34D0 9C00B7AF */  sw         $s7, 0x9c($sp)
/* A3CD4 800B34D4 9400B5AF */  sw         $s5, 0x94($sp)
/* A3CD8 800B34D8 9000B4AF */  sw         $s4, 0x90($sp)
/* A3CDC 800B34DC 8C00B3AF */  sw         $s3, 0x8c($sp)
/* A3CE0 800B34E0 8800B2AF */  sw         $s2, 0x88($sp)
/* A3CE4 800B34E4 8400B1AF */  sw         $s1, 0x84($sp)
/* A3CE8 800B34E8 0C00A28C */  lw         $v0, 0xc($a1)
/* A3CEC 800B34EC 0800B284 */  lh         $s2, 8($a1)
/* A3CF0 800B34F0 0100AF90 */  lbu        $t7, 1($a1)
/* A3CF4 800B34F4 6800A2AF */  sw         $v0, 0x68($sp)
/* A3CF8 800B34F8 0A00A394 */  lhu        $v1, 0xa($a1)
/* A3CFC 800B34FC 21A88000 */  addu       $s5, $a0, $zero
/* A3D00 800B3500 6C00A3AF */  sw         $v1, 0x6c($sp)
/* A3D04 800B3504 0200A490 */  lbu        $a0, 2($a1)
/* A3D08 800B3508 00000000 */  nop
/* A3D0C 800B350C 7000A4AF */  sw         $a0, 0x70($sp)
/* A3D10 800B3510 1600A292 */  lbu        $v0, 0x16($s5)
/* A3D14 800B3514 0600A580 */  lb         $a1, 6($a1)
/* A3D18 800B3518 FFFF0724 */  addiu      $a3, $zero, -1
/* A3D1C 800B351C 6C004010 */  beqz       $v0, .L800B36D0
/* A3D20 800B3520 7400A5AF */   sw        $a1, 0x74($sp)
/* A3D24 800B3524 FFFF0824 */  addiu      $t0, $zero, -1
/* A3D28 800B3528 21280000 */  addu       $a1, $zero, $zero
/* A3D2C 800B352C 21200002 */  addu       $a0, $s0, $zero
/* A3D30 800B3530 E0010326 */  addiu      $v1, $s0, 0x1e0
/* A3D34 800B3534 2B100302 */  sltu       $v0, $s0, $v1
/* A3D38 800B3538 0200A696 */  lhu        $a2, 2($s5)
/* A3D3C 800B353C 0600A986 */  lh         $t1, 6($s5)
/* A3D40 800B3540 0600AB96 */  lhu        $t3, 6($s5)
/* A3D44 800B3544 25004010 */  beqz       $v0, .L800B35DC
/* A3D48 800B3548 2170C000 */   addu      $t6, $a2, $zero
/* A3D4C 800B354C 02000D24 */  addiu      $t5, $zero, 2
/* A3D50 800B3550 FFFF0C24 */  addiu      $t4, $zero, -1
/* A3D54 800B3554 21506000 */  addu       $t2, $v1, $zero
.L800B3558:
/* A3D58 800B3558 00008290 */  lbu        $v0, ($a0)
/* A3D5C 800B355C 00000000 */  nop
/* A3D60 800B3560 1A004010 */  beqz       $v0, .L800B35CC
/* A3D64 800B3564 00000000 */   nop
/* A3D68 800B3568 18004D10 */  beq        $v0, $t5, .L800B35CC
/* A3D6C 800B356C 00000000 */   nop
/* A3D70 800B3570 1000838C */  lw         $v1, 0x10($a0)
/* A3D74 800B3574 00000000 */  nop
/* A3D78 800B3578 02006294 */  lhu        $v0, 2($v1)
/* A3D7C 800B357C 00000000 */  nop
/* A3D80 800B3580 12004614 */  bne        $v0, $a2, .L800B35CC
/* A3D84 800B3584 00000000 */   nop
/* A3D88 800B3588 06006284 */  lh         $v0, 6($v1)
/* A3D8C 800B358C 00000000 */  nop
/* A3D90 800B3590 0E004914 */  bne        $v0, $t1, .L800B35CC
/* A3D94 800B3594 00000000 */   nop
/* A3D98 800B3598 05000C15 */  bne        $t0, $t4, .L800B35B0
/* A3D9C 800B359C 00000000 */   nop
/* A3DA0 800B35A0 0C00888C */  lw         $t0, 0xc($a0)
/* A3DA4 800B35A4 08008594 */  lhu        $a1, 8($a0)
/* A3DA8 800B35A8 74CD0208 */  j          .L800B35D0
/* A3DAC 800B35AC 14008424 */   addiu     $a0, $a0, 0x14
.L800B35B0:
/* A3DB0 800B35B0 08008394 */  lhu        $v1, 8($a0)
/* A3DB4 800B35B4 00000000 */  nop
/* A3DB8 800B35B8 2A10A300 */  slt        $v0, $a1, $v1
/* A3DBC 800B35BC 03004010 */  beqz       $v0, .L800B35CC
/* A3DC0 800B35C0 00000000 */   nop
/* A3DC4 800B35C4 0C00888C */  lw         $t0, 0xc($a0)
/* A3DC8 800B35C8 21286000 */  addu       $a1, $v1, $zero
.L800B35CC:
/* A3DCC 800B35CC 14008424 */  addiu      $a0, $a0, 0x14
.L800B35D0:
/* A3DD0 800B35D0 2B108A00 */  sltu       $v0, $a0, $t2
/* A3DD4 800B35D4 E0FF4014 */  bnez       $v0, .L800B3558
/* A3DD8 800B35D8 00000000 */   nop
.L800B35DC:
/* A3DDC 800B35DC FFFF0224 */  addiu      $v0, $zero, -1
/* A3DE0 800B35E0 3C000211 */  beq        $t0, $v0, .L800B36D4
/* A3DE4 800B35E4 F809C426 */   addiu     $a0, $s6, 0x9f8
/* A3DE8 800B35E8 1600AA92 */  lbu        $t2, 0x16($s5)
/* A3DEC 800B35EC 00140B00 */  sll        $v0, $t3, 0x10
/* A3DF0 800B35F0 03340200 */  sra        $a2, $v0, 0x10
/* A3DF4 800B35F4 E0018324 */  addiu      $v1, $a0, 0x1e0
/* A3DF8 800B35F8 2B108300 */  sltu       $v0, $a0, $v1
/* A3DFC 800B35FC 18004010 */  beqz       $v0, .L800B3660
/* A3E00 800B3600 21280000 */   addu      $a1, $zero, $zero
/* A3E04 800B3604 02000B24 */  addiu      $t3, $zero, 2
/* A3E08 800B3608 21486000 */  addu       $t1, $v1, $zero
.L800B360C:
/* A3E0C 800B360C 00008290 */  lbu        $v0, ($a0)
/* A3E10 800B3610 00000000 */  nop
/* A3E14 800B3614 0E004010 */  beqz       $v0, .L800B3650
/* A3E18 800B3618 00000000 */   nop
/* A3E1C 800B361C 0C004B10 */  beq        $v0, $t3, .L800B3650
/* A3E20 800B3620 00000000 */   nop
/* A3E24 800B3624 1000838C */  lw         $v1, 0x10($a0)
/* A3E28 800B3628 00000000 */  nop
/* A3E2C 800B362C 02006294 */  lhu        $v0, 2($v1)
/* A3E30 800B3630 00000000 */  nop
/* A3E34 800B3634 06004E14 */  bne        $v0, $t6, .L800B3650
/* A3E38 800B3638 00000000 */   nop
/* A3E3C 800B363C 06006284 */  lh         $v0, 6($v1)
/* A3E40 800B3640 00000000 */  nop
/* A3E44 800B3644 02004614 */  bne        $v0, $a2, .L800B3650
/* A3E48 800B3648 00000000 */   nop
/* A3E4C 800B364C 0100A524 */  addiu      $a1, $a1, 1
.L800B3650:
/* A3E50 800B3650 14008424 */  addiu      $a0, $a0, 0x14
/* A3E54 800B3654 2B108900 */  sltu       $v0, $a0, $t1
/* A3E58 800B3658 ECFF4014 */  bnez       $v0, .L800B360C
/* A3E5C 800B365C 00000000 */   nop
.L800B3660:
/* A3E60 800B3660 2A10AA00 */  slt        $v0, $a1, $t2
/* A3E64 800B3664 1A004014 */  bnez       $v0, .L800B36D0
/* A3E68 800B3668 F809C326 */   addiu     $v1, $s6, 0x9f8
/* A3E6C 800B366C E0016424 */  addiu      $a0, $v1, 0x1e0
/* A3E70 800B3670 2B106400 */  sltu       $v0, $v1, $a0
/* A3E74 800B3674 0C004010 */  beqz       $v0, .L800B36A8
/* A3E78 800B3678 00000000 */   nop
.L800B367C:
/* A3E7C 800B367C 0C00628C */  lw         $v0, 0xc($v1)
/* A3E80 800B3680 00000000 */  nop
/* A3E84 800B3684 04004814 */  bne        $v0, $t0, .L800B3698
/* A3E88 800B3688 FFFF0224 */   addiu     $v0, $zero, -1
/* A3E8C 800B368C 03006490 */  lbu        $a0, 3($v1)
/* A3E90 800B3690 ACCD0208 */  j          .L800B36B0
/* A3E94 800B3694 00000000 */   nop
.L800B3698:
/* A3E98 800B3698 14006324 */  addiu      $v1, $v1, 0x14
/* A3E9C 800B369C 2B106400 */  sltu       $v0, $v1, $a0
/* A3EA0 800B36A0 F6FF4014 */  bnez       $v0, .L800B367C
/* A3EA4 800B36A4 00000000 */   nop
.L800B36A8:
/* A3EA8 800B36A8 FFFF0424 */  addiu      $a0, $zero, -1
/* A3EAC 800B36AC FFFF0224 */  addiu      $v0, $zero, -1
.L800B36B0:
/* A3EB0 800B36B0 07008210 */  beq        $a0, $v0, .L800B36D0
/* A3EB4 800B36B4 80100400 */   sll       $v0, $a0, 2
/* A3EB8 800B36B8 21104400 */  addu       $v0, $v0, $a0
/* A3EBC 800B36BC 80100200 */  sll        $v0, $v0, 2
/* A3EC0 800B36C0 F809C326 */  addiu      $v1, $s6, 0x9f8
/* A3EC4 800B36C4 21804300 */  addu       $s0, $v0, $v1
/* A3EC8 800B36C8 030004A2 */  sb         $a0, 3($s0)
/* A3ECC 800B36CC 21388000 */  addu       $a3, $a0, $zero
.L800B36D0:
/* A3ED0 800B36D0 FFFF0224 */  addiu      $v0, $zero, -1
.L800B36D4:
/* A3ED4 800B36D4 4000E214 */  bne        $a3, $v0, .L800B37D8
/* A3ED8 800B36D8 0600043C */   lui       $a0, 6
/* A3EDC 800B36DC FFFF1424 */  addiu      $s4, $zero, -1
/* A3EE0 800B36E0 21800000 */  addu       $s0, $zero, $zero
/* A3EE4 800B36E4 1E80133C */  lui        $s3, 0x801e
/* A3EE8 800B36E8 0180023C */  lui        $v0, %hi(D_8001727C)
/* A3EEC 800B36EC 7C725124 */  addiu      $s1, $v0, %lo(D_8001727C)
/* A3EF0 800B36F0 03001E24 */  addiu      $fp, $zero, 3
/* A3EF4 800B36F4 02001724 */  addiu      $s7, $zero, 2
.L800B36F8:
/* A3EF8 800B36F8 1E80043C */  lui        $a0, %hi(D_801E09E8)
/* A3EFC 800B36FC E8098424 */  addiu      $a0, $a0, %lo(D_801E09E8)
/* A3F00 800B3700 E809628E */  lw         $v0, 0x9e8($s3)
/* A3F04 800B3704 0400838C */  lw         $v1, 4($a0)
/* A3F08 800B3708 0000248E */  lw         $a0, ($s1)
/* A3F0C 800B370C 25104300 */  or         $v0, $v0, $v1
/* A3F10 800B3710 24104400 */  and        $v0, $v0, $a0
/* A3F14 800B3714 0B004014 */  bnez       $v0, .L800B3744
/* A3F18 800B3718 00000000 */   nop
/* A3F1C 800B371C FDE2020C */  jal        SpuGetKeyStatus
/* A3F20 800B3720 7800AFAF */   sw        $t7, 0x78($sp)
/* A3F24 800B3724 7800AF8F */  lw         $t7, 0x78($sp)
/* A3F28 800B3728 0B005E10 */  beq        $v0, $fp, .L800B3758
/* A3F2C 800B372C 21380002 */   addu      $a3, $s0, $zero
/* A3F30 800B3730 09004010 */  beqz       $v0, .L800B3758
/* A3F34 800B3734 00000000 */   nop
/* A3F38 800B3738 02005714 */  bne        $v0, $s7, .L800B3744
/* A3F3C 800B373C 00000000 */   nop
/* A3F40 800B3740 21A00002 */  addu       $s4, $s0, $zero
.L800B3744:
/* A3F44 800B3744 01001026 */  addiu      $s0, $s0, 1
/* A3F48 800B3748 1800022A */  slti       $v0, $s0, 0x18
/* A3F4C 800B374C EAFF4014 */  bnez       $v0, .L800B36F8
/* A3F50 800B3750 04003126 */   addiu     $s1, $s1, 4
/* A3F54 800B3754 21388002 */  addu       $a3, $s4, $zero
.L800B3758:
/* A3F58 800B3758 FFFF0224 */  addiu      $v0, $zero, -1
/* A3F5C 800B375C 1800E214 */  bne        $a3, $v0, .L800B37C0
/* A3F60 800B3760 80100700 */   sll       $v0, $a3, 2
/* A3F64 800B3764 21380000 */  addu       $a3, $zero, $zero
/* A3F68 800B3768 21300000 */  addu       $a2, $zero, $zero
/* A3F6C 800B376C 21280000 */  addu       $a1, $zero, $zero
/* A3F70 800B3770 1E80023C */  lui        $v0, %hi(D_801E09F8)
/* A3F74 800B3774 F8094424 */  addiu      $a0, $v0, %lo(D_801E09F8)
.L800B3778:
/* A3F78 800B3778 1000828C */  lw         $v0, 0x10($a0)
/* A3F7C 800B377C 00000000 */  nop
/* A3F80 800B3780 14004390 */  lbu        $v1, 0x14($v0)
/* A3F84 800B3784 00000000 */  nop
/* A3F88 800B3788 08006010 */  beqz       $v1, .L800B37AC
/* A3F8C 800B378C 00000000 */   nop
/* A3F90 800B3790 08008294 */  lhu        $v0, 8($a0)
/* A3F94 800B3794 00000000 */  nop
/* A3F98 800B3798 2B10C200 */  sltu       $v0, $a2, $v0
/* A3F9C 800B379C 03004010 */  beqz       $v0, .L800B37AC
/* A3FA0 800B37A0 00000000 */   nop
/* A3FA4 800B37A4 2138A000 */  addu       $a3, $a1, $zero
/* A3FA8 800B37A8 08008690 */  lbu        $a2, 8($a0)
.L800B37AC:
/* A3FAC 800B37AC 0100A524 */  addiu      $a1, $a1, 1
/* A3FB0 800B37B0 1800A228 */  slti       $v0, $a1, 0x18
/* A3FB4 800B37B4 F0FF4014 */  bnez       $v0, .L800B3778
/* A3FB8 800B37B8 14008424 */   addiu     $a0, $a0, 0x14
/* A3FBC 800B37BC 80100700 */  sll        $v0, $a3, 2
.L800B37C0:
/* A3FC0 800B37C0 21104700 */  addu       $v0, $v0, $a3
/* A3FC4 800B37C4 80100200 */  sll        $v0, $v0, 2
/* A3FC8 800B37C8 F809C326 */  addiu      $v1, $s6, 0x9f8
/* A3FCC 800B37CC 21804300 */  addu       $s0, $v0, $v1
/* A3FD0 800B37D0 030007A2 */  sb         $a3, 3($s0)
/* A3FD4 800B37D4 0600043C */  lui        $a0, 6
.L800B37D8:
/* A3FD8 800B37D8 100015AE */  sw         $s5, 0x10($s0)
/* A3FDC 800B37DC 6800A28F */  lw         $v0, 0x68($sp)
/* A3FE0 800B37E0 80380700 */  sll        $a3, $a3, 2
/* A3FE4 800B37E4 080000A6 */  sh         $zero, 8($s0)
/* A3FE8 800B37E8 0C0002AE */  sw         $v0, 0xc($s0)
/* A3FEC 800B37EC 1800A292 */  lbu        $v0, 0x18($s5)
/* A3FF0 800B37F0 EF008434 */  ori        $a0, $a0, 0xef
/* A3FF4 800B37F4 00120200 */  sll        $v0, $v0, 8
/* A3FF8 800B37F8 040002A6 */  sh         $v0, 4($s0)
/* A3FFC 800B37FC 0180023C */  lui        $v0, %hi(D_8001727C)
/* A4000 800B3800 7C724324 */  addiu      $v1, $v0, %lo(D_8001727C)
/* A4004 800B3804 2118E300 */  addu       $v1, $a3, $v1
/* A4008 800B3808 0000628C */  lw         $v0, ($v1)
/* A400C 800B380C 1000A68E */  lw         $a2, 0x10($s5)
/* A4010 800B3810 1700A592 */  lbu        $a1, 0x17($s5)
/* A4014 800B3814 2188E000 */  addu       $s1, $a3, $zero
/* A4018 800B3818 1400A4AF */  sw         $a0, 0x14($sp)
/* A401C 800B381C 1E00A0A7 */  sh         $zero, 0x1e($sp)
/* A4020 800B3820 1C00A0A7 */  sh         $zero, 0x1c($sp)
/* A4024 800B3824 002A0500 */  sll        $a1, $a1, 8
/* A4028 800B3828 1000A2AF */  sw         $v0, 0x10($sp)
/* A402C 800B382C 2C00A6AF */  sw         $a2, 0x2c($sp)
/* A4030 800B3830 1900A292 */  lbu        $v0, 0x19($s5)
/* A4034 800B3834 1800A392 */  lbu        $v1, 0x18($s5)
/* A4038 800B3838 25104500 */  or         $v0, $v0, $a1
/* A403C 800B383C 001A0300 */  sll        $v1, $v1, 8
/* A4040 800B3840 2800A2A7 */  sh         $v0, 0x28($sp)
/* A4044 800B3844 2C004012 */  beqz       $s2, .L800B38F8
/* A4048 800B3848 2600A3A7 */   sh        $v1, 0x26($sp)
/* A404C 800B384C 10004106 */  bgez       $s2, .L800B3890
/* A4050 800B3850 C3211200 */   sra       $a0, $s2, 7
/* A4054 800B3854 23101200 */  negu       $v0, $s2
/* A4058 800B3858 00140200 */  sll        $v0, $v0, 0x10
/* A405C 800B385C 03940200 */  sra        $s2, $v0, 0x10
/* A4060 800B3860 02004106 */  bgez       $s2, .L800B386C
/* A4064 800B3864 21104002 */   addu      $v0, $s2, $zero
/* A4068 800B3868 7F004226 */  addiu      $v0, $s2, 0x7f
.L800B386C:
/* A406C 800B386C C3110200 */  sra        $v0, $v0, 7
/* A4070 800B3870 27200200 */  nor        $a0, $zero, $v0
/* A4074 800B3874 C0110200 */  sll        $v0, $v0, 7
/* A4078 800B3878 23104202 */  subu       $v0, $s2, $v0
/* A407C 800B387C 00140200 */  sll        $v0, $v0, 0x10
/* A4080 800B3880 03140200 */  sra        $v0, $v0, 0x10
/* A4084 800B3884 80000324 */  addiu      $v1, $zero, 0x80
/* A4088 800B3888 29CE0208 */  j          .L800B38A4
/* A408C 800B388C 23286200 */   subu      $a1, $v1, $v0
.L800B3890:
/* A4090 800B3890 21108000 */  addu       $v0, $a0, $zero
/* A4094 800B3894 C0110200 */  sll        $v0, $v0, 7
/* A4098 800B3898 23104202 */  subu       $v0, $s2, $v0
/* A409C 800B389C 00140200 */  sll        $v0, $v0, 0x10
/* A40A0 800B38A0 032C0200 */  sra        $a1, $v0, 0x10
.L800B38A4:
/* A40A4 800B38A4 04000296 */  lhu        $v0, 4($s0)
/* A40A8 800B38A8 00000000 */  nop
/* A40AC 800B38AC 021A0200 */  srl        $v1, $v0, 8
/* A40B0 800B38B0 21206400 */  addu       $a0, $v1, $a0
/* A40B4 800B38B4 7F004230 */  andi       $v0, $v0, 0x7f
/* A40B8 800B38B8 21284500 */  addu       $a1, $v0, $a1
/* A40BC 800B38BC 8000A328 */  slti       $v1, $a1, 0x80
/* A40C0 800B38C0 03006014 */  bnez       $v1, .L800B38D0
/* A40C4 800B38C4 00000000 */   nop
/* A40C8 800B38C8 01008424 */  addiu      $a0, $a0, 1
/* A40CC 800B38CC 80FFA524 */  addiu      $a1, $a1, -0x80
.L800B38D0:
/* A40D0 800B38D0 03008104 */  bgez       $a0, .L800B38E0
/* A40D4 800B38D4 80008228 */   slti      $v0, $a0, 0x80
/* A40D8 800B38D8 21200000 */  addu       $a0, $zero, $zero
/* A40DC 800B38DC 80008228 */  slti       $v0, $a0, 0x80
.L800B38E0:
/* A40E0 800B38E0 03004014 */  bnez       $v0, .L800B38F0
/* A40E4 800B38E4 00120400 */   sll       $v0, $a0, 8
/* A40E8 800B38E8 7F000424 */  addiu      $a0, $zero, 0x7f
/* A40EC 800B38EC 00120400 */  sll        $v0, $a0, 8
.L800B38F0:
/* A40F0 800B38F0 25104500 */  or         $v0, $v0, $a1
/* A40F4 800B38F4 2600A2A7 */  sh         $v0, 0x26($sp)
.L800B38F8:
/* A40F8 800B38F8 0300E015 */  bnez       $t7, .L800B3908
/* A40FC 800B38FC 00160F00 */   sll       $v0, $t7, 0x18
/* A4100 800B3900 01000F24 */  addiu      $t7, $zero, 1
/* A4104 800B3904 00160F00 */  sll        $v0, $t7, 0x18
.L800B3908:
/* A4108 800B3908 02004104 */  bgez       $v0, .L800B3914
/* A410C 800B390C 00000000 */   nop
/* A4110 800B3910 7F000F24 */  addiu      $t7, $zero, 0x7f
.L800B3914:
/* A4114 800B3914 01000FA2 */  sb         $t7, 1($s0)
/* A4118 800B3918 1500A792 */  lbu        $a3, 0x15($s5)
/* A411C 800B391C 7400A28F */  lw         $v0, 0x74($sp)
/* A4120 800B3920 00000000 */  nop
/* A4124 800B3924 1800E200 */  mult       $a3, $v0
/* A4128 800B3928 12300000 */  mflo       $a2
/* A412C 800B392C 0281053C */  lui        $a1, 0x8102
/* A4130 800B3930 0904A534 */  ori        $a1, $a1, 0x409
/* A4134 800B3934 1800C500 */  mult       $a2, $a1
/* A4138 800B3938 FF00E431 */  andi       $a0, $t7, 0xff
/* A413C 800B393C 0180023C */  lui        $v0, %hi(D_8001717C)
/* A4140 800B3940 7C714824 */  addiu      $t0, $v0, %lo(D_8001717C)
/* A4144 800B3944 80000224 */  addiu      $v0, $zero, 0x80
/* A4148 800B3948 23104400 */  subu       $v0, $v0, $a0
/* A414C 800B394C 40100200 */  sll        $v0, $v0, 1
/* A4150 800B3950 21104800 */  addu       $v0, $v0, $t0
/* A4154 800B3954 00004494 */  lhu        $a0, ($v0)
/* A4158 800B3958 10180000 */  mfhi       $v1
/* A415C 800B395C 21186600 */  addu       $v1, $v1, $a2
/* A4160 800B3960 83190300 */  sra        $v1, $v1, 6
/* A4164 800B3964 C3370600 */  sra        $a2, $a2, 0x1f
/* A4168 800B3968 23186600 */  subu       $v1, $v1, $a2
/* A416C 800B396C 18006400 */  mult       $v1, $a0
/* A4170 800B3970 060007A6 */  sh         $a3, 6($s0)
/* A4174 800B3974 7400A28F */  lw         $v0, 0x74($sp)
/* A4178 800B3978 12180000 */  mflo       $v1
/* A417C 800B397C 031A0300 */  sra        $v1, $v1, 8
/* A4180 800B3980 1800A3A7 */  sh         $v1, 0x18($sp)
/* A4184 800B3984 06000486 */  lh         $a0, 6($s0)
/* A4188 800B3988 00000000 */  nop
/* A418C 800B398C 18008200 */  mult       $a0, $v0
/* A4190 800B3990 12200000 */  mflo       $a0
/* A4194 800B3994 00000000 */  nop
/* A4198 800B3998 00000000 */  nop
/* A419C 800B399C 18008500 */  mult       $a0, $a1
/* A41A0 800B39A0 01000292 */  lbu        $v0, 1($s0)
/* A41A4 800B39A4 00000000 */  nop
/* A41A8 800B39A8 40100200 */  sll        $v0, $v0, 1
/* A41AC 800B39AC 21104800 */  addu       $v0, $v0, $t0
/* A41B0 800B39B0 00004394 */  lhu        $v1, ($v0)
/* A41B4 800B39B4 10280000 */  mfhi       $a1
/* A41B8 800B39B8 2128A400 */  addu       $a1, $a1, $a0
/* A41BC 800B39BC 83290500 */  sra        $a1, $a1, 6
/* A41C0 800B39C0 C3270400 */  sra        $a0, $a0, 0x1f
/* A41C4 800B39C4 2328A400 */  subu       $a1, $a1, $a0
/* A41C8 800B39C8 1800A300 */  mult       $a1, $v1
/* A41CC 800B39CC 1C00A296 */  lhu        $v0, 0x1c($s5)
/* A41D0 800B39D0 1E00A396 */  lhu        $v1, 0x1e($s5)
/* A41D4 800B39D4 1000A427 */  addiu      $a0, $sp, 0x10
/* A41D8 800B39D8 4A00A2A7 */  sh         $v0, 0x4a($sp)
/* A41DC 800B39DC 4C00A3A7 */  sh         $v1, 0x4c($sp)
/* A41E0 800B39E0 12280000 */  mflo       $a1
/* A41E4 800B39E4 032A0500 */  sra        $a1, $a1, 8
/* A41E8 800B39E8 B5E3020C */  jal        SpuSetVoiceAttr
/* A41EC 800B39EC 1A00A5A7 */   sh        $a1, 0x1a($sp)
/* A41F0 800B39F0 03000224 */  addiu      $v0, $zero, 3
/* A41F4 800B39F4 0000A2A6 */  sh         $v0, ($s5)
/* A41F8 800B39F8 1E80023C */  lui        $v0, %hi(D_801E09E8)
/* A41FC 800B39FC E8094524 */  addiu      $a1, $v0, %lo(D_801E09E8)
/* A4200 800B3A00 0180033C */  lui        $v1, %hi(D_8001727C)
/* A4204 800B3A04 7C726224 */  addiu      $v0, $v1, %lo(D_8001727C)
/* A4208 800B3A08 21102202 */  addu       $v0, $s1, $v0
/* A420C 800B3A0C 0400A38C */  lw         $v1, 4($a1)
/* A4210 800B3A10 0000448C */  lw         $a0, ($v0)
/* A4214 800B3A14 01000224 */  addiu      $v0, $zero, 1
/* A4218 800B3A18 25186400 */  or         $v1, $v1, $a0
/* A421C 800B3A1C 0400A3AC */  sw         $v1, 4($a1)
/* A4220 800B3A20 000002A2 */  sb         $v0, ($s0)
/* A4224 800B3A24 6C00A48F */  lw         $a0, 0x6c($sp)
/* A4228 800B3A28 00000000 */  nop
/* A422C 800B3A2C 14008010 */  beqz       $a0, .L800B3A80
/* A4230 800B3A30 00000000 */   nop
/* A4234 800B3A34 06000286 */  lh         $v0, 6($s0)
/* A4238 800B3A38 00000000 */  nop
/* A423C 800B3A3C C0110200 */  sll        $v0, $v0, 7
/* A4240 800B3A40 1A004400 */  div        $zero, $v0, $a0
/* A4244 800B3A44 12100000 */  mflo       $v0
/* A4248 800B3A48 02008014 */  bnez       $a0, .L800B3A54
/* A424C 800B3A4C 00000000 */   nop
/* A4250 800B3A50 CD010000 */  break      0, 7
.L800B3A54:
/* A4254 800B3A54 06004010 */   beqz      $v0, .L800B3A70
/* A4258 800B3A58 00000000 */   nop
/* A425C 800B3A5C 02008014 */  bnez       $a0, .L800B3A68
/* A4260 800B3A60 00000000 */   nop
/* A4264 800B3A64 CD010000 */  break      0, 7
.L800B3A68:
/* A4268 800B3A68 9ECE0208 */   j         .L800B3A78
/* A426C 800B3A6C 0A0002A6 */   sh        $v0, 0xa($s0)
.L800B3A70:
/* A4270 800B3A70 01000224 */  addiu      $v0, $zero, 1
/* A4274 800B3A74 0A0002A6 */  sh         $v0, 0xa($s0)
.L800B3A78:
/* A4278 800B3A78 04000224 */  addiu      $v0, $zero, 4
/* A427C 800B3A7C 000002A2 */  sb         $v0, ($s0)
.L800B3A80:
/* A4280 800B3A80 7000A38F */  lw         $v1, 0x70($sp)
/* A4284 800B3A84 01000224 */  addiu      $v0, $zero, 1
/* A4288 800B3A88 27006214 */  bne        $v1, $v0, .L800B3B28
/* A428C 800B3A8C 0180043C */   lui       $a0, 0x8001
/* A4290 800B3A90 06000224 */  addiu      $v0, $zero, 6
/* A4294 800B3A94 0180043C */  lui        $a0, %hi(D_8001717C)
/* A4298 800B3A98 7C718524 */  addiu      $a1, $a0, %lo(D_8001717C)
/* A429C 800B3A9C 5000A2AF */  sw         $v0, 0x50($sp)
/* A42A0 800B3AA0 01000392 */  lbu        $v1, 1($s0)
/* A42A4 800B3AA4 80000224 */  addiu      $v0, $zero, 0x80
/* A42A8 800B3AA8 23104300 */  subu       $v0, $v0, $v1
/* A42AC 800B3AAC 40100200 */  sll        $v0, $v0, 1
/* A42B0 800B3AB0 21104500 */  addu       $v0, $v0, $a1
/* A42B4 800B3AB4 06000386 */  lh         $v1, 6($s0)
/* A42B8 800B3AB8 00004494 */  lhu        $a0, ($v0)
/* A42BC 800B3ABC 00000000 */  nop
/* A42C0 800B3AC0 18006400 */  mult       $v1, $a0
/* A42C4 800B3AC4 12180000 */  mflo       $v1
/* A42C8 800B3AC8 031A0300 */  sra        $v1, $v1, 8
/* A42CC 800B3ACC 5800A3A7 */  sh         $v1, 0x58($sp)
/* A42D0 800B3AD0 01000292 */  lbu        $v0, 1($s0)
/* A42D4 800B3AD4 06000386 */  lh         $v1, 6($s0)
/* A42D8 800B3AD8 40100200 */  sll        $v0, $v0, 1
/* A42DC 800B3ADC 21104500 */  addu       $v0, $v0, $a1
/* A42E0 800B3AE0 00004494 */  lhu        $a0, ($v0)
/* A42E4 800B3AE4 00000000 */  nop
/* A42E8 800B3AE8 18006400 */  mult       $v1, $a0
/* A42EC 800B3AEC 5000A427 */  addiu      $a0, $sp, 0x50
/* A42F0 800B3AF0 12180000 */  mflo       $v1
/* A42F4 800B3AF4 031A0300 */  sra        $v1, $v1, 8
/* A42F8 800B3AF8 C5DE020C */  jal        SpuSetReverbModeParam
/* A42FC 800B3AFC 5A00A3A7 */   sh        $v1, 0x5a($sp)
/* A4300 800B3B00 0180023C */  lui        $v0, %hi(D_8001727C)
/* A4304 800B3B04 7C724324 */  addiu      $v1, $v0, %lo(D_8001727C)
/* A4308 800B3B08 21182302 */  addu       $v1, $s1, $v1
/* A430C 800B3B0C 0000658C */  lw         $a1, ($v1)
/* A4310 800B3B10 7000A38F */  lw         $v1, 0x70($sp)
/* A4314 800B3B14 01000424 */  addiu      $a0, $zero, 1
/* A4318 800B3B18 65E1020C */  jal        SpuSetReverbVoice
/* A431C 800B3B1C 020003A2 */   sb        $v1, 2($s0)
/* A4320 800B3B20 D0CE0208 */  j          .L800B3B40
/* A4324 800B3B24 00000000 */   nop
.L800B3B28:
/* A4328 800B3B28 7C728224 */  addiu      $v0, $a0, 0x727c
/* A432C 800B3B2C 21102202 */  addu       $v0, $s1, $v0
/* A4330 800B3B30 0000458C */  lw         $a1, ($v0)
/* A4334 800B3B34 21200000 */  addu       $a0, $zero, $zero
/* A4338 800B3B38 65E1020C */  jal        SpuSetReverbVoice
/* A433C 800B3B3C 020000A2 */   sb        $zero, 2($s0)
.L800B3B40:
/* A4340 800B3B40 A400BF8F */  lw         $ra, 0xa4($sp)
/* A4344 800B3B44 A000BE8F */  lw         $fp, 0xa0($sp)
/* A4348 800B3B48 9C00B78F */  lw         $s7, 0x9c($sp)
/* A434C 800B3B4C 9800B68F */  lw         $s6, 0x98($sp)
/* A4350 800B3B50 9400B58F */  lw         $s5, 0x94($sp)
/* A4354 800B3B54 9000B48F */  lw         $s4, 0x90($sp)
/* A4358 800B3B58 8C00B38F */  lw         $s3, 0x8c($sp)
/* A435C 800B3B5C 8800B28F */  lw         $s2, 0x88($sp)
/* A4360 800B3B60 8400B18F */  lw         $s1, 0x84($sp)
/* A4364 800B3B64 8000B08F */  lw         $s0, 0x80($sp)
/* A4368 800B3B68 0800E003 */  jr         $ra
/* A436C 800B3B6C A800BD27 */   addiu     $sp, $sp, 0xa8
