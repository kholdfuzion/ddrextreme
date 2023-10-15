.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b147c
/* A1C7C 800B147C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* A1C80 800B1480 9CFF0224 */  addiu      $v0, $zero, -0x64
/* A1C84 800B1484 1400A2AF */  sw         $v0, 0x14($sp)
/* A1C88 800B1488 1800A2AF */  sw         $v0, 0x18($sp)
/* A1C8C 800B148C 1000A227 */  addiu      $v0, $sp, 0x10
/* A1C90 800B1490 1000A4AF */  sw         $a0, 0x10($sp)
/* A1C94 800B1494 1C00A4AF */  sw         $a0, 0x1c($sp)
/* A1C98 800B1498 21200000 */  addu       $a0, $zero, $zero
/* A1C9C 800B149C 0D000524 */  addiu      $a1, $zero, 0xd
/* A1CA0 800B14A0 2000A627 */  addiu      $a2, $sp, 0x20
/* A1CA4 800B14A4 21380000 */  addu       $a3, $zero, $zero
/* A1CA8 800B14A8 2800BFAF */  sw         $ra, 0x28($sp)
/* A1CAC 800B14AC 21FD020C */  jal        FUN_800bf484
/* A1CB0 800B14B0 2000A2AF */   sw        $v0, 0x20($sp)
/* A1CB4 800B14B4 21184000 */  addu       $v1, $v0, $zero
/* A1CB8 800B14B8 02006010 */  beqz       $v1, .L800B14C4
/* A1CBC 800B14BC 21100000 */   addu      $v0, $zero, $zero
/* A1CC0 800B14C0 FFFF0224 */  addiu      $v0, $zero, -1
.L800B14C4:
/* A1CC4 800B14C4 2800BF8F */  lw         $ra, 0x28($sp)
/* A1CC8 800B14C8 00000000 */  nop
/* A1CCC 800B14CC 0800E003 */  jr         $ra
/* A1CD0 800B14D0 3000BD27 */   addiu     $sp, $sp, 0x30
