.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c70f4
/* B78F4 800C70F4 F8FFBD27 */  addiu      $sp, $sp, -8
/* B78F8 800C70F8 0000A0AF */  sw         $zero, ($sp)
/* B78FC 800C70FC 21280000 */  addu       $a1, $zero, $zero
.L800C7100:
/* B7900 800C7100 0000828C */  lw         $v0, ($a0)
/* B7904 800C7104 04008424 */  addiu      $a0, $a0, 4
/* B7908 800C7108 0000A38F */  lw         $v1, ($sp)
/* B790C 800C710C 0100A524 */  addiu      $a1, $a1, 1
/* B7910 800C7110 26186200 */  xor        $v1, $v1, $v0
/* B7914 800C7114 2000A22C */  sltiu      $v0, $a1, 0x20
/* B7918 800C7118 F9FF4014 */  bnez       $v0, .L800C7100
/* B791C 800C711C 0000A3AF */   sw        $v1, ($sp)
/* B7920 800C7120 0000A393 */  lbu        $v1, ($sp)
/* B7924 800C7124 0100A293 */  lbu        $v0, 1($sp)
/* B7928 800C7128 00000000 */  nop
/* B792C 800C712C 26186200 */  xor        $v1, $v1, $v0
/* B7930 800C7130 0200A293 */  lbu        $v0, 2($sp)
/* B7934 800C7134 0300A493 */  lbu        $a0, 3($sp)
/* B7938 800C7138 26104300 */  xor        $v0, $v0, $v1
/* B793C 800C713C 26108200 */  xor        $v0, $a0, $v0
/* B7940 800C7140 0800E003 */  jr         $ra
/* B7944 800C7144 0800BD27 */   addiu     $sp, $sp, 8
