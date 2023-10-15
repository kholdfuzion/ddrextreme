.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_31C
/* AA1F0 800B99F0 AA0162A4 */  sh         $v0, 0x1aa($v1)
.L800B99F4:
/* AA1F4 800B99F4 03004015 */  bnez       $t2, .L800B9A04
/* AA1F8 800B99F8 00202231 */   andi      $v0, $t1, 0x2000
/* AA1FC 800B99FC 12004010 */  beqz       $v0, .L800B9A48
/* AA200 800B9A00 00000000 */   nop
.L800B9A04:
/* AA204 800B9A04 2400828C */  lw         $v0, 0x24($a0)
/* AA208 800B9A08 00000000 */  nop
/* AA20C 800B9A0C 07004014 */  bnez       $v0, .L800B9A2C
/* AA210 800B9A10 00000000 */   nop
/* AA214 800B9A14 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA218 800B9A18 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA21C 800B9A1C 00000000 */  nop
/* AA220 800B9A20 AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA224 800B9A24 91E60208 */  j          S_SCA_OBJ_370
/* AA228 800B9A28 FDFF4230 */   andi      $v0, $v0, 0xfffd
.L800B9A2C:
/* AA22C 800B9A2C 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA230 800B9A30 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA234 800B9A34 00000000 */  nop
/* AA238 800B9A38 AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA23C 800B9A3C 00000000 */  nop
/* AA240 800B9A40 02004234 */  ori        $v0, $v0, 2
