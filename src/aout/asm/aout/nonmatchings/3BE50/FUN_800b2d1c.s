.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2d1c
/* A351C 800B2D1C 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A3520 800B2D20 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A3524 800B2D24 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A3528 800B2D28 0B006010 */  beqz       $v1, .L800B2D58
/* A352C 800B2D2C 1000BFAF */   sw        $ra, 0x10($sp)
/* A3530 800B2D30 92D6020C */  jal        FUN_800b5a48
/* A3534 800B2D34 01000424 */   addiu     $a0, $zero, 1
/* A3538 800B2D38 52CB0208 */  j          .L800B2D48
/* A353C 800B2D3C 00000000 */   nop
.L800B2D40:
/* A3540 800B2D40 7CAA000C */  jal        vsync_8002a9f0
/* A3544 800B2D44 00000000 */   nop
.L800B2D48:
/* A3548 800B2D48 97CB020C */  jal        FUN_800b2e5c
/* A354C 800B2D4C 00000000 */   nop
/* A3550 800B2D50 FBFF4010 */  beqz       $v0, .L800B2D40
/* A3554 800B2D54 00000000 */   nop
.L800B2D58:
/* A3558 800B2D58 1000BF8F */  lw         $ra, 0x10($sp)
/* A355C 800B2D5C 00000000 */  nop
/* A3560 800B2D60 0800E003 */  jr         $ra
/* A3564 800B2D64 1800BD27 */   addiu     $sp, $sp, 0x18
