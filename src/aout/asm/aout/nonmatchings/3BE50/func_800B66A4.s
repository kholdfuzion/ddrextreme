.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B66A4
/* A6EA4 800B66A4 F8FFBD27 */  addiu      $sp, $sp, -8
/* A6EA8 800B66A8 1E80063C */  lui        $a2, %hi(D_801E0788)
/* A6EAC 800B66AC 21388000 */  addu       $a3, $a0, $zero
/* A6EB0 800B66B0 1E80033C */  lui        $v1, %hi(D_801E09E4)
/* A6EB4 800B66B4 8807C290 */  lbu        $v0, %lo(D_801E0788)($a2)
/* A6EB8 800B66B8 1E80043C */  lui        $a0, %hi(D_801E09E0)
/* A6EBC 800B66BC 0000E2A0 */  sb         $v0, ($a3)
/* A6EC0 800B66C0 E409658C */  lw         $a1, %lo(D_801E09E4)($v1)
/* A6EC4 800B66C4 E009828C */  lw         $v0, %lo(D_801E09E0)($a0)
/* A6EC8 800B66C8 00000000 */  nop
/* A6ECC 800B66CC 2328A200 */  subu       $a1, $a1, $v0
/* A6ED0 800B66D0 0200A104 */  bgez       $a1, .L800B66DC
/* A6ED4 800B66D4 8807C624 */   addiu     $a2, $a2, 0x788
/* A6ED8 800B66D8 3000A524 */  addiu      $a1, $a1, 0x30
.L800B66DC:
/* A6EDC 800B66DC 0100E5A0 */  sb         $a1, 1($a3)
/* A6EE0 800B66E0 0C00C28C */  lw         $v0, 0xc($a2)
/* A6EE4 800B66E4 00000000 */  nop
/* A6EE8 800B66E8 0400E2AC */  sw         $v0, 4($a3)
/* A6EEC 800B66EC 1000C38C */  lw         $v1, 0x10($a2)
/* A6EF0 800B66F0 00000000 */  nop
/* A6EF4 800B66F4 0800E3AC */  sw         $v1, 8($a3)
/* A6EF8 800B66F8 1400C48C */  lw         $a0, 0x14($a2)
/* A6EFC 800B66FC 1E80063C */  lui        $a2, %hi(D_801E07D8)
/* A6F00 800B6700 1300E0A0 */  sb         $zero, 0x13($a3)
/* A6F04 800B6704 1200E0A0 */  sb         $zero, 0x12($a3)
/* A6F08 800B6708 1100E0A0 */  sb         $zero, 0x11($a3)
/* A6F0C 800B670C 1000E0A0 */  sb         $zero, 0x10($a3)
/* A6F10 800B6710 D807C38C */  lw         $v1, %lo(D_801E07D8)($a2)
/* A6F14 800B6714 0C00E4AC */  sw         $a0, 0xc($a3)
/* A6F18 800B6718 00006294 */  lhu        $v0, ($v1)
/* A6F1C 800B671C 00000000 */  nop
/* A6F20 800B6720 34004010 */  beqz       $v0, .L800B67F4
/* A6F24 800B6724 21280000 */   addu      $a1, $zero, $zero
/* A6F28 800B6728 01000B24 */  addiu      $t3, $zero, 1
/* A6F2C 800B672C 02000A24 */  addiu      $t2, $zero, 2
/* A6F30 800B6730 03000924 */  addiu      $t1, $zero, 3
/* A6F34 800B6734 2140C000 */  addu       $t0, $a2, $zero
.L800B6738:
/* A6F38 800B6738 D807028D */  lw         $v0, 0x7d8($t0)
/* A6F3C 800B673C 00000000 */  nop
/* A6F40 800B6740 0800448C */  lw         $a0, 8($v0)
/* A6F44 800B6744 40190500 */  sll        $v1, $a1, 5
/* A6F48 800B6748 21186400 */  addu       $v1, $v1, $a0
/* A6F4C 800B674C 00006394 */  lhu        $v1, ($v1)
/* A6F50 800B6750 00000000 */  nop
/* A6F54 800B6754 12006B10 */  beq        $v1, $t3, .L800B67A0
/* A6F58 800B6758 02006228 */   slti      $v0, $v1, 2
/* A6F5C 800B675C 05004010 */  beqz       $v0, .L800B6774
/* A6F60 800B6760 00000000 */   nop
/* A6F64 800B6764 09006010 */  beqz       $v1, .L800B678C
/* A6F68 800B6768 00000000 */   nop
/* A6F6C 800B676C F6D90208 */  j          .L800B67D8
/* A6F70 800B6770 00000000 */   nop
.L800B6774:
/* A6F74 800B6774 0F006A10 */  beq        $v1, $t2, .L800B67B4
/* A6F78 800B6778 00000000 */   nop
/* A6F7C 800B677C 12006910 */  beq        $v1, $t1, .L800B67C8
/* A6F80 800B6780 00000000 */   nop
/* A6F84 800B6784 F6D90208 */  j          .L800B67D8
/* A6F88 800B6788 00000000 */   nop
.L800B678C:
/* A6F8C 800B678C 1000E290 */  lbu        $v0, 0x10($a3)
/* A6F90 800B6790 00000000 */  nop
/* A6F94 800B6794 01004224 */  addiu      $v0, $v0, 1
/* A6F98 800B6798 F6D90208 */  j          .L800B67D8
/* A6F9C 800B679C 1000E2A0 */   sb        $v0, 0x10($a3)
.L800B67A0:
/* A6FA0 800B67A0 1100E290 */  lbu        $v0, 0x11($a3)
/* A6FA4 800B67A4 00000000 */  nop
/* A6FA8 800B67A8 01004224 */  addiu      $v0, $v0, 1
/* A6FAC 800B67AC F6D90208 */  j          .L800B67D8
/* A6FB0 800B67B0 1100E2A0 */   sb        $v0, 0x11($a3)
.L800B67B4:
/* A6FB4 800B67B4 1200E290 */  lbu        $v0, 0x12($a3)
/* A6FB8 800B67B8 00000000 */  nop
/* A6FBC 800B67BC 01004224 */  addiu      $v0, $v0, 1
/* A6FC0 800B67C0 F6D90208 */  j          .L800B67D8
/* A6FC4 800B67C4 1200E2A0 */   sb        $v0, 0x12($a3)
.L800B67C8:
/* A6FC8 800B67C8 1300E290 */  lbu        $v0, 0x13($a3)
/* A6FCC 800B67CC 00000000 */  nop
/* A6FD0 800B67D0 01004224 */  addiu      $v0, $v0, 1
/* A6FD4 800B67D4 1300E2A0 */  sb         $v0, 0x13($a3)
.L800B67D8:
/* A6FD8 800B67D8 D807C28C */  lw         $v0, 0x7d8($a2)
/* A6FDC 800B67DC 00000000 */  nop
/* A6FE0 800B67E0 00004394 */  lhu        $v1, ($v0)
/* A6FE4 800B67E4 0100A524 */  addiu      $a1, $a1, 1
/* A6FE8 800B67E8 2A18A300 */  slt        $v1, $a1, $v1
/* A6FEC 800B67EC D2FF6014 */  bnez       $v1, .L800B6738
/* A6FF0 800B67F0 00000000 */   nop
.L800B67F4:
/* A6FF4 800B67F4 0800E003 */  jr         $ra
/* A6FF8 800B67F8 0800BD27 */   addiu     $sp, $sp, 8
