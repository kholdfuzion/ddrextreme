.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c34f0
/* B3CF0 800C34F0 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* B3CF4 800C34F4 01000424 */  addiu      $a0, $zero, 1
/* B3CF8 800C34F8 1F80023C */  lui        $v0, %hi(D_801F72F8)
/* B3CFC 800C34FC 4400B3AF */  sw         $s3, 0x44($sp)
/* B3D00 800C3500 F8725324 */  addiu      $s3, $v0, %lo(D_801F72F8)
/* B3D04 800C3504 4C00BFAF */  sw         $ra, 0x4c($sp)
/* B3D08 800C3508 4800B4AF */  sw         $s4, 0x48($sp)
/* B3D0C 800C350C 4000B2AF */  sw         $s2, 0x40($sp)
/* B3D10 800C3510 3C00B1AF */  sw         $s1, 0x3c($sp)
/* B3D14 800C3514 CE0E030C */  jal        FUN_800c3b38
/* B3D18 800C3518 3800B0AF */   sw        $s0, 0x38($sp)
/* B3D1C 800C351C 1F0B030C */  jal        file_800c2c7c
/* B3D20 800C3520 21204000 */   addu      $a0, $v0, $zero
/* B3D24 800C3524 21884000 */  addu       $s1, $v0, $zero
/* B3D28 800C3528 58002012 */  beqz       $s1, .L800C368C
/* B3D2C 800C352C 00000000 */   nop
/* B3D30 800C3530 5E0F030C */  jal        FUN_800c3d78
/* B3D34 800C3534 21202002 */   addu      $a0, $s1, $zero
/* B3D38 800C3538 0180043C */  lui        $a0, %hi(D_8001783C)
/* B3D3C 800C353C 1F0B030C */  jal        file_800c2c7c
/* B3D40 800C3540 3C788424 */   addiu     $a0, $a0, %lo(D_8001783C)
/* B3D44 800C3544 CE0E030C */  jal        FUN_800c3b38
/* B3D48 800C3548 21200000 */   addu      $a0, $zero, $zero
/* B3D4C 800C354C 21904000 */  addu       $s2, $v0, $zero
/* B3D50 800C3550 3000A0AF */  sw         $zero, 0x30($sp)
/* B3D54 800C3554 0E80023C */  lui        $v0, %hi(D_800D8C0D)
/* B3D58 800C3558 0D8C5424 */  addiu      $s4, $v0, %lo(D_800D8C0D)
.L800C355C:
/* B3D5C 800C355C 3000A427 */  addiu      $a0, $sp, 0x30
.L800C3560:
/* B3D60 800C3560 1000A527 */  addiu      $a1, $sp, 0x10
.L800C3564:
/* B3D64 800C3564 6B0B030C */  jal        FUN_800c2dac
/* B3D68 800C3568 21304002 */   addu      $a2, $s2, $zero
/* B3D6C 800C356C 21884000 */  addu       $s1, $v0, $zero
/* B3D70 800C3570 46002012 */  beqz       $s1, .L800C368C
/* B3D74 800C3574 2E000224 */   addiu     $v0, $zero, 0x2e
/* B3D78 800C3578 1600A393 */  lbu        $v1, 0x16($sp)
/* B3D7C 800C357C 00000000 */  nop
/* B3D80 800C3580 F7FF6214 */  bne        $v1, $v0, .L800C3560
/* B3D84 800C3584 3000A427 */   addiu     $a0, $sp, 0x30
/* B3D88 800C3588 1900A293 */  lbu        $v0, 0x19($sp)
/* B3D8C 800C358C 00000000 */  nop
/* B3D90 800C3590 F4FF4314 */  bne        $v0, $v1, .L800C3564
/* B3D94 800C3594 1000A527 */   addiu     $a1, $sp, 0x10
/* B3D98 800C3598 1A00A293 */  lbu        $v0, 0x1a($sp)
/* B3D9C 800C359C 00000000 */  nop
/* B3DA0 800C35A0 21105400 */  addu       $v0, $v0, $s4
/* B3DA4 800C35A4 00004290 */  lbu        $v0, ($v0)
/* B3DA8 800C35A8 00000000 */  nop
/* B3DAC 800C35AC 04004230 */  andi       $v0, $v0, 4
/* B3DB0 800C35B0 EAFF4010 */  beqz       $v0, .L800C355C
/* B3DB4 800C35B4 00000000 */   nop
/* B3DB8 800C35B8 1B00A293 */  lbu        $v0, 0x1b($sp)
/* B3DBC 800C35BC 00000000 */  nop
/* B3DC0 800C35C0 E6FF4014 */  bnez       $v0, .L800C355C
/* B3DC4 800C35C4 00000000 */   nop
/* B3DC8 800C35C8 169B000C */  jal        atoi
/* B3DCC 800C35CC 1A00A427 */   addiu     $a0, $sp, 0x1a
/* B3DD0 800C35D0 21204000 */  addu       $a0, $v0, $zero
/* B3DD4 800C35D4 1700A393 */  lbu        $v1, 0x17($sp)
/* B3DD8 800C35D8 70000224 */  addiu      $v0, $zero, 0x70
/* B3DDC 800C35DC 11006214 */  bne        $v1, $v0, .L800C3624
/* B3DE0 800C35E0 69000224 */   addiu     $v0, $zero, 0x69
/* B3DE4 800C35E4 1800A393 */  lbu        $v1, 0x18($sp)
/* B3DE8 800C35E8 77000224 */  addiu      $v0, $zero, 0x77
/* B3DEC 800C35EC 0B006214 */  bne        $v1, $v0, .L800C361C
/* B3DF0 800C35F0 00000000 */   nop
/* B3DF4 800C35F4 09008004 */  bltz       $a0, .L800C361C
/* B3DF8 800C35F8 03008228 */   slti      $v0, $a0, 3
/* B3DFC 800C35FC 07004010 */  beqz       $v0, .L800C361C
/* B3E00 800C3600 00000000 */   nop
/* B3E04 800C3604 C0200400 */  sll        $a0, $a0, 3
/* B3E08 800C3608 21206402 */  addu       $a0, $s3, $a0
/* B3E0C 800C360C AB0D030C */  jal        FUN_800c36ac
/* B3E10 800C3610 21282002 */   addu      $a1, $s1, $zero
/* B3E14 800C3614 580D0308 */  j          .L800C3560
/* B3E18 800C3618 3000A427 */   addiu     $a0, $sp, 0x30
.L800C361C:
/* B3E1C 800C361C 1700A393 */  lbu        $v1, 0x17($sp)
/* B3E20 800C3620 69000224 */  addiu      $v0, $zero, 0x69
.L800C3624:
/* B3E24 800C3624 CDFF6214 */  bne        $v1, $v0, .L800C355C
/* B3E28 800C3628 64000224 */   addiu     $v0, $zero, 0x64
/* B3E2C 800C362C 1800A393 */  lbu        $v1, 0x18($sp)
/* B3E30 800C3630 00000000 */  nop
/* B3E34 800C3634 C9FF6214 */  bne        $v1, $v0, .L800C355C
/* B3E38 800C3638 00000000 */   nop
/* B3E3C 800C363C C7FF8004 */  bltz       $a0, .L800C355C
/* B3E40 800C3640 04008228 */   slti      $v0, $a0, 4
/* B3E44 800C3644 C5FF4010 */  beqz       $v0, .L800C355C
/* B3E48 800C3648 40800400 */   sll       $s0, $a0, 1
/* B3E4C 800C364C 21800402 */  addu       $s0, $s0, $a0
/* B3E50 800C3650 80801000 */  sll        $s0, $s0, 2
/* B3E54 800C3654 21800402 */  addu       $s0, $s0, $a0
/* B3E58 800C3658 80801000 */  sll        $s0, $s0, 2
/* B3E5C 800C365C 21187002 */  addu       $v1, $s3, $s0
/* B3E60 800C3660 10000224 */  addiu      $v0, $zero, 0x10
/* B3E64 800C3664 180062AC */  sw         $v0, 0x18($v1)
/* B3E68 800C3668 18001026 */  addiu      $s0, $s0, 0x18
/* B3E6C 800C366C 21807002 */  addu       $s0, $s3, $s0
/* B3E70 800C3670 04000426 */  addiu      $a0, $s0, 4
/* B3E74 800C3674 AB0D030C */  jal        FUN_800c36ac
/* B3E78 800C3678 21282002 */   addu      $a1, $s1, $zero
/* B3E7C 800C367C E40E030C */  jal        FUN_800c3b90
/* B3E80 800C3680 21200002 */   addu      $a0, $s0, $zero
/* B3E84 800C3684 580D0308 */  j          .L800C3560
/* B3E88 800C3688 3000A427 */   addiu     $a0, $sp, 0x30
.L800C368C:
/* B3E8C 800C368C 4C00BF8F */  lw         $ra, 0x4c($sp)
/* B3E90 800C3690 4800B48F */  lw         $s4, 0x48($sp)
/* B3E94 800C3694 4400B38F */  lw         $s3, 0x44($sp)
/* B3E98 800C3698 4000B28F */  lw         $s2, 0x40($sp)
/* B3E9C 800C369C 3C00B18F */  lw         $s1, 0x3c($sp)
/* B3EA0 800C36A0 3800B08F */  lw         $s0, 0x38($sp)
/* B3EA4 800C36A4 0800E003 */  jr         $ra
/* B3EA8 800C36A8 5000BD27 */   addiu     $sp, $sp, 0x50
