.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd654
/* BDE54 800CD654 04008228 */  slti       $v0, $a0, 4
/* BDE58 800CD658 07004010 */  beqz       $v0, .L800CD678
/* BDE5C 800CD65C 02008228 */   slti      $v0, $a0, 2
/* BDE60 800CD660 08004010 */  beqz       $v0, .L800CD684
/* BDE64 800CD664 00000000 */   nop
/* BDE68 800CD668 07008010 */  beqz       $a0, .L800CD688
/* BDE6C 800CD66C 00000000 */   nop
/* BDE70 800CD670 A2350308 */  j          .L800CD688
/* BDE74 800CD674 FEFF0424 */   addiu     $a0, $zero, -2
.L800CD678:
/* BDE78 800CD678 05000224 */  addiu      $v0, $zero, 5
/* BDE7C 800CD67C 02008214 */  bne        $a0, $v0, .L800CD688
/* BDE80 800CD680 FEFF0424 */   addiu     $a0, $zero, -2
.L800CD684:
/* BDE84 800CD684 FDFF0424 */  addiu      $a0, $zero, -3
.L800CD688:
/* BDE88 800CD688 0800E003 */  jr         $ra
/* BDE8C 800CD68C 21108000 */   addu      $v0, $a0, $zero
