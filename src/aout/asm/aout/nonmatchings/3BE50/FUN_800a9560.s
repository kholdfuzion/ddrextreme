.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9560
/* 99D60 800A9560 0F80023C */  lui        $v0, %hi(D_800EC6F0)
/* 99D64 800A9564 F0C6438C */  lw         $v1, %lo(D_800EC6F0)($v0)
/* 99D68 800A9568 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 99D6C 800A956C 1800B2AF */  sw         $s2, 0x18($sp)
/* 99D70 800A9570 21904000 */  addu       $s2, $v0, $zero
/* 99D74 800A9574 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 99D78 800A9578 1400B1AF */  sw         $s1, 0x14($sp)
/* 99D7C 800A957C 02006104 */  bgez       $v1, .L800A9588
/* 99D80 800A9580 21886000 */   addu      $s1, $v1, $zero
/* 99D84 800A9584 23881100 */  negu       $s1, $s1
.L800A9588:
/* 99D88 800A9588 48002012 */  beqz       $s1, .L800A96AC
/* 99D8C 800A958C 1000B0AF */   sw        $s0, 0x10($sp)
/* 99D90 800A9590 0E006018 */  blez       $v1, .L800A95CC
/* 99D94 800A9594 8888023C */   lui       $v0, 0x8888
/* 99D98 800A9598 89884234 */  ori        $v0, $v0, 0x8889
/* 99D9C 800A959C C0191100 */  sll        $v1, $s1, 7
/* 99DA0 800A95A0 23187100 */  subu       $v1, $v1, $s1
/* 99DA4 800A95A4 40180300 */  sll        $v1, $v1, 1
/* 99DA8 800A95A8 18006200 */  mult       $v1, $v0
/* 99DAC 800A95AC FE000424 */  addiu      $a0, $zero, 0xfe
/* 99DB0 800A95B0 10100000 */  mfhi       $v0
/* 99DB4 800A95B4 21104300 */  addu       $v0, $v0, $v1
/* 99DB8 800A95B8 03110200 */  sra        $v0, $v0, 4
/* 99DBC 800A95BC C31F0300 */  sra        $v1, $v1, 0x1f
/* 99DC0 800A95C0 23104300 */  subu       $v0, $v0, $v1
/* 99DC4 800A95C4 7EA50208 */  j          .L800A95F8
/* 99DC8 800A95C8 23808200 */   subu      $s0, $a0, $v0
.L800A95CC:
/* 99DCC 800A95CC 8888033C */  lui        $v1, 0x8888
/* 99DD0 800A95D0 89886334 */  ori        $v1, $v1, 0x8889
/* 99DD4 800A95D4 C0111100 */  sll        $v0, $s1, 7
/* 99DD8 800A95D8 23105100 */  subu       $v0, $v0, $s1
/* 99DDC 800A95DC 40100200 */  sll        $v0, $v0, 1
/* 99DE0 800A95E0 18004300 */  mult       $v0, $v1
/* 99DE4 800A95E4 10180000 */  mfhi       $v1
/* 99DE8 800A95E8 21186200 */  addu       $v1, $v1, $v0
/* 99DEC 800A95EC 03190300 */  sra        $v1, $v1, 4
/* 99DF0 800A95F0 C3170200 */  sra        $v0, $v0, 0x1f
/* 99DF4 800A95F4 23806200 */  subu       $s0, $v1, $v0
.L800A95F8:
/* 99DF8 800A95F8 03000106 */  bgez       $s0, .L800A9608
/* 99DFC 800A95FC FF00022A */   slti      $v0, $s0, 0xff
/* 99E00 800A9600 21800000 */  addu       $s0, $zero, $zero
/* 99E04 800A9604 FF00022A */  slti       $v0, $s0, 0xff
.L800A9608:
/* 99E08 800A9608 02004014 */  bnez       $v0, .L800A9614
/* 99E0C 800A960C 2500222A */   slti      $v0, $s1, 0x25
/* 99E10 800A9610 FE001024 */  addiu      $s0, $zero, 0xfe
.L800A9614:
/* 99E14 800A9614 06004014 */  bnez       $v0, .L800A9630
/* 99E18 800A9618 2D00222A */   slti      $v0, $s1, 0x2d
/* 99E1C 800A961C 04000016 */  bnez       $s0, .L800A9630
/* 99E20 800A9620 00000000 */   nop
/* 99E24 800A9624 D9C4020C */  jal        FUN_800b1364
/* 99E28 800A9628 00000000 */   nop
/* 99E2C 800A962C 2D00222A */  slti       $v0, $s1, 0x2d
.L800A9630:
/* 99E30 800A9630 06004014 */  bnez       $v0, .L800A964C
/* 99E34 800A9634 00000000 */   nop
/* 99E38 800A9638 F0C640AE */  sw         $zero, -0x3910($s2)
/* 99E3C 800A963C B8C1020C */  jal        FUN_800b06e0
/* 99E40 800A9640 FE000424 */   addiu     $a0, $zero, 0xfe
/* 99E44 800A9644 96A50208 */  j          .L800A9658
/* 99E48 800A9648 1380033C */   lui       $v1, 0x8013
.L800A964C:
/* 99E4C 800A964C B8C1020C */  jal        FUN_800b06e0
/* 99E50 800A9650 FF000432 */   andi      $a0, $s0, 0xff
/* 99E54 800A9654 1380033C */  lui        $v1, %hi(D_8012AB5C)
.L800A9658:
/* 99E58 800A9658 5CAB628C */  lw         $v0, %lo(D_8012AB5C)($v1)
/* 99E5C 800A965C 00000000 */  nop
/* 99E60 800A9660 0F004230 */  andi       $v0, $v0, 0xf
/* 99E64 800A9664 06004010 */  beqz       $v0, .L800A9680
/* 99E68 800A9668 0F80033C */   lui       $v1, %hi(D_800F001C)
/* 99E6C 800A966C 1C00628C */  lw         $v0, %lo(D_800F001C)($v1)
/* 99E70 800A9670 00000000 */  nop
/* 99E74 800A9674 01004230 */  andi       $v0, $v0, 1
/* 99E78 800A9678 0D004010 */  beqz       $v0, .L800A96B0
/* 99E7C 800A967C 0F80113C */   lui       $s1, 0x800f
.L800A9680:
/* 99E80 800A9680 F0C6428E */  lw         $v0, -0x3910($s2)
/* 99E84 800A9684 00000000 */  nop
/* 99E88 800A9688 02004018 */  blez       $v0, .L800A9694
/* 99E8C 800A968C 01004224 */   addiu     $v0, $v0, 1
/* 99E90 800A9690 F0C642AE */  sw         $v0, -0x3910($s2)
.L800A9694:
/* 99E94 800A9694 F0C6428E */  lw         $v0, -0x3910($s2)
/* 99E98 800A9698 00000000 */  nop
/* 99E9C 800A969C 04004104 */  bgez       $v0, .L800A96B0
/* 99EA0 800A96A0 0F80113C */   lui       $s1, 0x800f
/* 99EA4 800A96A4 FFFF4224 */  addiu      $v0, $v0, -1
/* 99EA8 800A96A8 F0C642AE */  sw         $v0, -0x3910($s2)
.L800A96AC:
/* 99EAC 800A96AC 0F80113C */  lui        $s1, %hi(D_800EC6F4)
.L800A96B0:
/* 99EB0 800A96B0 F4C6228E */  lw         $v0, %lo(D_800EC6F4)($s1)
/* 99EB4 800A96B4 FFFF1024 */  addiu      $s0, $zero, -1
/* 99EB8 800A96B8 0E005010 */  beq        $v0, $s0, .L800A96F4
/* 99EBC 800A96BC 00000000 */   nop
/* 99EC0 800A96C0 D1C1020C */  jal        FUN_800b0744
/* 99EC4 800A96C4 00000000 */   nop
/* 99EC8 800A96C8 0A005010 */  beq        $v0, $s0, .L800A96F4
/* 99ECC 800A96CC 00000000 */   nop
/* 99ED0 800A96D0 D1C1020C */  jal        FUN_800b0744
/* 99ED4 800A96D4 00000000 */   nop
/* 99ED8 800A96D8 F4C6238E */  lw         $v1, -0x390c($s1)
/* 99EDC 800A96DC 00000000 */  nop
/* 99EE0 800A96E0 04006210 */  beq        $v1, $v0, .L800A96F4
/* 99EE4 800A96E4 FE000424 */   addiu     $a0, $zero, 0xfe
/* 99EE8 800A96E8 F0C640AE */  sw         $zero, -0x3910($s2)
/* 99EEC 800A96EC B8C1020C */  jal        FUN_800b06e0
/* 99EF0 800A96F0 F4C630AE */   sw        $s0, -0x390c($s1)
.L800A96F4:
/* 99EF4 800A96F4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 99EF8 800A96F8 1800B28F */  lw         $s2, 0x18($sp)
/* 99EFC 800A96FC 1400B18F */  lw         $s1, 0x14($sp)
/* 99F00 800A9700 1000B08F */  lw         $s0, 0x10($sp)
/* 99F04 800A9704 21100000 */  addu       $v0, $zero, $zero
/* 99F08 800A9708 0800E003 */  jr         $ra
/* 99F0C 800A970C 2000BD27 */   addiu     $sp, $sp, 0x20
