.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9e88
/* BA688 800C9E88 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BA68C 800C9E8C 1000B0AF */  sw         $s0, 0x10($sp)
/* BA690 800C9E90 21808000 */  addu       $s0, $a0, $zero
/* BA694 800C9E94 1400B1AF */  sw         $s1, 0x14($sp)
/* BA698 800C9E98 1800BFAF */  sw         $ra, 0x18($sp)
/* BA69C 800C9E9C A509030C */  jal        FUN_800c2694
/* BA6A0 800C9EA0 2188A000 */   addu      $s1, $a1, $zero
/* BA6A4 800C9EA4 21200002 */  addu       $a0, $s0, $zero
/* BA6A8 800C9EA8 01000224 */  addiu      $v0, $zero, 1
/* BA6AC 800C9EAC 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA6B0 800C9EB0 76000224 */  addiu      $v0, $zero, 0x76
/* BA6B4 800C9EB4 21282002 */  addu       $a1, $s1, $zero
/* BA6B8 800C9EB8 21300000 */  addu       $a2, $zero, $zero
/* BA6BC 800C9EBC 0C00838C */  lw         $v1, 0xc($a0)
/* BA6C0 800C9EC0 09000724 */  addiu      $a3, $zero, 9
/* BA6C4 800C9EC4 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA6C8 800C9EC8 B209030C */  jal        FUN_800c26c8
/* BA6CC 800C9ECC 000062A0 */   sb        $v0, ($v1)
/* BA6D0 800C9ED0 1800BF8F */  lw         $ra, 0x18($sp)
/* BA6D4 800C9ED4 1400B18F */  lw         $s1, 0x14($sp)
/* BA6D8 800C9ED8 1000B08F */  lw         $s0, 0x10($sp)
/* BA6DC 800C9EDC 0800E003 */  jr         $ra
/* BA6E0 800C9EE0 2000BD27 */   addiu     $sp, $sp, 0x20
