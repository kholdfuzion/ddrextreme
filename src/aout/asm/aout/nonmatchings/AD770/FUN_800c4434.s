.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c4434
/* B4C34 800C4434 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B4C38 800C4438 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B4C3C 800C443C 21980000 */  addu       $s3, $zero, $zero
/* B4C40 800C4440 FFFF0424 */  addiu      $a0, $zero, -1
/* B4C44 800C4444 2400BFAF */  sw         $ra, 0x24($sp)
/* B4C48 800C4448 2000B4AF */  sw         $s4, 0x20($sp)
/* B4C4C 800C444C 1800B2AF */  sw         $s2, 0x18($sp)
/* B4C50 800C4450 1400B1AF */  sw         $s1, 0x14($sp)
/* B4C54 800C4454 CD6B000C */  jal        VSync
/* B4C58 800C4458 1000B0AF */   sw        $s0, 0x10($sp)
/* B4C5C 800C445C 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B4C60 800C4460 1874728C */  lw         $s2, %lo(D_801F7418)($v1)
/* B4C64 800C4464 18746324 */  addiu      $v1, $v1, 0x7418
/* B4C68 800C4468 0400638C */  lw         $v1, 4($v1)
/* B4C6C 800C446C 21A04000 */  addu       $s4, $v0, $zero
/* B4C70 800C4470 0B00622C */  sltiu      $v0, $v1, 0xb
/* B4C74 800C4474 D6004010 */  beqz       $v0, .L800C47D0
/* B4C78 800C4478 0180023C */   lui       $v0, %hi(D_80017870)
/* B4C7C 800C447C 70784224 */  addiu      $v0, $v0, %lo(D_80017870)
/* B4C80 800C4480 80180300 */  sll        $v1, $v1, 2
/* B4C84 800C4484 21186200 */  addu       $v1, $v1, $v0
/* B4C88 800C4488 0000628C */  lw         $v0, ($v1)
/* B4C8C 800C448C 00000000 */  nop
/* B4C90 800C4490 08004000 */  jr         $v0
/* B4C94 800C4494 00000000 */   nop
/* B4C98 800C4498 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B4C9C 800C449C 18744224 */  addiu      $v0, $v0, %lo(D_801F7418)
/* B4CA0 800C44A0 1000438C */  lw         $v1, 0x10($v0)
/* B4CA4 800C44A4 0400448C */  lw         $a0, 4($v0)
/* B4CA8 800C44A8 0100632C */  sltiu      $v1, $v1, 1
/* B4CAC 800C44AC 01008424 */  addiu      $a0, $a0, 1
/* B4CB0 800C44B0 100043AC */  sw         $v1, 0x10($v0)
/* B4CB4 800C44B4 040044AC */  sw         $a0, 4($v0)
/* B4CB8 800C44B8 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B4CBC 800C44BC 18745024 */  addiu      $s0, $v0, %lo(D_801F7418)
/* B4CC0 800C44C0 1000048E */  lw         $a0, 0x10($s0)
/* B4CC4 800C44C4 21280000 */  addu       $a1, $zero, $zero
/* B4CC8 800C44C8 2125030C */  jal        FUN_800c9484
/* B4CCC 800C44CC 01000624 */   addiu     $a2, $zero, 1
/* B4CD0 800C44D0 C0110308 */  j          .L800C4700
/* B4CD4 800C44D4 00000000 */   nop
/* B4CD8 800C44D8 F224030C */  jal        FUN_800c93c8
/* B4CDC 800C44DC 00000000 */   nop
/* B4CE0 800C44E0 FEFF0324 */  addiu      $v1, $zero, -2
/* B4CE4 800C44E4 BA004310 */  beq        $v0, $v1, .L800C47D0
/* B4CE8 800C44E8 1F80023C */   lui       $v0, %hi(D_801F7418)
/* B4CEC 800C44EC 18745124 */  addiu      $s1, $v0, %lo(D_801F7418)
/* B4CF0 800C44F0 1000248E */  lw         $a0, 0x10($s1)
/* B4CF4 800C44F4 F925030C */  jal        FUN_800c97e4
/* B4CF8 800C44F8 00000000 */   nop
/* B4CFC 800C44FC 21804000 */  addu       $s0, $v0, $zero
/* B4D00 800C4500 1000248E */  lw         $a0, 0x10($s1)
/* B4D04 800C4504 ED25030C */  jal        FUN_800c97b4
/* B4D08 800C4508 02000524 */   addiu     $a1, $zero, 2
/* B4D0C 800C450C 1000248E */  lw         $a0, 0x10($s1)
/* B4D10 800C4510 EF1B030C */  jal        FUN_800c6fbc
/* B4D14 800C4514 21280002 */   addu      $a1, $s0, $zero
/* B4D18 800C4518 1000238E */  lw         $v1, 0x10($s1)
/* B4D1C 800C451C 00000000 */  nop
/* B4D20 800C4520 80110300 */  sll        $v0, $v1, 6
/* B4D24 800C4524 21104300 */  addu       $v0, $v0, $v1
/* B4D28 800C4528 40110200 */  sll        $v0, $v0, 5
/* B4D2C 800C452C 21104300 */  addu       $v0, $v0, $v1
/* B4D30 800C4530 80100200 */  sll        $v0, $v0, 2
/* B4D34 800C4534 21105100 */  addu       $v0, $v0, $s1
/* B4D38 800C4538 A02050AC */  sw         $s0, 0x20a0($v0)
/* B4D3C 800C453C 06000232 */  andi       $v0, $s0, 6
/* B4D40 800C4540 A2004010 */  beqz       $v0, .L800C47CC
/* B4D44 800C4544 01000232 */   andi      $v0, $s0, 1
/* B4D48 800C4548 06004014 */  bnez       $v0, .L800C4564
/* B4D4C 800C454C 1F80033C */   lui       $v1, 0x801f
/* B4D50 800C4550 1000248E */  lw         $a0, 0x10($s1)
/* B4D54 800C4554 831B030C */  jal        FUN_800c6e0c
/* B4D58 800C4558 21900000 */   addu      $s2, $zero, $zero
/* B4D5C 800C455C F4110308 */  j          .L800C47D0
/* B4D60 800C4560 00000000 */   nop
.L800C4564:
/* B4D64 800C4564 0400228E */  lw         $v0, 4($s1)
/* B4D68 800C4568 087474AC */  sw         $s4, 0x7408($v1)
/* B4D6C 800C456C 01004224 */  addiu      $v0, $v0, 1
/* B4D70 800C4570 F4110308 */  j          .L800C47D0
/* B4D74 800C4574 040022AE */   sw        $v0, 4($s1)
/* B4D78 800C4578 1F80023C */  lui        $v0, %hi(D_801F7408)
/* B4D7C 800C457C 0874428C */  lw         $v0, %lo(D_801F7408)($v0)
/* B4D80 800C4580 00000000 */  nop
/* B4D84 800C4584 23108202 */  subu       $v0, $s4, $v0
/* B4D88 800C4588 02004228 */  slti       $v0, $v0, 2
/* B4D8C 800C458C 90004014 */  bnez       $v0, .L800C47D0
/* B4D90 800C4590 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B4D94 800C4594 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B4D98 800C4598 0400628C */  lw         $v0, 4($v1)
/* B4D9C 800C459C 00000000 */  nop
/* B4DA0 800C45A0 01004224 */  addiu      $v0, $v0, 1
/* B4DA4 800C45A4 040062AC */  sw         $v0, 4($v1)
/* B4DA8 800C45A8 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B4DAC 800C45AC 18745024 */  addiu      $s0, $v0, %lo(D_801F7418)
/* B4DB0 800C45B0 1000048E */  lw         $a0, 0x10($s0)
/* B4DB4 800C45B4 3F000524 */  addiu      $a1, $zero, 0x3f
/* B4DB8 800C45B8 01000624 */  addiu      $a2, $zero, 1
/* B4DBC 800C45BC 0C25030C */  jal        FUN_800c9430
/* B4DC0 800C45C0 B8420726 */   addiu     $a3, $s0, 0x42b8
/* B4DC4 800C45C4 C0110308 */  j          .L800C4700
/* B4DC8 800C45C8 00000000 */   nop
/* B4DCC 800C45CC F224030C */  jal        FUN_800c93c8
/* B4DD0 800C45D0 00000000 */   nop
/* B4DD4 800C45D4 21804000 */  addu       $s0, $v0, $zero
/* B4DD8 800C45D8 FEFF0224 */  addiu      $v0, $zero, -2
/* B4DDC 800C45DC 7C000212 */  beq        $s0, $v0, .L800C47D0
/* B4DE0 800C45E0 00000000 */   nop
/* B4DE4 800C45E4 55000016 */  bnez       $s0, .L800C473C
/* B4DE8 800C45E8 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B4DEC 800C45EC 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B4DF0 800C45F0 0400628C */  lw         $v0, 4($v1)
/* B4DF4 800C45F4 00000000 */  nop
/* B4DF8 800C45F8 01004224 */  addiu      $v0, $v0, 1
/* B4DFC 800C45FC 040062AC */  sw         $v0, 4($v1)
/* B4E00 800C4600 21280000 */  addu       $a1, $zero, $zero
/* B4E04 800C4604 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B4E08 800C4608 18745024 */  addiu      $s0, $v0, %lo(D_801F7418)
/* B4E0C 800C460C 1000048E */  lw         $a0, 0x10($s0)
/* B4E10 800C4610 10000624 */  addiu      $a2, $zero, 0x10
/* B4E14 800C4614 B9110308 */  j          .L800C46E4
/* B4E18 800C4618 20000726 */   addiu     $a3, $s0, 0x20
/* B4E1C 800C461C F224030C */  jal        FUN_800c93c8
/* B4E20 800C4620 00000000 */   nop
/* B4E24 800C4624 21804000 */  addu       $s0, $v0, $zero
/* B4E28 800C4628 FEFF0224 */  addiu      $v0, $zero, -2
/* B4E2C 800C462C 68000212 */  beq        $s0, $v0, .L800C47D0
/* B4E30 800C4630 00000000 */   nop
/* B4E34 800C4634 41000016 */  bnez       $s0, .L800C473C
/* B4E38 800C4638 21280000 */   addu      $a1, $zero, $zero
/* B4E3C 800C463C 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B4E40 800C4640 18745024 */  addiu      $s0, $v0, %lo(D_801F7418)
/* B4E44 800C4644 1000028E */  lw         $v0, 0x10($s0)
/* B4E48 800C4648 40000624 */  addiu      $a2, $zero, 0x40
/* B4E4C 800C464C 80210200 */  sll        $a0, $v0, 6
/* B4E50 800C4650 21208200 */  addu       $a0, $a0, $v0
/* B4E54 800C4654 40210400 */  sll        $a0, $a0, 5
/* B4E58 800C4658 21208200 */  addu       $a0, $a0, $v0
/* B4E5C 800C465C 80200400 */  sll        $a0, $a0, 2
/* B4E60 800C4660 60200226 */  addiu      $v0, $s0, 0x2060
/* B4E64 800C4664 F6A2000C */  jal        memset
/* B4E68 800C4668 21208200 */   addu      $a0, $a0, $v0
/* B4E6C 800C466C 1000028E */  lw         $v0, 0x10($s0)
/* B4E70 800C4670 00000000 */  nop
/* B4E74 800C4674 80210200 */  sll        $a0, $v0, 6
/* B4E78 800C4678 21208200 */  addu       $a0, $a0, $v0
/* B4E7C 800C467C 40210400 */  sll        $a0, $a0, 5
/* B4E80 800C4680 21208200 */  addu       $a0, $a0, $v0
/* B4E84 800C4684 80200400 */  sll        $a0, $a0, 2
/* B4E88 800C4688 20000226 */  addiu      $v0, $s0, 0x20
/* B4E8C 800C468C 9A14030C */  jal        FUN_800c5268
/* B4E90 800C4690 21208200 */   addu      $a0, $a0, $v0
/* B4E94 800C4694 06004010 */  beqz       $v0, .L800C46B0
/* B4E98 800C4698 00000000 */   nop
/* B4E9C 800C469C 1000048E */  lw         $a0, 0x10($s0)
/* B4EA0 800C46A0 1D1C030C */  jal        FUN_800c7074
/* B4EA4 800C46A4 01001324 */   addiu     $s3, $zero, 1
/* B4EA8 800C46A8 F4110308 */  j          .L800C47D0
/* B4EAC 800C46AC 00000000 */   nop
.L800C46B0:
/* B4EB0 800C46B0 1000048E */  lw         $a0, 0x10($s0)
/* B4EB4 800C46B4 101C030C */  jal        FUN_800c7040
/* B4EB8 800C46B8 00000000 */   nop
/* B4EBC 800C46BC 0400028E */  lw         $v0, 4($s0)
/* B4EC0 800C46C0 00000000 */  nop
/* B4EC4 800C46C4 01004224 */  addiu      $v0, $v0, 1
/* B4EC8 800C46C8 040002AE */  sw         $v0, 4($s0)
/* B4ECC 800C46CC 10000524 */  addiu      $a1, $zero, 0x10
/* B4ED0 800C46D0 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B4ED4 800C46D4 18745024 */  addiu      $s0, $v0, %lo(D_801F7418)
/* B4ED8 800C46D8 1000048E */  lw         $a0, 0x10($s0)
/* B4EDC 800C46DC 14000624 */  addiu      $a2, $zero, 0x14
/* B4EE0 800C46E0 20080726 */  addiu      $a3, $s0, 0x820
.L800C46E4:
/* B4EE4 800C46E4 80110400 */  sll        $v0, $a0, 6
/* B4EE8 800C46E8 21104400 */  addu       $v0, $v0, $a0
/* B4EEC 800C46EC 40110200 */  sll        $v0, $v0, 5
/* B4EF0 800C46F0 21104400 */  addu       $v0, $v0, $a0
/* B4EF4 800C46F4 80100200 */  sll        $v0, $v0, 2
/* B4EF8 800C46F8 F624030C */  jal        FUN_800c93d8
/* B4EFC 800C46FC 21384700 */   addu      $a3, $v0, $a3
.L800C4700:
/* B4F00 800C4700 0E004004 */  bltz       $v0, .L800C473C
/* B4F04 800C4704 00000000 */   nop
/* B4F08 800C4708 0400028E */  lw         $v0, 4($s0)
/* B4F0C 800C470C 00000000 */  nop
/* B4F10 800C4710 01004224 */  addiu      $v0, $v0, 1
/* B4F14 800C4714 F4110308 */  j          .L800C47D0
/* B4F18 800C4718 040002AE */   sw        $v0, 4($s0)
/* B4F1C 800C471C F224030C */  jal        FUN_800c93c8
/* B4F20 800C4720 00000000 */   nop
/* B4F24 800C4724 21804000 */  addu       $s0, $v0, $zero
/* B4F28 800C4728 FEFF0224 */  addiu      $v0, $zero, -2
/* B4F2C 800C472C 28000212 */  beq        $s0, $v0, .L800C47D0
/* B4F30 800C4730 00000000 */   nop
/* B4F34 800C4734 03000012 */  beqz       $s0, .L800C4744
/* B4F38 800C4738 21800000 */   addu      $s0, $zero, $zero
.L800C473C:
/* B4F3C 800C473C F4110308 */  j          .L800C47D0
/* B4F40 800C4740 01001324 */   addiu     $s3, $zero, 1
.L800C4744:
/* B4F44 800C4744 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B4F48 800C4748 18744224 */  addiu      $v0, $v0, %lo(D_801F7418)
/* B4F4C 800C474C 1000438C */  lw         $v1, 0x10($v0)
/* B4F50 800C4750 21904000 */  addu       $s2, $v0, $zero
/* B4F54 800C4754 80110300 */  sll        $v0, $v1, 6
/* B4F58 800C4758 21104300 */  addu       $v0, $v0, $v1
/* B4F5C 800C475C 40110200 */  sll        $v0, $v0, 5
/* B4F60 800C4760 21104300 */  addu       $v0, $v0, $v1
/* B4F64 800C4764 80100200 */  sll        $v0, $v0, 2
/* B4F68 800C4768 20084326 */  addiu      $v1, $s2, 0x820
/* B4F6C 800C476C 21884300 */  addu       $s1, $v0, $v1
.L800C4770:
/* B4F70 800C4770 3D1C030C */  jal        FUN_800c70f4
/* B4F74 800C4774 21202002 */   addu      $a0, $s1, $zero
/* B4F78 800C4778 1000438E */  lw         $v1, 0x10($s2)
/* B4F7C 800C477C 00000000 */  nop
/* B4F80 800C4780 80210300 */  sll        $a0, $v1, 6
/* B4F84 800C4784 21208300 */  addu       $a0, $a0, $v1
/* B4F88 800C4788 40210400 */  sll        $a0, $a0, 5
/* B4F8C 800C478C 21208300 */  addu       $a0, $a0, $v1
/* B4F90 800C4790 80200400 */  sll        $a0, $a0, 2
/* B4F94 800C4794 10008424 */  addiu      $a0, $a0, 0x10
/* B4F98 800C4798 21200402 */  addu       $a0, $s0, $a0
/* B4F9C 800C479C 01001026 */  addiu      $s0, $s0, 1
/* B4FA0 800C47A0 21209200 */  addu       $a0, $a0, $s2
/* B4FA4 800C47A4 202082A0 */  sb         $v0, 0x2020($a0)
/* B4FA8 800C47A8 1400022A */  slti       $v0, $s0, 0x14
/* B4FAC 800C47AC F0FF4014 */  bnez       $v0, .L800C4770
/* B4FB0 800C47B0 80003126 */   addiu     $s1, $s1, 0x80
/* B4FB4 800C47B4 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B4FB8 800C47B8 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B4FBC 800C47BC 0400628C */  lw         $v0, 4($v1)
/* B4FC0 800C47C0 00000000 */  nop
/* B4FC4 800C47C4 01004224 */  addiu      $v0, $v0, 1
/* B4FC8 800C47C8 040062AC */  sw         $v0, 4($v1)
.L800C47CC:
/* B4FCC 800C47CC 21900000 */  addu       $s2, $zero, $zero
.L800C47D0:
/* B4FD0 800C47D0 04006012 */  beqz       $s3, .L800C47E4
/* B4FD4 800C47D4 1F80023C */   lui       $v0, %hi(D_801F7428)
/* B4FD8 800C47D8 2874448C */  lw         $a0, %lo(D_801F7428)($v0)
/* B4FDC 800C47DC 1D1C030C */  jal        FUN_800c7074
/* B4FE0 800C47E0 21900000 */   addu      $s2, $zero, $zero
.L800C47E4:
/* B4FE4 800C47E4 04004016 */  bnez       $s2, .L800C47F8
/* B4FE8 800C47E8 21104002 */   addu      $v0, $s2, $zero
/* B4FEC 800C47EC 1F80023C */  lui        $v0, %hi(D_801F7424)
/* B4FF0 800C47F0 247454AC */  sw         $s4, %lo(D_801F7424)($v0)
/* B4FF4 800C47F4 21104002 */  addu       $v0, $s2, $zero
.L800C47F8:
/* B4FF8 800C47F8 2400BF8F */  lw         $ra, 0x24($sp)
/* B4FFC 800C47FC 2000B48F */  lw         $s4, 0x20($sp)
/* B5000 800C4800 1C00B38F */  lw         $s3, 0x1c($sp)
/* B5004 800C4804 1800B28F */  lw         $s2, 0x18($sp)
/* B5008 800C4808 1400B18F */  lw         $s1, 0x14($sp)
/* B500C 800C480C 1000B08F */  lw         $s0, 0x10($sp)
/* B5010 800C4810 0800E003 */  jr         $ra
/* B5014 800C4814 2800BD27 */   addiu     $sp, $sp, 0x28
