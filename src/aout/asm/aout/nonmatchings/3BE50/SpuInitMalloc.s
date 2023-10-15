.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuInitMalloc
/* A80B4 800B78B4 21108000 */  addu       $v0, $a0, $zero
/* A80B8 800B78B8 0300401C */  bgtz       $v0, .L800B78C8
/* A80BC 800B78BC 0040033C */   lui       $v1, 0x4000
/* A80C0 800B78C0 40DE0208 */  j          S_M_INIT_OBJ_4C
/* A80C4 800B78C4 21100000 */   addu      $v0, $zero, $zero
.L800B78C8:
/* A80C8 800B78C8 0F80043C */  lui        $a0, %hi(D_800EC818)
/* A80CC 800B78CC 18C8848C */  lw         $a0, %lo(D_800EC818)($a0)
/* A80D0 800B78D0 10106334 */  ori        $v1, $v1, 0x1010
/* A80D4 800B78D4 0000A3AC */  sw         $v1, ($a1)
/* A80D8 800B78D8 0100033C */  lui        $v1, 1
/* A80DC 800B78DC 0F80013C */  lui        $at, %hi(D_800EC858)
/* A80E0 800B78E0 58C825AC */  sw         $a1, %lo(D_800EC858)($at)
/* A80E4 800B78E4 0F80013C */  lui        $at, %hi(D_800EC854)
/* A80E8 800B78E8 54C820AC */  sw         $zero, %lo(D_800EC854)($at)
/* A80EC 800B78EC 0F80013C */  lui        $at, %hi(D_800EC850)
/* A80F0 800B78F0 50C822AC */  sw         $v0, %lo(D_800EC850)($at)
/* A80F4 800B78F4 04188300 */  sllv       $v1, $v1, $a0
/* A80F8 800B78F8 F0EF6324 */  addiu      $v1, $v1, -0x1010
/* A80FC 800B78FC 0400A3AC */  sw         $v1, 4($a1)
