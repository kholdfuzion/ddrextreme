.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9c84
/* 9A484 800A9C84 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 9A488 800A9C88 1C80023C */  lui        $v0, %hi(D_801C3E88)
/* 9A48C 800A9C8C 883E4324 */  addiu      $v1, $v0, %lo(D_801C3E88)
/* 9A490 800A9C90 3400BFAF */  sw         $ra, 0x34($sp)
/* 9A494 800A9C94 3000B2AF */  sw         $s2, 0x30($sp)
/* 9A498 800A9C98 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 9A49C 800A9C9C 2800B0AF */  sw         $s0, 0x28($sp)
/* 9A4A0 800A9CA0 05006390 */  lbu        $v1, 5($v1)
/* 9A4A4 800A9CA4 00000000 */  nop
/* 9A4A8 800A9CA8 0900642C */  sltiu      $a0, $v1, 9
/* 9A4AC 800A9CAC EC008010 */  beqz       $a0, .L800AA060
/* 9A4B0 800A9CB0 21904000 */   addu      $s2, $v0, $zero
/* 9A4B4 800A9CB4 0180023C */  lui        $v0, %hi(D_80016D08)
/* 9A4B8 800A9CB8 086D4224 */  addiu      $v0, $v0, %lo(D_80016D08)
/* 9A4BC 800A9CBC 80180300 */  sll        $v1, $v1, 2
/* 9A4C0 800A9CC0 21186200 */  addu       $v1, $v1, $v0
/* 9A4C4 800A9CC4 0000648C */  lw         $a0, ($v1)
/* 9A4C8 800A9CC8 00000000 */  nop
/* 9A4CC 800A9CCC 08008000 */  jr         $a0
/* 9A4D0 800A9CD0 00000000 */   nop
/* 9A4D4 800A9CD4 883E4326 */  addiu      $v1, $s2, 0x3e88
/* 9A4D8 800A9CD8 04006290 */  lbu        $v0, 4($v1)
/* 9A4DC 800A9CDC 00000000 */  nop
/* 9A4E0 800A9CE0 03004010 */  beqz       $v0, .L800A9CF0
/* 9A4E4 800A9CE4 01000224 */   addiu     $v0, $zero, 1
/* 9A4E8 800A9CE8 19A80208 */  j          .L800AA064
/* 9A4EC 800A9CEC 050062A0 */   sb        $v0, 5($v1)
.L800A9CF0:
/* 9A4F0 800A9CF0 07000224 */  addiu      $v0, $zero, 7
/* 9A4F4 800A9CF4 18A80208 */  j          .L800AA060
/* 9A4F8 800A9CF8 050062A0 */   sb        $v0, 5($v1)
/* 9A4FC 800A9CFC 1C80043C */  lui        $a0, %hi(D_801C3FB8)
/* 9A500 800A9D00 2319030C */  jal        FUN_800c648c
/* 9A504 800A9D04 B83F8424 */   addiu     $a0, $a0, %lo(D_801C3FB8)
/* 9A508 800A9D08 883E4326 */  addiu      $v1, $s2, 0x3e88
/* 9A50C 800A9D0C 080062AC */  sw         $v0, 8($v1)
/* 9A510 800A9D10 02000224 */  addiu      $v0, $zero, 2
/* 9A514 800A9D14 19A80208 */  j          .L800AA064
/* 9A518 800A9D18 050062A0 */   sb        $v0, 5($v1)
/* 9A51C 800A9D1C 883E4326 */  addiu      $v1, $s2, 0x3e88
/* 9A520 800A9D20 03000224 */  addiu      $v0, $zero, 3
/* 9A524 800A9D24 19A80208 */  j          .L800AA064
/* 9A528 800A9D28 050062A0 */   sb        $v0, 5($v1)
/* 9A52C 800A9D2C 883E4326 */  addiu      $v1, $s2, 0x3e88
/* 9A530 800A9D30 0800628C */  lw         $v0, 8($v1)
/* 9A534 800A9D34 00000000 */  nop
/* 9A538 800A9D38 04004014 */  bnez       $v0, .L800A9D4C
/* 9A53C 800A9D3C 04000224 */   addiu     $v0, $zero, 4
/* 9A540 800A9D40 08000224 */  addiu      $v0, $zero, 8
/* 9A544 800A9D44 19A80208 */  j          .L800AA064
/* 9A548 800A9D48 050062A0 */   sb        $v0, 5($v1)
.L800A9D4C:
/* 9A54C 800A9D4C BBAE020C */  jal        FUN_800abaec
/* 9A550 800A9D50 050062A0 */   sb        $v0, 5($v1)
/* 9A554 800A9D54 19A80208 */  j          .L800AA064
/* 9A558 800A9D58 883E4326 */   addiu     $v1, $s2, 0x3e88
/* 9A55C 800A9D5C BDAE020C */  jal        FUN_800abaf4
/* 9A560 800A9D60 883E5026 */   addiu     $s0, $s2, 0x3e88
/* 9A564 800A9D64 0800028E */  lw         $v0, 8($s0)
/* 9A568 800A9D68 1800038E */  lw         $v1, 0x18($s0)
/* 9A56C 800A9D6C 00000000 */  nop
/* 9A570 800A9D70 04004314 */  bne        $v0, $v1, .L800A9D84
/* 9A574 800A9D74 1E006228 */   slti      $v0, $v1, 0x1e
/* 9A578 800A9D78 08000224 */  addiu      $v0, $zero, 8
/* 9A57C 800A9D7C 18A80208 */  j          .L800AA060
/* 9A580 800A9D80 050002A2 */   sb        $v0, 5($s0)
.L800A9D84:
/* 9A584 800A9D84 03004014 */  bnez       $v0, .L800A9D94
/* 9A588 800A9D88 07000224 */   addiu     $v0, $zero, 7
/* 9A58C 800A9D8C 18A80208 */  j          .L800AA060
/* 9A590 800A9D90 050002A2 */   sb        $v0, 5($s0)
.L800A9D94:
/* 9A594 800A9D94 29A8020C */  jal        FUN_800aa0a4
/* 9A598 800A9D98 00000000 */   nop
/* 9A59C 800A9D9C 33004014 */  bnez       $v0, .L800A9E6C
/* 9A5A0 800A9DA0 05000524 */   addiu     $a1, $zero, 5
/* 9A5A4 800A9DA4 1C80043C */  lui        $a0, %hi(D_801C3FB8)
/* 9A5A8 800A9DA8 1800038E */  lw         $v1, 0x18($s0)
/* 9A5AC 800A9DAC B83F8424 */  addiu      $a0, $a0, %lo(D_801C3FB8)
/* 9A5B0 800A9DB0 C0100300 */  sll        $v0, $v1, 3
/* 9A5B4 800A9DB4 23104300 */  subu       $v0, $v0, $v1
/* 9A5B8 800A9DB8 80100200 */  sll        $v0, $v0, 2
/* 9A5BC 800A9DBC 7F10030C */  jal        FUN_800c41fc
/* 9A5C0 800A9DC0 21204400 */   addu      $a0, $v0, $a0
/* 9A5C4 800A9DC4 29004004 */  bltz       $v0, .L800A9E6C
/* 9A5C8 800A9DC8 883E42AE */   sw        $v0, 0x3e88($s2)
/* 9A5CC 800A9DCC 21204000 */  addu       $a0, $v0, $zero
/* 9A5D0 800A9DD0 00020524 */  addiu      $a1, $zero, 0x200
/* 9A5D4 800A9DD4 F118030C */  jal        FUN_800c63c4
/* 9A5D8 800A9DD8 21300000 */   addu      $a2, $zero, $zero
/* 9A5DC 800A9DDC 00020324 */  addiu      $v1, $zero, 0x200
/* 9A5E0 800A9DE0 06004314 */  bne        $v0, $v1, .L800A9DFC
/* 9A5E4 800A9DE4 1C000526 */   addiu     $a1, $s0, 0x1c
/* 9A5E8 800A9DE8 883E448E */  lw         $a0, 0x3e88($s2)
/* 9A5EC 800A9DEC 8318030C */  jal        FUN_800c620c
/* 9A5F0 800A9DF0 00010624 */   addiu     $a2, $zero, 0x100
/* 9A5F4 800A9DF4 0A004104 */  bgez       $v0, .L800A9E20
/* 9A5F8 800A9DF8 05000224 */   addiu     $v0, $zero, 5
.L800A9DFC:
/* 9A5FC 800A9DFC 883E448E */  lw         $a0, 0x3e88($s2)
/* 9A600 800A9E00 6618030C */  jal        FUN_800c6198
/* 9A604 800A9E04 00000000 */   nop
/* 9A608 800A9E08 1800038E */  lw         $v1, 0x18($s0)
/* 9A60C 800A9E0C FFFF0224 */  addiu      $v0, $zero, -1
/* 9A610 800A9E10 883E42AE */  sw         $v0, 0x3e88($s2)
/* 9A614 800A9E14 01006324 */  addiu      $v1, $v1, 1
/* 9A618 800A9E18 18A80208 */  j          .L800AA060
/* 9A61C 800A9E1C 180003AE */   sw        $v1, 0x18($s0)
.L800A9E20:
/* 9A620 800A9E20 18A80208 */  j          .L800AA060
/* 9A624 800A9E24 050002A2 */   sb        $v0, 5($s0)
/* 9A628 800A9E28 883E448E */  lw         $a0, 0x3e88($s2)
/* 9A62C 800A9E2C 7A19030C */  jal        FUN_800c65e8
/* 9A630 800A9E30 883E5026 */   addiu     $s0, $s2, 0x3e88
/* 9A634 800A9E34 21184000 */  addu       $v1, $v0, $zero
/* 9A638 800A9E38 FFFF1124 */  addiu      $s1, $zero, -1
/* 9A63C 800A9E3C 0B007110 */  beq        $v1, $s1, .L800A9E6C
/* 9A640 800A9E40 00000000 */   nop
/* 9A644 800A9E44 05006104 */  bgez       $v1, .L800A9E5C
/* 9A648 800A9E48 FEFF0224 */   addiu     $v0, $zero, -2
/* 9A64C 800A9E4C 84006210 */  beq        $v1, $v0, .L800AA060
/* 9A650 800A9E50 00000000 */   nop
/* 9A654 800A9E54 A7A70208 */  j          .L800A9E9C
/* 9A658 800A9E58 00000000 */   nop
.L800A9E5C:
/* 9A65C 800A9E5C 08006010 */  beqz       $v1, .L800A9E80
/* 9A660 800A9E60 00000000 */   nop
/* 9A664 800A9E64 A7A70208 */  j          .L800A9E9C
/* 9A668 800A9E68 00000000 */   nop
.L800A9E6C:
/* 9A66C 800A9E6C 1800028E */  lw         $v0, 0x18($s0)
/* 9A670 800A9E70 00000000 */  nop
/* 9A674 800A9E74 01004224 */  addiu      $v0, $v0, 1
/* 9A678 800A9E78 18A80208 */  j          .L800AA060
/* 9A67C 800A9E7C 180002AE */   sw        $v0, 0x18($s0)
.L800A9E80:
/* 9A680 800A9E80 883E448E */  lw         $a0, 0x3e88($s2)
/* 9A684 800A9E84 6618030C */  jal        FUN_800c6198
/* 9A688 800A9E88 00000000 */   nop
/* 9A68C 800A9E8C 06000224 */  addiu      $v0, $zero, 6
/* 9A690 800A9E90 883E51AE */  sw         $s1, 0x3e88($s2)
/* 9A694 800A9E94 18A80208 */  j          .L800AA060
/* 9A698 800A9E98 050002A2 */   sb        $v0, 5($s0)
.L800A9E9C:
/* 9A69C 800A9E9C 71006018 */  blez       $v1, .L800AA064
/* 9A6A0 800A9EA0 883E4326 */   addiu     $v1, $s2, 0x3e88
/* 9A6A4 800A9EA4 883E448E */  lw         $a0, 0x3e88($s2)
/* 9A6A8 800A9EA8 6618030C */  jal        FUN_800c6198
/* 9A6AC 800A9EAC 00000000 */   nop
/* 9A6B0 800A9EB0 FFFF0324 */  addiu      $v1, $zero, -1
/* 9A6B4 800A9EB4 883E4426 */  addiu      $a0, $s2, 0x3e88
/* 9A6B8 800A9EB8 06000224 */  addiu      $v0, $zero, 6
/* 9A6BC 800A9EBC 883E43AE */  sw         $v1, 0x3e88($s2)
/* 9A6C0 800A9EC0 18A80208 */  j          .L800AA060
/* 9A6C4 800A9EC4 050082A0 */   sb        $v0, 5($a0)
/* 9A6C8 800A9EC8 B7A8020C */  jal        FUN_800aa2dc
/* 9A6CC 800A9ECC 00000000 */   nop
/* 9A6D0 800A9ED0 53004014 */  bnez       $v0, .L800AA020
/* 9A6D4 800A9ED4 883E4226 */   addiu     $v0, $s2, 0x3e88
/* 9A6D8 800A9ED8 21200000 */  addu       $a0, $zero, $zero
/* 9A6DC 800A9EDC 883E5026 */  addiu      $s0, $s2, 0x3e88
/* 9A6E0 800A9EE0 18000382 */  lb         $v1, 0x18($s0)
/* 9A6E4 800A9EE4 1C000226 */  addiu      $v0, $s0, 0x1c
/* 9A6E8 800A9EE8 2000A2AF */  sw         $v0, 0x20($sp)
/* 9A6EC 800A9EEC 1C80023C */  lui        $v0, %hi(D_801C3FB8)
/* 9A6F0 800A9EF0 B83F4224 */  addiu      $v0, $v0, %lo(D_801C3FB8)
/* 9A6F4 800A9EF4 1C80073C */  lui        $a3, %hi(D_801C4308)
/* 9A6F8 800A9EF8 0843F124 */  addiu      $s1, $a3, %lo(D_801C4308)
/* 9A6FC 800A9EFC 2400A3AF */  sw         $v1, 0x24($sp)
/* 9A700 800A9F00 1800058E */  lw         $a1, 0x18($s0)
/* 9A704 800A9F04 0C00088E */  lw         $t0, 0xc($s0)
/* 9A708 800A9F08 C0180500 */  sll        $v1, $a1, 3
/* 9A70C 800A9F0C 23186500 */  subu       $v1, $v1, $a1
/* 9A710 800A9F10 80180300 */  sll        $v1, $v1, 2
/* 9A714 800A9F14 21186200 */  addu       $v1, $v1, $v0
/* 9A718 800A9F18 C0100800 */  sll        $v0, $t0, 3
/* 9A71C 800A9F1C 23104800 */  subu       $v0, $v0, $t0
/* 9A720 800A9F20 80100200 */  sll        $v0, $v0, 2
/* 9A724 800A9F24 21105100 */  addu       $v0, $v0, $s1
/* 9A728 800A9F28 00006C8C */  lw         $t4, ($v1)
/* 9A72C 800A9F2C 04006D8C */  lw         $t5, 4($v1)
/* 9A730 800A9F30 0800678C */  lw         $a3, 8($v1)
/* 9A734 800A9F34 0C00688C */  lw         $t0, 0xc($v1)
/* 9A738 800A9F38 1000698C */  lw         $t1, 0x10($v1)
/* 9A73C 800A9F3C 14006A8C */  lw         $t2, 0x14($v1)
/* 9A740 800A9F40 18006B8C */  lw         $t3, 0x18($v1)
/* 9A744 800A9F44 21288001 */  addu       $a1, $t4, $zero
/* 9A748 800A9F48 2130A001 */  addu       $a2, $t5, $zero
/* 9A74C 800A9F4C 00004CAC */  sw         $t4, ($v0)
/* 9A750 800A9F50 04004DAC */  sw         $t5, 4($v0)
/* 9A754 800A9F54 080047AC */  sw         $a3, 8($v0)
/* 9A758 800A9F58 0C0048AC */  sw         $t0, 0xc($v0)
/* 9A75C 800A9F5C 100049AC */  sw         $t1, 0x10($v0)
/* 9A760 800A9F60 14004AAC */  sw         $t2, 0x14($v0)
/* 9A764 800A9F64 18004BAC */  sw         $t3, 0x18($v0)
/* 9A768 800A9F68 1000A8AF */  sw         $t0, 0x10($sp)
/* 9A76C 800A9F6C 1400A9AF */  sw         $t1, 0x14($sp)
/* 9A770 800A9F70 1800AAAF */  sw         $t2, 0x18($sp)
/* 9A774 800A9F74 EFA8020C */  jal        FUN_800aa3bc
/* 9A778 800A9F78 1C00ABAF */   sw        $t3, 0x1c($sp)
/* 9A77C 800A9F7C 0B004104 */  bgez       $v0, .L800A9FAC
/* 9A780 800A9F80 1C80023C */   lui       $v0, 0x801c
/* 9A784 800A9F84 21280000 */  addu       $a1, $zero, $zero
/* 9A788 800A9F88 0C00028E */  lw         $v0, 0xc($s0)
/* 9A78C 800A9F8C 1C000624 */  addiu      $a2, $zero, 0x1c
/* 9A790 800A9F90 C0200200 */  sll        $a0, $v0, 3
/* 9A794 800A9F94 23208200 */  subu       $a0, $a0, $v0
/* 9A798 800A9F98 80200400 */  sll        $a0, $a0, 2
/* 9A79C 800A9F9C F6A2000C */  jal        memset
/* 9A7A0 800A9FA0 21209100 */   addu      $a0, $a0, $s1
/* 9A7A4 800A9FA4 08A80208 */  j          .L800AA020
/* 9A7A8 800A9FA8 883E4226 */   addiu     $v0, $s2, 0x3e88
.L800A9FAC:
/* 9A7AC 800A9FAC 0C00048E */  lw         $a0, 0xc($s0)
/* 9A7B0 800A9FB0 B8FB4224 */  addiu      $v0, $v0, -0x448
/* 9A7B4 800A9FB4 40180400 */  sll        $v1, $a0, 1
/* 9A7B8 800A9FB8 21186400 */  addu       $v1, $v1, $a0
/* 9A7BC 800A9FBC C0180300 */  sll        $v1, $v1, 3
/* 9A7C0 800A9FC0 21186200 */  addu       $v1, $v1, $v0
/* 9A7C4 800A9FC4 0F006380 */  lb         $v1, 0xf($v1)
/* 9A7C8 800A9FC8 00000000 */  nop
/* 9A7CC 800A9FCC 03006010 */  beqz       $v1, .L800A9FDC
/* 9A7D0 800A9FD0 01000224 */   addiu     $v0, $zero, 1
/* 9A7D4 800A9FD4 06006214 */  bne        $v1, $v0, .L800A9FF0
/* 9A7D8 800A9FD8 02000224 */   addiu     $v0, $zero, 2
.L800A9FDC:
/* 9A7DC 800A9FDC 1000028E */  lw         $v0, 0x10($s0)
/* 9A7E0 800A9FE0 00000000 */  nop
/* 9A7E4 800A9FE4 01004224 */  addiu      $v0, $v0, 1
/* 9A7E8 800A9FE8 02A80208 */  j          .L800AA008
/* 9A7EC 800A9FEC 100002AE */   sw        $v0, 0x10($s0)
.L800A9FF0:
/* 9A7F0 800A9FF0 06006214 */  bne        $v1, $v0, .L800AA00C
/* 9A7F4 800A9FF4 883E4326 */   addiu     $v1, $s2, 0x3e88
/* 9A7F8 800A9FF8 1400028E */  lw         $v0, 0x14($s0)
/* 9A7FC 800A9FFC 00000000 */  nop
/* 9A800 800AA000 01004224 */  addiu      $v0, $v0, 1
/* 9A804 800AA004 140002AE */  sw         $v0, 0x14($s0)
.L800AA008:
/* 9A808 800AA008 883E4326 */  addiu      $v1, $s2, 0x3e88
.L800AA00C:
/* 9A80C 800AA00C 0C00628C */  lw         $v0, 0xc($v1)
/* 9A810 800AA010 00000000 */  nop
/* 9A814 800AA014 01004224 */  addiu      $v0, $v0, 1
/* 9A818 800AA018 0C0062AC */  sw         $v0, 0xc($v1)
/* 9A81C 800AA01C 883E4226 */  addiu      $v0, $s2, 0x3e88
.L800AA020:
/* 9A820 800AA020 1800438C */  lw         $v1, 0x18($v0)
/* 9A824 800AA024 04000424 */  addiu      $a0, $zero, 4
/* 9A828 800AA028 050044A0 */  sb         $a0, 5($v0)
/* 9A82C 800AA02C 01006324 */  addiu      $v1, $v1, 1
/* 9A830 800AA030 18A80208 */  j          .L800AA060
/* 9A834 800AA034 180043AC */   sw        $v1, 0x18($v0)
/* 9A838 800AA038 883E448E */  lw         $a0, 0x3e88($s2)
/* 9A83C 800AA03C FFFF0224 */  addiu      $v0, $zero, -1
/* 9A840 800AA040 12008210 */  beq        $a0, $v0, .L800AA08C
/* 9A844 800AA044 00000000 */   nop
/* 9A848 800AA048 6618030C */  jal        FUN_800c6198
/* 9A84C 800AA04C 00000000 */   nop
/* 9A850 800AA050 23A80208 */  j          .L800AA08C
/* 9A854 800AA054 FFFF0224 */   addiu     $v0, $zero, -1
/* 9A858 800AA058 23A80208 */  j          .L800AA08C
/* 9A85C 800AA05C 01000224 */   addiu     $v0, $zero, 1
.L800AA060:
/* 9A860 800AA060 883E4326 */  addiu      $v1, $s2, 0x3e88
.L800AA064:
/* 9A864 800AA064 2001628C */  lw         $v0, 0x120($v1)
/* 9A868 800AA068 00000000 */  nop
/* 9A86C 800AA06C 01004224 */  addiu      $v0, $v0, 1
/* 9A870 800AA070 200162AC */  sw         $v0, 0x120($v1)
/* 9A874 800AA074 110E4228 */  slti       $v0, $v0, 0xe11
/* 9A878 800AA078 04004014 */  bnez       $v0, .L800AA08C
/* 9A87C 800AA07C 21100000 */   addu      $v0, $zero, $zero
/* 9A880 800AA080 A7AE020C */  jal        FUN_800aba9c
/* 9A884 800AA084 00000000 */   nop
/* 9A888 800AA088 21100000 */  addu       $v0, $zero, $zero
.L800AA08C:
/* 9A88C 800AA08C 3400BF8F */  lw         $ra, 0x34($sp)
/* 9A890 800AA090 3000B28F */  lw         $s2, 0x30($sp)
/* 9A894 800AA094 2C00B18F */  lw         $s1, 0x2c($sp)
/* 9A898 800AA098 2800B08F */  lw         $s0, 0x28($sp)
/* 9A89C 800AA09C 0800E003 */  jr         $ra
/* 9A8A0 800AA0A0 3800BD27 */   addiu     $sp, $sp, 0x38
