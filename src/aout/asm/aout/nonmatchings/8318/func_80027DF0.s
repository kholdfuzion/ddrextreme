.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027DF0
/* 185F0 80027DF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 185F4 80027DF4 1000BFAF */  sw         $ra, 0x10($sp)
/* 185F8 80027DF8 2676020C */  jal        FUN_8009d898
/* 185FC 80027DFC 08008424 */   addiu     $a0, $a0, 8
/* 18600 80027E00 21184000 */  addu       $v1, $v0, $zero
/* 18604 80027E04 07006010 */  beqz       $v1, .L80027E24
/* 18608 80027E08 04000224 */   addiu     $v0, $zero, 4
/* 1860C 80027E0C 06006214 */  bne        $v1, $v0, .L80027E28
/* 18610 80027E10 06000224 */   addiu     $v0, $zero, 6
/* 18614 80027E14 179D000C */  jal        FUN_8002745c
/* 18618 80027E18 06000424 */   addiu     $a0, $zero, 6
/* 1861C 80027E1C 8A9F0008 */  j          .L80027E28
/* 18620 80027E20 00000000 */   nop
.L80027E24:
/* 18624 80027E24 06000224 */  addiu      $v0, $zero, 6
.L80027E28:
/* 18628 80027E28 1000BF8F */  lw         $ra, 0x10($sp)
/* 1862C 80027E2C 00000000 */  nop
/* 18630 80027E30 0800E003 */  jr         $ra
/* 18634 80027E34 1800BD27 */   addiu     $sp, $sp, 0x18
