.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetClut
/* AE11C 800BD91C 80110500 */  sll        $v0, $a1, 6
/* AE120 800BD920 03210400 */  sra        $a0, $a0, 4
/* AE124 800BD924 3F008430 */  andi       $a0, $a0, 0x3f
/* AE128 800BD928 25104400 */  or         $v0, $v0, $a0
/* AE12C 800BD92C 0800E003 */  jr         $ra
/* AE130 800BD930 FFFF4230 */   andi      $v0, $v0, 0xffff
/* AE134 800BD934 00000000 */  nop
/* AE138 800BD938 00000000 */  nop
