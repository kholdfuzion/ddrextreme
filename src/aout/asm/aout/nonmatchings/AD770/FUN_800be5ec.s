.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be5ec
/* AEDEC 800BE5EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEDF0 800BE5F0 FFFF0534 */  ori        $a1, $zero, 0xffff
/* AEDF4 800BE5F4 1000BFAF */  sw         $ra, 0x10($sp)
/* AEDF8 800BE5F8 7EFA020C */  jal        FUN_800be9f8
/* AEDFC 800BE5FC 21300000 */   addu      $a2, $zero, $zero
/* AEE00 800BE600 1000BF8F */  lw         $ra, 0x10($sp)
/* AEE04 800BE604 00000000 */  nop
/* AEE08 800BE608 0800E003 */  jr         $ra
/* AEE0C 800BE60C 1800BD27 */   addiu     $sp, $sp, 0x18
