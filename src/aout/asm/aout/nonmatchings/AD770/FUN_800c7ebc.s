.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c7ebc
/* B86BC 800C7EBC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B86C0 800C7EC0 2000B4AF */  sw         $s4, 0x20($sp)
/* B86C4 800C7EC4 FFFF1424 */  addiu      $s4, $zero, -1
/* B86C8 800C7EC8 1800B2AF */  sw         $s2, 0x18($sp)
/* B86CC 800C7ECC 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B86D0 800C7ED0 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B86D4 800C7ED4 1400B1AF */  sw         $s1, 0x14($sp)
/* B86D8 800C7ED8 28005124 */  addiu      $s1, $v0, 0x28
/* B86DC 800C7EDC 2400BFAF */  sw         $ra, 0x24($sp)
/* B86E0 800C7EE0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B86E4 800C7EE4 1000B0AF */  sw         $s0, 0x10($sp)
/* B86E8 800C7EE8 0800438C */  lw         $v1, 8($v0)
/* B86EC 800C7EEC 0400538C */  lw         $s3, 4($v0)
/* B86F0 800C7EF0 0600622C */  sltiu      $v0, $v1, 6
/* B86F4 800C7EF4 5B004010 */  beqz       $v0, .L800C8064
/* B86F8 800C7EF8 21900000 */   addu      $s2, $zero, $zero
/* B86FC 800C7EFC 0180023C */  lui        $v0, %hi(D_800179B8)
/* B8700 800C7F00 B8794224 */  addiu      $v0, $v0, %lo(D_800179B8)
/* B8704 800C7F04 80180300 */  sll        $v1, $v1, 2
/* B8708 800C7F08 21186200 */  addu       $v1, $v1, $v0
/* B870C 800C7F0C 0000628C */  lw         $v0, ($v1)
/* B8710 800C7F10 00000000 */  nop
/* B8714 800C7F14 08004000 */  jr         $v0
/* B8718 800C7F18 00000000 */   nop
/* B871C 800C7F1C 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B8720 800C7F20 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B8724 800C7F24 9C00438C */  lw         $v1, 0x9c($v0)
/* B8728 800C7F28 00000000 */  nop
/* B872C 800C7F2C 21186200 */  addu       $v1, $v1, $v0
/* B8730 800C7F30 1E0060A0 */  sb         $zero, 0x1e($v1)
/* B8734 800C7F34 0800438C */  lw         $v1, 8($v0)
/* B8738 800C7F38 00000000 */  nop
/* B873C 800C7F3C 01006324 */  addiu      $v1, $v1, 1
/* B8740 800C7F40 080043AC */  sw         $v1, 8($v0)
/* B8744 800C7F44 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B8748 800C7F48 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B874C 800C7F4C F0B71026 */  addiu      $s0, $s0, -0x4810
/* B8750 800C7F50 9C00068E */  lw         $a2, 0x9c($s0)
/* B8754 800C7F54 B927030C */  jal        FUN_800c9ee4
/* B8758 800C7F58 21202002 */   addu      $a0, $s1, $zero
/* B875C 800C7F5C EB1F0308 */  j          .L800C7FAC
/* B8760 800C7F60 00000000 */   nop
/* B8764 800C7F64 EE09030C */  jal        FUN_800c27b8
/* B8768 800C7F68 21202002 */   addu      $a0, $s1, $zero
/* B876C 800C7F6C 21184000 */  addu       $v1, $v0, $zero
/* B8770 800C7F70 FEFF0224 */  addiu      $v0, $zero, -2
/* B8774 800C7F74 3B006210 */  beq        $v1, $v0, .L800C8064
/* B8778 800C7F78 01000224 */   addiu     $v0, $zero, 1
/* B877C 800C7F7C 2B006214 */  bne        $v1, $v0, .L800C802C
/* B8780 800C7F80 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B8784 800C7F84 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8788 800C7F88 0800628C */  lw         $v0, 8($v1)
/* B878C 800C7F8C 00000000 */  nop
/* B8790 800C7F90 01004224 */  addiu      $v0, $v0, 1
/* B8794 800C7F94 080062AC */  sw         $v0, 8($v1)
/* B8798 800C7F98 21202002 */  addu       $a0, $s1, $zero
/* B879C 800C7F9C 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B87A0 800C7FA0 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B87A4 800C7FA4 8A27030C */  jal        FUN_800c9e28
/* B87A8 800C7FA8 F0B71026 */   addiu     $s0, $s0, -0x4810
.L800C7FAC:
/* B87AC 800C7FAC 0800028E */  lw         $v0, 8($s0)
/* B87B0 800C7FB0 00000000 */  nop
/* B87B4 800C7FB4 01004224 */  addiu      $v0, $v0, 1
/* B87B8 800C7FB8 19200308 */  j          .L800C8064
/* B87BC 800C7FBC 080002AE */   sw        $v0, 8($s0)
/* B87C0 800C7FC0 EE09030C */  jal        FUN_800c27b8
/* B87C4 800C7FC4 21202002 */   addu      $a0, $s1, $zero
/* B87C8 800C7FC8 21184000 */  addu       $v1, $v0, $zero
/* B87CC 800C7FCC FEFF0224 */  addiu      $v0, $zero, -2
/* B87D0 800C7FD0 24006210 */  beq        $v1, $v0, .L800C8064
/* B87D4 800C7FD4 01000224 */   addiu     $v0, $zero, 1
/* B87D8 800C7FD8 14006214 */  bne        $v1, $v0, .L800C802C
/* B87DC 800C7FDC 00000000 */   nop
/* B87E0 800C7FE0 1C00248E */  lw         $a0, 0x1c($s1)
/* B87E4 800C7FE4 00000000 */  nop
/* B87E8 800C7FE8 00008290 */  lbu        $v0, ($a0)
/* B87EC 800C7FEC 00000000 */  nop
/* B87F0 800C7FF0 78004230 */  andi       $v0, $v0, 0x78
/* B87F4 800C7FF4 07004010 */  beqz       $v0, .L800C8014
/* B87F8 800C7FF8 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B87FC 800C7FFC F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8800 800C8000 0800628C */  lw         $v0, 8($v1)
/* B8804 800C8004 00000000 */  nop
/* B8808 800C8008 FFFF4224 */  addiu      $v0, $v0, -1
/* B880C 800C800C 19200308 */  j          .L800C8064
/* B8810 800C8010 080062AC */   sw        $v0, 8($v1)
.L800C8014:
/* B8814 800C8014 01008290 */  lbu        $v0, 1($a0)
/* B8818 800C8018 00000000 */  nop
/* B881C 800C801C 60004230 */  andi       $v0, $v0, 0x60
/* B8820 800C8020 04004010 */  beqz       $v0, .L800C8034
/* B8824 800C8024 F0B76324 */   addiu     $v1, $v1, -0x4810
/* B8828 800C8028 FAFF1424 */  addiu      $s4, $zero, -6
.L800C802C:
/* B882C 800C802C 19200308 */  j          .L800C8064
/* B8830 800C8030 01001224 */   addiu     $s2, $zero, 1
.L800C8034:
/* B8834 800C8034 0800628C */  lw         $v0, 8($v1)
/* B8838 800C8038 00000000 */  nop
/* B883C 800C803C 01004224 */  addiu      $v0, $v0, 1
/* B8840 800C8040 080062AC */  sw         $v0, 8($v1)
/* B8844 800C8044 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B8848 800C8048 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B884C 800C804C 9C00438C */  lw         $v1, 0x9c($v0)
/* B8850 800C8050 21980000 */  addu       $s3, $zero, $zero
/* B8854 800C8054 0C0040AC */  sw         $zero, 0xc($v0)
/* B8858 800C8058 21186200 */  addu       $v1, $v1, $v0
/* B885C 800C805C 01000224 */  addiu      $v0, $zero, 1
/* B8860 800C8060 1E0062A0 */  sb         $v0, 0x1e($v1)
.L800C8064:
/* B8864 800C8064 03004012 */  beqz       $s2, .L800C8074
/* B8868 800C8068 2080023C */   lui       $v0, %hi(D_801FB7FC)
/* B886C 800C806C 21980000 */  addu       $s3, $zero, $zero
/* B8870 800C8070 FCB754AC */  sw         $s4, %lo(D_801FB7FC)($v0)
.L800C8074:
/* B8874 800C8074 21106002 */  addu       $v0, $s3, $zero
/* B8878 800C8078 2400BF8F */  lw         $ra, 0x24($sp)
/* B887C 800C807C 2000B48F */  lw         $s4, 0x20($sp)
/* B8880 800C8080 1C00B38F */  lw         $s3, 0x1c($sp)
/* B8884 800C8084 1800B28F */  lw         $s2, 0x18($sp)
/* B8888 800C8088 1400B18F */  lw         $s1, 0x14($sp)
/* B888C 800C808C 1000B08F */  lw         $s0, 0x10($sp)
/* B8890 800C8090 0800E003 */  jr         $ra
/* B8894 800C8094 2800BD27 */   addiu     $sp, $sp, 0x28
