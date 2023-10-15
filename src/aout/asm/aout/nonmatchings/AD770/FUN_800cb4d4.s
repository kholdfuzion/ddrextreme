.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb4d4
/* BBCD4 800CB4D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBCD8 800CB4D8 0F80033C */  lui        $v1, %hi(jtbl_800EE664)
/* BBCDC 800CB4DC 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBCE0 800CB4E0 F4E6458C */  lw         $a1, %lo(D_800EE6F4)($v0)
/* BBCE4 800CB4E4 64E66324 */  addiu      $v1, $v1, %lo(jtbl_800EE664)
/* BBCE8 800CB4E8 1000BFAF */  sw         $ra, 0x10($sp)
/* BBCEC 800CB4EC C0100500 */  sll        $v0, $a1, 3
/* BBCF0 800CB4F0 21104500 */  addu       $v0, $v0, $a1
/* BBCF4 800CB4F4 80100200 */  sll        $v0, $v0, 2
/* BBCF8 800CB4F8 21104300 */  addu       $v0, $v0, $v1
/* BBCFC 800CB4FC 0000428C */  lw         $v0, ($v0)
/* BBD00 800CB500 00000000 */  nop
/* BBD04 800CB504 09F84000 */  jalr       $v0
/* BBD08 800CB508 00000000 */   nop
/* BBD0C 800CB50C 1000BF8F */  lw         $ra, 0x10($sp)
/* BBD10 800CB510 00000000 */  nop
/* BBD14 800CB514 0800E003 */  jr         $ra
/* BBD18 800CB518 1800BD27 */   addiu     $sp, $sp, 0x18
