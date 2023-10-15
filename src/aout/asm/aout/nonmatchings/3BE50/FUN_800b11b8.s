.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b11b8
/* A19B8 800B11B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A19BC 800B11BC 1000A4AF */  sw         $a0, 0x10($sp)
/* A19C0 800B11C0 21200000 */  addu       $a0, $zero, $zero
/* A19C4 800B11C4 09000524 */  addiu      $a1, $zero, 9
/* A19C8 800B11C8 1000A627 */  addiu      $a2, $sp, 0x10
/* A19CC 800B11CC 1800BFAF */  sw         $ra, 0x18($sp)
/* A19D0 800B11D0 21FD020C */  jal        FUN_800bf484
/* A19D4 800B11D4 21380000 */   addu      $a3, $zero, $zero
/* A19D8 800B11D8 21184000 */  addu       $v1, $v0, $zero
/* A19DC 800B11DC 02006010 */  beqz       $v1, .L800B11E8
/* A19E0 800B11E0 21100000 */   addu      $v0, $zero, $zero
/* A19E4 800B11E4 FFFF0224 */  addiu      $v0, $zero, -1
.L800B11E8:
/* A19E8 800B11E8 1800BF8F */  lw         $ra, 0x18($sp)
/* A19EC 800B11EC 00000000 */  nop
/* A19F0 800B11F0 0800E003 */  jr         $ra
/* A19F4 800B11F4 2000BD27 */   addiu     $sp, $sp, 0x20
