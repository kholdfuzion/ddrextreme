.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel setjmp
/* C094 8001B894 00009FAC */  sw         $ra, ($a0)
/* C098 8001B898 2C009CAC */  sw         $gp, 0x2c($a0)
/* C09C 8001B89C 04009DAC */  sw         $sp, 4($a0)
/* C0A0 8001B8A0 08009EAC */  sw         $fp, 8($a0)
/* C0A4 8001B8A4 0C0090AC */  sw         $s0, 0xc($a0)
/* C0A8 8001B8A8 100091AC */  sw         $s1, 0x10($a0)
/* C0AC 8001B8AC 140092AC */  sw         $s2, 0x14($a0)
/* C0B0 8001B8B0 180093AC */  sw         $s3, 0x18($a0)
/* C0B4 8001B8B4 1C0094AC */  sw         $s4, 0x1c($a0)
/* C0B8 8001B8B8 200095AC */  sw         $s5, 0x20($a0)
/* C0BC 8001B8BC 240096AC */  sw         $s6, 0x24($a0)
/* C0C0 8001B8C0 280097AC */  sw         $s7, 0x28($a0)
/* C0C4 8001B8C4 21100000 */  addu       $v0, $zero, $zero
/* C0C8 8001B8C8 0800E003 */  jr         $ra
/* C0CC 8001B8CC 00000000 */   nop
