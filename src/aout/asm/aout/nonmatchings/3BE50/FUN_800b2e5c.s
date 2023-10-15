.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2e5c
/* A365C 800B2E5C 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A3660 800B2E60 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A3664 800B2E64 00000000 */  nop
/* A3668 800B2E68 03006014 */  bnez       $v1, .L800B2E78
/* A366C 800B2E6C 21280000 */   addu      $a1, $zero, $zero
/* A3670 800B2E70 0800E003 */  jr         $ra
/* A3674 800B2E74 01000224 */   addiu     $v0, $zero, 1
.L800B2E78:
/* A3678 800B2E78 1E80023C */  lui        $v0, %hi(D_801DF520)
/* A367C 800B2E7C 20F54424 */  addiu      $a0, $v0, %lo(D_801DF520)
/* A3680 800B2E80 20F54394 */  lhu        $v1, -0xae0($v0)
/* A3684 800B2E84 00000000 */  nop
/* A3688 800B2E88 05006010 */  beqz       $v1, .L800B2EA0
/* A368C 800B2E8C 21304000 */   addu      $a2, $v0, $zero
/* A3690 800B2E90 14008290 */  lbu        $v0, 0x14($a0)
/* A3694 800B2E94 00000000 */  nop
/* A3698 800B2E98 12004014 */  bnez       $v0, .L800B2EE4
/* A369C 800B2E9C 1800A238 */   xori      $v0, $a1, 0x18
.L800B2EA0:
/* A36A0 800B2EA0 0100A524 */  addiu      $a1, $a1, 1
.L800B2EA4:
/* A36A4 800B2EA4 1800A228 */  slti       $v0, $a1, 0x18
/* A36A8 800B2EA8 0D004010 */  beqz       $v0, .L800B2EE0
/* A36AC 800B2EAC 40190500 */   sll       $v1, $a1, 5
/* A36B0 800B2EB0 20F5C224 */  addiu      $v0, $a2, -0xae0
/* A36B4 800B2EB4 21186200 */  addu       $v1, $v1, $v0
/* A36B8 800B2EB8 00006494 */  lhu        $a0, ($v1)
/* A36BC 800B2EBC 00000000 */  nop
/* A36C0 800B2EC0 F8FF8010 */  beqz       $a0, .L800B2EA4
/* A36C4 800B2EC4 0100A524 */   addiu     $a1, $a1, 1
/* A36C8 800B2EC8 FFFFA524 */  addiu      $a1, $a1, -1
/* A36CC 800B2ECC 14006290 */  lbu        $v0, 0x14($v1)
/* A36D0 800B2ED0 00000000 */  nop
/* A36D4 800B2ED4 F3FF4010 */  beqz       $v0, .L800B2EA4
/* A36D8 800B2ED8 0100A524 */   addiu     $a1, $a1, 1
/* A36DC 800B2EDC FFFFA524 */  addiu      $a1, $a1, -1
.L800B2EE0:
/* A36E0 800B2EE0 1800A238 */  xori       $v0, $a1, 0x18
.L800B2EE4:
/* A36E4 800B2EE4 0800E003 */  jr         $ra
/* A36E8 800B2EE8 0100422C */   sltiu     $v0, $v0, 1
