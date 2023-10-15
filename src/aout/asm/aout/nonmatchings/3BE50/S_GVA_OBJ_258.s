.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GVA_OBJ_258
/* AA4AC 800B9CAC 0E0004A6 */  sh         $a0, 0xe($s0)
/* AA4B0 800B9CB0 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* AA4B4 800B9CB4 F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
/* AA4B8 800B9CB8 40100800 */  sll        $v0, $t0, 1
/* AA4BC 800B9CBC 0C0006A6 */  sh         $a2, 0xc($s0)
/* AA4C0 800B9CC0 21104400 */  addu       $v0, $v0, $a0
/* AA4C4 800B9CC4 00024394 */  lhu        $v1, 0x200($v0)
/* AA4C8 800B9CC8 00000000 */  nop
/* AA4CC 800B9CCC 100003A6 */  sh         $v1, 0x10($s0)
/* AA4D0 800B9CD0 02024294 */  lhu        $v0, 0x202($v0)
/* AA4D4 800B9CD4 00000000 */  nop
/* AA4D8 800B9CD8 120002A6 */  sh         $v0, 0x12($s0)
/* AA4DC 800B9CDC 40101200 */  sll        $v0, $s2, 1
/* AA4E0 800B9CE0 21104400 */  addu       $v0, $v0, $a0
/* AA4E4 800B9CE4 04004294 */  lhu        $v0, 4($v0)
/* AA4E8 800B9CE8 00000000 */  nop
/* AA4EC 800B9CEC 140002A6 */  sh         $v0, 0x14($s0)
/* AA4F0 800B9CF0 40101100 */  sll        $v0, $s1, 1
/* AA4F4 800B9CF4 0F80053C */  lui        $a1, %hi(D_800EC7AC)
/* AA4F8 800B9CF8 2128A200 */  addu       $a1, $a1, $v0
/* AA4FC 800B9CFC ACC7A594 */  lhu        $a1, %lo(D_800EC7AC)($a1)
/* AA500 800B9D00 14000696 */  lhu        $a2, 0x14($s0)
/* AA504 800B9D04 02220500 */  srl        $a0, $a1, 8
/* AA508 800B9D08 69E5020C */  jal        _spu_pitch2note
/* AA50C 800B9D0C FF00A530 */   andi      $a1, $a1, 0xff
/* AA510 800B9D10 03004004 */  bltz       $v0, .L800B9D20
/* AA514 800B9D14 00000000 */   nop
/* AA518 800B9D18 49E70208 */  j          S_GVA_OBJ_2D0
/* AA51C 800B9D1C 160002A6 */   sh        $v0, 0x16($s0)
.L800B9D20:
/* AA520 800B9D20 160000A6 */  sh         $zero, 0x16($s0)
