.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a34bc
/* 93CBC 800A34BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 93CC0 800A34C0 1000B0AF */  sw         $s0, 0x10($sp)
/* 93CC4 800A34C4 1B80103C */  lui        $s0, %hi(D_801B2EA0)
/* 93CC8 800A34C8 A02E1026 */  addiu      $s0, $s0, %lo(D_801B2EA0)
/* 93CCC 800A34CC 21200002 */  addu       $a0, $s0, $zero
/* 93CD0 800A34D0 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 93CD4 800A34D4 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 93CD8 800A34D8 F4010524 */  addiu      $a1, $zero, 0x1f4
/* 93CDC 800A34DC 0100033C */  lui        $v1, 1
/* 93CE0 800A34E0 1400BFAF */  sw         $ra, 0x14($sp)
/* 93CE4 800A34E4 460045A4 */  sh         $a1, 0x46($v0)
/* 93CE8 800A34E8 21104300 */  addu       $v0, $v0, $v1
/* 93CEC 800A34EC 4793020C */  jal        FUN_800a4d1c
/* 93CF0 800A34F0 C24245A4 */   sh        $a1, 0x42c2($v0)
/* 93CF4 800A34F4 E194020C */  jal        FUN_800a5384
/* 93CF8 800A34F8 21200002 */   addu      $a0, $s0, $zero
/* 93CFC 800A34FC 3896020C */  jal        FUN_800a58e0
/* 93D00 800A3500 21200002 */   addu      $a0, $s0, $zero
/* 93D04 800A3504 F0D2010C */  jal        FUN_80074bc0
/* 93D08 800A3508 00000000 */   nop
/* 93D0C 800A350C A6D5010C */  jal        FUN_80075698
/* 93D10 800A3510 00000000 */   nop
/* 93D14 800A3514 4F86020C */  jal        FUN_800a193c
/* 93D18 800A3518 00000000 */   nop
/* 93D1C 800A351C 4A86020C */  jal        FUN_800a1928
/* 93D20 800A3520 00000000 */   nop
/* 93D24 800A3524 1400BF8F */  lw         $ra, 0x14($sp)
/* 93D28 800A3528 180000AE */  sw         $zero, 0x18($s0)
/* 93D2C 800A352C 1000B08F */  lw         $s0, 0x10($sp)
/* 93D30 800A3530 0800E003 */  jr         $ra
/* 93D34 800A3534 1800BD27 */   addiu     $sp, $sp, 0x18
