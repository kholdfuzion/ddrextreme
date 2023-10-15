.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c4d0
/* CCD0 8001C4D0 C641033C */  lui        $v1, 0x41c6
/* CCD4 8001C4D4 0E80043C */  lui        $a0, %hi(D_800D8874)
/* CCD8 8001C4D8 7488828C */  lw         $v0, %lo(D_800D8874)($a0)
/* CCDC 8001C4DC 5F276334 */  ori        $v1, $v1, 0x275f
/* CCE0 8001C4E0 18004300 */  mult       $v0, $v1
/* CCE4 8001C4E4 12100000 */  mflo       $v0
/* CCE8 8001C4E8 6D314224 */  addiu      $v0, $v0, 0x316d
/* CCEC 8001C4EC 748882AC */  sw         $v0, -0x778c($a0)
/* CCF0 8001C4F0 02140200 */  srl        $v0, $v0, 0x10
/* CCF4 8001C4F4 0800E003 */  jr         $ra
/* CCF8 8001C4F8 FF7F4230 */   andi      $v0, $v0, 0x7fff
