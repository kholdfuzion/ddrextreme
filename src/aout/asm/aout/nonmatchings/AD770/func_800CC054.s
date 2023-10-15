.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CC054
/* BC854 800CC054 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BC858 800CC058 1800B0AF */  sw         $s0, 0x18($sp)
/* BC85C 800CC05C 2180A000 */  addu       $s0, $a1, $zero
/* BC860 800CC060 21280000 */  addu       $a1, $zero, $zero
/* BC864 800CC064 1000A627 */  addiu      $a2, $sp, 0x10
/* BC868 800CC068 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BC86C 800CC06C 592D030C */  jal        FUN_800cb564
/* BC870 800CC070 08000724 */   addiu     $a3, $zero, 8
/* BC874 800CC074 21184000 */  addu       $v1, $v0, $zero
/* BC878 800CC078 0B006014 */  bnez       $v1, .L800CC0A8
/* BC87C 800CC07C FF000224 */   addiu     $v0, $zero, 0xff
/* BC880 800CC080 000002A2 */  sb         $v0, ($s0)
/* BC884 800CC084 010002A2 */  sb         $v0, 1($s0)
/* BC888 800CC088 AC000224 */  addiu      $v0, $zero, 0xac
/* BC88C 800CC08C 020002A2 */  sb         $v0, 2($s0)
/* BC890 800CC090 08000224 */  addiu      $v0, $zero, 8
/* BC894 800CC094 030002A2 */  sb         $v0, 3($s0)
/* BC898 800CC098 040000A2 */  sb         $zero, 4($s0)
/* BC89C 800CC09C 070000A2 */  sb         $zero, 7($s0)
/* BC8A0 800CC0A0 060000A2 */  sb         $zero, 6($s0)
/* BC8A4 800CC0A4 050000A2 */  sb         $zero, 5($s0)
.L800CC0A8:
/* BC8A8 800CC0A8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BC8AC 800CC0AC 1800B08F */  lw         $s0, 0x18($sp)
/* BC8B0 800CC0B0 21106000 */  addu       $v0, $v1, $zero
/* BC8B4 800CC0B4 0800E003 */  jr         $ra
/* BC8B8 800CC0B8 2000BD27 */   addiu     $sp, $sp, 0x20
