.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9bc0
/* BA3C0 800C9BC0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BA3C4 800C9BC4 1000B0AF */  sw         $s0, 0x10($sp)
/* BA3C8 800C9BC8 21808000 */  addu       $s0, $a0, $zero
/* BA3CC 800C9BCC 1800B2AF */  sw         $s2, 0x18($sp)
/* BA3D0 800C9BD0 2190A000 */  addu       $s2, $a1, $zero
/* BA3D4 800C9BD4 1400B1AF */  sw         $s1, 0x14($sp)
/* BA3D8 800C9BD8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BA3DC 800C9BDC A509030C */  jal        FUN_800c2694
/* BA3E0 800C9BE0 2188C000 */   addu      $s1, $a2, $zero
/* BA3E4 800C9BE4 21200002 */  addu       $a0, $s0, $zero
/* BA3E8 800C9BE8 05000224 */  addiu      $v0, $zero, 5
/* BA3EC 800C9BEC 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA3F0 800C9BF0 70000224 */  addiu      $v0, $zero, 0x70
/* BA3F4 800C9BF4 21284002 */  addu       $a1, $s2, $zero
/* BA3F8 800C9BF8 01000624 */  addiu      $a2, $zero, 1
/* BA3FC 800C9BFC 0C00838C */  lw         $v1, 0xc($a0)
/* BA400 800C9C00 21380000 */  addu       $a3, $zero, $zero
/* BA404 800C9C04 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA408 800C9C08 000062A0 */  sb         $v0, ($v1)
/* BA40C 800C9C0C 02000224 */  addiu      $v0, $zero, 2
/* BA410 800C9C10 010062A0 */  sb         $v0, 1($v1)
/* BA414 800C9C14 03141100 */  sra        $v0, $s1, 0x10
/* BA418 800C9C18 020062A0 */  sb         $v0, 2($v1)
/* BA41C 800C9C1C 03121100 */  sra        $v0, $s1, 8
/* BA420 800C9C20 030062A0 */  sb         $v0, 3($v1)
/* BA424 800C9C24 B209030C */  jal        FUN_800c26c8
/* BA428 800C9C28 040071A0 */   sb        $s1, 4($v1)
/* BA42C 800C9C2C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BA430 800C9C30 1800B28F */  lw         $s2, 0x18($sp)
/* BA434 800C9C34 1400B18F */  lw         $s1, 0x14($sp)
/* BA438 800C9C38 1000B08F */  lw         $s0, 0x10($sp)
/* BA43C 800C9C3C 0800E003 */  jr         $ra
/* BA440 800C9C40 2000BD27 */   addiu     $sp, $sp, 0x20
