.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c8fc
/* D0FC 8001C8FC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D100 8001C900 1000BFAF */  sw         $ra, 0x10($sp)
/* D104 8001C904 2A76010C */  jal        FUN_8005d8a8
/* D108 8001C908 00000000 */   nop
/* D10C 8001C90C 0E80033C */  lui        $v1, %hi(D_800D887C)
/* D110 8001C910 1280043C */  lui        $a0, %hi(D_8011A2A0)
/* D114 8001C914 A0A2858C */  lw         $a1, %lo(D_8011A2A0)($a0)
/* D118 8001C918 7C886324 */  addiu      $v1, $v1, %lo(D_800D887C)
/* D11C 8001C91C 80100500 */  sll        $v0, $a1, 2
/* D120 8001C920 21186200 */  addu       $v1, $v1, $v0
/* D124 8001C924 2000628C */  lw         $v0, 0x20($v1)
/* D128 8001C928 00000000 */  nop
/* D12C 8001C92C 09F84000 */  jalr       $v0
/* D130 8001C930 A0A28424 */   addiu     $a0, $a0, -0x5d60
/* D134 8001C934 1000BF8F */  lw         $ra, 0x10($sp)
/* D138 8001C938 00000000 */  nop
/* D13C 8001C93C 0800E003 */  jr         $ra
/* D140 8001C940 1800BD27 */   addiu     $sp, $sp, 0x18
