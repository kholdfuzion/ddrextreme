.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetVoiceAttr
/* A96D4 800B8ED4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* A96D8 800B8ED8 1800B0AF */  sw         $s0, 0x18($sp)
/* A96DC 800B8EDC 21808000 */  addu       $s0, $a0, $zero
/* A96E0 800B8EE0 2800B4AF */  sw         $s4, 0x28($sp)
/* A96E4 800B8EE4 21A00000 */  addu       $s4, $zero, $zero
/* A96E8 800B8EE8 3000BFAF */  sw         $ra, 0x30($sp)
/* A96EC 800B8EEC 2C00B5AF */  sw         $s5, 0x2c($sp)
/* A96F0 800B8EF0 2400B3AF */  sw         $s3, 0x24($sp)
/* A96F4 800B8EF4 2000B2AF */  sw         $s2, 0x20($sp)
/* A96F8 800B8EF8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A96FC 800B8EFC 0400118E */  lw         $s1, 4($s0)
/* A9700 800B8F00 0F80153C */  lui        $s5, %hi(D_800EC7AC)
/* A9704 800B8F04 ACC7B526 */  addiu      $s5, $s5, %lo(D_800EC7AC)
/* A9708 800B8F08 0100322E */  sltiu      $s2, $s1, 1
.L800B8F0C:
/* A970C 800B8F0C 01000224 */  addiu      $v0, $zero, 1
/* A9710 800B8F10 0000038E */  lw         $v1, ($s0)
/* A9714 800B8F14 04108202 */  sllv       $v0, $v0, $s4
/* A9718 800B8F18 24186200 */  and        $v1, $v1, $v0
/* A971C 800B8F1C 4A016010 */  beqz       $v1, .L800B9448
/* A9720 800B8F20 00000000 */   nop
/* A9724 800B8F24 04004016 */  bnez       $s2, .L800B8F38
/* A9728 800B8F28 C0981400 */   sll       $s3, $s4, 3
/* A972C 800B8F2C 10002232 */  andi       $v0, $s1, 0x10
/* A9730 800B8F30 07004010 */  beqz       $v0, .L800B8F50
/* A9734 800B8F34 00000000 */   nop
.L800B8F38:
/* A9738 800B8F38 00111400 */  sll        $v0, $s4, 4
/* A973C 800B8F3C 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A9740 800B8F40 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A9744 800B8F44 14000496 */  lhu        $a0, 0x14($s0)
/* A9748 800B8F48 21104300 */  addu       $v0, $v0, $v1
/* A974C 800B8F4C 040044A4 */  sh         $a0, 4($v0)
.L800B8F50:
/* A9750 800B8F50 03004016 */  bnez       $s2, .L800B8F60
/* A9754 800B8F54 40002232 */   andi      $v0, $s1, 0x40
/* A9758 800B8F58 04004010 */  beqz       $v0, .L800B8F6C
/* A975C 800B8F5C 00000000 */   nop
.L800B8F60:
/* A9760 800B8F60 18000296 */  lhu        $v0, 0x18($s0)
/* A9764 800B8F64 00000000 */  nop
/* A9768 800B8F68 0000A2A6 */  sh         $v0, ($s5)
.L800B8F6C:
/* A976C 800B8F6C 03004016 */  bnez       $s2, .L800B8F7C
/* A9770 800B8F70 20002232 */   andi      $v0, $s1, 0x20
/* A9774 800B8F74 0D004010 */  beqz       $v0, .L800B8FAC
/* A9778 800B8F78 00000000 */   nop
.L800B8F7C:
/* A977C 800B8F7C 0000A596 */  lhu        $a1, ($s5)
/* A9780 800B8F80 16000796 */  lhu        $a3, 0x16($s0)
/* A9784 800B8F84 02220500 */  srl        $a0, $a1, 8
/* A9788 800B8F88 FF00A530 */  andi       $a1, $a1, 0xff
/* A978C 800B8F8C 02320700 */  srl        $a2, $a3, 8
/* A9790 800B8F90 35E5020C */  jal        _spu_note2pitch
/* A9794 800B8F94 FF00E730 */   andi      $a3, $a3, 0xff
/* A9798 800B8F98 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A979C 800B8F9C F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
/* A97A0 800B8FA0 40181300 */  sll        $v1, $s3, 1
/* A97A4 800B8FA4 21186400 */  addu       $v1, $v1, $a0
/* A97A8 800B8FA8 040062A4 */  sh         $v0, 4($v1)
.L800B8FAC:
/* A97AC 800B8FAC 03004016 */  bnez       $s2, .L800B8FBC
/* A97B0 800B8FB0 01002232 */   andi      $v0, $s1, 1
/* A97B4 800B8FB4 35004010 */  beqz       $v0, .L800B908C
/* A97B8 800B8FB8 00000000 */   nop
.L800B8FBC:
/* A97BC 800B8FBC 08000296 */  lhu        $v0, 8($s0)
/* A97C0 800B8FC0 21200000 */  addu       $a0, $zero, $zero
/* A97C4 800B8FC4 04004016 */  bnez       $s2, .L800B8FD8
/* A97C8 800B8FC8 FF7F4530 */   andi      $a1, $v0, 0x7fff
/* A97CC 800B8FCC 04002232 */  andi       $v0, $s1, 4
/* A97D0 800B8FD0 1C004010 */  beqz       $v0, S_SVA_OBJ_170
/* A97D4 800B8FD4 00000000 */   nop
.L800B8FD8:
/* A97D8 800B8FD8 0C000296 */  lhu        $v0, 0xc($s0)
/* A97DC 800B8FDC 00000000 */  nop
/* A97E0 800B8FE0 FFFF4224 */  addiu      $v0, $v0, -1
/* A97E4 800B8FE4 00140200 */  sll        $v0, $v0, 0x10
/* A97E8 800B8FE8 031C0200 */  sra        $v1, $v0, 0x10
/* A97EC 800B8FEC 0700622C */  sltiu      $v0, $v1, 7
/* A97F0 800B8FF0 14004010 */  beqz       $v0, S_SVA_OBJ_170
/* A97F4 800B8FF4 80100300 */   sll       $v0, $v1, 2
/* A97F8 800B8FF8 0180013C */  lui        $at, %hi(D_80017360)
/* A97FC 800B8FFC 21082200 */  addu       $at, $at, $v0
/* A9800 800B9000 6073228C */  lw         $v0, %lo(D_80017360)($at)
/* A9804 800B9004 00000000 */  nop
/* A9808 800B9008 08004000 */  jr         $v0
/* A980C 800B900C 00000000 */   nop
