.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be4f0
/* AECF0 800BE4F0 00008294 */  lhu        $v0, ($a0)
/* AECF4 800BE4F4 00000000 */  nop
/* AECF8 800BE4F8 00804230 */  andi       $v0, $v0, 0x8000
/* AECFC 800BE4FC 07004010 */  beqz       $v0, .L800BE51C
/* AED00 800BE500 FEFF0324 */   addiu     $v1, $zero, -2
/* AED04 800BE504 00008294 */  lhu        $v0, ($a0)
/* AED08 800BE508 00000000 */  nop
/* AED0C 800BE50C 00104230 */  andi       $v0, $v0, 0x1000
/* AED10 800BE510 02004014 */  bnez       $v0, .L800BE51C
/* AED14 800BE514 00000000 */   nop
/* AED18 800BE518 21180000 */  addu       $v1, $zero, $zero
.L800BE51C:
/* AED1C 800BE51C 0800E003 */  jr         $ra
/* AED20 800BE520 21106000 */   addu      $v0, $v1, $zero
