.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb5ac
/* BBDAC 800CB5AC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBDB0 800CB5B0 0F80033C */  lui        $v1, %hi(jtbl_800EE664)
/* BBDB4 800CB5B4 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBDB8 800CB5B8 F4E6488C */  lw         $t0, %lo(D_800EE6F4)($v0)
/* BBDBC 800CB5BC 64E66324 */  addiu      $v1, $v1, %lo(jtbl_800EE664)
/* BBDC0 800CB5C0 1000BFAF */  sw         $ra, 0x10($sp)
/* BBDC4 800CB5C4 C0100800 */  sll        $v0, $t0, 3
/* BBDC8 800CB5C8 21104800 */  addu       $v0, $v0, $t0
/* BBDCC 800CB5CC 80100200 */  sll        $v0, $v0, 2
/* BBDD0 800CB5D0 21104300 */  addu       $v0, $v0, $v1
/* BBDD4 800CB5D4 0C00428C */  lw         $v0, 0xc($v0)
/* BBDD8 800CB5D8 00000000 */  nop
/* BBDDC 800CB5DC 09F84000 */  jalr       $v0
/* BBDE0 800CB5E0 00000000 */   nop
/* BBDE4 800CB5E4 1000BF8F */  lw         $ra, 0x10($sp)
/* BBDE8 800CB5E8 00000000 */  nop
/* BBDEC 800CB5EC 0800E003 */  jr         $ra
/* BBDF0 800CB5F0 1800BD27 */   addiu     $sp, $sp, 0x18
