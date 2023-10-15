.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be324
/* AEB24 800BE324 00008294 */  lhu        $v0, ($a0)
/* AEB28 800BE328 00000000 */  nop
/* AEB2C 800BE32C FFFF4430 */  andi       $a0, $v0, 0xffff
/* AEB30 800BE330 80008230 */  andi       $v0, $a0, 0x80
/* AEB34 800BE334 05004010 */  beqz       $v0, .L800BE34C
/* AEB38 800BE338 FEFF0324 */   addiu     $v1, $zero, -2
/* AEB3C 800BE33C 20008230 */  andi       $v0, $a0, 0x20
/* AEB40 800BE340 02004010 */  beqz       $v0, .L800BE34C
/* AEB44 800BE344 21180000 */   addu      $v1, $zero, $zero
/* AEB48 800BE348 FFFF0324 */  addiu      $v1, $zero, -1
.L800BE34C:
/* AEB4C 800BE34C 0800E003 */  jr         $ra
/* AEB50 800BE350 21106000 */   addu      $v0, $v1, $zero
