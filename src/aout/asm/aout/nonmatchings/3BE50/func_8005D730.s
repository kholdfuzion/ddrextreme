.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005D730
/* 4DF30 8005D730 21508000 */  addu       $t2, $a0, $zero
/* 4DF34 8005D734 2158C000 */  addu       $t3, $a2, $zero
/* 4DF38 8005D738 C2110500 */  srl        $v0, $a1, 7
/* 4DF3C 8005D73C 01004230 */  andi       $v0, $v0, 1
/* 4DF40 8005D740 2E004010 */  beqz       $v0, .L8005D7FC
/* 4DF44 8005D744 0F00A330 */   andi      $v1, $a1, 0xf
/* 4DF48 8005D748 21480000 */  addu       $t1, $zero, $zero
/* 4DF4C 8005D74C 0180043C */  lui        $a0, %hi(D_80014278)
/* 4DF50 8005D750 78428424 */  addiu      $a0, $a0, %lo(D_80014278)
/* 4DF54 8005D754 80300300 */  sll        $a2, $v1, 2
/* 4DF58 8005D758 0180023C */  lui        $v0, %hi(D_800141F8)
/* 4DF5C 8005D75C F8414224 */  addiu      $v0, $v0, %lo(D_800141F8)
/* 4DF60 8005D760 2110C200 */  addu       $v0, $a2, $v0
/* 4DF64 8005D764 2130C400 */  addu       $a2, $a2, $a0
/* 4DF68 8005D768 0000458C */  lw         $a1, ($v0)
/* 4DF6C 8005D76C 1A80023C */  lui        $v0, %hi(D_801A09B0)
/* 4DF70 8005D770 B0094224 */  addiu      $v0, $v0, %lo(D_801A09B0)
/* 4DF74 8005D774 00004491 */  lbu        $a0, ($t2)
/* 4DF78 8005D778 40180500 */  sll        $v1, $a1, 1
/* 4DF7C 8005D77C 21186500 */  addu       $v1, $v1, $a1
/* 4DF80 8005D780 001A0300 */  sll        $v1, $v1, 8
/* 4DF84 8005D784 0000C58C */  lw         $a1, ($a2)
/* 4DF88 8005D788 3C008010 */  beqz       $a0, .L8005D87C
/* 4DF8C 8005D78C 21386200 */   addu      $a3, $v1, $v0
/* 4DF90 8005D790 21108000 */  addu       $v0, $a0, $zero
/* 4DF94 8005D794 E0FF4224 */  addiu      $v0, $v0, -0x20
/* 4DF98 8005D798 C0100200 */  sll        $v0, $v0, 3
/* 4DF9C 8005D79C 2110E200 */  addu       $v0, $a3, $v0
/* 4DFA0 8005D7A0 04004394 */  lhu        $v1, 4($v0)
/* 4DFA4 8005D7A4 00000000 */  nop
/* 4DFA8 8005D7A8 21406500 */  addu       $t0, $v1, $a1
/* 4DFAC 8005D7AC 2A106801 */  slt        $v0, $t3, $t0
/* 4DFB0 8005D7B0 21004014 */  bnez       $v0, .L8005D838
/* 4DFB4 8005D7B4 01002925 */   addiu     $t1, $t1, 1
.L8005D7B8:
/* 4DFB8 8005D7B8 21184901 */  addu       $v1, $t2, $t1
/* 4DFBC 8005D7BC 00006290 */  lbu        $v0, ($v1)
/* 4DFC0 8005D7C0 00000000 */  nop
/* 4DFC4 8005D7C4 2D004010 */  beqz       $v0, .L8005D87C
/* 4DFC8 8005D7C8 E0FF4224 */   addiu     $v0, $v0, -0x20
/* 4DFCC 8005D7CC C0100200 */  sll        $v0, $v0, 3
/* 4DFD0 8005D7D0 2110E200 */  addu       $v0, $a3, $v0
/* 4DFD4 8005D7D4 04004394 */  lhu        $v1, 4($v0)
/* 4DFD8 8005D7D8 00000000 */  nop
/* 4DFDC 8005D7DC 21186500 */  addu       $v1, $v1, $a1
/* 4DFE0 8005D7E0 21400301 */  addu       $t0, $t0, $v1
/* 4DFE4 8005D7E4 2A106801 */  slt        $v0, $t3, $t0
/* 4DFE8 8005D7E8 F3FF4010 */  beqz       $v0, .L8005D7B8
/* 4DFEC 8005D7EC 01002925 */   addiu     $t1, $t1, 1
/* 4DFF0 8005D7F0 FFFF2925 */  addiu      $t1, $t1, -1
/* 4DFF4 8005D7F4 1F760108 */  j          .L8005D87C
/* 4DFF8 8005D7F8 FFFF2925 */   addiu     $t1, $t1, -1
.L8005D7FC:
/* 4DFFC 8005D7FC 00004291 */  lbu        $v0, ($t2)
/* 4E000 8005D800 00000000 */  nop
/* 4E004 8005D804 1D004010 */  beqz       $v0, .L8005D87C
/* 4E008 8005D808 21480000 */   addu      $t1, $zero, $zero
/* 4E00C 8005D80C 02320500 */  srl        $a2, $a1, 8
/* 4E010 8005D810 0180073C */  lui        $a3, %hi(D_800140B8)
/* 4E014 8005D814 B840E224 */  addiu      $v0, $a3, %lo(D_800140B8)
/* 4E018 8005D818 80280300 */  sll        $a1, $v1, 2
/* 4E01C 8005D81C 2110A200 */  addu       $v0, $a1, $v0
/* 4E020 8005D820 0000448C */  lw         $a0, ($v0)
/* 4E024 8005D824 FF00C330 */  andi       $v1, $a2, 0xff
/* 4E028 8005D828 21406400 */  addu       $t0, $v1, $a0
/* 4E02C 8005D82C 2A106801 */  slt        $v0, $t3, $t0
/* 4E030 8005D830 03004010 */  beqz       $v0, .L8005D840
/* 4E034 8005D834 01002925 */   addiu     $t1, $t1, 1
.L8005D838:
/* 4E038 8005D838 1F760108 */  j          .L8005D87C
/* 4E03C 8005D83C FFFF0924 */   addiu     $t1, $zero, -1
.L8005D840:
/* 4E040 8005D840 21104901 */  addu       $v0, $t2, $t1
/* 4E044 8005D844 00004390 */  lbu        $v1, ($v0)
/* 4E048 8005D848 00000000 */  nop
/* 4E04C 8005D84C 0B006010 */  beqz       $v1, .L8005D87C
/* 4E050 8005D850 B840E224 */   addiu     $v0, $a3, 0x40b8
/* 4E054 8005D854 2110A200 */  addu       $v0, $a1, $v0
/* 4E058 8005D858 0000448C */  lw         $a0, ($v0)
/* 4E05C 8005D85C FF00C330 */  andi       $v1, $a2, 0xff
/* 4E060 8005D860 21186400 */  addu       $v1, $v1, $a0
/* 4E064 8005D864 21400301 */  addu       $t0, $t0, $v1
/* 4E068 8005D868 2A106801 */  slt        $v0, $t3, $t0
/* 4E06C 8005D86C F4FF4010 */  beqz       $v0, .L8005D840
/* 4E070 8005D870 01002925 */   addiu     $t1, $t1, 1
/* 4E074 8005D874 FFFF2925 */  addiu      $t1, $t1, -1
/* 4E078 8005D878 FFFF2925 */  addiu      $t1, $t1, -1
.L8005D87C:
/* 4E07C 8005D87C 0800E003 */  jr         $ra
/* 4E080 8005D880 21102001 */   addu      $v0, $t1, $zero
