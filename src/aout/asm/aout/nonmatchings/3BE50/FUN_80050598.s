.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80050598
/* 40D98 80050598 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 40D9C 8005059C 1380023C */  lui        $v0, %hi(D_801280EE)
/* 40DA0 800505A0 4800B0AF */  sw         $s0, 0x48($sp)
/* 40DA4 800505A4 2180C000 */  addu       $s0, $a2, $zero
/* 40DA8 800505A8 EE804390 */  lbu        $v1, %lo(D_801280EE)($v0)
/* 40DAC 800505AC 80101000 */  sll        $v0, $s0, 2
/* 40DB0 800505B0 21105000 */  addu       $v0, $v0, $s0
/* 40DB4 800505B4 6C00BFAF */  sw         $ra, 0x6c($sp)
/* 40DB8 800505B8 6800BEAF */  sw         $fp, 0x68($sp)
/* 40DBC 800505BC 6400B7AF */  sw         $s7, 0x64($sp)
/* 40DC0 800505C0 6000B6AF */  sw         $s6, 0x60($sp)
/* 40DC4 800505C4 5C00B5AF */  sw         $s5, 0x5c($sp)
/* 40DC8 800505C8 5800B4AF */  sw         $s4, 0x58($sp)
/* 40DCC 800505CC 5400B3AF */  sw         $s3, 0x54($sp)
/* 40DD0 800505D0 5000B2AF */  sw         $s2, 0x50($sp)
/* 40DD4 800505D4 4C00B1AF */  sw         $s1, 0x4c($sp)
/* 40DD8 800505D8 7000A4AF */  sw         $a0, 0x70($sp)
/* 40DDC 800505DC 7400A5AF */  sw         $a1, 0x74($sp)
/* 40DE0 800505E0 C0200300 */  sll        $a0, $v1, 3
/* 40DE4 800505E4 23208300 */  subu       $a0, $a0, $v1
/* 40DE8 800505E8 80200400 */  sll        $a0, $a0, 2
/* 40DEC 800505EC 1380033C */  lui        $v1, %hi(D_801282E0)
/* 40DF0 800505F0 E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 40DF4 800505F4 21A88300 */  addu       $s5, $a0, $v1
/* 40DF8 800505F8 C0190200 */  sll        $v1, $v0, 7
/* 40DFC 800505FC 21104300 */  addu       $v0, $v0, $v1
/* 40E00 80050600 40110200 */  sll        $v0, $v0, 5
/* 40E04 80050604 23105000 */  subu       $v0, $v0, $s0
/* 40E08 80050608 80100200 */  sll        $v0, $v0, 2
/* 40E0C 8005060C 0F80043C */  lui        $a0, %hi(D_800F01D4)
/* 40E10 80050610 D4018324 */  addiu      $v1, $a0, %lo(D_800F01D4)
/* 40E14 80050614 21104300 */  addu       $v0, $v0, $v1
/* 40E18 80050618 E2005684 */  lh         $s6, 0xe2($v0)
/* 40E1C 8005061C E0004584 */  lh         $a1, 0xe0($v0)
/* 40E20 80050620 0400C012 */  beqz       $s6, .L80050634
/* 40E24 80050624 21C08000 */   addu      $t8, $a0, $zero
/* 40E28 80050628 0500A228 */  slti       $v0, $a1, 5
/* 40E2C 8005062C 04004010 */  beqz       $v0, .L80050640
/* 40E30 80050630 E338023C */   lui       $v0, 0x38e3
.L80050634:
/* 40E34 80050634 7400A28F */  lw         $v0, 0x74($sp)
/* 40E38 80050638 28430108 */  j          .L80050CA0
/* 40E3C 8005063C 00000000 */   nop
.L80050640:
/* 40E40 80050640 398E4234 */  ori        $v0, $v0, 0x8e39
/* 40E44 80050644 DFFFA324 */  addiu      $v1, $a1, -0x21
/* 40E48 80050648 40190300 */  sll        $v1, $v1, 5
/* 40E4C 8005064C 18006200 */  mult       $v1, $v0
/* 40E50 80050650 80000424 */  addiu      $a0, $zero, 0x80
/* 40E54 80050654 C31F0300 */  sra        $v1, $v1, 0x1f
/* 40E58 80050658 10100000 */  mfhi       $v0
/* 40E5C 8005065C C3100200 */  sra        $v0, $v0, 3
/* 40E60 80050660 23984300 */  subu       $s3, $v0, $v1
/* 40E64 80050664 02006106 */  bgez       $s3, .L80050670
/* 40E68 80050668 2000A4AF */   sw        $a0, 0x20($sp)
/* 40E6C 8005066C 21980000 */  addu       $s3, $zero, $zero
.L80050670:
/* 40E70 80050670 FFFFC426 */  addiu      $a0, $s6, -1
/* 40E74 80050674 00110400 */  sll        $v0, $a0, 4
/* 40E78 80050678 2C00A0AF */  sw         $zero, 0x2c($sp)
/* 40E7C 8005067C 0600A386 */  lh         $v1, 6($s5)
/* 40E80 80050680 23104400 */  subu       $v0, $v0, $a0
/* 40E84 80050684 21186200 */  addu       $v1, $v1, $v0
/* 40E88 80050688 F1FF6324 */  addiu      $v1, $v1, -0xf
/* 40E8C 8005068C 0600822C */  sltiu      $v0, $a0, 6
/* 40E90 80050690 2800A3AF */  sw         $v1, 0x28($sp)
/* 40E94 80050694 0600A696 */  lhu        $a2, 6($s5)
/* 40E98 80050698 61004010 */  beqz       $v0, .L80050820
/* 40E9C 8005069C 21700000 */   addu      $t6, $zero, $zero
/* 40EA0 800506A0 0180023C */  lui        $v0, %hi(D_80013DB4)
/* 40EA4 800506A4 B43D4224 */  addiu      $v0, $v0, %lo(D_80013DB4)
/* 40EA8 800506A8 80180400 */  sll        $v1, $a0, 2
/* 40EAC 800506AC 21186200 */  addu       $v1, $v1, $v0
/* 40EB0 800506B0 0000648C */  lw         $a0, ($v1)
/* 40EB4 800506B4 00000000 */  nop
/* 40EB8 800506B8 08008000 */  jr         $a0
/* 40EBC 800506BC 00000000 */   nop
/* 40EC0 800506C0 40191300 */  sll        $v1, $s3, 5
/* 40EC4 800506C4 80006324 */  addiu      $v1, $v1, 0x80
/* 40EC8 800506C8 00140600 */  sll        $v0, $a2, 0x10
/* 40ECC 800506CC 03140200 */  sra        $v0, $v0, 0x10
/* 40ED0 800506D0 8F004224 */  addiu      $v0, $v0, 0x8f
/* 40ED4 800506D4 2000A3AF */  sw         $v1, 0x20($sp)
/* 40ED8 800506D8 40181300 */  sll        $v1, $s3, 1
/* 40EDC 800506DC 21187300 */  addu       $v1, $v1, $s3
/* 40EE0 800506E0 40180300 */  sll        $v1, $v1, 1
/* 40EE4 800506E4 0E007224 */  addiu      $s2, $v1, 0xe
/* 40EE8 800506E8 0180043C */  lui        $a0, %hi(D_80013D8C)
/* 40EEC 800506EC 21C88000 */  addu       $t9, $a0, $zero
/* 40EF0 800506F0 2800A2AF */  sw         $v0, 0x28($sp)
/* 40EF4 800506F4 80101600 */  sll        $v0, $s6, 2
/* 40EF8 800506F8 21784000 */  addu       $t7, $v0, $zero
/* 40EFC 800506FC 8C3D8424 */  addiu      $a0, $a0, %lo(D_80013D8C)
/* 40F00 80050700 21104400 */  addu       $v0, $v0, $a0
/* 40F04 80050704 0000458C */  lw         $a1, ($v0)
/* 40F08 80050708 C0181300 */  sll        $v1, $s3, 3
/* 40F0C 8005070C 10420108 */  j          .L80050840
/* 40F10 80050710 21A0A300 */   addu      $s4, $a1, $v1
/* 40F14 80050714 40191300 */  sll        $v1, $s3, 5
/* 40F18 80050718 80006324 */  addiu      $v1, $v1, 0x80
/* 40F1C 8005071C 40101300 */  sll        $v0, $s3, 1
/* 40F20 80050720 21105300 */  addu       $v0, $v0, $s3
/* 40F24 80050724 40100200 */  sll        $v0, $v0, 1
/* 40F28 80050728 0E005224 */  addiu      $s2, $v0, 0xe
/* 40F2C 8005072C 2000A3AF */  sw         $v1, 0x20($sp)
/* 40F30 80050730 0180033C */  lui        $v1, %hi(D_80013D8C)
/* 40F34 80050734 21C86000 */  addu       $t9, $v1, $zero
/* 40F38 80050738 80101600 */  sll        $v0, $s6, 2
/* 40F3C 8005073C 21784000 */  addu       $t7, $v0, $zero
/* 40F40 80050740 8C3D6324 */  addiu      $v1, $v1, %lo(D_80013D8C)
/* 40F44 80050744 21104300 */  addu       $v0, $v0, $v1
/* 40F48 80050748 0000448C */  lw         $a0, ($v0)
/* 40F4C 8005074C C0181300 */  sll        $v1, $s3, 3
/* 40F50 80050750 10420108 */  j          .L80050840
/* 40F54 80050754 21A08300 */   addu      $s4, $a0, $v1
/* 40F58 80050758 80101300 */  sll        $v0, $s3, 2
/* 40F5C 8005075C 0E005224 */  addiu      $s2, $v0, 0xe
/* 40F60 80050760 0180033C */  lui        $v1, %hi(D_80013D8C)
/* 40F64 80050764 21C86000 */  addu       $t9, $v1, $zero
/* 40F68 80050768 80201600 */  sll        $a0, $s6, 2
/* 40F6C 8005076C 21788000 */  addu       $t7, $a0, $zero
/* 40F70 80050770 8C3D6324 */  addiu      $v1, $v1, %lo(D_80013D8C)
/* 40F74 80050774 21208300 */  addu       $a0, $a0, $v1
/* 40F78 80050778 40101300 */  sll        $v0, $s3, 1
/* 40F7C 8005077C 21105300 */  addu       $v0, $v0, $s3
/* 40F80 80050780 0000838C */  lw         $v1, ($a0)
/* 40F84 80050784 40100200 */  sll        $v0, $v0, 1
/* 40F88 80050788 10420108 */  j          .L80050840
/* 40F8C 8005078C 21A06200 */   addu      $s4, $v1, $v0
/* 40F90 80050790 0180043C */  lui        $a0, %hi(D_80013D8C)
/* 40F94 80050794 8C3D8224 */  addiu      $v0, $a0, %lo(D_80013D8C)
/* 40F98 80050798 80181600 */  sll        $v1, $s6, 2
/* 40F9C 8005079C 21106200 */  addu       $v0, $v1, $v0
/* 40FA0 800507A0 0000548C */  lw         $s4, ($v0)
/* 40FA4 800507A4 0E001224 */  addiu      $s2, $zero, 0xe
/* 40FA8 800507A8 0700AE30 */  andi       $t6, $a1, 7
/* 40FAC 800507AC 21C88000 */  addu       $t9, $a0, $zero
/* 40FB0 800507B0 0500C229 */  slti       $v0, $t6, 5
/* 40FB4 800507B4 04004014 */  bnez       $v0, .L800507C8
/* 40FB8 800507B8 21786000 */   addu      $t7, $v1, $zero
/* 40FBC 800507BC 06000224 */  addiu      $v0, $zero, 6
/* 40FC0 800507C0 F3410108 */  j          .L800507CC
/* 40FC4 800507C4 23104E00 */   subu      $v0, $v0, $t6
.L800507C8:
/* 40FC8 800507C8 FEFFC225 */  addiu      $v0, $t6, -2
.L800507CC:
/* 40FCC 800507CC 21704000 */  addu       $t6, $v0, $zero
/* 40FD0 800507D0 0500C011 */  beqz       $t6, .L800507E8
/* 40FD4 800507D4 40100E00 */   sll       $v0, $t6, 1
/* 40FD8 800507D8 0400C019 */  blez       $t6, .L800507EC
/* 40FDC 800507DC 01004324 */   addiu     $v1, $v0, 1
/* 40FE0 800507E0 FB410108 */  j          .L800507EC
/* 40FE4 800507E4 FFFF4324 */   addiu     $v1, $v0, -1
.L800507E8:
/* 40FE8 800507E8 21184000 */  addu       $v1, $v0, $zero
.L800507EC:
/* 40FEC 800507EC 10420108 */  j          .L80050840
/* 40FF0 800507F0 21706000 */   addu      $t6, $v1, $zero
/* 40FF4 800507F4 E338033C */  lui        $v1, 0x38e3
/* 40FF8 800507F8 398E6334 */  ori        $v1, $v1, 0x8e39
/* 40FFC 800507FC 24000224 */  addiu      $v0, $zero, 0x24
/* 41000 80050800 23104500 */  subu       $v0, $v0, $a1
/* 41004 80050804 00110200 */  sll        $v0, $v0, 4
/* 41008 80050808 18004300 */  mult       $v0, $v1
/* 4100C 8005080C C3170200 */  sra        $v0, $v0, 0x1f
/* 41010 80050810 10180000 */  mfhi       $v1
/* 41014 80050814 C3180300 */  sra        $v1, $v1, 3
/* 41018 80050818 23186200 */  subu       $v1, $v1, $v0
/* 4101C 8005081C 2C00A3AF */  sw         $v1, 0x2c($sp)
.L80050820:
/* 41020 80050820 0180023C */  lui        $v0, %hi(D_80013D8C)
/* 41024 80050824 8C3D4324 */  addiu      $v1, $v0, %lo(D_80013D8C)
/* 41028 80050828 80201600 */  sll        $a0, $s6, 2
/* 4102C 8005082C 21188300 */  addu       $v1, $a0, $v1
/* 41030 80050830 0000748C */  lw         $s4, ($v1)
/* 41034 80050834 0E001224 */  addiu      $s2, $zero, 0xe
/* 41038 80050838 21C84000 */  addu       $t9, $v0, $zero
/* 4103C 8005083C 21788000 */  addu       $t7, $a0, $zero
.L80050840:
/* 41040 80050840 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 41044 80050844 28005124 */  addiu      $s1, $v0, %lo(D_800F0028)
/* 41048 80050848 88002492 */  lbu        $a0, 0x88($s1)
/* 4104C 8005084C 05000324 */  addiu      $v1, $zero, 5
/* 41050 80050850 4A008314 */  bne        $a0, $v1, .L8005097C
/* 41054 80050854 21B84000 */   addu      $s7, $v0, $zero
/* 41058 80050858 00100424 */  addiu      $a0, $zero, 0x1000
/* 4105C 8005085C 2800E386 */  lh         $v1, 0x28($s7)
/* 41060 80050860 04000224 */  addiu      $v0, $zero, 4
/* 41064 80050864 0B006210 */  beq        $v1, $v0, .L80050894
/* 41068 80050868 E8FD0A34 */   ori       $t2, $zero, 0xfde8
/* 4106C 8005086C 80581000 */  sll        $t3, $s0, 2
/* 41070 80050870 40681000 */  sll        $t5, $s0, 1
/* 41074 80050874 43281400 */  sra        $a1, $s4, 1
/* 41078 80050878 43381200 */  sra        $a3, $s2, 1
/* 4107C 8005087C 7400A28F */  lw         $v0, 0x74($sp)
/* 41080 80050880 0400A696 */  lhu        $a2, 4($s5)
/* 41084 80050884 01005E24 */  addiu      $fp, $v0, 1
/* 41088 80050888 02000224 */  addiu      $v0, $zero, 2
/* 4108C 8005088C 31006214 */  bne        $v1, $v0, .L80050954
/* 41090 80050890 1D00482A */   slti      $t0, $s2, 0x1d
.L80050894:
/* 41094 80050894 21480000 */  addu       $t1, $zero, $zero
/* 41098 80050898 80581000 */  sll        $t3, $s0, 2
/* 4109C 8005089C 40681000 */  sll        $t5, $s0, 1
/* 410A0 800508A0 43281400 */  sra        $a1, $s4, 1
/* 410A4 800508A4 43381200 */  sra        $a3, $s2, 1
/* 410A8 800508A8 1D00482A */  slti       $t0, $s2, 0x1d
/* 410AC 800508AC AC022C26 */  addiu      $t4, $s1, 0x2ac
/* 410B0 800508B0 7400A38F */  lw         $v1, 0x74($sp)
/* 410B4 800508B4 0400A696 */  lhu        $a2, 4($s5)
/* 410B8 800508B8 01007E24 */  addiu      $fp, $v1, 1
/* 410BC 800508BC 80100900 */  sll        $v0, $t1, 2
.L800508C0:
/* 410C0 800508C0 21104900 */  addu       $v0, $v0, $t1
/* 410C4 800508C4 C0190200 */  sll        $v1, $v0, 7
/* 410C8 800508C8 21104300 */  addu       $v0, $v0, $v1
/* 410CC 800508CC 40110200 */  sll        $v0, $v0, 5
/* 410D0 800508D0 23104900 */  subu       $v0, $v0, $t1
/* 410D4 800508D4 80100200 */  sll        $v0, $v0, 2
/* 410D8 800508D8 21204C00 */  addu       $a0, $v0, $t4
/* 410DC 800508DC 04008384 */  lh         $v1, 4($a0)
/* 410E0 800508E0 00000000 */  nop
/* 410E4 800508E4 07006104 */  bgez       $v1, .L80050904
/* 410E8 800508E8 01002925 */   addiu     $t1, $t1, 1
/* 410EC 800508EC 28008424 */  addiu      $a0, $a0, 0x28
.L800508F0:
/* 410F0 800508F0 04008284 */  lh         $v0, 4($a0)
/* 410F4 800508F4 00000000 */  nop
/* 410F8 800508F8 FDFF4004 */  bltz       $v0, .L800508F0
/* 410FC 800508FC 28008424 */   addiu     $a0, $a0, 0x28
/* 41100 80050900 D8FF8424 */  addiu      $a0, $a0, -0x28
.L80050904:
/* 41104 80050904 0000838C */  lw         $v1, ($a0)
/* 41108 80050908 00000000 */  nop
/* 4110C 8005090C 2A106A00 */  slt        $v0, $v1, $t2
/* 41110 80050910 02004010 */  beqz       $v0, .L8005091C
/* 41114 80050914 02002229 */   slti      $v0, $t1, 2
/* 41118 80050918 21506000 */  addu       $t2, $v1, $zero
.L8005091C:
/* 4111C 8005091C E8FF4014 */  bnez       $v0, .L800508C0
/* 41120 80050920 80100900 */   sll       $v0, $t1, 2
/* 41124 80050924 D4010327 */  addiu      $v1, $t8, 0x1d4
/* 41128 80050928 0400628C */  lw         $v0, 4($v1)
/* 4112C 8005092C 00000000 */  nop
/* 41130 80050930 00144224 */  addiu      $v0, $v0, 0x1400
/* 41134 80050934 23204A00 */  subu       $a0, $v0, $t2
/* 41138 80050938 03008104 */  bgez       $a0, .L80050948
/* 4113C 8005093C 01108228 */   slti      $v0, $a0, 0x1001
/* 41140 80050940 21200000 */  addu       $a0, $zero, $zero
/* 41144 80050944 01108228 */  slti       $v0, $a0, 0x1001
.L80050948:
/* 41148 80050948 03004014 */  bnez       $v0, .L80050958
/* 4114C 8005094C FFFFA325 */   addiu     $v1, $t5, -1
/* 41150 80050950 00100424 */  addiu      $a0, $zero, 0x1000
.L80050954:
/* 41154 80050954 FFFFA325 */  addiu      $v1, $t5, -1
.L80050958:
/* 41158 80050958 00110400 */  sll        $v0, $a0, 4
/* 4115C 8005095C 21104400 */  addu       $v0, $v0, $a0
/* 41160 80050960 80100200 */  sll        $v0, $v0, 2
/* 41164 80050964 21104400 */  addu       $v0, $v0, $a0
/* 41168 80050968 03130200 */  sra        $v0, $v0, 0xc
/* 4116C 8005096C 18006200 */  mult       $v1, $v0
/* 41170 80050970 12880000 */  mflo       $s1
/* 41174 80050974 B7420108 */  j          .L80050ADC
/* 41178 80050978 2800E426 */   addiu     $a0, $s7, 0x28
.L8005097C:
/* 4117C 8005097C 3800AEAF */  sw         $t6, 0x38($sp)
/* 41180 80050980 3C00AFAF */  sw         $t7, 0x3c($sp)
/* 41184 80050984 7470000C */  jal        getcoinslot1_8001c1d0
/* 41188 80050988 4000B9AF */   sw        $t9, 0x40($sp)
/* 4118C 8005098C 3800AE8F */  lw         $t6, 0x38($sp)
/* 41190 80050990 3C00AF8F */  lw         $t7, 0x3c($sp)
/* 41194 80050994 4000B98F */  lw         $t9, 0x40($sp)
/* 41198 80050998 23004010 */  beqz       $v0, .L80050A28
/* 4119C 8005099C 26000224 */   addiu     $v0, $zero, 0x26
/* 411A0 800509A0 2800E386 */  lh         $v1, 0x28($s7)
/* 411A4 800509A4 00000000 */  nop
/* 411A8 800509A8 1F006210 */  beq        $v1, $v0, .L80050A28
/* 411AC 800509AC 80101000 */   sll       $v0, $s0, 2
/* 411B0 800509B0 21584000 */  addu       $t3, $v0, $zero
/* 411B4 800509B4 43281400 */  sra        $a1, $s4, 1
/* 411B8 800509B8 43381200 */  sra        $a3, $s2, 1
/* 411BC 800509BC 1D00482A */  slti       $t0, $s2, 0x1d
/* 411C0 800509C0 0180043C */  lui        $a0, %hi(D_80013D14)
/* 411C4 800509C4 21105000 */  addu       $v0, $v0, $s0
/* 411C8 800509C8 143D8424 */  addiu      $a0, $a0, %lo(D_80013D14)
/* 411CC 800509CC 7400A38F */  lw         $v1, 0x74($sp)
/* 411D0 800509D0 0400A696 */  lhu        $a2, 4($s5)
/* 411D4 800509D4 01007E24 */  addiu      $fp, $v1, 1
/* 411D8 800509D8 C0190200 */  sll        $v1, $v0, 7
/* 411DC 800509DC 21104300 */  addu       $v0, $v0, $v1
/* 411E0 800509E0 40110200 */  sll        $v0, $v0, 5
/* 411E4 800509E4 23105000 */  subu       $v0, $v0, $s0
/* 411E8 800509E8 80100200 */  sll        $v0, $v0, 2
/* 411EC 800509EC 21105100 */  addu       $v0, $v0, $s1
/* 411F0 800509F0 8A004390 */  lbu        $v1, 0x8a($v0)
/* 411F4 800509F4 40101000 */  sll        $v0, $s0, 1
/* 411F8 800509F8 21105000 */  addu       $v0, $v0, $s0
/* 411FC 800509FC 80100200 */  sll        $v0, $v0, 2
/* 41200 80050A00 23105000 */  subu       $v0, $v0, $s0
/* 41204 80050A04 0A006338 */  xori       $v1, $v1, 0xa
/* 41208 80050A08 2B180300 */  sltu       $v1, $zero, $v1
/* 4120C 80050A0C 00190300 */  sll        $v1, $v1, 4
/* 41210 80050A10 21186400 */  addu       $v1, $v1, $a0
/* 41214 80050A14 00006484 */  lh         $a0, ($v1)
/* 41218 80050A18 C0100200 */  sll        $v0, $v0, 3
/* 4121C 80050A1C 21208200 */  addu       $a0, $a0, $v0
/* 41220 80050A20 B6420108 */  j          .L80050AD8
/* 41224 80050A24 40009124 */   addiu     $s1, $a0, 0x40
.L80050A28:
/* 41228 80050A28 2800E426 */  addiu      $a0, $s7, 0x28
/* 4122C 80050A2C 8A008290 */  lbu        $v0, 0x8a($a0)
/* 41230 80050A30 02000524 */  addiu      $a1, $zero, 2
/* 41234 80050A34 0A004510 */  beq        $v0, $a1, .L80050A60
/* 41238 80050A38 0A000324 */   addiu     $v1, $zero, 0xa
/* 4123C 80050A3C 08004310 */  beq        $v0, $v1, .L80050A60
/* 41240 80050A40 0100023C */   lui       $v0, 1
/* 41244 80050A44 21108200 */  addu       $v0, $a0, $v0
/* 41248 80050A48 06434290 */  lbu        $v0, 0x4306($v0)
/* 4124C 80050A4C 00000000 */  nop
/* 41250 80050A50 03004510 */  beq        $v0, $a1, .L80050A60
/* 41254 80050A54 00000000 */   nop
/* 41258 80050A58 0A004314 */  bne        $v0, $v1, .L80050A84
/* 4125C 80050A5C 40181000 */   sll       $v1, $s0, 1
.L80050A60:
/* 41260 80050A60 2800E386 */  lh         $v1, 0x28($s7)
/* 41264 80050A64 03000224 */  addiu      $v0, $zero, 3
/* 41268 80050A68 05006210 */  beq        $v1, $v0, .L80050A80
/* 4126C 80050A6C 26000224 */   addiu     $v0, $zero, 0x26
/* 41270 80050A70 03006210 */  beq        $v1, $v0, .L80050A80
/* 41274 80050A74 15000224 */   addiu     $v0, $zero, 0x15
/* 41278 80050A78 10006214 */  bne        $v1, $v0, .L80050ABC
/* 4127C 80050A7C C0FF1124 */   addiu     $s1, $zero, -0x40
.L80050A80:
/* 41280 80050A80 40181000 */  sll        $v1, $s0, 1
.L80050A84:
/* 41284 80050A84 FFFF6324 */  addiu      $v1, $v1, -1
/* 41288 80050A88 40100300 */  sll        $v0, $v1, 1
/* 4128C 80050A8C 21104300 */  addu       $v0, $v0, $v1
/* 41290 80050A90 80100200 */  sll        $v0, $v0, 2
/* 41294 80050A94 23104300 */  subu       $v0, $v0, $v1
/* 41298 80050A98 C0880200 */  sll        $s1, $v0, 3
/* 4129C 80050A9C 80581000 */  sll        $t3, $s0, 2
/* 412A0 80050AA0 43281400 */  sra        $a1, $s4, 1
/* 412A4 80050AA4 43381200 */  sra        $a3, $s2, 1
/* 412A8 80050AA8 1D00482A */  slti       $t0, $s2, 0x1d
/* 412AC 80050AAC 7400A48F */  lw         $a0, 0x74($sp)
/* 412B0 80050AB0 0400A696 */  lhu        $a2, 4($s5)
/* 412B4 80050AB4 B6420108 */  j          .L80050AD8
/* 412B8 80050AB8 01009E24 */   addiu     $fp, $a0, 1
.L80050ABC:
/* 412BC 80050ABC 80581000 */  sll        $t3, $s0, 2
/* 412C0 80050AC0 43281400 */  sra        $a1, $s4, 1
/* 412C4 80050AC4 43381200 */  sra        $a3, $s2, 1
/* 412C8 80050AC8 1D00482A */  slti       $t0, $s2, 0x1d
/* 412CC 80050ACC 7400A28F */  lw         $v0, 0x74($sp)
/* 412D0 80050AD0 0400A696 */  lhu        $a2, 4($s5)
/* 412D4 80050AD4 01005E24 */  addiu      $fp, $v0, 1
.L80050AD8:
/* 412D8 80050AD8 2800E426 */  addiu      $a0, $s7, 0x28
.L80050ADC:
/* 412DC 80050ADC 21107001 */  addu       $v0, $t3, $s0
/* 412E0 80050AE0 C0190200 */  sll        $v1, $v0, 7
/* 412E4 80050AE4 21104300 */  addu       $v0, $v0, $v1
/* 412E8 80050AE8 40110200 */  sll        $v0, $v0, 5
/* 412EC 80050AEC 23105000 */  subu       $v0, $v0, $s0
/* 412F0 80050AF0 80100200 */  sll        $v0, $v0, 2
/* 412F4 80050AF4 21104400 */  addu       $v0, $v0, $a0
/* 412F8 80050AF8 8A004490 */  lbu        $a0, 0x8a($v0)
/* 412FC 80050AFC 02000324 */  addiu      $v1, $zero, 2
/* 41300 80050B00 03008310 */  beq        $a0, $v1, .L80050B10
/* 41304 80050B04 0A000224 */   addiu     $v0, $zero, 0xa
/* 41308 80050B08 0A008214 */  bne        $a0, $v0, .L80050B34
/* 4130C 80050B0C 00000000 */   nop
.L80050B10:
/* 41310 80050B10 2800E386 */  lh         $v1, 0x28($s7)
/* 41314 80050B14 03000224 */  addiu      $v0, $zero, 3
/* 41318 80050B18 06006210 */  beq        $v1, $v0, .L80050B34
/* 4131C 80050B1C 26000224 */   addiu     $v0, $zero, 0x26
/* 41320 80050B20 04006210 */  beq        $v1, $v0, .L80050B34
/* 41324 80050B24 15000224 */   addiu     $v0, $zero, 0x15
/* 41328 80050B28 02006210 */  beq        $v1, $v0, .L80050B34
/* 4132C 80050B2C 00000000 */   nop
/* 41330 80050B30 21880000 */  addu       $s1, $zero, $zero
.L80050B34:
/* 41334 80050B34 23282502 */  subu       $a1, $s1, $a1
/* 41338 80050B38 2800E426 */  addiu      $a0, $s7, 0x28
/* 4133C 80050B3C 21107001 */  addu       $v0, $t3, $s0
/* 41340 80050B40 C0190200 */  sll        $v1, $v0, 7
/* 41344 80050B44 21104300 */  addu       $v0, $v0, $v1
/* 41348 80050B48 40110200 */  sll        $v0, $v0, 5
/* 4134C 80050B4C 23105000 */  subu       $v0, $v0, $s0
/* 41350 80050B50 80100200 */  sll        $v0, $v0, 2
/* 41354 80050B54 21104400 */  addu       $v0, $v0, $a0
/* 41358 80050B58 9000438C */  lw         $v1, 0x90($v0)
/* 4135C 80050B5C 00000000 */  nop
/* 41360 80050B60 021B0300 */  srl        $v1, $v1, 0xc
/* 41364 80050B64 03006330 */  andi       $v1, $v1, 3
/* 41368 80050B68 04006010 */  beqz       $v1, .L80050B7C
/* 4136C 80050B6C 2188AE00 */   addu      $s1, $a1, $t6
/* 41370 80050B70 2C00A38F */  lw         $v1, 0x2c($sp)
/* 41374 80050B74 E2420108 */  j          .L80050B88
/* 41378 80050B78 02006224 */   addiu     $v0, $v1, 2
.L80050B7C:
/* 4137C 80050B7C 2C00A48F */  lw         $a0, 0x2c($sp)
/* 41380 80050B80 00000000 */  nop
/* 41384 80050B84 E2FF8224 */  addiu      $v0, $a0, -0x1e
.L80050B88:
/* 41388 80050B88 23104700 */  subu       $v0, $v0, $a3
/* 4138C 80050B8C 2400A2AF */  sw         $v0, 0x24($sp)
/* 41390 80050B90 00340600 */  sll        $a2, $a2, 0x10
/* 41394 80050B94 03340600 */  sra        $a2, $a2, 0x10
/* 41398 80050B98 01000839 */  xori       $t0, $t0, 1
/* 4139C 80050B9C 8C3D2227 */  addiu      $v0, $t9, 0x3d8c
/* 413A0 80050BA0 2110E201 */  addu       $v0, $t7, $v0
/* 413A4 80050BA4 0E000324 */  addiu      $v1, $zero, 0xe
/* 413A8 80050BA8 23186800 */  subu       $v1, $v1, $t0
/* 413AC 80050BAC 7000A48F */  lw         $a0, 0x70($sp)
/* 413B0 80050BB0 7400A58F */  lw         $a1, 0x74($sp)
/* 413B4 80050BB4 2800A78F */  lw         $a3, 0x28($sp)
/* 413B8 80050BB8 2000B08F */  lw         $s0, 0x20($sp)
/* 413BC 80050BBC 0000498C */  lw         $t1, ($v0)
/* 413C0 80050BC0 FFFF0224 */  addiu      $v0, $zero, -1
/* 413C4 80050BC4 3000B0AF */  sw         $s0, 0x30($sp)
/* 413C8 80050BC8 0C00AA86 */  lh         $t2, 0xc($s5)
/* 413CC 80050BCC 21B80002 */  addu       $s7, $s0, $zero
/* 413D0 80050BD0 1400A3AF */  sw         $v1, 0x14($sp)
/* 413D4 80050BD4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 413D8 80050BD8 1000A9AF */  sw         $t1, 0x10($sp)
/* 413DC 80050BDC 1769010C */  jal        FUN_8005a45c
/* 413E0 80050BE0 1800AAAF */   sw        $t2, 0x18($sp)
/* 413E4 80050BE4 19006016 */  bnez       $s3, .L80050C4C
/* 413E8 80050BE8 01000224 */   addiu     $v0, $zero, 1
/* 413EC 80050BEC 1700C216 */  bne        $s6, $v0, .L80050C4C
/* 413F0 80050BF0 0F80023C */   lui       $v0, %hi(D_800F001C)
/* 413F4 80050BF4 1C00448C */  lw         $a0, %lo(D_800F001C)($v0)
/* 413F8 80050BF8 AAAA033C */  lui        $v1, 0xaaaa
/* 413FC 80050BFC ABAA6334 */  ori        $v1, $v1, 0xaaab
/* 41400 80050C00 19008300 */  multu      $a0, $v1
/* 41404 80050C04 10180000 */  mfhi       $v1
/* 41408 80050C08 42180300 */  srl        $v1, $v1, 1
/* 4140C 80050C0C 40100300 */  sll        $v0, $v1, 1
/* 41410 80050C10 21104300 */  addu       $v0, $v0, $v1
/* 41414 80050C14 23208200 */  subu       $a0, $a0, $v0
/* 41418 80050C18 07009610 */  beq        $a0, $s6, .L80050C38
/* 4141C 80050C1C 00000000 */   nop
/* 41420 80050C20 0A008010 */  beqz       $a0, .L80050C4C
/* 41424 80050C24 02000224 */   addiu     $v0, $zero, 2
/* 41428 80050C28 06008210 */  beq        $a0, $v0, .L80050C44
/* 4142C 80050C2C 00000000 */   nop
/* 41430 80050C30 13430108 */  j          .L80050C4C
/* 41434 80050C34 00000000 */   nop
.L80050C38:
/* 41438 80050C38 70001024 */  addiu      $s0, $zero, 0x70
/* 4143C 80050C3C 13430108 */  j          .L80050C4C
/* 41440 80050C40 3000B0AF */   sw        $s0, 0x30($sp)
.L80050C44:
/* 41444 80050C44 70001724 */  addiu      $s7, $zero, 0x70
/* 41448 80050C48 70001024 */  addiu      $s0, $zero, 0x70
.L80050C4C:
/* 4144C 80050C4C 7000A48F */  lw         $a0, 0x70($sp)
/* 41450 80050C50 1600A686 */  lh         $a2, 0x16($s5)
/* 41454 80050C54 1800A786 */  lh         $a3, 0x18($s5)
/* 41458 80050C58 7400A58F */  lw         $a1, 0x74($sp)
/* 4145C 80050C5C 396D010C */  jal        FUN_8005b4e4
/* 41460 80050C60 00000000 */   nop
/* 41464 80050C64 2130E002 */  addu       $a2, $s7, $zero
/* 41468 80050C68 7000A48F */  lw         $a0, 0x70($sp)
/* 4146C 80050C6C 7400A58F */  lw         $a1, 0x74($sp)
/* 41470 80050C70 3000A28F */  lw         $v0, 0x30($sp)
/* 41474 80050C74 21380002 */  addu       $a3, $s0, $zero
/* 41478 80050C78 EB6C010C */  jal        FUN_8005b3ac
/* 4147C 80050C7C 1000A2AF */   sw        $v0, 0x10($sp)
/* 41480 80050C80 7000A48F */  lw         $a0, 0x70($sp)
/* 41484 80050C84 7400A58F */  lw         $a1, 0x74($sp)
/* 41488 80050C88 2400A78F */  lw         $a3, 0x24($sp)
/* 4148C 80050C8C 21302002 */  addu       $a2, $s1, $zero
/* 41490 80050C90 1000B4AF */  sw         $s4, 0x10($sp)
/* 41494 80050C94 976D010C */  jal        FUN_8005b65c
/* 41498 80050C98 1400B2AF */   sw        $s2, 0x14($sp)
/* 4149C 80050C9C 2110C003 */  addu       $v0, $fp, $zero
.L80050CA0:
/* 414A0 80050CA0 6C00BF8F */  lw         $ra, 0x6c($sp)
/* 414A4 80050CA4 6800BE8F */  lw         $fp, 0x68($sp)
/* 414A8 80050CA8 6400B78F */  lw         $s7, 0x64($sp)
/* 414AC 80050CAC 6000B68F */  lw         $s6, 0x60($sp)
/* 414B0 80050CB0 5C00B58F */  lw         $s5, 0x5c($sp)
/* 414B4 80050CB4 5800B48F */  lw         $s4, 0x58($sp)
/* 414B8 80050CB8 5400B38F */  lw         $s3, 0x54($sp)
/* 414BC 80050CBC 5000B28F */  lw         $s2, 0x50($sp)
/* 414C0 80050CC0 4C00B18F */  lw         $s1, 0x4c($sp)
/* 414C4 80050CC4 4800B08F */  lw         $s0, 0x48($sp)
/* 414C8 80050CC8 0800E003 */  jr         $ra
/* 414CC 80050CCC 7000BD27 */   addiu     $sp, $sp, 0x70
