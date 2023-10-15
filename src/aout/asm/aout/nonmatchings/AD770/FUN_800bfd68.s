.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bfd68
/* B0568 800BFD68 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B056C 800BFD6C 1800BFAF */  sw         $ra, 0x18($sp)
/* B0570 800BFD70 1400B1AF */  sw         $s1, 0x14($sp)
/* B0574 800BFD74 1000B0AF */  sw         $s0, 0x10($sp)
/* B0578 800BFD78 FF009030 */  andi       $s0, $a0, 0xff
/* B057C 800BFD7C 21880000 */  addu       $s1, $zero, $zero
.L800BFD80:
/* B0580 800BFD80 03FF020C */  jal        FUN_800bfc0c
/* B0584 800BFD84 C2211000 */   srl       $a0, $s0, 7
/* B0588 800BFD88 40101000 */  sll        $v0, $s0, 1
/* B058C 800BFD8C FF005030 */  andi       $s0, $v0, 0xff
/* B0590 800BFD90 01003126 */  addiu      $s1, $s1, 1
/* B0594 800BFD94 0800222A */  slti       $v0, $s1, 8
/* B0598 800BFD98 F9FF4014 */  bnez       $v0, .L800BFD80
/* B059C 800BFD9C 00000000 */   nop
/* B05A0 800BFDA0 1800BF8F */  lw         $ra, 0x18($sp)
/* B05A4 800BFDA4 1400B18F */  lw         $s1, 0x14($sp)
/* B05A8 800BFDA8 1000B08F */  lw         $s0, 0x10($sp)
/* B05AC 800BFDAC 0800E003 */  jr         $ra
/* B05B0 800BFDB0 2000BD27 */   addiu     $sp, $sp, 0x20
