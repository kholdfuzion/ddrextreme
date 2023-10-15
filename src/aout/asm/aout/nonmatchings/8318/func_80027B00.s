.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027B00
/* 18300 80027B00 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18304 80027B04 1000BFAF */  sw         $ra, 0x10($sp)
/* 18308 80027B08 EA8C020C */  jal        FUN_800a33a8
/* 1830C 80027B0C 00000000 */   nop
/* 18310 80027B10 03004014 */  bnez       $v0, .L80027B20
/* 18314 80027B14 1380023C */   lui       $v0, %hi(D_80129DA8)
/* 18318 80027B18 D09E0008 */  j          .L80027B40
/* 1831C 80027B1C 03000224 */   addiu     $v0, $zero, 3
.L80027B20:
/* 18320 80027B20 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 18324 80027B24 B40D438C */  lw         $v1, 0xdb4($v0)
/* 18328 80027B28 0FFF0424 */  addiu      $a0, $zero, -0xf1
/* 1832C 80027B2C 24186400 */  and        $v1, $v1, $a0
/* 18330 80027B30 20006334 */  ori        $v1, $v1, 0x20
/* 18334 80027B34 03000424 */  addiu      $a0, $zero, 3
/* 18338 80027B38 179D000C */  jal        FUN_8002745c
/* 1833C 80027B3C B40D43AC */   sw        $v1, 0xdb4($v0)
.L80027B40:
/* 18340 80027B40 1000BF8F */  lw         $ra, 0x10($sp)
/* 18344 80027B44 00000000 */  nop
/* 18348 80027B48 0800E003 */  jr         $ra
/* 1834C 80027B4C 1800BD27 */   addiu     $sp, $sp, 0x18
