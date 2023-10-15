.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2f84
/* A3784 800B2F84 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A3788 800B2F88 1E80023C */  lui        $v0, %hi(D_801E0764)
/* A378C 800B2F8C 1400B1AF */  sw         $s1, 0x14($sp)
/* A3790 800B2F90 64075124 */  addiu      $s1, $v0, %lo(D_801E0764)
/* A3794 800B2F94 1800BFAF */  sw         $ra, 0x18($sp)
/* A3798 800B2F98 1000B0AF */  sw         $s0, 0x10($sp)
/* A379C 800B2F9C 02002392 */  lbu        $v1, 2($s1)
/* A37A0 800B2FA0 00000000 */  nop
/* A37A4 800B2FA4 0F006010 */  beqz       $v1, .L800B2FE4
/* A37A8 800B2FA8 00000000 */   nop
/* A37AC 800B2FAC 03002292 */  lbu        $v0, 3($s1)
/* A37B0 800B2FB0 00000000 */  nop
/* A37B4 800B2FB4 0B004014 */  bnez       $v0, .L800B2FE4
/* A37B8 800B2FB8 1E80103C */   lui       $s0, %hi(D_801E0760)
/* A37BC 800B2FBC 0100053C */  lui        $a1, 1
/* A37C0 800B2FC0 6007048E */  lw         $a0, %lo(D_801E0760)($s0)
/* A37C4 800B2FC4 FED5020C */  jal        FUN_800b57f8
/* A37C8 800B2FC8 9400A534 */   ori       $a1, $a1, 0x94
/* A37CC 800B2FCC 7F00053C */  lui        $a1, 0x7f
/* A37D0 800B2FD0 6007048E */  lw         $a0, 0x760($s0)
/* A37D4 800B2FD4 FED5020C */  jal        FUN_800b57f8
/* A37D8 800B2FD8 9500A534 */   ori       $a1, $a1, 0x95
/* A37DC 800B2FDC 01000324 */  addiu      $v1, $zero, 1
/* A37E0 800B2FE0 030023A2 */  sb         $v1, 3($s1)
.L800B2FE4:
/* A37E4 800B2FE4 1800BF8F */  lw         $ra, 0x18($sp)
/* A37E8 800B2FE8 1400B18F */  lw         $s1, 0x14($sp)
/* A37EC 800B2FEC 1000B08F */  lw         $s0, 0x10($sp)
/* A37F0 800B2FF0 0800E003 */  jr         $ra
/* A37F4 800B2FF4 2000BD27 */   addiu     $sp, $sp, 0x20
