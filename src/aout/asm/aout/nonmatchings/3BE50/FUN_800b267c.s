.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b267c
/* A2E7C 800B267C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A2E80 800B2680 21200000 */  addu       $a0, $zero, $zero
/* A2E84 800B2684 40000524 */  addiu      $a1, $zero, 0x40
/* A2E88 800B2688 70000624 */  addiu      $a2, $zero, 0x70
/* A2E8C 800B268C 00100724 */  addiu      $a3, $zero, 0x1000
/* A2E90 800B2690 1800B0AF */  sw         $s0, 0x18($sp)
/* A2E94 800B2694 00101024 */  addiu      $s0, $zero, 0x1000
/* A2E98 800B2698 0180023C */  lui        $v0, %hi(D_80017134)
/* A2E9C 800B269C 34714224 */  addiu      $v0, $v0, %lo(D_80017134)
/* A2EA0 800B26A0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A2EA4 800B26A4 1000B0AF */  sw         $s0, 0x10($sp)
/* A2EA8 800B26A8 C2C8020C */  jal        InfoString_800b2308
/* A2EAC 800B26AC 1400A2AF */   sw        $v0, 0x14($sp)
/* A2EB0 800B26B0 21200000 */  addu       $a0, $zero, $zero
/* A2EB4 800B26B4 34000524 */  addiu      $a1, $zero, 0x34
/* A2EB8 800B26B8 80000624 */  addiu      $a2, $zero, 0x80
/* A2EBC 800B26BC 00100724 */  addiu      $a3, $zero, 0x1000
/* A2EC0 800B26C0 0180023C */  lui        $v0, %hi(D_80017150)
/* A2EC4 800B26C4 50714224 */  addiu      $v0, $v0, %lo(D_80017150)
/* A2EC8 800B26C8 1000B0AF */  sw         $s0, 0x10($sp)
/* A2ECC 800B26CC C2C8020C */  jal        InfoString_800b2308
/* A2ED0 800B26D0 1400A2AF */   sw        $v0, 0x14($sp)
/* A2ED4 800B26D4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A2ED8 800B26D8 1800B08F */  lw         $s0, 0x18($sp)
/* A2EDC 800B26DC 0800E003 */  jr         $ra
/* A2EE0 800B26E0 2000BD27 */   addiu     $sp, $sp, 0x20
