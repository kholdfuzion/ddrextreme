.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb51c
/* BBD1C 800CB51C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBD20 800CB520 0F80033C */  lui        $v1, %hi(jtbl_800EE664)
/* BBD24 800CB524 0F80023C */  lui        $v0, %hi(D_800EE6F4)
/* BBD28 800CB528 F4E6478C */  lw         $a3, %lo(D_800EE6F4)($v0)
/* BBD2C 800CB52C 64E66324 */  addiu      $v1, $v1, %lo(jtbl_800EE664)
/* BBD30 800CB530 1000BFAF */  sw         $ra, 0x10($sp)
/* BBD34 800CB534 C0100700 */  sll        $v0, $a3, 3
/* BBD38 800CB538 21104700 */  addu       $v0, $v0, $a3
/* BBD3C 800CB53C 80100200 */  sll        $v0, $v0, 2
/* BBD40 800CB540 21104300 */  addu       $v0, $v0, $v1
/* BBD44 800CB544 0400428C */  lw         $v0, 4($v0)
/* BBD48 800CB548 00000000 */  nop
/* BBD4C 800CB54C 09F84000 */  jalr       $v0
/* BBD50 800CB550 00000000 */   nop
/* BBD54 800CB554 1000BF8F */  lw         $ra, 0x10($sp)
/* BBD58 800CB558 00000000 */  nop
/* BBD5C 800CB55C 0800E003 */  jr         $ra
/* BBD60 800CB560 1800BD27 */   addiu     $sp, $sp, 0x18
