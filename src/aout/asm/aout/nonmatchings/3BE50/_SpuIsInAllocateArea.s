.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _SpuIsInAllocateArea
/* A8204 800B7A04 0F80023C */  lui        $v0, %hi(D_800EC858)
/* A8208 800B7A08 58C8428C */  lw         $v0, %lo(D_800EC858)($v0)
/* A820C 800B7A0C 00000000 */  nop
/* A8210 800B7A10 03004014 */  bnez       $v0, .L800B7A20
/* A8214 800B7A14 0080083C */   lui       $t0, 0x8000
/* A8218 800B7A18 9FDE0208 */  j          S_M_UTIL_OBJ_78
/* A821C 800B7A1C 21100000 */   addu      $v0, $zero, $zero
.L800B7A20:
/* A8220 800B7A20 0040073C */  lui        $a3, 0x4000
/* A8224 800B7A24 FF0F063C */  lui        $a2, 0xfff
/* A8228 800B7A28 FFFFC634 */  ori        $a2, $a2, 0xffff
/* A822C 800B7A2C 21284000 */  addu       $a1, $v0, $zero
