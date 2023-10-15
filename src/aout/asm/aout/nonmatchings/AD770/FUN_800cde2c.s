.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cde2c
/* BE62C 800CDE2C F8FFBD27 */  addiu      $sp, $sp, -8
/* BE630 800CDE30 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BE634 800CDE34 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BE638 800CDE38 6A1F023C */  lui        $v0, 0x1f6a
/* BE63C 800CDE3C EFFF6330 */  andi       $v1, $v1, 0xffef
/* BE640 800CDE40 000043A4 */  sh         $v1, ($v0)
/* BE644 800CDE44 0000A0AF */  sw         $zero, ($sp)
/* BE648 800CDE48 0000A28F */  lw         $v0, ($sp)
/* BE64C 800CDE4C 21100000 */  addu       $v0, $zero, $zero
/* BE650 800CDE50 08BD83A4 */  sh         $v1, -0x42f8($a0)
/* BE654 800CDE54 0800E003 */  jr         $ra
/* BE658 800CDE58 0800BD27 */   addiu     $sp, $sp, 8
