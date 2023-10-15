.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004261c
/* 32E1C 8004261C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32E20 80042620 1000BFAF */  sw         $ra, 0x10($sp)
/* 32E24 80042624 7DC4000C */  jal        get_astruct_800311f4
/* 32E28 80042628 00000000 */   nop
/* 32E2C 8004262C 06000424 */  addiu      $a0, $zero, 6
/* 32E30 80042630 2C004324 */  addiu      $v1, $v0, 0x2c
/* 32E34 80042634 040040A4 */  sh         $zero, 4($v0)
/* 32E38 80042638 120040A4 */  sh         $zero, 0x12($v0)
/* 32E3C 8004263C 140040A4 */  sh         $zero, 0x14($v0)
/* 32E40 80042640 160040A4 */  sh         $zero, 0x16($v0)
.L80042644:
/* 32E44 80042644 000060A4 */  sh         $zero, ($v1)
/* 32E48 80042648 FFFF8424 */  addiu      $a0, $a0, -1
/* 32E4C 8004264C FDFF8104 */  bgez       $a0, .L80042644
/* 32E50 80042650 FEFF6324 */   addiu     $v1, $v1, -2
/* 32E54 80042654 1000BF8F */  lw         $ra, 0x10($sp)
/* 32E58 80042658 00000000 */  nop
/* 32E5C 8004265C 0800E003 */  jr         $ra
/* 32E60 80042660 1800BD27 */   addiu     $sp, $sp, 0x18
