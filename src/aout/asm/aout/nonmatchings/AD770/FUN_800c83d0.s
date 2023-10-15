.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c83d0
/* B8BD0 800C83D0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B8BD4 800C83D4 2400B3AF */  sw         $s3, 0x24($sp)
/* B8BD8 800C83D8 FFFF1324 */  addiu      $s3, $zero, -1
/* B8BDC 800C83DC 2000B2AF */  sw         $s2, 0x20($sp)
/* B8BE0 800C83E0 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B8BE4 800C83E4 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B8BE8 800C83E8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B8BEC 800C83EC 28005124 */  addiu      $s1, $v0, 0x28
/* B8BF0 800C83F0 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B8BF4 800C83F4 2800B4AF */  sw         $s4, 0x28($sp)
/* B8BF8 800C83F8 1800B0AF */  sw         $s0, 0x18($sp)
/* B8BFC 800C83FC 0800438C */  lw         $v1, 8($v0)
/* B8C00 800C8400 0400548C */  lw         $s4, 4($v0)
/* B8C04 800C8404 1000622C */  sltiu      $v0, $v1, 0x10
/* B8C08 800C8408 1E014010 */  beqz       $v0, .L800C8884
/* B8C0C 800C840C 21900000 */   addu      $s2, $zero, $zero
/* B8C10 800C8410 0180023C */  lui        $v0, %hi(D_800179F8)
/* B8C14 800C8414 F8794224 */  addiu      $v0, $v0, %lo(D_800179F8)
/* B8C18 800C8418 80180300 */  sll        $v1, $v1, 2
/* B8C1C 800C841C 21186200 */  addu       $v1, $v1, $v0
/* B8C20 800C8420 0000628C */  lw         $v0, ($v1)
/* B8C24 800C8424 00000000 */  nop
/* B8C28 800C8428 08004000 */  jr         $v0
/* B8C2C 800C842C 00000000 */   nop
/* B8C30 800C8430 2080023C */  lui        $v0, %hi(D_801FB7D8)
/* B8C34 800C8434 2080033C */  lui        $v1, %hi(D_801FB7E0)
/* B8C38 800C8438 D8B740AC */  sw         $zero, %lo(D_801FB7D8)($v0)
/* B8C3C 800C843C FFFF0224 */  addiu      $v0, $zero, -1
/* B8C40 800C8440 2080043C */  lui        $a0, %hi(D_801FB7F0)
/* B8C44 800C8444 F0B78424 */  addiu      $a0, $a0, %lo(D_801FB7F0)
/* B8C48 800C8448 E0B762AC */  sw         $v0, %lo(D_801FB7E0)($v1)
/* B8C4C 800C844C 2080023C */  lui        $v0, %hi(D_801FB7D4)
/* B8C50 800C8450 9800838C */  lw         $v1, 0x98($a0)
/* B8C54 800C8454 2080053C */  lui        $a1, 0x8020
/* B8C58 800C8458 D4B743AC */  sw         $v1, %lo(D_801FB7D4)($v0)
/* B8C5C 800C845C 9400828C */  lw         $v0, 0x94($a0)
/* B8C60 800C8460 0800838C */  lw         $v1, 8($a0)
/* B8C64 800C8464 07004230 */  andi       $v0, $v0, 7
/* B8C68 800C8468 01006324 */  addiu      $v1, $v1, 1
/* B8C6C 800C846C DCB7A2AC */  sw         $v0, -0x4824($a1)
/* B8C70 800C8470 080083AC */  sw         $v1, 8($a0)
/* B8C74 800C8474 2080023C */  lui        $v0, %hi(D_801FB7DC)
/* B8C78 800C8478 DCB7428C */  lw         $v0, %lo(D_801FB7DC)($v0)
/* B8C7C 800C847C 00000000 */  nop
/* B8C80 800C8480 08004014 */  bnez       $v0, .L800C84A4
/* B8C84 800C8484 21202002 */   addu      $a0, $s1, $zero
/* B8C88 800C8488 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8C8C 800C848C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8C90 800C8490 0800628C */  lw         $v0, 8($v1)
/* B8C94 800C8494 00000000 */  nop
/* B8C98 800C8498 04004224 */  addiu      $v0, $v0, 4
/* B8C9C 800C849C 21220308 */  j          .L800C8884
/* B8CA0 800C84A0 080062AC */   sw        $v0, 8($v1)
.L800C84A4:
/* B8CA4 800C84A4 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B8CA8 800C84A8 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B8CAC 800C84AC F0B71026 */  addiu      $s0, $s0, -0x4810
/* B8CB0 800C84B0 9C00068E */  lw         $a2, 0x9c($s0)
/* B8CB4 800C84B4 08000224 */  addiu      $v0, $zero, 8
/* B8CB8 800C84B8 1000A2AF */  sw         $v0, 0x10($sp)
/* B8CBC 800C84BC 0200023C */  lui        $v0, 2
/* B8CC0 800C84C0 1400A2AF */  sw         $v0, 0x14($sp)
/* B8CC4 800C84C4 9400078E */  lw         $a3, 0x94($s0)
/* B8CC8 800C84C8 F8FF0224 */  addiu      $v0, $zero, -8
/* B8CCC 800C84CC 2438E200 */  and        $a3, $a3, $v0
/* B8CD0 800C84D0 2080023C */  lui        $v0, %hi(D_801FB7E0)
/* B8CD4 800C84D4 D427030C */  jal        FUN_800c9f50
/* B8CD8 800C84D8 E0B747AC */   sw        $a3, %lo(D_801FB7E0)($v0)
/* B8CDC 800C84DC EC210308 */  j          .L800C87B0
/* B8CE0 800C84E0 00000000 */   nop
/* B8CE4 800C84E4 EE09030C */  jal        FUN_800c27b8
/* B8CE8 800C84E8 21202002 */   addu      $a0, $s1, $zero
/* B8CEC 800C84EC 21184000 */  addu       $v1, $v0, $zero
/* B8CF0 800C84F0 FEFF0224 */  addiu      $v0, $zero, -2
/* B8CF4 800C84F4 E3006210 */  beq        $v1, $v0, .L800C8884
/* B8CF8 800C84F8 01000224 */   addiu     $v0, $zero, 1
/* B8CFC 800C84FC B9006214 */  bne        $v1, $v0, .L800C87E4
/* B8D00 800C8500 00000000 */   nop
/* B8D04 800C8504 1C00238E */  lw         $v1, 0x1c($s1)
/* B8D08 800C8508 00000000 */  nop
/* B8D0C 800C850C 00006290 */  lbu        $v0, ($v1)
/* B8D10 800C8510 00000000 */  nop
/* B8D14 800C8514 78004230 */  andi       $v0, $v0, 0x78
/* B8D18 800C8518 BB004014 */  bnez       $v0, .L800C8808
/* B8D1C 800C851C 00000000 */   nop
/* B8D20 800C8520 01006390 */  lbu        $v1, 1($v1)
/* B8D24 800C8524 00000000 */  nop
/* B8D28 800C8528 60006230 */  andi       $v0, $v1, 0x60
/* B8D2C 800C852C 03004010 */  beqz       $v0, .L800C853C
/* B8D30 800C8530 40006230 */   andi      $v0, $v1, 0x40
/* B8D34 800C8534 0F220308 */  j          .L800C883C
/* B8D38 800C8538 FAFF1324 */   addiu     $s3, $zero, -6
.L800C853C:
/* B8D3C 800C853C 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8D40 800C8540 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8D44 800C8544 0800628C */  lw         $v0, 8($v1)
/* B8D48 800C8548 00000000 */  nop
/* B8D4C 800C854C 01004224 */  addiu      $v0, $v0, 1
/* B8D50 800C8550 080062AC */  sw         $v0, 8($v1)
/* B8D54 800C8554 2080053C */  lui        $a1, %hi(D_801FB7F0)
/* B8D58 800C8558 F0B7B024 */  addiu      $s0, $a1, %lo(D_801FB7F0)
/* B8D5C 800C855C 9400028E */  lw         $v0, 0x94($s0)
/* B8D60 800C8560 9800038E */  lw         $v1, 0x98($s0)
/* B8D64 800C8564 00000000 */  nop
/* B8D68 800C8568 21384300 */  addu       $a3, $v0, $v1
/* B8D6C 800C856C 0700E230 */  andi       $v0, $a3, 7
/* B8D70 800C8570 06004010 */  beqz       $v0, .L800C858C
/* B8D74 800C8574 2080023C */   lui       $v0, %hi(D_801FB7E0)
/* B8D78 800C8578 F8FF0924 */  addiu      $t1, $zero, -8
/* B8D7C 800C857C E0B7428C */  lw         $v0, %lo(D_801FB7E0)($v0)
/* B8D80 800C8580 2438E900 */  and        $a3, $a3, $t1
/* B8D84 800C8584 06004714 */  bne        $v0, $a3, .L800C85A0
/* B8D88 800C8588 21202002 */   addu      $a0, $s1, $zero
.L800C858C:
/* B8D8C 800C858C 0800028E */  lw         $v0, 8($s0)
/* B8D90 800C8590 00000000 */  nop
/* B8D94 800C8594 04004224 */  addiu      $v0, $v0, 4
/* B8D98 800C8598 21220308 */  j          .L800C8884
/* B8D9C 800C859C 080002AE */   sw        $v0, 8($s0)
.L800C85A0:
/* B8DA0 800C85A0 2080023C */  lui        $v0, 0x8020
/* B8DA4 800C85A4 9C00068E */  lw         $a2, 0x9c($s0)
/* B8DA8 800C85A8 9800088E */  lw         $t0, 0x98($s0)
/* B8DAC 800C85AC 08000324 */  addiu      $v1, $zero, 8
/* B8DB0 800C85B0 1000A3AF */  sw         $v1, 0x10($sp)
/* B8DB4 800C85B4 0200033C */  lui        $v1, 2
/* B8DB8 800C85B8 DCB7428C */  lw         $v0, -0x4824($v0)
/* B8DBC 800C85BC F0B7A58C */  lw         $a1, -0x4810($a1)
/* B8DC0 800C85C0 21104800 */  addu       $v0, $v0, $t0
/* B8DC4 800C85C4 24104900 */  and        $v0, $v0, $t1
/* B8DC8 800C85C8 21104300 */  addu       $v0, $v0, $v1
/* B8DCC 800C85CC D427030C */  jal        FUN_800c9f50
/* B8DD0 800C85D0 1400A2AF */   sw        $v0, 0x14($sp)
/* B8DD4 800C85D4 EC210308 */  j          .L800C87B0
/* B8DD8 800C85D8 00000000 */   nop
/* B8DDC 800C85DC EE09030C */  jal        FUN_800c27b8
/* B8DE0 800C85E0 21202002 */   addu      $a0, $s1, $zero
/* B8DE4 800C85E4 21184000 */  addu       $v1, $v0, $zero
/* B8DE8 800C85E8 FEFF0224 */  addiu      $v0, $zero, -2
/* B8DEC 800C85EC A5006210 */  beq        $v1, $v0, .L800C8884
/* B8DF0 800C85F0 01000224 */   addiu     $v0, $zero, 1
/* B8DF4 800C85F4 7B006214 */  bne        $v1, $v0, .L800C87E4
/* B8DF8 800C85F8 00000000 */   nop
/* B8DFC 800C85FC 1C00238E */  lw         $v1, 0x1c($s1)
/* B8E00 800C8600 00000000 */  nop
/* B8E04 800C8604 00006290 */  lbu        $v0, ($v1)
/* B8E08 800C8608 00000000 */  nop
/* B8E0C 800C860C 78004230 */  andi       $v0, $v0, 0x78
/* B8E10 800C8610 7D004014 */  bnez       $v0, .L800C8808
/* B8E14 800C8614 00000000 */   nop
/* B8E18 800C8618 01006390 */  lbu        $v1, 1($v1)
/* B8E1C 800C861C 00000000 */  nop
/* B8E20 800C8620 60006230 */  andi       $v0, $v1, 0x60
/* B8E24 800C8624 03004010 */  beqz       $v0, .L800C8634
/* B8E28 800C8628 40006230 */   andi      $v0, $v1, 0x40
/* B8E2C 800C862C 0F220308 */  j          .L800C883C
/* B8E30 800C8630 FAFF1324 */   addiu     $s3, $zero, -6
.L800C8634:
/* B8E34 800C8634 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8E38 800C8638 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8E3C 800C863C 0800628C */  lw         $v0, 8($v1)
/* B8E40 800C8640 00000000 */  nop
/* B8E44 800C8644 01004224 */  addiu      $v0, $v0, 1
/* B8E48 800C8648 080062AC */  sw         $v0, 8($v1)
/* B8E4C 800C864C 2080023C */  lui        $v0, %hi(D_801FB7D4)
/* B8E50 800C8650 2080053C */  lui        $a1, %hi(D_801FB7F0)
/* B8E54 800C8654 F0B7B024 */  addiu      $s0, $a1, %lo(D_801FB7F0)
/* B8E58 800C8658 D4B7428C */  lw         $v0, %lo(D_801FB7D4)($v0)
/* B8E5C 800C865C A000048E */  lw         $a0, 0xa0($s0)
/* B8E60 800C8660 2080033C */  lui        $v1, %hi(D_801FB7E4)
/* B8E64 800C8664 E4B762AC */  sw         $v0, %lo(D_801FB7E4)($v1)
/* B8E68 800C8668 2A108200 */  slt        $v0, $a0, $v0
/* B8E6C 800C866C 02004010 */  beqz       $v0, .L800C8678
/* B8E70 800C8670 00000000 */   nop
/* B8E74 800C8674 E4B764AC */  sw         $a0, -0x481c($v1)
.L800C8678:
/* B8E78 800C8678 21202002 */  addu       $a0, $s1, $zero
/* B8E7C 800C867C E4B7678C */  lw         $a3, -0x481c($v1)
/* B8E80 800C8680 2080033C */  lui        $v1, %hi(D_801FB7DC)
/* B8E84 800C8684 2080023C */  lui        $v0, %hi(D_801FB7D8)
/* B8E88 800C8688 0200063C */  lui        $a2, 2
/* B8E8C 800C868C F0B7A58C */  lw         $a1, -0x4810($a1)
/* B8E90 800C8690 D8B7488C */  lw         $t0, %lo(D_801FB7D8)($v0)
/* B8E94 800C8694 DCB7638C */  lw         $v1, %lo(D_801FB7DC)($v1)
/* B8E98 800C8698 9000028E */  lw         $v0, 0x90($s0)
/* B8E9C 800C869C 21300601 */  addu       $a2, $t0, $a2
/* B8EA0 800C86A0 21306600 */  addu       $a2, $v1, $a2
/* B8EA4 800C86A4 21104800 */  addu       $v0, $v0, $t0
/* B8EA8 800C86A8 9726030C */  jal        FUN_800c9a5c
/* B8EAC 800C86AC 1000A2AF */   sw        $v0, 0x10($sp)
/* B8EB0 800C86B0 EC210308 */  j          .L800C87B0
/* B8EB4 800C86B4 00000000 */   nop
/* B8EB8 800C86B8 EE09030C */  jal        FUN_800c27b8
/* B8EBC 800C86BC 21202002 */   addu      $a0, $s1, $zero
/* B8EC0 800C86C0 21184000 */  addu       $v1, $v0, $zero
/* B8EC4 800C86C4 FEFF0224 */  addiu      $v0, $zero, -2
/* B8EC8 800C86C8 6E006210 */  beq        $v1, $v0, .L800C8884
/* B8ECC 800C86CC 01000224 */   addiu     $v0, $zero, 1
/* B8ED0 800C86D0 44006214 */  bne        $v1, $v0, .L800C87E4
/* B8ED4 800C86D4 2080053C */   lui       $a1, %hi(D_801FB7D8)
/* B8ED8 800C86D8 2080033C */  lui        $v1, %hi(D_801FB7E4)
/* B8EDC 800C86DC 2080063C */  lui        $a2, %hi(D_801FB7D4)
/* B8EE0 800C86E0 D8B7A28C */  lw         $v0, %lo(D_801FB7D8)($a1)
/* B8EE4 800C86E4 E4B7648C */  lw         $a0, %lo(D_801FB7E4)($v1)
/* B8EE8 800C86E8 D4B7C38C */  lw         $v1, %lo(D_801FB7D4)($a2)
/* B8EEC 800C86EC 21104400 */  addu       $v0, $v0, $a0
/* B8EF0 800C86F0 23186400 */  subu       $v1, $v1, $a0
/* B8EF4 800C86F4 D8B7A2AC */  sw         $v0, -0x4828($a1)
/* B8EF8 800C86F8 4300601C */  bgtz       $v1, .L800C8808
/* B8EFC 800C86FC D4B7C3AC */   sw        $v1, -0x482c($a2)
/* B8F00 800C8700 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8F04 800C8704 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8F08 800C8708 0800628C */  lw         $v0, 8($v1)
/* B8F0C 800C870C 00000000 */  nop
/* B8F10 800C8710 01004224 */  addiu      $v0, $v0, 1
/* B8F14 800C8714 080062AC */  sw         $v0, 8($v1)
/* B8F18 800C8718 21202002 */  addu       $a0, $s1, $zero
/* B8F1C 800C871C 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B8F20 800C8720 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B8F24 800C8724 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B8F28 800C8728 0200023C */  lui        $v0, 2
/* B8F2C 800C872C 9C00068E */  lw         $a2, 0x9c($s0)
/* B8F30 800C8730 F8FF0824 */  addiu      $t0, $zero, -8
/* B8F34 800C8734 1400A2AF */  sw         $v0, 0x14($sp)
/* B8F38 800C8738 2080023C */  lui        $v0, %hi(D_801FB7DC)
/* B8F3C 800C873C 9400078E */  lw         $a3, 0x94($s0)
/* B8F40 800C8740 DCB7428C */  lw         $v0, %lo(D_801FB7DC)($v0)
/* B8F44 800C8744 9800038E */  lw         $v1, 0x98($s0)
/* B8F48 800C8748 2438E800 */  and        $a3, $a3, $t0
/* B8F4C 800C874C 21104300 */  addu       $v0, $v0, $v1
/* B8F50 800C8750 07004224 */  addiu      $v0, $v0, 7
/* B8F54 800C8754 24104800 */  and        $v0, $v0, $t0
/* B8F58 800C8758 0428030C */  jal        FUN_800ca010
/* B8F5C 800C875C 1000A2AF */   sw        $v0, 0x10($sp)
/* B8F60 800C8760 EC210308 */  j          .L800C87B0
/* B8F64 800C8764 00000000 */   nop
/* B8F68 800C8768 EE09030C */  jal        FUN_800c27b8
/* B8F6C 800C876C 21202002 */   addu      $a0, $s1, $zero
/* B8F70 800C8770 21184000 */  addu       $v1, $v0, $zero
/* B8F74 800C8774 FEFF0224 */  addiu      $v0, $zero, -2
/* B8F78 800C8778 42006210 */  beq        $v1, $v0, .L800C8884
/* B8F7C 800C877C 01000224 */   addiu     $v0, $zero, 1
/* B8F80 800C8780 18006214 */  bne        $v1, $v0, .L800C87E4
/* B8F84 800C8784 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B8F88 800C8788 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8F8C 800C878C 0800628C */  lw         $v0, 8($v1)
/* B8F90 800C8790 00000000 */  nop
/* B8F94 800C8794 01004224 */  addiu      $v0, $v0, 1
/* B8F98 800C8798 080062AC */  sw         $v0, 8($v1)
/* B8F9C 800C879C 21202002 */  addu       $a0, $s1, $zero
/* B8FA0 800C87A0 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B8FA4 800C87A4 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B8FA8 800C87A8 8A27030C */  jal        FUN_800c9e28
/* B8FAC 800C87AC F0B71026 */   addiu     $s0, $s0, -0x4810
.L800C87B0:
/* B8FB0 800C87B0 0800028E */  lw         $v0, 8($s0)
/* B8FB4 800C87B4 00000000 */  nop
/* B8FB8 800C87B8 01004224 */  addiu      $v0, $v0, 1
/* B8FBC 800C87BC 21220308 */  j          .L800C8884
/* B8FC0 800C87C0 080002AE */   sw        $v0, 8($s0)
/* B8FC4 800C87C4 EE09030C */  jal        FUN_800c27b8
/* B8FC8 800C87C8 21202002 */   addu      $a0, $s1, $zero
/* B8FCC 800C87CC 21184000 */  addu       $v1, $v0, $zero
/* B8FD0 800C87D0 FEFF0224 */  addiu      $v0, $zero, -2
/* B8FD4 800C87D4 2B006210 */  beq        $v1, $v0, .L800C8884
/* B8FD8 800C87D8 01000224 */   addiu     $v0, $zero, 1
/* B8FDC 800C87DC 03006210 */  beq        $v1, $v0, .L800C87EC
/* B8FE0 800C87E0 00000000 */   nop
.L800C87E4:
/* B8FE4 800C87E4 21220308 */  j          .L800C8884
/* B8FE8 800C87E8 21904000 */   addu      $s2, $v0, $zero
.L800C87EC:
/* B8FEC 800C87EC 1C00248E */  lw         $a0, 0x1c($s1)
/* B8FF0 800C87F0 00000000 */  nop
/* B8FF4 800C87F4 00008290 */  lbu        $v0, ($a0)
/* B8FF8 800C87F8 00000000 */  nop
/* B8FFC 800C87FC 78004230 */  andi       $v0, $v0, 0x78
/* B9000 800C8800 08004010 */  beqz       $v0, .L800C8824
/* B9004 800C8804 00000000 */   nop
.L800C8808:
/* B9008 800C8808 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B900C 800C880C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9010 800C8810 0800628C */  lw         $v0, 8($v1)
/* B9014 800C8814 00000000 */  nop
/* B9018 800C8818 FFFF4224 */  addiu      $v0, $v0, -1
/* B901C 800C881C 21220308 */  j          .L800C8884
/* B9020 800C8820 080062AC */   sw        $v0, 8($v1)
.L800C8824:
/* B9024 800C8824 01008490 */  lbu        $a0, 1($a0)
/* B9028 800C8828 00000000 */  nop
/* B902C 800C882C 60008230 */  andi       $v0, $a0, 0x60
/* B9030 800C8830 0B004010 */  beqz       $v0, .L800C8860
/* B9034 800C8834 40008230 */   andi      $v0, $a0, 0x40
/* B9038 800C8838 FAFF1324 */  addiu      $s3, $zero, -6
.L800C883C:
/* B903C 800C883C 02004010 */  beqz       $v0, .L800C8848
/* B9040 800C8840 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B9044 800C8844 FBFF1324 */  addiu      $s3, $zero, -5
.L800C8848:
/* B9048 800C8848 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B904C 800C884C 9C00628C */  lw         $v0, 0x9c($v1)
/* B9050 800C8850 01001224 */  addiu      $s2, $zero, 1
/* B9054 800C8854 21104300 */  addu       $v0, $v0, $v1
/* B9058 800C8858 21220308 */  j          .L800C8884
/* B905C 800C885C 1E0040A0 */   sb        $zero, 0x1e($v0)
.L800C8860:
/* B9060 800C8860 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9064 800C8864 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B9068 800C8868 0800628C */  lw         $v0, 8($v1)
/* B906C 800C886C 00000000 */  nop
/* B9070 800C8870 01004224 */  addiu      $v0, $v0, 1
/* B9074 800C8874 080062AC */  sw         $v0, 8($v1)
/* B9078 800C8878 21A00000 */  addu       $s4, $zero, $zero
/* B907C 800C887C 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B9080 800C8880 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C8884:
/* B9084 800C8884 03004012 */  beqz       $s2, .L800C8894
/* B9088 800C8888 2080023C */   lui       $v0, %hi(D_801FB7FC)
/* B908C 800C888C 21A00000 */  addu       $s4, $zero, $zero
/* B9090 800C8890 FCB753AC */  sw         $s3, %lo(D_801FB7FC)($v0)
.L800C8894:
/* B9094 800C8894 21108002 */  addu       $v0, $s4, $zero
/* B9098 800C8898 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B909C 800C889C 2800B48F */  lw         $s4, 0x28($sp)
/* B90A0 800C88A0 2400B38F */  lw         $s3, 0x24($sp)
/* B90A4 800C88A4 2000B28F */  lw         $s2, 0x20($sp)
/* B90A8 800C88A8 1C00B18F */  lw         $s1, 0x1c($sp)
/* B90AC 800C88AC 1800B08F */  lw         $s0, 0x18($sp)
/* B90B0 800C88B0 0800E003 */  jr         $ra
/* B90B4 800C88B4 3000BD27 */   addiu     $sp, $sp, 0x30
