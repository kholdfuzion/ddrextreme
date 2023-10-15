.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80027b50
/* 18350 80027B50 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18354 80027B54 0F80033C */  lui        $v1, %hi(D_800F004F)
/* 18358 80027B58 01000224 */  addiu      $v0, $zero, 1
/* 1835C 80027B5C 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 18360 80027B60 A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 18364 80027B64 1000BFAF */  sw         $ra, 0x10($sp)
/* 18368 80027B68 4F0062A0 */  sb         $v0, %lo(D_800F004F)($v1)
/* 1836C 80027B6C B40D828C */  lw         $v0, 0xdb4($a0)
/* 18370 80027B70 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 18374 80027B74 24104300 */  and        $v0, $v0, $v1
/* 18378 80027B78 20004234 */  ori        $v0, $v0, 0x20
/* 1837C 80027B7C 4E8D020C */  jal        FUN_800a3538
/* 18380 80027B80 B40D82AC */   sw        $v0, 0xdb4($a0)
/* 18384 80027B84 EDC1020C */  jal        FUN_800b07b4
/* 18388 80027B88 00000000 */   nop
/* 1838C 80027B8C 1000BF8F */  lw         $ra, 0x10($sp)
/* 18390 80027B90 00000000 */  nop
/* 18394 80027B94 0800E003 */  jr         $ra
/* 18398 80027B98 1800BD27 */   addiu     $sp, $sp, 0x18
