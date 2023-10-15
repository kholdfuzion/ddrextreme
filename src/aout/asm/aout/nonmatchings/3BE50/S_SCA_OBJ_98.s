.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_98
/* A9F6C 800B976C 0A00A010 */  beqz       $a1, .L800B9798
/* A9F70 800B9770 FF7FC230 */   andi      $v0, $a2, 0x7fff
/* A9F74 800B9774 04008784 */  lh         $a3, 4($a0)
/* A9F78 800B9778 04008394 */  lhu        $v1, 4($a0)
/* A9F7C 800B977C 8000E228 */  slti       $v0, $a3, 0x80
/* A9F80 800B9780 04004010 */  beqz       $v0, .L800B9794
/* A9F84 800B9784 7F000624 */   addiu     $a2, $zero, 0x7f
/* A9F88 800B9788 0200E004 */  bltz       $a3, .L800B9794
/* A9F8C 800B978C 21300000 */   addu      $a2, $zero, $zero
/* A9F90 800B9790 21306000 */  addu       $a2, $v1, $zero
.L800B9794:
/* A9F94 800B9794 FF7FC230 */  andi       $v0, $a2, 0x7fff
.L800B9798:
/* A9F98 800B9798 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A9F9C 800B979C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A9FA0 800B97A0 25104500 */  or         $v0, $v0, $a1
/* A9FA4 800B97A4 800162A4 */  sh         $v0, 0x180($v1)
.L800B97A8:
/* A9FA8 800B97A8 05004015 */  bnez       $t2, .L800B97C0
/* A9FAC 800B97AC 02002231 */   andi      $v0, $t1, 2
/* A9FB0 800B97B0 2D004010 */  beqz       $v0, .L800B9868
/* A9FB4 800B97B4 08002231 */   andi      $v0, $t1, 8
/* A9FB8 800B97B8 1A004010 */  beqz       $v0, S_SCA_OBJ_150
/* A9FBC 800B97BC 00000000 */   nop
.L800B97C0:
/* A9FC0 800B97C0 0A008384 */  lh         $v1, 0xa($a0)
/* A9FC4 800B97C4 00000000 */  nop
/* A9FC8 800B97C8 0800622C */  sltiu      $v0, $v1, 8
/* A9FCC 800B97CC 15004010 */  beqz       $v0, S_SCA_OBJ_150
/* A9FD0 800B97D0 80100300 */   sll       $v0, $v1, 2
/* A9FD4 800B97D4 0180013C */  lui        $at, %hi(D_800173C0)
/* A9FD8 800B97D8 21082200 */  addu       $at, $at, $v0
/* A9FDC 800B97DC C073228C */  lw         $v0, %lo(D_800173C0)($at)
/* A9FE0 800B97E0 00000000 */  nop
/* A9FE4 800B97E4 08004000 */  jr         $v0
/* A9FE8 800B97E8 00000000 */   nop
