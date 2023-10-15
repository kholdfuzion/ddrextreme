.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ClearImage2
/* 8D74 80018574 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8D78 80018578 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 8D7C 8001857C 21988000 */  addu       $s3, $a0, $zero
/* 8D80 80018580 0180043C */  lui        $a0, %hi(D_800101C0)
/* 8D84 80018584 C0018424 */  addiu      $a0, $a0, %lo(D_800101C0)
/* 8D88 80018588 1800B2AF */  sw         $s2, 0x18($sp)
/* 8D8C 8001858C 2190A000 */  addu       $s2, $a1, $zero
/* 8D90 80018590 21286002 */  addu       $a1, $s3, $zero
/* 8D94 80018594 1000B0AF */  sw         $s0, 0x10($sp)
/* 8D98 80018598 2180C000 */  addu       $s0, $a2, $zero
/* 8D9C 8001859C 1400B1AF */  sw         $s1, 0x14($sp)
/* 8DA0 800185A0 2000BFAF */  sw         $ra, 0x20($sp)
/* 8DA4 800185A4 F260000C */  jal        SYS_OBJ_3E4
/* 8DA8 800185A8 2188E000 */   addu      $s1, $a3, $zero
/* 8DAC 800185AC 21286002 */  addu       $a1, $s3, $zero
/* 8DB0 800185B0 FF003132 */  andi       $s1, $s1, 0xff
/* 8DB4 800185B4 008C1100 */  sll        $s1, $s1, 0x10
/* 8DB8 800185B8 FF001032 */  andi       $s0, $s0, 0xff
/* 8DBC 800185BC 00821000 */  sll        $s0, $s0, 8
/* 8DC0 800185C0 0080023C */  lui        $v0, 0x8000
/* 8DC4 800185C4 25800202 */  or         $s0, $s0, $v0
/* 8DC8 800185C8 25883002 */  or         $s1, $s1, $s0
/* 8DCC 800185CC FF005232 */  andi       $s2, $s2, 0xff
/* 8DD0 800185D0 0D80033C */  lui        $v1, %hi(D_800D2B90)
/* 8DD4 800185D4 902B638C */  lw         $v1, %lo(D_800D2B90)($v1)
/* 8DD8 800185D8 08000624 */  addiu      $a2, $zero, 8
/* 8DDC 800185DC 0C00648C */  lw         $a0, 0xc($v1)
/* 8DE0 800185E0 0800628C */  lw         $v0, 8($v1)
/* 8DE4 800185E4 00000000 */  nop
/* 8DE8 800185E8 09F84000 */  jalr       $v0
/* 8DEC 800185EC 25383202 */   or        $a3, $s1, $s2
/* 8DF0 800185F0 2000BF8F */  lw         $ra, 0x20($sp)
/* 8DF4 800185F4 1C00B38F */  lw         $s3, 0x1c($sp)
/* 8DF8 800185F8 1800B28F */  lw         $s2, 0x18($sp)
/* 8DFC 800185FC 1400B18F */  lw         $s1, 0x14($sp)
/* 8E00 80018600 1000B08F */  lw         $s0, 0x10($sp)
/* 8E04 80018604 0800E003 */  jr         $ra
/* 8E08 80018608 2800BD27 */   addiu     $sp, $sp, 0x28
