.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb564
/* BBD64 800CB564 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBD68 800CB568 0F80033C */  lui        $v1, %hi(jtbl_800EE664)
/* BBD6C 800CB56C 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBD70 800CB570 F4E6488C */  lw         $t0, %lo(D_800EE6F4)($v0)
/* BBD74 800CB574 64E66324 */  addiu      $v1, $v1, %lo(jtbl_800EE664)
/* BBD78 800CB578 1000BFAF */  sw         $ra, 0x10($sp)
/* BBD7C 800CB57C C0100800 */  sll        $v0, $t0, 3
/* BBD80 800CB580 21104800 */  addu       $v0, $v0, $t0
/* BBD84 800CB584 80100200 */  sll        $v0, $v0, 2
/* BBD88 800CB588 21104300 */  addu       $v0, $v0, $v1
/* BBD8C 800CB58C 0800428C */  lw         $v0, 8($v0)
/* BBD90 800CB590 00000000 */  nop
/* BBD94 800CB594 09F84000 */  jalr       $v0
/* BBD98 800CB598 00000000 */   nop
/* BBD9C 800CB59C 1000BF8F */  lw         $ra, 0x10($sp)
/* BBDA0 800CB5A0 00000000 */  nop
/* BBDA4 800CB5A4 0800E003 */  jr         $ra
/* BBDA8 800CB5A8 1800BD27 */   addiu     $sp, $sp, 0x18
