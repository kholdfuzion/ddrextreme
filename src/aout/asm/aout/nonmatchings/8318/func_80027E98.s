.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027E98
/* 18698 80027E98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1869C 80027E9C 1000BFAF */  sw         $ra, 0x10($sp)
/* 186A0 80027EA0 02000424 */  addiu      $a0, $zero, 2
/* 186A4 80027EA4 3EA2020C */  jal        FUN_800a88f8
/* 186A8 80027EA8 21280000 */   addu      $a1, $zero, $zero
/* 186AC 80027EAC C39D000C */  jal        FUN_8002770c
/* 186B0 80027EB0 21204000 */   addu      $a0, $v0, $zero
/* 186B4 80027EB4 1F28010C */  jal        FUN_8004a07c
/* 186B8 80027EB8 00000000 */   nop
/* 186BC 80027EBC EEAF020C */  jal        FUN_800abfb8
/* 186C0 80027EC0 00000000 */   nop
/* 186C4 80027EC4 05004010 */  beqz       $v0, .L80027EDC
/* 186C8 80027EC8 00000000 */   nop
/* 186CC 80027ECC 417A010C */  jal        FUN_8005e904
/* 186D0 80027ED0 00000000 */   nop
/* 186D4 80027ED4 C29F0008 */  j          .L80027F08
/* 186D8 80027ED8 00000000 */   nop
.L80027EDC:
/* 186DC 80027EDC F8AE020C */  jal        FUN_800abbe0
/* 186E0 80027EE0 00000000 */   nop
/* 186E4 80027EE4 08004010 */  beqz       $v0, .L80027F08
/* 186E8 80027EE8 00000000 */   nop
/* 186EC 80027EEC 6E19030C */  jal        FUN_800c65b8
/* 186F0 80027EF0 00000000 */   nop
/* 186F4 80027EF4 11004230 */  andi       $v0, $v0, 0x11
/* 186F8 80027EF8 03004010 */  beqz       $v0, .L80027F08
/* 186FC 80027EFC 00000000 */   nop
/* 18700 80027F00 2B7A010C */  jal        FUN_8005e8ac
/* 18704 80027F04 00000000 */   nop
.L80027F08:
/* 18708 80027F08 1F7A010C */  jal        FUN_8005e87c
/* 1870C 80027F0C 00000000 */   nop
/* 18710 80027F10 00200324 */  addiu      $v1, $zero, 0x2000
/* 18714 80027F14 03004314 */  bne        $v0, $v1, .L80027F24
/* 18718 80027F18 07000224 */   addiu     $v0, $zero, 7
/* 1871C 80027F1C 179D000C */  jal        FUN_8002745c
/* 18720 80027F20 07000424 */   addiu     $a0, $zero, 7
.L80027F24:
/* 18724 80027F24 1000BF8F */  lw         $ra, 0x10($sp)
/* 18728 80027F28 00000000 */  nop
/* 1872C 80027F2C 0800E003 */  jr         $ra
/* 18730 80027F30 1800BD27 */   addiu     $sp, $sp, 0x18
