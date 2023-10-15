.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6640
/* B6E40 800C6640 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B6E44 800C6644 1000BFAF */  sw         $ra, 0x10($sp)
/* B6E48 800C6648 B206030C */  jal        FUN_800c1ac8
/* B6E4C 800C664C 00000000 */   nop
/* B6E50 800C6650 03004014 */  bnez       $v0, .L800C6660
/* B6E54 800C6654 21100000 */   addu      $v0, $zero, $zero
/* B6E58 800C6658 1F80023C */  lui        $v0, %hi(D_801F7434)
/* B6E5C 800C665C 3474428C */  lw         $v0, %lo(D_801F7434)($v0)
.L800C6660:
/* B6E60 800C6660 1000BF8F */  lw         $ra, 0x10($sp)
/* B6E64 800C6664 00000000 */  nop
/* B6E68 800C6668 0800E003 */  jr         $ra
/* B6E6C 800C666C 1800BD27 */   addiu     $sp, $sp, 0x18
