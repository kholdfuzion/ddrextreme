.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SR_OBJ_CC
/* A81E0 800B79E0 AA0162A4 */  sh         $v0, 0x1aa($v1)
