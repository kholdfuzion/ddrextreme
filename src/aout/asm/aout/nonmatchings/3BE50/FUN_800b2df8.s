.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2df8
/* A35F8 800B2DF8 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A35FC 800B2DFC 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A3600 800B2E00 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A3604 800B2E04 06006010 */  beqz       $v1, .L800B2E20
/* A3608 800B2E08 1000BFAF */   sw        $ra, 0x10($sp)
/* A360C 800B2E0C 4000053C */  lui        $a1, 0x40
/* A3610 800B2E10 1E80023C */  lui        $v0, %hi(D_801E0760)
/* A3614 800B2E14 6007448C */  lw         $a0, %lo(D_801E0760)($v0)
/* A3618 800B2E18 FED5020C */  jal        FUN_800b57f8
/* A361C 800B2E1C 0100A534 */   ori       $a1, $a1, 1
.L800B2E20:
/* A3620 800B2E20 21100000 */  addu       $v0, $zero, $zero
/* A3624 800B2E24 1000BF8F */  lw         $ra, 0x10($sp)
/* A3628 800B2E28 00000000 */  nop
/* A362C 800B2E2C 0800E003 */  jr         $ra
/* A3630 800B2E30 1800BD27 */   addiu     $sp, $sp, 0x18
