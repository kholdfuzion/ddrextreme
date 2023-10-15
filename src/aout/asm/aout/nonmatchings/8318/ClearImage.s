.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ClearImage
/* 8CE4 800184E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8CE8 800184E8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 8CEC 800184EC 21988000 */  addu       $s3, $a0, $zero
/* 8CF0 800184F0 0180043C */  lui        $a0, %hi(D_800101B4)
/* 8CF4 800184F4 B4018424 */  addiu      $a0, $a0, %lo(D_800101B4)
/* 8CF8 800184F8 1800B2AF */  sw         $s2, 0x18($sp)
/* 8CFC 800184FC 2190A000 */  addu       $s2, $a1, $zero
/* 8D00 80018500 21286002 */  addu       $a1, $s3, $zero
/* 8D04 80018504 1400B1AF */  sw         $s1, 0x14($sp)
/* 8D08 80018508 2188C000 */  addu       $s1, $a2, $zero
/* 8D0C 8001850C 1000B0AF */  sw         $s0, 0x10($sp)
/* 8D10 80018510 2000BFAF */  sw         $ra, 0x20($sp)
/* 8D14 80018514 F260000C */  jal        SYS_OBJ_3E4
/* 8D18 80018518 2180E000 */   addu      $s0, $a3, $zero
/* 8D1C 8001851C 21286002 */  addu       $a1, $s3, $zero
/* 8D20 80018520 FF001032 */  andi       $s0, $s0, 0xff
/* 8D24 80018524 00841000 */  sll        $s0, $s0, 0x10
/* 8D28 80018528 FF003132 */  andi       $s1, $s1, 0xff
/* 8D2C 8001852C 008A1100 */  sll        $s1, $s1, 8
/* 8D30 80018530 25801102 */  or         $s0, $s0, $s1
/* 8D34 80018534 FF005232 */  andi       $s2, $s2, 0xff
/* 8D38 80018538 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 8D3C 8001853C 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 8D40 80018540 08000624 */  addiu      $a2, $zero, 8
/* 8D44 80018544 0C00448C */  lw         $a0, 0xc($v0)
/* 8D48 80018548 0800428C */  lw         $v0, 8($v0)
/* 8D4C 8001854C 00000000 */  nop
/* 8D50 80018550 09F84000 */  jalr       $v0
/* 8D54 80018554 25381202 */   or        $a3, $s0, $s2
/* 8D58 80018558 2000BF8F */  lw         $ra, 0x20($sp)
/* 8D5C 8001855C 1C00B38F */  lw         $s3, 0x1c($sp)
/* 8D60 80018560 1800B28F */  lw         $s2, 0x18($sp)
/* 8D64 80018564 1400B18F */  lw         $s1, 0x14($sp)
/* 8D68 80018568 1000B08F */  lw         $s0, 0x10($sp)
/* 8D6C 8001856C 0800E003 */  jr         $ra
/* 8D70 80018570 2800BD27 */   addiu     $sp, $sp, 0x28
