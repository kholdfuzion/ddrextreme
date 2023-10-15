.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SAV_OBJ_130
/* A8EF4 800B86F4 FFFF4234 */  ori        $v0, $v0, 0xffff
/* A8EF8 800B86F8 24100201 */  and        $v0, $t0, $v0
/* A8EFC 800B86FC 1CE20208 */  j          S_SAV_OBJ_2AC
/* A8F00 800B8700 25504201 */   or        $t2, $t2, $v0
.L800B8704:
/* A8F04 800B8704 0F80023C */  lui        $v0, %hi(D_800EC7DC)
/* A8F08 800B8708 DCC7428C */  lw         $v0, %lo(D_800EC7DC)($v0)
/* A8F0C 800B870C 00000000 */  nop
/* A8F10 800B8710 01004230 */  andi       $v0, $v0, 1
/* A8F14 800B8714 1A004010 */  beqz       $v0, .L800B8780
/* A8F18 800B8718 40180600 */   sll       $v1, $a2, 1
/* A8F1C 800B871C 1E80053C */  lui        $a1, %hi(D_801E0D50)
/* A8F20 800B8720 500DA524 */  addiu      $a1, $a1, %lo(D_801E0D50)
/* A8F24 800B8724 21186500 */  addu       $v1, $v1, $a1
/* A8F28 800B8728 00006294 */  lhu        $v0, ($v1)
/* A8F2C 800B872C 27200800 */  nor        $a0, $zero, $t0
/* A8F30 800B8730 24104400 */  and        $v0, $v0, $a0
/* A8F34 800B8734 40200700 */  sll        $a0, $a3, 1
/* A8F38 800B8738 21208500 */  addu       $a0, $a0, $a1
/* A8F3C 800B873C 000062A4 */  sh         $v0, ($v1)
/* A8F40 800B8740 02140800 */  srl        $v0, $t0, 0x10
/* A8F44 800B8744 FF004230 */  andi       $v0, $v0, 0xff
/* A8F48 800B8748 00008394 */  lhu        $v1, ($a0)
/* A8F4C 800B874C 27100200 */  nor        $v0, $zero, $v0
/* A8F50 800B8750 24186200 */  and        $v1, $v1, $v0
/* A8F54 800B8754 3AFFC224 */  addiu      $v0, $a2, -0xc6
/* A8F58 800B8758 43100200 */  sra        $v0, $v0, 1
/* A8F5C 800B875C 000083A4 */  sh         $v1, ($a0)
/* A8F60 800B8760 0F80033C */  lui        $v1, %hi(D_800EC7A8)
/* A8F64 800B8764 A8C7638C */  lw         $v1, %lo(D_800EC7A8)($v1)
/* A8F68 800B8768 04104B00 */  sllv       $v0, $t3, $v0
/* A8F6C 800B876C 25186200 */  or         $v1, $v1, $v0
/* A8F70 800B8770 0F80013C */  lui        $at, %hi(D_800EC7A8)
/* A8F74 800B8774 A8C723AC */  sw         $v1, %lo(D_800EC7A8)($at)
/* A8F78 800B8778 F1E10208 */  j          S_SAV_OBJ_200
/* A8F7C 800B877C FF00023C */   lui       $v0, 0xff
.L800B8780:
/* A8F80 800B8780 0F80053C */  lui        $a1, %hi(D_800EC7F0)
/* A8F84 800B8784 F0C7A58C */  lw         $a1, %lo(D_800EC7F0)($a1)
/* A8F88 800B8788 00000000 */  nop
/* A8F8C 800B878C 21186500 */  addu       $v1, $v1, $a1
/* A8F90 800B8790 00006294 */  lhu        $v0, ($v1)
/* A8F94 800B8794 27200800 */  nor        $a0, $zero, $t0
/* A8F98 800B8798 24104400 */  and        $v0, $v0, $a0
/* A8F9C 800B879C 40200700 */  sll        $a0, $a3, 1
/* A8FA0 800B87A0 21208500 */  addu       $a0, $a0, $a1
/* A8FA4 800B87A4 000062A4 */  sh         $v0, ($v1)
/* A8FA8 800B87A8 02140800 */  srl        $v0, $t0, 0x10
/* A8FAC 800B87AC FF004230 */  andi       $v0, $v0, 0xff
/* A8FB0 800B87B0 00008394 */  lhu        $v1, ($a0)
/* A8FB4 800B87B4 27100200 */  nor        $v0, $zero, $v0
/* A8FB8 800B87B8 24186200 */  and        $v1, $v1, $v0
/* A8FBC 800B87BC 000083A4 */  sh         $v1, ($a0)
/* A8FC0 800B87C0 FF00023C */  lui        $v0, 0xff
