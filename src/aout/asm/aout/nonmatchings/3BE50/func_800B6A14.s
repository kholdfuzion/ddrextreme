.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B6A14
/* A7214 800B6A14 1E80023C */  lui        $v0, %hi(D_801E0788)
/* A7218 800B6A18 88074390 */  lbu        $v1, %lo(D_801E0788)($v0)
/* A721C 800B6A1C 00000000 */  nop
/* A7220 800B6A20 02006010 */  beqz       $v1, .L800B6A2C
/* A7224 800B6A24 21100000 */   addu      $v0, $zero, $zero
/* A7228 800B6A28 FFFF0224 */  addiu      $v0, $zero, -1
.L800B6A2C:
/* A722C 800B6A2C 0800E003 */  jr         $ra
/* A7230 800B6A30 00000000 */   nop
