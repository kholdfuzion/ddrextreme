.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001def8
/* E6F8 8001DEF8 1280023C */  lui        $v0, %hi(D_801222B0)
/* E6FC 8001DEFC B0224384 */  lh         $v1, %lo(D_801222B0)($v0)
/* E700 8001DF00 00000000 */  nop
/* E704 8001DF04 50006004 */  bltz       $v1, .L8001E048
/* E708 8001DF08 B0224424 */   addiu     $a0, $v0, 0x22b0
/* E70C 8001DF0C 0E80023C */  lui        $v0, %hi(D_800D88AC)
/* E710 8001DF10 AC884224 */  addiu      $v0, $v0, %lo(D_800D88AC)
/* E714 8001DF14 04004E24 */  addiu      $t6, $v0, 4
/* E718 8001DF18 21500000 */  addu       $t2, $zero, $zero
.L8001DF1C:
/* E71C 8001DF1C 10008290 */  lbu        $v0, 0x10($a0)
/* E720 8001DF20 00000000 */  nop
/* E724 8001DF24 43004010 */  beqz       $v0, .L8001E034
/* E728 8001DF28 30008D24 */   addiu     $t5, $a0, 0x30
/* E72C 8001DF2C 0E80023C */  lui        $v0, %hi(D_800D88AC)
/* E730 8001DF30 AC884C24 */  addiu      $t4, $v0, %lo(D_800D88AC)
/* E734 8001DF34 10008924 */  addiu      $t1, $a0, 0x10
/* E738 8001DF38 21282001 */  addu       $a1, $t1, $zero
/* E73C 8001DF3C 2F000B24 */  addiu      $t3, $zero, 0x2f
.L8001DF40:
/* E740 8001DF40 01000724 */  addiu      $a3, $zero, 1
/* E744 8001DF44 0000A890 */  lbu        $t0, ($a1)
/* E748 8001DF48 04008625 */  addiu      $a2, $t4, 4
.L8001DF4C:
/* E74C 8001DF4C 1A000B15 */  bne        $t0, $t3, .L8001DFB8
/* E750 8001DF50 00000000 */   nop
/* E754 8001DF54 0000C48C */  lw         $a0, ($a2)
/* E758 8001DF58 0100A390 */  lbu        $v1, 1($a1)
/* E75C 8001DF5C 00008290 */  lbu        $v0, ($a0)
/* E760 8001DF60 00000000 */  nop
/* E764 8001DF64 14006214 */  bne        $v1, $v0, .L8001DFB8
/* E768 8001DF68 00000000 */   nop
/* E76C 8001DF6C 0200A390 */  lbu        $v1, 2($a1)
/* E770 8001DF70 01008290 */  lbu        $v0, 1($a0)
/* E774 8001DF74 00000000 */  nop
/* E778 8001DF78 0F006214 */  bne        $v1, $v0, .L8001DFB8
/* E77C 8001DF7C 00000000 */   nop
/* E780 8001DF80 0300A390 */  lbu        $v1, 3($a1)
/* E784 8001DF84 02008290 */  lbu        $v0, 2($a0)
/* E788 8001DF88 00000000 */  nop
/* E78C 8001DF8C 0A006214 */  bne        $v1, $v0, .L8001DFB8
/* E790 8001DF90 00000000 */   nop
/* E794 8001DF94 0400A390 */  lbu        $v1, 4($a1)
/* E798 8001DF98 03008290 */  lbu        $v0, 3($a0)
/* E79C 8001DF9C 00000000 */  nop
/* E7A0 8001DFA0 05006214 */  bne        $v1, $v0, .L8001DFB8
/* E7A4 8001DFA4 00000000 */   nop
/* E7A8 8001DFA8 0500A290 */  lbu        $v0, 5($a1)
/* E7AC 8001DFAC 00000000 */  nop
/* E7B0 8001DFB0 06004810 */  beq        $v0, $t0, .L8001DFCC
/* E7B4 8001DFB4 0800E228 */   slti      $v0, $a3, 8
.L8001DFB8:
/* E7B8 8001DFB8 0100E724 */  addiu      $a3, $a3, 1
/* E7BC 8001DFBC 0800E228 */  slti       $v0, $a3, 8
/* E7C0 8001DFC0 E2FF4014 */  bnez       $v0, .L8001DF4C
/* E7C4 8001DFC4 0400C624 */   addiu     $a2, $a2, 4
/* E7C8 8001DFC8 0800E228 */  slti       $v0, $a3, 8
.L8001DFCC:
/* E7CC 8001DFCC 07004014 */  bnez       $v0, .L8001DFEC
/* E7D0 8001DFD0 21102A01 */   addu      $v0, $t1, $t2
/* E7D4 8001DFD4 0100A524 */  addiu      $a1, $a1, 1
/* E7D8 8001DFD8 0000A290 */  lbu        $v0, ($a1)
/* E7DC 8001DFDC 00000000 */  nop
/* E7E0 8001DFE0 D7FF4014 */  bnez       $v0, .L8001DF40
/* E7E4 8001DFE4 01004A25 */   addiu     $t2, $t2, 1
/* E7E8 8001DFE8 21102A01 */  addu       $v0, $t1, $t2
.L8001DFEC:
/* E7EC 8001DFEC 00004390 */  lbu        $v1, ($v0)
/* E7F0 8001DFF0 00000000 */  nop
/* E7F4 8001DFF4 0F006010 */  beqz       $v1, .L8001E034
/* E7F8 8001DFF8 21104901 */   addu      $v0, $t2, $t1
/* E7FC 8001DFFC 0000C58D */  lw         $a1, ($t6)
/* E800 8001E000 00000000 */  nop
/* E804 8001E004 0000A390 */  lbu        $v1, ($a1)
/* E808 8001E008 00000000 */  nop
/* E80C 8001E00C 010043A0 */  sb         $v1, 1($v0)
/* E810 8001E010 0100A490 */  lbu        $a0, 1($a1)
/* E814 8001E014 00000000 */  nop
/* E818 8001E018 020044A0 */  sb         $a0, 2($v0)
/* E81C 8001E01C 0200A390 */  lbu        $v1, 2($a1)
/* E820 8001E020 00000000 */  nop
/* E824 8001E024 030043A0 */  sb         $v1, 3($v0)
/* E828 8001E028 0300A490 */  lbu        $a0, 3($a1)
/* E82C 8001E02C 00000000 */  nop
/* E830 8001E030 040044A0 */  sb         $a0, 4($v0)
.L8001E034:
/* E834 8001E034 2120A001 */  addu       $a0, $t5, $zero
/* E838 8001E038 00008284 */  lh         $v0, ($a0)
/* E83C 8001E03C 00000000 */  nop
/* E840 8001E040 B6FF4104 */  bgez       $v0, .L8001DF1C
/* E844 8001E044 21500000 */   addu      $t2, $zero, $zero
.L8001E048:
/* E848 8001E048 0800E003 */  jr         $ra
/* E84C 8001E04C 00000000 */   nop
