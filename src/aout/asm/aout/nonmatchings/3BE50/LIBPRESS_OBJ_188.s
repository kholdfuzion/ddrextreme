.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_188
/* 63ACC 800732CC 000082AC */  sw         $v0, ($a0)
/* 63AD0 800732D0 0200A230 */  andi       $v0, $a1, 2
/* 63AD4 800732D4 04004010 */  beqz       $v0, .L800732E8
/* 63AD8 800732D8 0002033C */   lui       $v1, 0x200
/* 63ADC 800732DC 0000828C */  lw         $v0, ($a0)
/* 63AE0 800732E0 BECC0108 */  j          LIBPRESS_OBJ_1B4
/* 63AE4 800732E4 25104300 */   or        $v0, $v0, $v1
.L800732E8:
/* 63AE8 800732E8 FFFD033C */  lui        $v1, 0xfdff
/* 63AEC 800732EC 0000828C */  lw         $v0, ($a0)
/* 63AF0 800732F0 FFFF6334 */  ori        $v1, $v1, 0xffff
/* 63AF4 800732F4 24104300 */  and        $v0, $v0, $v1
