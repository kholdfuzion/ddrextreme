.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel printBOOTCHECKMSG_800b25d4
/* A2DD4 800B25D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A2DD8 800B25D8 00100324 */  addiu      $v1, $zero, 0x1000
/* A2DDC 800B25DC 0180023C */  lui        $v0, %hi(D_80017170)
/* A2DE0 800B25E0 70714224 */  addiu      $v0, $v0, %lo(D_80017170)
/* A2DE4 800B25E4 21200000 */  addu       $a0, $zero, $zero
/* A2DE8 800B25E8 04000524 */  addiu      $a1, $zero, 4
/* A2DEC 800B25EC 04000624 */  addiu      $a2, $zero, 4
/* A2DF0 800B25F0 00100724 */  addiu      $a3, $zero, 0x1000
/* A2DF4 800B25F4 1800BFAF */  sw         $ra, 0x18($sp)
/* A2DF8 800B25F8 1000A3AF */  sw         $v1, 0x10($sp)
/* A2DFC 800B25FC C2C8020C */  jal        InfoString_800b2308
/* A2E00 800B2600 1400A2AF */   sw        $v0, 0x14($sp)
/* A2E04 800B2604 1800BF8F */  lw         $ra, 0x18($sp)
/* A2E08 800B2608 00000000 */  nop
/* A2E0C 800B260C 0800E003 */  jr         $ra
/* A2E10 800B2610 2000BD27 */   addiu     $sp, $sp, 0x20
