.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800221A4
/* 129A4 800221A4 040041AF */  sw         $at, 4($k0)
/* 129A8 800221A8 080042AF */  sw         $v0, 8($k0)
/* 129AC 800221AC 0C0043AF */  sw         $v1, 0xc($k0)
/* 129B0 800221B0 7C005FAF */  sw         $ra, 0x7c($k0)
/* 129B4 800221B4 00700340 */  mfc0       $v1, $14
/* 129B8 800221B8 00000000 */  nop
/* 129BC 800221BC 040041AF */  sw         $at, 4($k0)
/* 129C0 800221C0 080042AF */  sw         $v0, 8($k0)
/* 129C4 800221C4 00680240 */  mfc0       $v0, $13
/* 129C8 800221C8 0C0043AF */  sw         $v1, 0xc($k0)
/* 129CC 800221CC 00700340 */  mfc0       $v1, $14
/* 129D0 800221D0 7C005FAF */  sw         $ra, 0x7c($k0)
/* 129D4 800221D4 00000000 */  nop
