.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9ee4
/* BA6E4 800C9EE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BA6E8 800C9EE8 1000B0AF */  sw         $s0, 0x10($sp)
/* BA6EC 800C9EEC 21808000 */  addu       $s0, $a0, $zero
/* BA6F0 800C9EF0 1800B2AF */  sw         $s2, 0x18($sp)
/* BA6F4 800C9EF4 2190A000 */  addu       $s2, $a1, $zero
/* BA6F8 800C9EF8 1400B1AF */  sw         $s1, 0x14($sp)
/* BA6FC 800C9EFC 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BA700 800C9F00 A509030C */  jal        FUN_800c2694
/* BA704 800C9F04 2188C000 */   addu      $s1, $a2, $zero
/* BA708 800C9F08 21200002 */  addu       $a0, $s0, $zero
/* BA70C 800C9F0C 02000224 */  addiu      $v0, $zero, 2
/* BA710 800C9F10 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA714 800C9F14 72000224 */  addiu      $v0, $zero, 0x72
/* BA718 800C9F18 21284002 */  addu       $a1, $s2, $zero
/* BA71C 800C9F1C 21300000 */  addu       $a2, $zero, $zero
/* BA720 800C9F20 0C00838C */  lw         $v1, 0xc($a0)
/* BA724 800C9F24 09000724 */  addiu      $a3, $zero, 9
/* BA728 800C9F28 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA72C 800C9F2C 000062A0 */  sb         $v0, ($v1)
/* BA730 800C9F30 B209030C */  jal        FUN_800c26c8
/* BA734 800C9F34 010071A0 */   sb        $s1, 1($v1)
/* BA738 800C9F38 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BA73C 800C9F3C 1800B28F */  lw         $s2, 0x18($sp)
/* BA740 800C9F40 1400B18F */  lw         $s1, 0x14($sp)
/* BA744 800C9F44 1000B08F */  lw         $s0, 0x10($sp)
/* BA748 800C9F48 0800E003 */  jr         $ra
/* BA74C 800C9F4C 2000BD27 */   addiu     $sp, $sp, 0x20
