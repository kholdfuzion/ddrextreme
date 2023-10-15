.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf830
/* B0030 800BF830 FF008430 */  andi       $a0, $a0, 0xff
/* B0034 800BF834 FF00A530 */  andi       $a1, $a1, 0xff
/* B0038 800BF838 FF00C630 */  andi       $a2, $a2, 0xff
/* B003C 800BF83C 02008010 */  beqz       $a0, .L800BF848
/* B0040 800BF840 21180000 */   addu      $v1, $zero, $zero
/* B0044 800BF844 00800334 */  ori        $v1, $zero, 0x8000
.L800BF848:
/* B0048 800BF848 0200A010 */  beqz       $a1, .L800BF854
/* B004C 800BF84C 00000000 */   nop
/* B0050 800BF850 00406334 */  ori        $v1, $v1, 0x4000
.L800BF854:
/* B0054 800BF854 0200C010 */  beqz       $a2, .L800BF860
/* B0058 800BF858 641F023C */   lui       $v0, 0x1f64
/* B005C 800BF85C 00206334 */  ori        $v1, $v1, 0x2000
.L800BF860:
/* B0060 800BF860 AE004234 */  ori        $v0, $v0, 0xae
/* B0064 800BF864 000043A4 */  sh         $v1, ($v0)
/* B0068 800BF868 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B006C 800BF86C 30570324 */  addiu      $v1, $zero, 0x5730
/* B0070 800BF870 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0074 800BF874 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0078 800BF878 0800E003 */  jr         $ra
/* B007C 800BF87C 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
