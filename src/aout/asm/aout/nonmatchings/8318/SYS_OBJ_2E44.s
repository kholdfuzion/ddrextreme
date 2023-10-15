.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2E44
/* B628 8001AE28 24104300 */  and        $v0, $v0, $v1
/* B62C 8001AE2C F5FF4014 */  bnez       $v0, .L8001AE04
/* B630 8001AE30 00000000 */   nop
/* B634 8001AE34 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* B638 8001AE38 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* B63C 8001AE3C 00000000 */  nop
/* B640 8001AE40 0000428C */  lw         $v0, ($v0)
/* B644 8001AE44 0004033C */  lui        $v1, 0x400
/* B648 8001AE48 24104300 */  and        $v0, $v0, $v1
/* B64C 8001AE4C EDFF4010 */  beqz       $v0, .L8001AE04
/* B650 8001AE50 00000000 */   nop
/* B654 8001AE54 0280053C */  lui        $a1, %hi(_GPU_ResetCallback)
/* B658 8001AE58 94AEA524 */  addiu      $a1, $a1, %lo(_GPU_ResetCallback)
/* B65C 8001AE5C 716C000C */  jal        DMACallback
/* B660 8001AE60 02000424 */   addiu     $a0, $zero, 2
/* B664 8001AE64 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* B668 8001AE68 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* B66C 8001AE6C 00000000 */  nop
/* B670 8001AE70 1800428C */  lw         $v0, 0x18($v0)
/* B674 8001AE74 00000000 */  nop
/* B678 8001AE78 09F84000 */  jalr       $v0
/* B67C 8001AE7C 21200002 */   addu      $a0, $s0, $zero
/* B680 8001AE80 21100000 */  addu       $v0, $zero, $zero
.L8001AE84:
/* B684 8001AE84 1400BF8F */  lw         $ra, 0x14($sp)
/* B688 8001AE88 1000B08F */  lw         $s0, 0x10($sp)
/* B68C 8001AE8C 0800E003 */  jr         $ra
/* B690 8001AE90 1800BD27 */   addiu     $sp, $sp, 0x18
