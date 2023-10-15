.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b3004
/* A3804 800B3004 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A3808 800B3008 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A380C 800B300C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A3810 800B3010 03006010 */  beqz       $v1, .L800B3020
/* A3814 800B3014 1000BFAF */   sw        $ra, 0x10($sp)
/* A3818 800B3018 2BDA020C */  jal        FUN_800b68ac
/* A381C 800B301C 00800434 */   ori       $a0, $zero, 0x8000
.L800B3020:
/* A3820 800B3020 1000BF8F */  lw         $ra, 0x10($sp)
/* A3824 800B3024 00000000 */  nop
/* A3828 800B3028 0800E003 */  jr         $ra
/* A382C 800B302C 1800BD27 */   addiu     $sp, $sp, 0x18
