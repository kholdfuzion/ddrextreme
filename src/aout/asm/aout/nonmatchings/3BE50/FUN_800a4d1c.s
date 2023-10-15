.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a4d1c
/* 9551C 800A4D1C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 95520 800A4D20 1000B0AF */  sw         $s0, 0x10($sp)
/* 95524 800A4D24 1400BFAF */  sw         $ra, 0x14($sp)
/* 95528 800A4D28 C20B010C */  jal        FUN_80042f08
/* 9552C 800A4D2C 21808000 */   addu      $s0, $a0, $zero
/* 95530 800A4D30 21200002 */  addu       $a0, $s0, $zero
/* 95534 800A4D34 000000A6 */  sh         $zero, ($s0)
/* 95538 800A4D38 3896020C */  jal        FUN_800a58e0
/* 9553C 800A4D3C 020000A2 */   sb        $zero, 2($s0)
/* 95540 800A4D40 1400BF8F */  lw         $ra, 0x14($sp)
/* 95544 800A4D44 1000B08F */  lw         $s0, 0x10($sp)
/* 95548 800A4D48 0800E003 */  jr         $ra
/* 9554C 800A4D4C 1800BD27 */   addiu     $sp, $sp, 0x18
