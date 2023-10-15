.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_2C8
/* AA19C 800B999C AA0162A4 */  sh         $v0, 0x1aa($v1)
.L800B99A0:
/* AA1A0 800B99A0 03004015 */  bnez       $t2, .L800B99B0
/* AA1A4 800B99A4 00102231 */   andi      $v0, $t1, 0x1000
/* AA1A8 800B99A8 12004010 */  beqz       $v0, .L800B99F4
/* AA1AC 800B99AC 00000000 */   nop
.L800B99B0:
/* AA1B0 800B99B0 2000828C */  lw         $v0, 0x20($a0)
/* AA1B4 800B99B4 00000000 */  nop
/* AA1B8 800B99B8 07004014 */  bnez       $v0, .L800B99D8
/* AA1BC 800B99BC 00000000 */   nop
/* AA1C0 800B99C0 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA1C4 800B99C4 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA1C8 800B99C8 00000000 */  nop
/* AA1CC 800B99CC AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA1D0 800B99D0 7CE60208 */  j          S_SCA_OBJ_31C
/* AA1D4 800B99D4 F7FF4230 */   andi      $v0, $v0, 0xfff7
.L800B99D8:
/* AA1D8 800B99D8 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA1DC 800B99DC F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA1E0 800B99E0 00000000 */  nop
/* AA1E4 800B99E4 AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA1E8 800B99E8 00000000 */  nop
/* AA1EC 800B99EC 08004234 */  ori        $v0, $v0, 8
