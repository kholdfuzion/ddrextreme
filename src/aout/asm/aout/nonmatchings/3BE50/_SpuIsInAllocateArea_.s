.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _SpuIsInAllocateArea_
/* A8284 800B7A84 0F80023C */  lui        $v0, %hi(D_800EC818)
/* A8288 800B7A88 18C8428C */  lw         $v0, %lo(D_800EC818)($v0)
/* A828C 800B7A8C 0F80033C */  lui        $v1, %hi(D_800EC858)
/* A8290 800B7A90 58C8638C */  lw         $v1, %lo(D_800EC858)($v1)
/* A8294 800B7A94 00000000 */  nop
/* A8298 800B7A98 03006014 */  bnez       $v1, .L800B7AA8
/* A829C 800B7A9C 04204400 */   sllv      $a0, $a0, $v0
/* A82A0 800B7AA0 C2DE0208 */  j          S_M_UTIL_OBJ_104
/* A82A4 800B7AA4 21100000 */   addu      $v0, $zero, $zero
.L800B7AA8:
/* A82A8 800B7AA8 0080083C */  lui        $t0, 0x8000
/* A82AC 800B7AAC 0040073C */  lui        $a3, 0x4000
/* A82B0 800B7AB0 FF0F063C */  lui        $a2, 0xfff
/* A82B4 800B7AB4 FFFFC634 */  ori        $a2, $a2, 0xffff
/* A82B8 800B7AB8 21286000 */  addu       $a1, $v1, $zero
