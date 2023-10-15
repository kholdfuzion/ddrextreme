.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c73e4
/* B7BE4 800C73E4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B7BE8 800C73E8 1800B0AF */  sw         $s0, 0x18($sp)
/* B7BEC 800C73EC 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B7BF0 800C73F0 F0B71026 */  addiu      $s0, $s0, %lo(D_801FB7F0)
/* B7BF4 800C73F4 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B7BF8 800C73F8 2800B4AF */  sw         $s4, 0x28($sp)
/* B7BFC 800C73FC 2400B3AF */  sw         $s3, 0x24($sp)
/* B7C00 800C7400 2000B2AF */  sw         $s2, 0x20($sp)
/* B7C04 800C7404 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B7C08 800C7408 0400148E */  lw         $s4, 4($s0)
/* B7C0C 800C740C CD6B000C */  jal        VSync
/* B7C10 800C7410 FFFF0424 */   addiu     $a0, $zero, -1
/* B7C14 800C7414 21980000 */  addu       $s3, $zero, $zero
/* B7C18 800C7418 2080033C */  lui        $v1, %hi(D_801FB7A8)
/* B7C1C 800C741C A8B762AC */  sw         $v0, %lo(D_801FB7A8)($v1)
/* B7C20 800C7420 0800038E */  lw         $v1, 8($s0)
/* B7C24 800C7424 00000000 */  nop
/* B7C28 800C7428 0C00622C */  sltiu      $v0, $v1, 0xc
/* B7C2C 800C742C F7004010 */  beqz       $v0, .L800C780C
/* B7C30 800C7430 28001026 */   addiu     $s0, $s0, 0x28
/* B7C34 800C7434 0180023C */  lui        $v0, %hi(D_80017948)
/* B7C38 800C7438 48794224 */  addiu      $v0, $v0, %lo(D_80017948)
/* B7C3C 800C743C 80180300 */  sll        $v1, $v1, 2
/* B7C40 800C7440 21186200 */  addu       $v1, $v1, $v0
/* B7C44 800C7444 0000628C */  lw         $v0, ($v1)
/* B7C48 800C7448 00000000 */  nop
/* B7C4C 800C744C 08004000 */  jr         $v0
/* B7C50 800C7450 00000000 */   nop
/* B7C54 800C7454 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B7C58 800C7458 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B7C5C 800C745C 0800448C */  lw         $a0, 8($v0)
/* B7C60 800C7460 2080033C */  lui        $v1, %hi(D_801FB790)
/* B7C64 800C7464 90B760AC */  sw         $zero, %lo(D_801FB790)($v1)
/* B7C68 800C7468 A40040AC */  sw         $zero, 0xa4($v0)
/* B7C6C 800C746C 01008424 */  addiu      $a0, $a0, 1
/* B7C70 800C7470 031E0308 */  j          .L800C780C
/* B7C74 800C7474 080044AC */   sw        $a0, 8($v0)
/* B7C78 800C7478 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B7C7C 800C747C F0B75124 */  addiu      $s1, $v0, %lo(D_801FB7F0)
/* B7C80 800C7480 2080123C */  lui        $s2, %hi(D_801FB790)
/* B7C84 800C7484 90B7448E */  lw         $a0, %lo(D_801FB790)($s2)
/* B7C88 800C7488 1800228E */  lw         $v0, 0x18($s1)
/* B7C8C 800C748C 08008324 */  addiu      $v1, $a0, 8
/* B7C90 800C7490 2B104300 */  sltu       $v0, $v0, $v1
/* B7C94 800C7494 19004014 */  bnez       $v0, .L800C74FC
/* B7C98 800C7498 00000000 */   nop
/* B7C9C 800C749C 1400308E */  lw         $s0, 0x14($s1)
/* B7CA0 800C74A0 00000000 */  nop
/* B7CA4 800C74A4 21800402 */  addu       $s0, $s0, $a0
/* B7CA8 800C74A8 8226030C */  jal        FUN_800c9a08
/* B7CAC 800C74AC 21200002 */   addu      $a0, $s0, $zero
/* B7CB0 800C74B0 04000426 */  addiu      $a0, $s0, 4
/* B7CB4 800C74B4 2080103C */  lui        $s0, %hi(D_801FB794)
/* B7CB8 800C74B8 8226030C */  jal        FUN_800c9a08
/* B7CBC 800C74BC 94B702AE */   sw        $v0, %lo(D_801FB794)($s0)
/* B7CC0 800C74C0 21204000 */  addu       $a0, $v0, $zero
/* B7CC4 800C74C4 90B7458E */  lw         $a1, -0x4870($s2)
/* B7CC8 800C74C8 2080023C */  lui        $v0, %hi(D_801FB798)
/* B7CCC 800C74CC 0400A014 */  bnez       $a1, .L800C74E0
/* B7CD0 800C74D0 98B744AC */   sw        $a0, %lo(D_801FB798)($v0)
/* B7CD4 800C74D4 94B7038E */  lw         $v1, -0x486c($s0)
/* B7CD8 800C74D8 2080023C */  lui        $v0, %hi(D_801FB79C)
/* B7CDC 800C74DC 9CB743AC */  sw         $v1, %lo(D_801FB79C)($v0)
.L800C74E0:
/* B7CE0 800C74E0 1800228E */  lw         $v0, 0x18($s1)
/* B7CE4 800C74E4 0800A324 */  addiu      $v1, $a1, 8
/* B7CE8 800C74E8 90B743AE */  sw         $v1, -0x4870($s2)
/* B7CEC 800C74EC 21186400 */  addu       $v1, $v1, $a0
/* B7CF0 800C74F0 2B104300 */  sltu       $v0, $v0, $v1
/* B7CF4 800C74F4 03004010 */  beqz       $v0, .L800C7504
/* B7CF8 800C74F8 00000000 */   nop
.L800C74FC:
/* B7CFC 800C74FC 031E0308 */  j          .L800C780C
/* B7D00 800C7500 0D001424 */   addiu     $s4, $zero, 0xd
.L800C7504:
/* B7D04 800C7504 94B7028E */  lw         $v0, -0x486c($s0)
/* B7D08 800C7508 00000000 */  nop
/* B7D0C 800C750C 08004014 */  bnez       $v0, .L800C7530
/* B7D10 800C7510 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B7D14 800C7514 07008014 */  bnez       $a0, .L800C7534
/* B7D18 800C7518 F0B76324 */   addiu     $v1, $v1, %lo(D_801FB7F0)
/* B7D1C 800C751C 0800228E */  lw         $v0, 8($s1)
/* B7D20 800C7520 00000000 */  nop
/* B7D24 800C7524 03004224 */  addiu      $v0, $v0, 3
/* B7D28 800C7528 031E0308 */  j          .L800C780C
/* B7D2C 800C752C 080022AE */   sw        $v0, 8($s1)
.L800C7530:
/* B7D30 800C7530 F0B76324 */  addiu      $v1, $v1, -0x4810
.L800C7534:
/* B7D34 800C7534 0800628C */  lw         $v0, 8($v1)
/* B7D38 800C7538 00000000 */  nop
/* B7D3C 800C753C 01004224 */  addiu      $v0, $v0, 1
/* B7D40 800C7540 031E0308 */  j          .L800C780C
/* B7D44 800C7544 080062AC */   sw        $v0, 8($v1)
/* B7D48 800C7548 2080023C */  lui        $v0, %hi(D_801FB798)
/* B7D4C 800C754C 2080053C */  lui        $a1, %hi(D_801FB7F0)
/* B7D50 800C7550 F0B7B124 */  addiu      $s1, $a1, %lo(D_801FB7F0)
/* B7D54 800C7554 98B7428C */  lw         $v0, %lo(D_801FB798)($v0)
/* B7D58 800C7558 A000238E */  lw         $v1, 0xa0($s1)
/* B7D5C 800C755C 2080073C */  lui        $a3, %hi(D_801FB7A0)
/* B7D60 800C7560 A0B7E2AC */  sw         $v0, %lo(D_801FB7A0)($a3)
/* B7D64 800C7564 2B106200 */  sltu       $v0, $v1, $v0
/* B7D68 800C7568 02004010 */  beqz       $v0, .L800C7574
/* B7D6C 800C756C 21200002 */   addu      $a0, $s0, $zero
/* B7D70 800C7570 A0B7E3AC */  sw         $v1, -0x4860($a3)
.L800C7574:
/* B7D74 800C7574 2080023C */  lui        $v0, %hi(D_801FB794)
/* B7D78 800C7578 2080033C */  lui        $v1, %hi(D_801FB790)
/* B7D7C 800C757C F0B7A58C */  lw         $a1, -0x4810($a1)
/* B7D80 800C7580 94B7468C */  lw         $a2, %lo(D_801FB794)($v0)
/* B7D84 800C7584 1400228E */  lw         $v0, 0x14($s1)
/* B7D88 800C7588 90B7638C */  lw         $v1, %lo(D_801FB790)($v1)
/* B7D8C 800C758C A0B7E78C */  lw         $a3, -0x4860($a3)
/* B7D90 800C7590 21104300 */  addu       $v0, $v0, $v1
/* B7D94 800C7594 9726030C */  jal        FUN_800c9a5c
/* B7D98 800C7598 1000A2AF */   sw        $v0, 0x10($sp)
/* B7D9C 800C759C 0800228E */  lw         $v0, 8($s1)
/* B7DA0 800C75A0 00000000 */  nop
/* B7DA4 800C75A4 01004224 */  addiu      $v0, $v0, 1
/* B7DA8 800C75A8 031E0308 */  j          .L800C780C
/* B7DAC 800C75AC 080022AE */   sw        $v0, 8($s1)
/* B7DB0 800C75B0 EE09030C */  jal        FUN_800c27b8
/* B7DB4 800C75B4 21200002 */   addu      $a0, $s0, $zero
/* B7DB8 800C75B8 21184000 */  addu       $v1, $v0, $zero
/* B7DBC 800C75BC FEFF0224 */  addiu      $v0, $zero, -2
/* B7DC0 800C75C0 92006210 */  beq        $v1, $v0, .L800C780C
/* B7DC4 800C75C4 01000224 */   addiu     $v0, $zero, 1
/* B7DC8 800C75C8 87006214 */  bne        $v1, $v0, .L800C77E8
/* B7DCC 800C75CC 2080053C */   lui       $a1, %hi(D_801FB790)
/* B7DD0 800C75D0 2080033C */  lui        $v1, %hi(D_801FB7A0)
/* B7DD4 800C75D4 2080063C */  lui        $a2, %hi(D_801FB798)
/* B7DD8 800C75D8 90B7A28C */  lw         $v0, %lo(D_801FB790)($a1)
/* B7DDC 800C75DC A0B7648C */  lw         $a0, %lo(D_801FB7A0)($v1)
/* B7DE0 800C75E0 98B7C38C */  lw         $v1, %lo(D_801FB798)($a2)
/* B7DE4 800C75E4 21104400 */  addu       $v0, $v0, $a0
/* B7DE8 800C75E8 90B7A2AC */  sw         $v0, -0x4870($a1)
/* B7DEC 800C75EC 2080053C */  lui        $a1, %hi(D_801FB794)
/* B7DF0 800C75F0 94B7A28C */  lw         $v0, %lo(D_801FB794)($a1)
/* B7DF4 800C75F4 23186400 */  subu       $v1, $v1, $a0
/* B7DF8 800C75F8 98B7C3AC */  sw         $v1, -0x4868($a2)
/* B7DFC 800C75FC 21104400 */  addu       $v0, $v0, $a0
/* B7E00 800C7600 94B7A2AC */  sw         $v0, -0x486c($a1)
/* B7E04 800C7604 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B7E08 800C7608 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B7E0C 800C760C 0800448C */  lw         $a0, 8($v0)
/* B7E10 800C7610 02006014 */  bnez       $v1, .L800C761C
/* B7E14 800C7614 FFFF8324 */   addiu     $v1, $a0, -1
/* B7E18 800C7618 FEFF8324 */  addiu      $v1, $a0, -2
.L800C761C:
/* B7E1C 800C761C 031E0308 */  j          .L800C780C
/* B7E20 800C7620 080043AC */   sw        $v1, 8($v0)
/* B7E24 800C7624 21200002 */  addu       $a0, $s0, $zero
/* B7E28 800C7628 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B7E2C 800C762C 2080023C */  lui        $v0, %hi(D_801FB79C)
/* B7E30 800C7630 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B7E34 800C7634 9CB7468C */  lw         $a2, %lo(D_801FB79C)($v0)
/* B7E38 800C7638 F026030C */  jal        FUN_800c9bc0
/* B7E3C 800C763C F0B71026 */   addiu     $s0, $s0, -0x4810
/* B7E40 800C7640 CD1D0308 */  j          .L800C7734
/* B7E44 800C7644 00000000 */   nop
/* B7E48 800C7648 EE09030C */  jal        FUN_800c27b8
/* B7E4C 800C764C 21200002 */   addu      $a0, $s0, $zero
/* B7E50 800C7650 21184000 */  addu       $v1, $v0, $zero
/* B7E54 800C7654 FEFF0224 */  addiu      $v0, $zero, -2
/* B7E58 800C7658 6C006210 */  beq        $v1, $v0, .L800C780C
/* B7E5C 800C765C 01000224 */   addiu     $v0, $zero, 1
/* B7E60 800C7660 61006214 */  bne        $v1, $v0, .L800C77E8
/* B7E64 800C7664 2080023C */   lui       $v0, %hi(D_801FB7A8)
/* B7E68 800C7668 2080043C */  lui        $a0, %hi(D_801FB7F0)
/* B7E6C 800C766C F0B78424 */  addiu      $a0, $a0, %lo(D_801FB7F0)
/* B7E70 800C7670 A8B7458C */  lw         $a1, %lo(D_801FB7A8)($v0)
/* B7E74 800C7674 0800828C */  lw         $v0, 8($a0)
/* B7E78 800C7678 2080033C */  lui        $v1, %hi(D_801FB7A4)
/* B7E7C 800C767C 01004224 */  addiu      $v0, $v0, 1
/* B7E80 800C7680 A4B765AC */  sw         $a1, %lo(D_801FB7A4)($v1)
/* B7E84 800C7684 031E0308 */  j          .L800C780C
/* B7E88 800C7688 080082AC */   sw        $v0, 8($a0)
/* B7E8C 800C768C 2080023C */  lui        $v0, %hi(D_801FB7A8)
/* B7E90 800C7690 2080033C */  lui        $v1, %hi(D_801FB7A4)
/* B7E94 800C7694 A8B7428C */  lw         $v0, %lo(D_801FB7A8)($v0)
/* B7E98 800C7698 A4B7638C */  lw         $v1, %lo(D_801FB7A4)($v1)
/* B7E9C 800C769C 00000000 */  nop
/* B7EA0 800C76A0 23104300 */  subu       $v0, $v0, $v1
/* B7EA4 800C76A4 3C004228 */  slti       $v0, $v0, 0x3c
/* B7EA8 800C76A8 58004014 */  bnez       $v0, .L800C780C
/* B7EAC 800C76AC 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B7EB0 800C76B0 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B7EB4 800C76B4 0800628C */  lw         $v0, 8($v1)
/* B7EB8 800C76B8 00000000 */  nop
/* B7EBC 800C76BC 01004224 */  addiu      $v0, $v0, 1
/* B7EC0 800C76C0 080062AC */  sw         $v0, 8($v1)
/* B7EC4 800C76C4 21200002 */  addu       $a0, $s0, $zero
/* B7EC8 800C76C8 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B7ECC 800C76CC F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B7ED0 800C76D0 1127030C */  jal        FUN_800c9c44
/* B7ED4 800C76D4 F0B71026 */   addiu     $s0, $s0, -0x4810
/* B7ED8 800C76D8 CD1D0308 */  j          .L800C7734
/* B7EDC 800C76DC 00000000 */   nop
/* B7EE0 800C76E0 EE09030C */  jal        FUN_800c27b8
/* B7EE4 800C76E4 21200002 */   addu      $a0, $s0, $zero
/* B7EE8 800C76E8 21184000 */  addu       $v1, $v0, $zero
/* B7EEC 800C76EC FEFF0224 */  addiu      $v0, $zero, -2
/* B7EF0 800C76F0 46006210 */  beq        $v1, $v0, .L800C780C
/* B7EF4 800C76F4 01000224 */   addiu     $v0, $zero, 1
/* B7EF8 800C76F8 3B006214 */  bne        $v1, $v0, .L800C77E8
/* B7EFC 800C76FC 2080023C */   lui       $v0, %hi(D_801FB7A8)
/* B7F00 800C7700 2080043C */  lui        $a0, %hi(D_801FB7F0)
/* B7F04 800C7704 F0B78424 */  addiu      $a0, $a0, %lo(D_801FB7F0)
/* B7F08 800C7708 A8B7458C */  lw         $a1, %lo(D_801FB7A8)($v0)
/* B7F0C 800C770C 0800828C */  lw         $v0, 8($a0)
/* B7F10 800C7710 2080033C */  lui        $v1, %hi(D_801FB7A4)
/* B7F14 800C7714 01004224 */  addiu      $v0, $v0, 1
/* B7F18 800C7718 A4B765AC */  sw         $a1, %lo(D_801FB7A4)($v1)
/* B7F1C 800C771C 080082AC */  sw         $v0, 8($a0)
/* B7F20 800C7720 21200002 */  addu       $a0, $s0, $zero
/* B7F24 800C7724 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B7F28 800C7728 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B7F2C 800C772C 8A27030C */  jal        FUN_800c9e28
/* B7F30 800C7730 F0B71026 */   addiu     $s0, $s0, -0x4810
.L800C7734:
/* B7F34 800C7734 0800028E */  lw         $v0, 8($s0)
/* B7F38 800C7738 00000000 */  nop
/* B7F3C 800C773C 01004224 */  addiu      $v0, $v0, 1
/* B7F40 800C7740 031E0308 */  j          .L800C780C
/* B7F44 800C7744 080002AE */   sw        $v0, 8($s0)
/* B7F48 800C7748 EE09030C */  jal        FUN_800c27b8
/* B7F4C 800C774C 21200002 */   addu      $a0, $s0, $zero
/* B7F50 800C7750 21184000 */  addu       $v1, $v0, $zero
/* B7F54 800C7754 FEFF0224 */  addiu      $v0, $zero, -2
/* B7F58 800C7758 2C006210 */  beq        $v1, $v0, .L800C780C
/* B7F5C 800C775C 01000224 */   addiu     $v0, $zero, 1
/* B7F60 800C7760 21006214 */  bne        $v1, $v0, .L800C77E8
/* B7F64 800C7764 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B7F68 800C7768 1C00028E */  lw         $v0, 0x1c($s0)
/* B7F6C 800C776C 1C00048E */  lw         $a0, 0x1c($s0)
/* B7F70 800C7770 00004290 */  lbu        $v0, ($v0)
/* B7F74 800C7774 F0B76524 */  addiu      $a1, $v1, %lo(D_801FB7F0)
/* B7F78 800C7778 A800A2AC */  sw         $v0, 0xa8($a1)
/* B7F7C 800C777C 01008290 */  lbu        $v0, 1($a0)
/* B7F80 800C7780 1C00048E */  lw         $a0, 0x1c($s0)
/* B7F84 800C7784 AC00A2AC */  sw         $v0, 0xac($a1)
/* B7F88 800C7788 00008290 */  lbu        $v0, ($a0)
/* B7F8C 800C778C 00000000 */  nop
/* B7F90 800C7790 01004230 */  andi       $v0, $v0, 1
/* B7F94 800C7794 0E004010 */  beqz       $v0, .L800C77D0
/* B7F98 800C7798 2080023C */   lui       $v0, %hi(D_801FB7A8)
/* B7F9C 800C779C 2080033C */  lui        $v1, %hi(D_801FB7A4)
/* B7FA0 800C77A0 A8B7428C */  lw         $v0, %lo(D_801FB7A8)($v0)
/* B7FA4 800C77A4 A4B7638C */  lw         $v1, %lo(D_801FB7A4)($v1)
/* B7FA8 800C77A8 00000000 */  nop
/* B7FAC 800C77AC 23104300 */  subu       $v0, $v0, $v1
/* B7FB0 800C77B0 3C004228 */  slti       $v0, $v0, 0x3c
/* B7FB4 800C77B4 0B004010 */  beqz       $v0, .L800C77E4
/* B7FB8 800C77B8 F5FF0224 */   addiu     $v0, $zero, -0xb
/* B7FBC 800C77BC 0800A28C */  lw         $v0, 8($a1)
/* B7FC0 800C77C0 00000000 */  nop
/* B7FC4 800C77C4 FFFF4224 */  addiu      $v0, $v0, -1
/* B7FC8 800C77C8 031E0308 */  j          .L800C780C
/* B7FCC 800C77CC 0800A2AC */   sw        $v0, 8($a1)
.L800C77D0:
/* B7FD0 800C77D0 01008290 */  lbu        $v0, 1($a0)
/* B7FD4 800C77D4 00000000 */  nop
/* B7FD8 800C77D8 7F004230 */  andi       $v0, $v0, 0x7f
/* B7FDC 800C77DC 04004010 */  beqz       $v0, .L800C77F0
/* B7FE0 800C77E0 F5FF0224 */   addiu     $v0, $zero, -0xb
.L800C77E4:
/* B7FE4 800C77E4 A400A2AC */  sw         $v0, 0xa4($a1)
.L800C77E8:
/* B7FE8 800C77E8 031E0308 */  j          .L800C780C
/* B7FEC 800C77EC 01001324 */   addiu     $s3, $zero, 1
.L800C77F0:
/* B7FF0 800C77F0 0800A28C */  lw         $v0, 8($a1)
/* B7FF4 800C77F4 00000000 */  nop
/* B7FF8 800C77F8 01004224 */  addiu      $v0, $v0, 1
/* B7FFC 800C77FC 0800A2AC */  sw         $v0, 8($a1)
/* B8000 800C7800 21A00000 */  addu       $s4, $zero, $zero
/* B8004 800C7804 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B8008 800C7808 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C780C:
/* B800C 800C780C 04006012 */  beqz       $s3, .L800C7820
/* B8010 800C7810 2080033C */   lui       $v1, %hi(D_801FB7FC)
/* B8014 800C7814 0D001424 */  addiu      $s4, $zero, 0xd
/* B8018 800C7818 FFFF0224 */  addiu      $v0, $zero, -1
/* B801C 800C781C FCB762AC */  sw         $v0, %lo(D_801FB7FC)($v1)
.L800C7820:
/* B8020 800C7820 21108002 */  addu       $v0, $s4, $zero
/* B8024 800C7824 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B8028 800C7828 2800B48F */  lw         $s4, 0x28($sp)
/* B802C 800C782C 2400B38F */  lw         $s3, 0x24($sp)
/* B8030 800C7830 2000B28F */  lw         $s2, 0x20($sp)
/* B8034 800C7834 1C00B18F */  lw         $s1, 0x1c($sp)
/* B8038 800C7838 1800B08F */  lw         $s0, 0x18($sp)
/* B803C 800C783C 0800E003 */  jr         $ra
/* B8040 800C7840 3000BD27 */   addiu     $sp, $sp, 0x30
