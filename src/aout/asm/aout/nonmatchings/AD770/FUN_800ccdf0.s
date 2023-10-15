.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ccdf0
/* BD5F0 800CCDF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BD5F4 800CCDF4 FFFF0424 */  addiu      $a0, $zero, -1
/* BD5F8 800CCDF8 1000B0AF */  sw         $s0, 0x10($sp)
/* BD5FC 800CCDFC 2080103C */  lui        $s0, %hi(D_801FBCB0)
/* BD600 800CCE00 01000224 */  addiu      $v0, $zero, 1
/* BD604 800CCE04 B0BC02AE */  sw         $v0, %lo(D_801FBCB0)($s0)
/* BD608 800CCE08 1400BFAF */  sw         $ra, 0x14($sp)
/* BD60C 800CCE0C CD6B000C */  jal        VSync
/* BD610 800CCE10 B0BC1026 */   addiu     $s0, $s0, -0x4350
/* BD614 800CCE14 09000426 */  addiu      $a0, $s0, 9
/* BD618 800CCE18 21280000 */  addu       $a1, $zero, $zero
/* BD61C 800CCE1C 08000624 */  addiu      $a2, $zero, 8
/* BD620 800CCE20 040002AE */  sw         $v0, 4($s0)
/* BD624 800CCE24 F6A2000C */  jal        memset
/* BD628 800CCE28 080000A2 */   sb        $zero, 8($s0)
/* BD62C 800CCE2C 19000426 */  addiu      $a0, $s0, 0x19
/* BD630 800CCE30 21280000 */  addu       $a1, $zero, $zero
/* BD634 800CCE34 0F80023C */  lui        $v0, %hi(D_800EE6F8)
/* BD638 800CCE38 F8E64924 */  addiu      $t1, $v0, %lo(D_800EE6F8)
/* BD63C 800CCE3C 03002389 */  lwl        $v1, 3($t1)
/* BD640 800CCE40 00002399 */  lwr        $v1, ($t1)
/* BD644 800CCE44 07002789 */  lwl        $a3, 7($t1)
/* BD648 800CCE48 04002799 */  lwr        $a3, 4($t1)
/* BD64C 800CCE4C 140003AA */  swl        $v1, 0x14($s0)
/* BD650 800CCE50 110003BA */  swr        $v1, 0x11($s0)
/* BD654 800CCE54 180007AA */  swl        $a3, 0x18($s0)
/* BD658 800CCE58 150007BA */  swr        $a3, 0x15($s0)
/* BD65C 800CCE5C F6A2000C */  jal        memset
/* BD660 800CCE60 08000624 */   addiu     $a2, $zero, 8
/* BD664 800CCE64 1400BF8F */  lw         $ra, 0x14($sp)
/* BD668 800CCE68 1000B08F */  lw         $s0, 0x10($sp)
/* BD66C 800CCE6C 0800E003 */  jr         $ra
/* BD670 800CCE70 1800BD27 */   addiu     $sp, $sp, 0x18
