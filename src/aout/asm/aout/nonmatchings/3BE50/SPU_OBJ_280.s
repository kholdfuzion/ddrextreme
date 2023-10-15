.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_280
/* A7734 800B6F34 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7738 800B6F38 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A773C 800B6F3C 0F80033C */  lui        $v1, %hi(D_800EC808)
/* A7740 800B6F40 08C86394 */  lhu        $v1, %lo(D_800EC808)($v1)
/* A7744 800B6F44 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A7748 800B6F48 1400B1AF */  sw         $s1, 0x14($sp)
/* A774C 800B6F4C 2188A000 */  addu       $s1, $a1, $zero
/* A7750 800B6F50 2000BFAF */  sw         $ra, 0x20($sp)
/* A7754 800B6F54 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A7758 800B6F58 1800B2AF */  sw         $s2, 0x18($sp)
/* A775C 800B6F5C 1000B0AF */  sw         $s0, 0x10($sp)
/* A7760 800B6F60 AE014594 */  lhu        $a1, 0x1ae($v0)
/* A7764 800B6F64 21908000 */  addu       $s2, $a0, $zero
/* A7768 800B6F68 A60143A4 */  sh         $v1, 0x1a6($v0)
/* A776C 800B6F6C E3DD020C */  jal        _spu_Fw1ts
/* A7770 800B6F70 FF07B330 */   andi      $s3, $a1, 0x7ff
/* A7774 800B6F74 39002012 */  beqz       $s1, .L800B705C
/* A7778 800B6F78 4100222E */   sltiu     $v0, $s1, 0x41
.L800B6F7C:
/* A777C 800B6F7C 02004010 */  beqz       $v0, .L800B6F88
/* A7780 800B6F80 40001024 */   addiu     $s0, $zero, 0x40
/* A7784 800B6F84 21802002 */  addu       $s0, $s1, $zero
.L800B6F88:
/* A7788 800B6F88 0A00001A */  blez       $s0, .L800B6FB4
/* A778C 800B6F8C 21180000 */   addu      $v1, $zero, $zero
/* A7790 800B6F90 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A7794 800B6F94 F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
.L800B6F98:
/* A7798 800B6F98 00004296 */  lhu        $v0, ($s2)
/* A779C 800B6F9C 02005226 */  addiu      $s2, $s2, 2
/* A77A0 800B6FA0 02006324 */  addiu      $v1, $v1, 2
/* A77A4 800B6FA4 A80182A4 */  sh         $v0, 0x1a8($a0)
/* A77A8 800B6FA8 2A107000 */  slt        $v0, $v1, $s0
/* A77AC 800B6FAC FAFF4014 */  bnez       $v0, .L800B6F98
/* A77B0 800B6FB0 00000000 */   nop
.L800B6FB4:
/* A77B4 800B6FB4 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A77B8 800B6FB8 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A77BC 800B6FBC 00000000 */  nop
/* A77C0 800B6FC0 AA016494 */  lhu        $a0, 0x1aa($v1)
/* A77C4 800B6FC4 00000000 */  nop
/* A77C8 800B6FC8 CFFF8230 */  andi       $v0, $a0, 0xffcf
/* A77CC 800B6FCC 10004234 */  ori        $v0, $v0, 0x10
/* A77D0 800B6FD0 E3DD020C */  jal        _spu_Fw1ts
/* A77D4 800B6FD4 AA0162A4 */   sh        $v0, 0x1aa($v1)
/* A77D8 800B6FD8 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A77DC 800B6FDC F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A77E0 800B6FE0 00000000 */  nop
/* A77E4 800B6FE4 AE014294 */  lhu        $v0, 0x1ae($v0)
/* A77E8 800B6FE8 00000000 */  nop
/* A77EC 800B6FEC 00044230 */  andi       $v0, $v0, 0x400
/* A77F0 800B6FF0 14004010 */  beqz       $v0, SPU_OBJ_390
/* A77F4 800B6FF4 21180000 */   addu      $v1, $zero, $zero
/* A77F8 800B6FF8 01006324 */  addiu      $v1, $v1, 1
.L800B6FFC:
/* A77FC 800B6FFC 010F622C */  sltiu      $v0, $v1, 0xf01
/* A7800 800B7000 08004014 */  bnez       $v0, .L800B7024
/* A7804 800B7004 00000000 */   nop
/* A7808 800B7008 0180043C */  lui        $a0, %hi(D_80017310)
/* A780C 800B700C 10738424 */  addiu      $a0, $a0, %lo(D_80017310)
/* A7810 800B7010 0180053C */  lui        $a1, %hi(D_80017330)
/* A7814 800B7014 755F000C */  jal        FUN_80017dd4
/* A7818 800B7018 3073A524 */   addiu     $a1, $a1, %lo(D_80017330)
/* A781C 800B701C 11DC0208 */  j          SPU_OBJ_390
/* A7820 800B7020 00000000 */   nop
.L800B7024:
/* A7824 800B7024 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7828 800B7028 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A782C 800B702C 00000000 */  nop
/* A7830 800B7030 AE014294 */  lhu        $v0, 0x1ae($v0)
/* A7834 800B7034 00000000 */  nop
/* A7838 800B7038 00044230 */  andi       $v0, $v0, 0x400
/* A783C 800B703C EFFF4014 */  bnez       $v0, .L800B6FFC
/* A7840 800B7040 01006324 */   addiu     $v1, $v1, 1
