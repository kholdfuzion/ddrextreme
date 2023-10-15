.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be634
/* AEE34 800BE634 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEE38 800BE638 FFFF0534 */  ori        $a1, $zero, 0xffff
/* AEE3C 800BE63C 1000BFAF */  sw         $ra, 0x10($sp)
/* AEE40 800BE640 49FA020C */  jal        FUN_800be924
/* AEE44 800BE644 21300000 */   addu      $a2, $zero, $zero
/* AEE48 800BE648 1000BF8F */  lw         $ra, 0x10($sp)
/* AEE4C 800BE64C 00000000 */  nop
/* AEE50 800BE650 0800E003 */  jr         $ra
/* AEE54 800BE654 1800BD27 */   addiu     $sp, $sp, 0x18
