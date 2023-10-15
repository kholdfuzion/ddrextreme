.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2ccc
/* A34CC 800B2CCC 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A34D0 800B2CD0 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A34D4 800B2CD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A34D8 800B2CD8 1000B0AF */  sw         $s0, 0x10($sp)
/* A34DC 800B2CDC 21808000 */  addu       $s0, $a0, $zero
/* A34E0 800B2CE0 0A006010 */  beqz       $v1, .L800B2D0C
/* A34E4 800B2CE4 1400BFAF */   sw        $ra, 0x14($sp)
/* A34E8 800B2CE8 2373000C */  jal        FUN_8001cc8c
/* A34EC 800B2CEC 00000000 */   nop
/* A34F0 800B2CF0 06004014 */  bnez       $v0, .L800B2D0C
/* A34F4 800B2CF4 9700022E */   sltiu     $v0, $s0, 0x97
/* A34F8 800B2CF8 04004010 */  beqz       $v0, .L800B2D0C
/* A34FC 800B2CFC 1E80023C */   lui       $v0, %hi(D_801E0760)
/* A3500 800B2D00 6007448C */  lw         $a0, %lo(D_801E0760)($v0)
/* A3504 800B2D04 B6D5020C */  jal        FUN_800b56d8
/* A3508 800B2D08 21280002 */   addu      $a1, $s0, $zero
.L800B2D0C:
/* A350C 800B2D0C 1400BF8F */  lw         $ra, 0x14($sp)
/* A3510 800B2D10 1000B08F */  lw         $s0, 0x10($sp)
/* A3514 800B2D14 0800E003 */  jr         $ra
/* A3518 800B2D18 1800BD27 */   addiu     $sp, $sp, 0x18
