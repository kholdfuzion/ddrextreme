.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_370
/* AA244 800B9A44 AA0162A4 */  sh         $v0, 0x1aa($v1)
.L800B9A48:
/* AA248 800B9A48 0800E003 */  jr         $ra
/* AA24C 800B9A4C 00000000 */   nop
/* AA250 800B9A50 00000000 */  nop
