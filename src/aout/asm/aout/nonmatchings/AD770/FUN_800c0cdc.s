.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0cdc
/* B14DC 800C0CDC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B14E0 800C0CE0 1400BFAF */  sw         $ra, 0x14($sp)
/* B14E4 800C0CE4 1000B0AF */  sw         $s0, 0x10($sp)
/* B14E8 800C0CE8 1F80103C */  lui        $s0, %hi(D_801F7098)
/* B14EC 800C0CEC 98701026 */  addiu      $s0, $s0, %lo(D_801F7098)
/* B14F0 800C0CF0 01000592 */  lbu        $a1, 1($s0)
/* B14F4 800C0CF4 02000692 */  lbu        $a2, 2($s0)
/* B14F8 800C0CF8 0203030C */  jal        FUN_800c0c08
/* B14FC 800C0CFC 21200000 */   addu      $a0, $zero, $zero
/* B1500 800C0D00 01000592 */  lbu        $a1, 1($s0)
/* B1504 800C0D04 02000692 */  lbu        $a2, 2($s0)
/* B1508 800C0D08 0203030C */  jal        FUN_800c0c08
/* B150C 800C0D0C 01000424 */   addiu     $a0, $zero, 1
/* B1510 800C0D10 21100000 */  addu       $v0, $zero, $zero
/* B1514 800C0D14 1400BF8F */  lw         $ra, 0x14($sp)
/* B1518 800C0D18 1000B08F */  lw         $s0, 0x10($sp)
/* B151C 800C0D1C 0800E003 */  jr         $ra
/* B1520 800C0D20 1800BD27 */   addiu     $sp, $sp, 0x18
