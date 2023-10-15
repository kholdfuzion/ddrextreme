.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd96c
/* AE16C 800BD96C 0400A010 */  beqz       $a1, .L800BD980
/* AE170 800BD970 00000000 */   nop
/* AE174 800BD974 07008290 */  lbu        $v0, 7($a0)
/* AE178 800BD978 63F60208 */  j          .L800BD98C
/* AE17C 800BD97C 01004234 */   ori       $v0, $v0, 1
.L800BD980:
/* AE180 800BD980 07008290 */  lbu        $v0, 7($a0)
/* AE184 800BD984 00000000 */  nop
/* AE188 800BD988 FE004230 */  andi       $v0, $v0, 0xfe
.L800BD98C:
/* AE18C 800BD98C 0800E003 */  jr         $ra
/* AE190 800BD990 070082A0 */   sb        $v0, 7($a0)
/* AE194 800BD994 00000000 */  nop
/* AE198 800BD998 00000000 */  nop
