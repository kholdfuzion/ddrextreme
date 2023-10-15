.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c8d58
/* B9558 800C8D58 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B955C 800C8D5C 2800B4AF */  sw         $s4, 0x28($sp)
/* B9560 800C8D60 FFFF1424 */  addiu      $s4, $zero, -1
/* B9564 800C8D64 2000B2AF */  sw         $s2, 0x20($sp)
/* B9568 800C8D68 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B956C 800C8D6C F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B9570 800C8D70 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B9574 800C8D74 28005124 */  addiu      $s1, $v0, 0x28
/* B9578 800C8D78 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B957C 800C8D7C 2400B3AF */  sw         $s3, 0x24($sp)
/* B9580 800C8D80 1800B0AF */  sw         $s0, 0x18($sp)
/* B9584 800C8D84 0800438C */  lw         $v1, 8($v0)
/* B9588 800C8D88 0400538C */  lw         $s3, 4($v0)
/* B958C 800C8D8C 0800622C */  sltiu      $v0, $v1, 8
/* B9590 800C8D90 76004010 */  beqz       $v0, .L800C8F6C
/* B9594 800C8D94 21900000 */   addu      $s2, $zero, $zero
/* B9598 800C8D98 0180023C */  lui        $v0, %hi(D_80017A78)
/* B959C 800C8D9C 787A4224 */  addiu      $v0, $v0, %lo(D_80017A78)
/* B95A0 800C8DA0 80180300 */  sll        $v1, $v1, 2
/* B95A4 800C8DA4 21186200 */  addu       $v1, $v1, $v0
/* B95A8 800C8DA8 0000628C */  lw         $v0, ($v1)
/* B95AC 800C8DAC 00000000 */  nop
/* B95B0 800C8DB0 08004000 */  jr         $v0
/* B95B4 800C8DB4 00000000 */   nop
/* B95B8 800C8DB8 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B95BC 800C8DBC F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B95C0 800C8DC0 0800628C */  lw         $v0, 8($v1)
/* B95C4 800C8DC4 00000000 */  nop
/* B95C8 800C8DC8 01004224 */  addiu      $v0, $v0, 1
/* B95CC 800C8DCC 080062AC */  sw         $v0, 8($v1)
/* B95D0 800C8DD0 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B95D4 800C8DD4 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B95D8 800C8DD8 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B95DC 800C8DDC 9C00068E */  lw         $a2, 0x9c($s0)
/* B95E0 800C8DE0 CC28030C */  jal        FUN_800ca330
/* B95E4 800C8DE4 21202002 */   addu      $a0, $s1, $zero
/* B95E8 800C8DE8 C4230308 */  j          .L800C8F10
/* B95EC 800C8DEC 00000000 */   nop
/* B95F0 800C8DF0 EE09030C */  jal        FUN_800c27b8
/* B95F4 800C8DF4 21202002 */   addu      $a0, $s1, $zero
/* B95F8 800C8DF8 21184000 */  addu       $v1, $v0, $zero
/* B95FC 800C8DFC FEFF0224 */  addiu      $v0, $zero, -2
/* B9600 800C8E00 5A006210 */  beq        $v1, $v0, .L800C8F6C
/* B9604 800C8E04 01000224 */   addiu     $v0, $zero, 1
/* B9608 800C8E08 4E006214 */  bne        $v1, $v0, .L800C8F44
/* B960C 800C8E0C 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B9610 800C8E10 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9614 800C8E14 0800628C */  lw         $v0, 8($v1)
/* B9618 800C8E18 00000000 */  nop
/* B961C 800C8E1C 01004224 */  addiu      $v0, $v0, 1
/* B9620 800C8E20 080062AC */  sw         $v0, 8($v1)
/* B9624 800C8E24 21202002 */  addu       $a0, $s1, $zero
/* B9628 800C8E28 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B962C 800C8E2C F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B9630 800C8E30 8A27030C */  jal        FUN_800c9e28
/* B9634 800C8E34 F0B71026 */   addiu     $s0, $s0, -0x4810
/* B9638 800C8E38 C4230308 */  j          .L800C8F10
/* B963C 800C8E3C 00000000 */   nop
/* B9640 800C8E40 EE09030C */  jal        FUN_800c27b8
/* B9644 800C8E44 21202002 */   addu      $a0, $s1, $zero
/* B9648 800C8E48 21184000 */  addu       $v1, $v0, $zero
/* B964C 800C8E4C FEFF0224 */  addiu      $v0, $zero, -2
/* B9650 800C8E50 46006210 */  beq        $v1, $v0, .L800C8F6C
/* B9654 800C8E54 01000224 */   addiu     $v0, $zero, 1
/* B9658 800C8E58 3A006214 */  bne        $v1, $v0, .L800C8F44
/* B965C 800C8E5C 00000000 */   nop
/* B9660 800C8E60 1C00238E */  lw         $v1, 0x1c($s1)
/* B9664 800C8E64 00000000 */  nop
/* B9668 800C8E68 00006290 */  lbu        $v0, ($v1)
/* B966C 800C8E6C 00000000 */  nop
/* B9670 800C8E70 20004230 */  andi       $v0, $v0, 0x20
/* B9674 800C8E74 08004010 */  beqz       $v0, .L800C8E98
/* B9678 800C8E78 00000000 */   nop
/* B967C 800C8E7C 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9680 800C8E80 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9684 800C8E84 0800628C */  lw         $v0, 8($v1)
/* B9688 800C8E88 00000000 */  nop
/* B968C 800C8E8C FFFF4224 */  addiu      $v0, $v0, -1
/* B9690 800C8E90 DB230308 */  j          .L800C8F6C
/* B9694 800C8E94 080062AC */   sw        $v0, 8($v1)
.L800C8E98:
/* B9698 800C8E98 01006390 */  lbu        $v1, 1($v1)
/* B969C 800C8E9C 00000000 */  nop
/* B96A0 800C8EA0 60006230 */  andi       $v0, $v1, 0x60
/* B96A4 800C8EA4 0B004010 */  beqz       $v0, .L800C8ED4
/* B96A8 800C8EA8 40006230 */   andi      $v0, $v1, 0x40
/* B96AC 800C8EAC 02004010 */  beqz       $v0, .L800C8EB8
/* B96B0 800C8EB0 FAFF1424 */   addiu     $s4, $zero, -6
/* B96B4 800C8EB4 FBFF1424 */  addiu      $s4, $zero, -5
.L800C8EB8:
/* B96B8 800C8EB8 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B96BC 800C8EBC F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B96C0 800C8EC0 9C00628C */  lw         $v0, 0x9c($v1)
/* B96C4 800C8EC4 01001224 */  addiu      $s2, $zero, 1
/* B96C8 800C8EC8 21104300 */  addu       $v0, $v0, $v1
/* B96CC 800C8ECC DB230308 */  j          .L800C8F6C
/* B96D0 800C8ED0 1E0040A0 */   sb        $zero, 0x1e($v0)
.L800C8ED4:
/* B96D4 800C8ED4 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B96D8 800C8ED8 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B96DC 800C8EDC 0800628C */  lw         $v0, 8($v1)
/* B96E0 800C8EE0 00000000 */  nop
/* B96E4 800C8EE4 01004224 */  addiu      $v0, $v0, 1
/* B96E8 800C8EE8 080062AC */  sw         $v0, 8($v1)
/* B96EC 800C8EEC 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B96F0 800C8EF0 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B96F4 800C8EF4 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B96F8 800C8EF8 21202002 */  addu       $a0, $s1, $zero
/* B96FC 800C8EFC 0F80073C */  lui        $a3, %hi(D_800EE65C)
/* B9700 800C8F00 9C00068E */  lw         $a2, 0x9c($s0)
/* B9704 800C8F04 5CE6E724 */  addiu      $a3, $a3, %lo(D_800EE65C)
/* B9708 800C8F08 3428030C */  jal        FUN_800ca0d0
/* B970C 800C8F0C 1000A0AF */   sw        $zero, 0x10($sp)
.L800C8F10:
/* B9710 800C8F10 0800028E */  lw         $v0, 8($s0)
/* B9714 800C8F14 00000000 */  nop
/* B9718 800C8F18 01004224 */  addiu      $v0, $v0, 1
/* B971C 800C8F1C DB230308 */  j          .L800C8F6C
/* B9720 800C8F20 080002AE */   sw        $v0, 8($s0)
/* B9724 800C8F24 EE09030C */  jal        FUN_800c27b8
/* B9728 800C8F28 21202002 */   addu      $a0, $s1, $zero
/* B972C 800C8F2C 21184000 */  addu       $v1, $v0, $zero
/* B9730 800C8F30 FEFF0224 */  addiu      $v0, $zero, -2
/* B9734 800C8F34 0D006210 */  beq        $v1, $v0, .L800C8F6C
/* B9738 800C8F38 01000224 */   addiu     $v0, $zero, 1
/* B973C 800C8F3C 03006210 */  beq        $v1, $v0, .L800C8F4C
/* B9740 800C8F40 2080033C */   lui       $v1, %hi(D_801FB7F0)
.L800C8F44:
/* B9744 800C8F44 DB230308 */  j          .L800C8F6C
/* B9748 800C8F48 21904000 */   addu      $s2, $v0, $zero
.L800C8F4C:
/* B974C 800C8F4C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9750 800C8F50 0800628C */  lw         $v0, 8($v1)
/* B9754 800C8F54 00000000 */  nop
/* B9758 800C8F58 01004224 */  addiu      $v0, $v0, 1
/* B975C 800C8F5C 080062AC */  sw         $v0, 8($v1)
/* B9760 800C8F60 21980000 */  addu       $s3, $zero, $zero
/* B9764 800C8F64 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B9768 800C8F68 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C8F6C:
/* B976C 800C8F6C 03004012 */  beqz       $s2, .L800C8F7C
/* B9770 800C8F70 2080023C */   lui       $v0, %hi(D_801FB7FC)
/* B9774 800C8F74 21980000 */  addu       $s3, $zero, $zero
/* B9778 800C8F78 FCB754AC */  sw         $s4, %lo(D_801FB7FC)($v0)
.L800C8F7C:
/* B977C 800C8F7C 21106002 */  addu       $v0, $s3, $zero
/* B9780 800C8F80 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B9784 800C8F84 2800B48F */  lw         $s4, 0x28($sp)
/* B9788 800C8F88 2400B38F */  lw         $s3, 0x24($sp)
/* B978C 800C8F8C 2000B28F */  lw         $s2, 0x20($sp)
/* B9790 800C8F90 1C00B18F */  lw         $s1, 0x1c($sp)
/* B9794 800C8F94 1800B08F */  lw         $s0, 0x18($sp)
/* B9798 800C8F98 0800E003 */  jr         $ra
/* B979C 800C8F9C 3000BD27 */   addiu     $sp, $sp, 0x30
