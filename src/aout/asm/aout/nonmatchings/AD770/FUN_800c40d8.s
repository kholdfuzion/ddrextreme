.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c40d8
/* B48D8 800C40D8 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B48DC 800C40DC 1874438C */  lw         $v1, %lo(D_801F7418)($v0)
/* B48E0 800C40E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B48E4 800C40E4 0C00622C */  sltiu      $v0, $v1, 0xc
/* B48E8 800C40E8 38004010 */  beqz       $v0, .L800C41CC
/* B48EC 800C40EC 1000BFAF */   sw        $ra, 0x10($sp)
/* B48F0 800C40F0 0180023C */  lui        $v0, %hi(D_80017840)
/* B48F4 800C40F4 40784224 */  addiu      $v0, $v0, %lo(D_80017840)
/* B48F8 800C40F8 80180300 */  sll        $v1, $v1, 2
/* B48FC 800C40FC 21186200 */  addu       $v1, $v1, $v0
/* B4900 800C4100 0000628C */  lw         $v0, ($v1)
/* B4904 800C4104 00000000 */  nop
/* B4908 800C4108 08004000 */  jr         $v0
/* B490C 800C410C 00000000 */   nop
/* B4910 800C4110 501B030C */  jal        FUN_800c6d40
/* B4914 800C4114 00000000 */   nop
/* B4918 800C4118 73100308 */  j          .L800C41CC
/* B491C 800C411C 21184000 */   addu      $v1, $v0, $zero
/* B4920 800C4120 0D11030C */  jal        FUN_800c4434
/* B4924 800C4124 00000000 */   nop
/* B4928 800C4128 73100308 */  j          .L800C41CC
/* B492C 800C412C 21184000 */   addu      $v1, $v0, $zero
/* B4930 800C4130 0612030C */  jal        FUN_800c4818
/* B4934 800C4134 00000000 */   nop
/* B4938 800C4138 73100308 */  j          .L800C41CC
/* B493C 800C413C 21184000 */   addu      $v1, $v0, $zero
/* B4940 800C4140 B712030C */  jal        FUN_800c4adc
/* B4944 800C4144 00000000 */   nop
/* B4948 800C4148 73100308 */  j          .L800C41CC
/* B494C 800C414C 21184000 */   addu      $v1, $v0, $zero
/* B4950 800C4150 9413030C */  jal        FUN_800c4e50
/* B4954 800C4154 00000000 */   nop
/* B4958 800C4158 73100308 */  j          .L800C41CC
/* B495C 800C415C 21184000 */   addu      $v1, $v0, $zero
/* B4960 800C4160 6116030C */  jal        FUN_800c5984
/* B4964 800C4164 00000000 */   nop
/* B4968 800C4168 73100308 */  j          .L800C41CC
/* B496C 800C416C 21184000 */   addu      $v1, $v0, $zero
/* B4970 800C4170 B716030C */  jal        FUN_800c5adc
/* B4974 800C4174 00000000 */   nop
/* B4978 800C4178 73100308 */  j          .L800C41CC
/* B497C 800C417C 21184000 */   addu      $v1, $v0, $zero
/* B4980 800C4180 0017030C */  jal        FUN_800c5c00
/* B4984 800C4184 00000000 */   nop
/* B4988 800C4188 73100308 */  j          .L800C41CC
/* B498C 800C418C 21184000 */   addu      $v1, $v0, $zero
/* B4990 800C4190 4917030C */  jal        FUN_800c5d24
/* B4994 800C4194 00000000 */   nop
/* B4998 800C4198 73100308 */  j          .L800C41CC
/* B499C 800C419C 21184000 */   addu      $v1, $v0, $zero
/* B49A0 800C41A0 9017030C */  jal        FUN_800c5e40
/* B49A4 800C41A4 00000000 */   nop
/* B49A8 800C41A8 73100308 */  j          .L800C41CC
/* B49AC 800C41AC 21184000 */   addu      $v1, $v0, $zero
/* B49B0 800C41B0 D717030C */  jal        FUN_800c5f5c
/* B49B4 800C41B4 00000000 */   nop
/* B49B8 800C41B8 73100308 */  j          .L800C41CC
/* B49BC 800C41BC 21184000 */   addu      $v1, $v0, $zero
/* B49C0 800C41C0 1E18030C */  jal        FUN_800c6078
/* B49C4 800C41C4 00000000 */   nop
/* B49C8 800C41C8 21184000 */  addu       $v1, $v0, $zero
.L800C41CC:
/* B49CC 800C41CC 1F80043C */  lui        $a0, %hi(D_801F7418)
/* B49D0 800C41D0 1874828C */  lw         $v0, %lo(D_801F7418)($a0)
/* B49D4 800C41D4 00000000 */  nop
/* B49D8 800C41D8 02004310 */  beq        $v0, $v1, .L800C41E4
/* B49DC 800C41DC 18748524 */   addiu     $a1, $a0, 0x7418
/* B49E0 800C41E0 0400A0AC */  sw         $zero, 4($a1)
.L800C41E4:
/* B49E4 800C41E4 A31C030C */  jal        FUN_800c728c
/* B49E8 800C41E8 187483AC */   sw        $v1, 0x7418($a0)
/* B49EC 800C41EC 1000BF8F */  lw         $ra, 0x10($sp)
/* B49F0 800C41F0 00000000 */  nop
/* B49F4 800C41F4 0800E003 */  jr         $ra
/* B49F8 800C41F8 1800BD27 */   addiu     $sp, $sp, 0x18
