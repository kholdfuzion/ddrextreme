.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2bb0
/* A33B0 800B2BB0 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A33B4 800B2BB4 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A33B8 800B2BB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A33BC 800B2BBC 05006010 */  beqz       $v1, .L800B2BD4
/* A33C0 800B2BC0 1000BFAF */   sw        $ra, 0x10($sp)
/* A33C4 800B2BC4 8DCB020C */  jal        FUN_800b2e34
/* A33C8 800B2BC8 00000000 */   nop
/* A33CC 800B2BCC F6CA0208 */  j          .L800B2BD8
/* A33D0 800B2BD0 01000224 */   addiu     $v0, $zero, 1
.L800B2BD4:
/* A33D4 800B2BD4 21100000 */  addu       $v0, $zero, $zero
.L800B2BD8:
/* A33D8 800B2BD8 1000BF8F */  lw         $ra, 0x10($sp)
/* A33DC 800B2BDC 00000000 */  nop
/* A33E0 800B2BE0 0800E003 */  jr         $ra
/* A33E4 800B2BE4 1800BD27 */   addiu     $sp, $sp, 0x18
