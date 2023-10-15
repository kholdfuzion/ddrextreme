.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2eec
/* A36EC 800B2EEC 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A36F0 800B2EF0 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A36F4 800B2EF4 00000000 */  nop
/* A36F8 800B2EF8 03006014 */  bnez       $v1, .L800B2F08
/* A36FC 800B2EFC 21200000 */   addu      $a0, $zero, $zero
/* A3700 800B2F00 0800E003 */  jr         $ra
/* A3704 800B2F04 01000224 */   addiu     $v0, $zero, 1
.L800B2F08:
/* A3708 800B2F08 94000824 */  addiu      $t0, $zero, 0x94
/* A370C 800B2F0C 02000624 */  addiu      $a2, $zero, 2
/* A3710 800B2F10 95000724 */  addiu      $a3, $zero, 0x95
/* A3714 800B2F14 1E80023C */  lui        $v0, %hi(D_801DF520)
/* A3718 800B2F18 20F54324 */  addiu      $v1, $v0, %lo(D_801DF520)
/* A371C 800B2F1C 17000524 */  addiu      $a1, $zero, 0x17
.L800B2F20:
/* A3720 800B2F20 02006294 */  lhu        $v0, 2($v1)
/* A3724 800B2F24 00000000 */  nop
/* A3728 800B2F28 08004814 */  bne        $v0, $t0, .L800B2F4C
/* A372C 800B2F2C 00000000 */   nop
/* A3730 800B2F30 00006294 */  lhu        $v0, ($v1)
/* A3734 800B2F34 00000000 */  nop
/* A3738 800B2F38 03004614 */  bne        $v0, $a2, .L800B2F48
/* A373C 800B2F3C 00000000 */   nop
/* A3740 800B2F40 DBCB0208 */  j          .L800B2F6C
/* A3744 800B2F44 01008434 */   ori       $a0, $a0, 1
.L800B2F48:
/* A3748 800B2F48 02006294 */  lhu        $v0, 2($v1)
.L800B2F4C:
/* A374C 800B2F4C 00000000 */  nop
/* A3750 800B2F50 06004714 */  bne        $v0, $a3, .L800B2F6C
/* A3754 800B2F54 00000000 */   nop
/* A3758 800B2F58 00006294 */  lhu        $v0, ($v1)
/* A375C 800B2F5C 00000000 */  nop
/* A3760 800B2F60 02004614 */  bne        $v0, $a2, .L800B2F6C
/* A3764 800B2F64 00000000 */   nop
/* A3768 800B2F68 02008434 */  ori        $a0, $a0, 2
.L800B2F6C:
/* A376C 800B2F6C FFFFA524 */  addiu      $a1, $a1, -1
/* A3770 800B2F70 EBFFA104 */  bgez       $a1, .L800B2F20
/* A3774 800B2F74 20006324 */   addiu     $v1, $v1, 0x20
/* A3778 800B2F78 03008238 */  xori       $v0, $a0, 3
/* A377C 800B2F7C 0800E003 */  jr         $ra
/* A3780 800B2F80 0100422C */   sltiu     $v0, $v0, 1
