.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2dcc
/* A35CC 800B2DCC 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A35D0 800B2DD0 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A35D4 800B2DD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A35D8 800B2DD8 03006010 */  beqz       $v1, .L800B2DE8
/* A35DC 800B2DDC 1000BFAF */   sw        $ra, 0x10($sp)
/* A35E0 800B2DE0 2BDA020C */  jal        FUN_800b68ac
/* A35E4 800B2DE4 FFFF8430 */   andi      $a0, $a0, 0xffff
.L800B2DE8:
/* A35E8 800B2DE8 1000BF8F */  lw         $ra, 0x10($sp)
/* A35EC 800B2DEC 00000000 */  nop
/* A35F0 800B2DF0 0800E003 */  jr         $ra
/* A35F4 800B2DF4 1800BD27 */   addiu     $sp, $sp, 0x18
