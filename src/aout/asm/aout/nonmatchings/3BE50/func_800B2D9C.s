.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B2D9C
/* A359C 800B2D9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A35A0 800B2DA0 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A35A4 800B2DA4 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A35A8 800B2DA8 FF008430 */  andi       $a0, $a0, 0xff
/* A35AC 800B2DAC 03006010 */  beqz       $v1, .L800B2DBC
/* A35B0 800B2DB0 1000BFAF */   sw        $ra, 0x10($sp)
/* A35B4 800B2DB4 18DA020C */  jal        FUN_800b6860
/* A35B8 800B2DB8 00000000 */   nop
.L800B2DBC:
/* A35BC 800B2DBC 1000BF8F */  lw         $ra, 0x10($sp)
/* A35C0 800B2DC0 00000000 */  nop
/* A35C4 800B2DC4 0800E003 */  jr         $ra
/* A35C8 800B2DC8 1800BD27 */   addiu     $sp, $sp, 0x18
