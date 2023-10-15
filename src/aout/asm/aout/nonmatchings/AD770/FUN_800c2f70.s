.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2f70
/* B3770 800C2F70 1F80023C */  lui        $v0, %hi(D_801F72D8)
/* B3774 800C2F74 D8724624 */  addiu      $a2, $v0, %lo(D_801F72D8)
/* B3778 800C2F78 FFFF8224 */  addiu      $v0, $a0, -1
/* B377C 800C2F7C 0004422C */  sltiu      $v0, $v0, 0x400
/* B3780 800C2F80 09004010 */  beqz       $v0, .L800C2FA8
/* B3784 800C2F84 0300A230 */   andi      $v0, $a1, 3
/* B3788 800C2F88 07004014 */  bnez       $v0, .L800C2FA8
/* B378C 800C2F8C 00000000 */   nop
/* B3790 800C2F90 0500A104 */  bgez       $a1, .L800C2FA8
/* B3794 800C2F94 3F80023C */   lui       $v0, 0x803f
/* B3798 800C2F98 FFFF4234 */  ori        $v0, $v0, 0xffff
/* B379C 800C2F9C 2B104500 */  sltu       $v0, $v0, $a1
/* B37A0 800C2FA0 03004010 */  beqz       $v0, .L800C2FB0
/* B37A4 800C2FA4 00000000 */   nop
.L800C2FA8:
/* B37A8 800C2FA8 21200000 */  addu       $a0, $zero, $zero
/* B37AC 800C2FAC 21288000 */  addu       $a1, $a0, $zero
.L800C2FB0:
/* B37B0 800C2FB0 0000C4AC */  sw         $a0, ($a2)
/* B37B4 800C2FB4 0400C0AC */  sw         $zero, 4($a2)
/* B37B8 800C2FB8 0800C0AC */  sw         $zero, 8($a2)
/* B37BC 800C2FBC 1500A010 */  beqz       $a1, .L800C3014
/* B37C0 800C2FC0 0C00C5AC */   sw        $a1, 0xc($a2)
/* B37C4 800C2FC4 FCFFA28C */  lw         $v0, -4($a1)
/* B37C8 800C2FC8 00000000 */  nop
/* B37CC 800C2FCC 11004014 */  bnez       $v0, .L800C3014
/* B37D0 800C2FD0 FEFF0324 */   addiu     $v1, $zero, -2
/* B37D4 800C2FD4 F8FFA524 */  addiu      $a1, $a1, -8
.L800C2FD8:
/* B37D8 800C2FD8 0000A28C */  lw         $v0, ($a1)
/* B37DC 800C2FDC 00000000 */  nop
/* B37E0 800C2FE0 09004010 */  beqz       $v0, .L800C3008
/* B37E4 800C2FE4 08006228 */   slti      $v0, $v1, 8
/* B37E8 800C2FE8 0400C28C */  lw         $v0, 4($a2)
/* B37EC 800C2FEC FFFF6324 */  addiu      $v1, $v1, -1
/* B37F0 800C2FF0 01004224 */  addiu      $v0, $v0, 1
/* B37F4 800C2FF4 0400C2AC */  sw         $v0, 4($a2)
/* B37F8 800C2FF8 08006228 */  slti       $v0, $v1, 8
/* B37FC 800C2FFC F6FF4014 */  bnez       $v0, .L800C2FD8
/* B3800 800C3000 FCFFA524 */   addiu     $a1, $a1, -4
/* B3804 800C3004 08006228 */  slti       $v0, $v1, 8
.L800C3008:
/* B3808 800C3008 02004014 */  bnez       $v0, .L800C3014
/* B380C 800C300C 00000000 */   nop
/* B3810 800C3010 0400C0AC */  sw         $zero, 4($a2)
.L800C3014:
/* B3814 800C3014 0800E003 */  jr         $ra
/* B3818 800C3018 00000000 */   nop
