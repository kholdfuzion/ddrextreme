.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c7bdc
/* B83DC 800C7BDC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B83E0 800C7BE0 2000B2AF */  sw         $s2, 0x20($sp)
/* B83E4 800C7BE4 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B83E8 800C7BE8 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B83EC 800C7BEC 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B83F0 800C7BF0 28005124 */  addiu      $s1, $v0, 0x28
/* B83F4 800C7BF4 2800BFAF */  sw         $ra, 0x28($sp)
/* B83F8 800C7BF8 2400B3AF */  sw         $s3, 0x24($sp)
/* B83FC 800C7BFC 1800B0AF */  sw         $s0, 0x18($sp)
/* B8400 800C7C00 0800438C */  lw         $v1, 8($v0)
/* B8404 800C7C04 0400538C */  lw         $s3, 4($v0)
/* B8408 800C7C08 0800622C */  sltiu      $v0, $v1, 8
/* B840C 800C7C0C 9E004010 */  beqz       $v0, .L800C7E88
/* B8410 800C7C10 21900000 */   addu      $s2, $zero, $zero
/* B8414 800C7C14 0180023C */  lui        $v0, %hi(D_80017998)
/* B8418 800C7C18 98794224 */  addiu      $v0, $v0, %lo(D_80017998)
/* B841C 800C7C1C 80180300 */  sll        $v1, $v1, 2
/* B8420 800C7C20 21186200 */  addu       $v1, $v1, $v0
/* B8424 800C7C24 0000628C */  lw         $v0, ($v1)
/* B8428 800C7C28 00000000 */  nop
/* B842C 800C7C2C 08004000 */  jr         $v0
/* B8430 800C7C30 00000000 */   nop
/* B8434 800C7C34 2080023C */  lui        $v0, %hi(D_801FB7BC)
/* B8438 800C7C38 2080053C */  lui        $a1, 0x8020
/* B843C 800C7C3C 2080043C */  lui        $a0, %hi(D_801FB7F0)
/* B8440 800C7C40 F0B78424 */  addiu      $a0, $a0, %lo(D_801FB7F0)
/* B8444 800C7C44 BCB740AC */  sw         $zero, %lo(D_801FB7BC)($v0)
/* B8448 800C7C48 9800828C */  lw         $v0, 0x98($a0)
/* B844C 800C7C4C 0800838C */  lw         $v1, 8($a0)
/* B8450 800C7C50 C0110200 */  sll        $v0, $v0, 7
/* B8454 800C7C54 01006324 */  addiu      $v1, $v1, 1
/* B8458 800C7C58 B8B7A2AC */  sw         $v0, -0x4848($a1)
/* B845C 800C7C5C 080083AC */  sw         $v1, 8($a0)
/* B8460 800C7C60 2080023C */  lui        $v0, %hi(D_801FB7B8)
/* B8464 800C7C64 2080053C */  lui        $a1, %hi(D_801FB7F0)
/* B8468 800C7C68 F0B7B024 */  addiu      $s0, $a1, %lo(D_801FB7F0)
/* B846C 800C7C6C B8B7428C */  lw         $v0, %lo(D_801FB7B8)($v0)
/* B8470 800C7C70 A000048E */  lw         $a0, 0xa0($s0)
/* B8474 800C7C74 2080033C */  lui        $v1, %hi(D_801FB7C0)
/* B8478 800C7C78 C0B762AC */  sw         $v0, %lo(D_801FB7C0)($v1)
/* B847C 800C7C7C 2A108200 */  slt        $v0, $a0, $v0
/* B8480 800C7C80 02004010 */  beqz       $v0, .L800C7C8C
/* B8484 800C7C84 00000000 */   nop
/* B8488 800C7C88 C0B764AC */  sw         $a0, -0x4840($v1)
.L800C7C8C:
/* B848C 800C7C8C 21202002 */  addu       $a0, $s1, $zero
/* B8490 800C7C90 2080023C */  lui        $v0, %hi(D_801FB7BC)
/* B8494 800C7C94 0200063C */  lui        $a2, 2
/* B8498 800C7C98 F0B7A58C */  lw         $a1, -0x4810($a1)
/* B849C 800C7C9C C0B7678C */  lw         $a3, -0x4840($v1)
/* B84A0 800C7CA0 BCB7438C */  lw         $v1, %lo(D_801FB7BC)($v0)
/* B84A4 800C7CA4 9000028E */  lw         $v0, 0x90($s0)
/* B84A8 800C7CA8 21306600 */  addu       $a2, $v1, $a2
/* B84AC 800C7CAC 21104300 */  addu       $v0, $v0, $v1
/* B84B0 800C7CB0 9726030C */  jal        FUN_800c9a5c
/* B84B4 800C7CB4 1000A2AF */   sw        $v0, 0x10($sp)
/* B84B8 800C7CB8 6A1F0308 */  j          .L800C7DA8
/* B84BC 800C7CBC 00000000 */   nop
/* B84C0 800C7CC0 EE09030C */  jal        FUN_800c27b8
/* B84C4 800C7CC4 21202002 */   addu      $a0, $s1, $zero
/* B84C8 800C7CC8 21184000 */  addu       $v1, $v0, $zero
/* B84CC 800C7CCC FEFF0224 */  addiu      $v0, $zero, -2
/* B84D0 800C7CD0 6D006210 */  beq        $v1, $v0, .L800C7E88
/* B84D4 800C7CD4 01000224 */   addiu     $v0, $zero, 1
/* B84D8 800C7CD8 60006214 */  bne        $v1, $v0, .L800C7E5C
/* B84DC 800C7CDC 2080053C */   lui       $a1, %hi(D_801FB7BC)
/* B84E0 800C7CE0 2080033C */  lui        $v1, %hi(D_801FB7C0)
/* B84E4 800C7CE4 2080063C */  lui        $a2, %hi(D_801FB7B8)
/* B84E8 800C7CE8 BCB7A28C */  lw         $v0, %lo(D_801FB7BC)($a1)
/* B84EC 800C7CEC C0B7648C */  lw         $a0, %lo(D_801FB7C0)($v1)
/* B84F0 800C7CF0 B8B7C38C */  lw         $v1, %lo(D_801FB7B8)($a2)
/* B84F4 800C7CF4 21104400 */  addu       $v0, $v0, $a0
/* B84F8 800C7CF8 23186400 */  subu       $v1, $v1, $a0
/* B84FC 800C7CFC BCB7A2AC */  sw         $v0, -0x4844($a1)
/* B8500 800C7D00 3D00601C */  bgtz       $v1, .L800C7DF8
/* B8504 800C7D04 B8B7C3AC */   sw        $v1, -0x4848($a2)
/* B8508 800C7D08 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B850C 800C7D0C F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8510 800C7D10 0800628C */  lw         $v0, 8($v1)
/* B8514 800C7D14 00000000 */  nop
/* B8518 800C7D18 01004224 */  addiu      $v0, $v0, 1
/* B851C 800C7D1C 080062AC */  sw         $v0, 8($v1)
/* B8520 800C7D20 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B8524 800C7D24 F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B8528 800C7D28 A227030C */  jal        FUN_800c9e88
/* B852C 800C7D2C 34002426 */   addiu     $a0, $s1, 0x34
/* B8530 800C7D30 21202002 */  addu       $a0, $s1, $zero
/* B8534 800C7D34 F0B7058E */  lw         $a1, -0x4810($s0)
/* B8538 800C7D38 F0B71026 */  addiu      $s0, $s0, -0x4810
/* B853C 800C7D3C 9C00068E */  lw         $a2, 0x9c($s0)
/* B8540 800C7D40 9400078E */  lw         $a3, 0x94($s0)
/* B8544 800C7D44 9800038E */  lw         $v1, 0x98($s0)
/* B8548 800C7D48 0200023C */  lui        $v0, 2
/* B854C 800C7D4C 1400A2AF */  sw         $v0, 0x14($sp)
/* B8550 800C7D50 2827030C */  jal        FUN_800c9ca0
/* B8554 800C7D54 1000A3AF */   sw        $v1, 0x10($sp)
/* B8558 800C7D58 6A1F0308 */  j          .L800C7DA8
/* B855C 800C7D5C 00000000 */   nop
/* B8560 800C7D60 EE09030C */  jal        FUN_800c27b8
/* B8564 800C7D64 21202002 */   addu      $a0, $s1, $zero
/* B8568 800C7D68 21184000 */  addu       $v1, $v0, $zero
/* B856C 800C7D6C FEFF0224 */  addiu      $v0, $zero, -2
/* B8570 800C7D70 45006210 */  beq        $v1, $v0, .L800C7E88
/* B8574 800C7D74 01000224 */   addiu     $v0, $zero, 1
/* B8578 800C7D78 38006214 */  bne        $v1, $v0, .L800C7E5C
/* B857C 800C7D7C 2080033C */   lui       $v1, %hi(D_801FB7F0)
/* B8580 800C7D80 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8584 800C7D84 0800628C */  lw         $v0, 8($v1)
/* B8588 800C7D88 00000000 */  nop
/* B858C 800C7D8C 01004224 */  addiu      $v0, $v0, 1
/* B8590 800C7D90 080062AC */  sw         $v0, 8($v1)
/* B8594 800C7D94 21202002 */  addu       $a0, $s1, $zero
/* B8598 800C7D98 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* B859C 800C7D9C F0B7058E */  lw         $a1, %lo(D_801FB7F0)($s0)
/* B85A0 800C7DA0 8A27030C */  jal        FUN_800c9e28
/* B85A4 800C7DA4 F0B71026 */   addiu     $s0, $s0, -0x4810
.L800C7DA8:
/* B85A8 800C7DA8 0800028E */  lw         $v0, 8($s0)
/* B85AC 800C7DAC 00000000 */  nop
/* B85B0 800C7DB0 01004224 */  addiu      $v0, $v0, 1
/* B85B4 800C7DB4 A21F0308 */  j          .L800C7E88
/* B85B8 800C7DB8 080002AE */   sw        $v0, 8($s0)
/* B85BC 800C7DBC EE09030C */  jal        FUN_800c27b8
/* B85C0 800C7DC0 21202002 */   addu      $a0, $s1, $zero
/* B85C4 800C7DC4 21184000 */  addu       $v1, $v0, $zero
/* B85C8 800C7DC8 FEFF0224 */  addiu      $v0, $zero, -2
/* B85CC 800C7DCC 2E006210 */  beq        $v1, $v0, .L800C7E88
/* B85D0 800C7DD0 01000224 */   addiu     $v0, $zero, 1
/* B85D4 800C7DD4 21006214 */  bne        $v1, $v0, .L800C7E5C
/* B85D8 800C7DD8 00000000 */   nop
/* B85DC 800C7DDC 1C00248E */  lw         $a0, 0x1c($s1)
/* B85E0 800C7DE0 00000000 */  nop
/* B85E4 800C7DE4 00008290 */  lbu        $v0, ($a0)
/* B85E8 800C7DE8 00000000 */  nop
/* B85EC 800C7DEC 04004230 */  andi       $v0, $v0, 4
/* B85F0 800C7DF0 08004010 */  beqz       $v0, .L800C7E14
/* B85F4 800C7DF4 00000000 */   nop
.L800C7DF8:
/* B85F8 800C7DF8 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B85FC 800C7DFC F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B8600 800C7E00 0800628C */  lw         $v0, 8($v1)
/* B8604 800C7E04 00000000 */  nop
/* B8608 800C7E08 FFFF4224 */  addiu      $v0, $v0, -1
/* B860C 800C7E0C A21F0308 */  j          .L800C7E88
/* B8610 800C7E10 080062AC */   sw        $v0, 8($v1)
.L800C7E14:
/* B8614 800C7E14 01008490 */  lbu        $a0, 1($a0)
/* B8618 800C7E18 00000000 */  nop
/* B861C 800C7E1C 0E008230 */  andi       $v0, $a0, 0xe
/* B8620 800C7E20 10004010 */  beqz       $v0, .L800C7E64
/* B8624 800C7E24 08008230 */   andi      $v0, $a0, 8
/* B8628 800C7E28 0C004010 */  beqz       $v0, .L800C7E5C
/* B862C 800C7E2C 2080023C */   lui       $v0, %hi(D_801FB7F0)
/* B8630 800C7E30 F0B74224 */  addiu      $v0, $v0, %lo(D_801FB7F0)
/* B8634 800C7E34 9C00448C */  lw         $a0, 0x9c($v0)
/* B8638 800C7E38 00000000 */  nop
/* B863C 800C7E3C 21208200 */  addu       $a0, $a0, $v0
/* B8640 800C7E40 0F80023C */  lui        $v0, %hi(D_800EE63C)
/* B8644 800C7E44 1C008390 */  lbu        $v1, 0x1c($a0)
/* B8648 800C7E48 3CE64224 */  addiu      $v0, $v0, %lo(D_800EE63C)
/* B864C 800C7E4C 21186200 */  addu       $v1, $v1, $v0
/* B8650 800C7E50 00006290 */  lbu        $v0, ($v1)
/* B8654 800C7E54 00000000 */  nop
/* B8658 800C7E58 1C0082A0 */  sb         $v0, 0x1c($a0)
.L800C7E5C:
/* B865C 800C7E5C A21F0308 */  j          .L800C7E88
/* B8660 800C7E60 01001224 */   addiu     $s2, $zero, 1
.L800C7E64:
/* B8664 800C7E64 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B8668 800C7E68 F0B76324 */  addiu      $v1, $v1, %lo(D_801FB7F0)
/* B866C 800C7E6C 0800628C */  lw         $v0, 8($v1)
/* B8670 800C7E70 00000000 */  nop
/* B8674 800C7E74 01004224 */  addiu      $v0, $v0, 1
/* B8678 800C7E78 080062AC */  sw         $v0, 8($v1)
/* B867C 800C7E7C 21980000 */  addu       $s3, $zero, $zero
/* B8680 800C7E80 2080023C */  lui        $v0, %hi(D_801FB7FC)
/* B8684 800C7E84 FCB740AC */  sw         $zero, %lo(D_801FB7FC)($v0)
.L800C7E88:
/* B8688 800C7E88 04004012 */  beqz       $s2, .L800C7E9C
/* B868C 800C7E8C 2080033C */   lui       $v1, %hi(D_801FB7FC)
/* B8690 800C7E90 21980000 */  addu       $s3, $zero, $zero
/* B8694 800C7E94 FFFF0224 */  addiu      $v0, $zero, -1
/* B8698 800C7E98 FCB762AC */  sw         $v0, %lo(D_801FB7FC)($v1)
.L800C7E9C:
/* B869C 800C7E9C 21106002 */  addu       $v0, $s3, $zero
/* B86A0 800C7EA0 2800BF8F */  lw         $ra, 0x28($sp)
/* B86A4 800C7EA4 2400B38F */  lw         $s3, 0x24($sp)
/* B86A8 800C7EA8 2000B28F */  lw         $s2, 0x20($sp)
/* B86AC 800C7EAC 1C00B18F */  lw         $s1, 0x1c($sp)
/* B86B0 800C7EB0 1800B08F */  lw         $s0, 0x18($sp)
/* B86B4 800C7EB4 0800E003 */  jr         $ra
/* B86B8 800C7EB8 3000BD27 */   addiu     $sp, $sp, 0x30
