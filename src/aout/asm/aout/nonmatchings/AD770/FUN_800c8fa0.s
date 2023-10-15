.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c8fa0
/* B97A0 800C8FA0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B97A4 800C8FA4 2400B3AF */  sw         $s3, 0x24($sp)
/* B97A8 800C8FA8 21980000 */  addu       $s3, $zero, $zero
/* B97AC 800C8FAC 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B97B0 800C8FB0 1800B0AF */  sw         $s0, 0x18($sp)
/* B97B4 800C8FB4 F0B75024 */  addiu      $s0, $v0, %lo(D_801FB7F0)
/* B97B8 800C8FB8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B97BC 800C8FBC 01001124 */  addiu      $s1, $zero, 1
/* B97C0 800C8FC0 2800BFAF */  sw         $ra, 0x28($sp)
/* B97C4 800C8FC4 2000B2AF */  sw         $s2, 0x20($sp)
/* B97C8 800C8FC8 0800038E */  lw         $v1, 8($s0)
/* B97CC 800C8FCC 0400128E */  lw         $s2, 4($s0)
/* B97D0 800C8FD0 11007110 */  beq        $v1, $s1, .L800C9018
/* B97D4 800C8FD4 28000426 */   addiu     $a0, $s0, 0x28
/* B97D8 800C8FD8 02006228 */  slti       $v0, $v1, 2
/* B97DC 800C8FDC 05004010 */  beqz       $v0, .L800C8FF4
/* B97E0 800C8FE0 00000000 */   nop
/* B97E4 800C8FE4 0A006010 */  beqz       $v1, .L800C9010
/* B97E8 800C8FE8 2080023C */   lui       $v0, 0x8020
/* B97EC 800C8FEC 25240308 */  j          .L800C9094
/* B97F0 800C8FF0 00000000 */   nop
.L800C8FF4:
/* B97F4 800C8FF4 02000224 */  addiu      $v0, $zero, 2
/* B97F8 800C8FF8 15006210 */  beq        $v1, $v0, .L800C9050
/* B97FC 800C8FFC 03000224 */   addiu     $v0, $zero, 3
/* B9800 800C9000 21006210 */  beq        $v1, $v0, .L800C9088
/* B9804 800C9004 00000000 */   nop
/* B9808 800C9008 25240308 */  j          .L800C9094
/* B980C 800C900C 00000000 */   nop
.L800C9010:
/* B9810 800C9010 E8B740AC */  sw         $zero, -0x4818($v0)
/* B9814 800C9014 080011AE */  sw         $s1, 8($s0)
.L800C9018:
/* B9818 800C9018 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B981C 800C901C F0B77024 */  addiu      $s0, $v1, %lo(D_801FB7F0)
/* B9820 800C9020 2080023C */  lui        $v0, %hi(D_801FB7E8)
/* B9824 800C9024 E8B7428C */  lw         $v0, %lo(D_801FB7E8)($v0)
/* B9828 800C9028 F0B7658C */  lw         $a1, -0x4810($v1)
/* B982C 800C902C 9C00068E */  lw         $a2, 0x9c($s0)
/* B9830 800C9030 9000078E */  lw         $a3, 0x90($s0)
/* B9834 800C9034 3428030C */  jal        FUN_800ca0d0
/* B9838 800C9038 1000A2AF */   sw        $v0, 0x10($sp)
/* B983C 800C903C 0800028E */  lw         $v0, 8($s0)
/* B9840 800C9040 00000000 */  nop
/* B9844 800C9044 01004224 */  addiu      $v0, $v0, 1
/* B9848 800C9048 25240308 */  j          .L800C9094
/* B984C 800C904C 080002AE */   sw        $v0, 8($s0)
.L800C9050:
/* B9850 800C9050 EE09030C */  jal        FUN_800c27b8
/* B9854 800C9054 00000000 */   nop
/* B9858 800C9058 21184000 */  addu       $v1, $v0, $zero
/* B985C 800C905C FEFF0224 */  addiu      $v0, $zero, -2
/* B9860 800C9060 0C006210 */  beq        $v1, $v0, .L800C9094
/* B9864 800C9064 00000000 */   nop
/* B9868 800C9068 03007110 */  beq        $v1, $s1, .L800C9078
/* B986C 800C906C 00000000 */   nop
/* B9870 800C9070 25240308 */  j          .L800C9094
/* B9874 800C9074 01001324 */   addiu     $s3, $zero, 1
.L800C9078:
/* B9878 800C9078 0800028E */  lw         $v0, 8($s0)
/* B987C 800C907C 00000000 */  nop
/* B9880 800C9080 01004224 */  addiu      $v0, $v0, 1
/* B9884 800C9084 080002AE */  sw         $v0, 8($s0)
.L800C9088:
/* B9888 800C9088 21900000 */  addu       $s2, $zero, $zero
/* B988C 800C908C 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B9890 800C9090 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C9094:
/* B9894 800C9094 04006012 */  beqz       $s3, .L800C90A8
/* B9898 800C9098 2080033C */   lui       $v1, %hi(D_801FB7FC)
/* B989C 800C909C 21900000 */  addu       $s2, $zero, $zero
/* B98A0 800C90A0 FFFF0224 */  addiu      $v0, $zero, -1
/* B98A4 800C90A4 FCB762AC */  sw         $v0, %lo(D_801FB7FC)($v1)
.L800C90A8:
/* B98A8 800C90A8 21104002 */  addu       $v0, $s2, $zero
/* B98AC 800C90AC 2800BF8F */  lw         $ra, 0x28($sp)
/* B98B0 800C90B0 2400B38F */  lw         $s3, 0x24($sp)
/* B98B4 800C90B4 2000B28F */  lw         $s2, 0x20($sp)
/* B98B8 800C90B8 1C00B18F */  lw         $s1, 0x1c($sp)
/* B98BC 800C90BC 1800B08F */  lw         $s0, 0x18($sp)
/* B98C0 800C90C0 0800E003 */  jr         $ra
/* B98C4 800C90C4 3000BD27 */   addiu     $sp, $sp, 0x30
