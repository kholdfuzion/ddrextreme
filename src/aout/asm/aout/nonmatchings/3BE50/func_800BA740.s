.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BA740
/* AAF40 800BA740 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AAF44 800BA744 FF3F053C */  lui        $a1, 0x3fff
/* AAF48 800BA748 FFFFA534 */  ori        $a1, $a1, 0xffff
/* AAF4C 800BA74C 1580033C */  lui        $v1, %hi(D_8014BA9C)
/* AAF50 800BA750 9CBA628C */  lw         $v0, %lo(D_8014BA9C)($v1)
/* AAF54 800BA754 9CBA6324 */  addiu      $v1, $v1, -0x4564
/* AAF58 800BA758 24104500 */  and        $v0, $v0, $a1
/* AAF5C 800BA75C 03004514 */  bne        $v0, $a1, .L800BA76C
/* AAF60 800BA760 1000BFAF */   sw        $ra, 0x10($sp)
/* AAF64 800BA764 E7E90208 */  j          .L800BA79C
/* AAF68 800BA768 0C0060AC */   sw        $zero, 0xc($v1)
.L800BA76C:
/* AAF6C 800BA76C 05008018 */  blez       $a0, .L800BA784
/* AAF70 800BA770 00000000 */   nop
/* AAF74 800BA774 0C00628C */  lw         $v0, 0xc($v1)
/* AAF78 800BA778 00000000 */  nop
/* AAF7C 800BA77C 23104400 */  subu       $v0, $v0, $a0
/* AAF80 800BA780 0C0062AC */  sw         $v0, 0xc($v1)
.L800BA784:
/* AAF84 800BA784 0C00628C */  lw         $v0, 0xc($v1)
/* AAF88 800BA788 00000000 */  nop
/* AAF8C 800BA78C 0300401C */  bgtz       $v0, .L800BA79C
/* AAF90 800BA790 00000000 */   nop
/* AAF94 800BA794 91E7020C */  jal        FUN_800b9e44
/* AAF98 800BA798 00000000 */   nop
.L800BA79C:
/* AAF9C 800BA79C 1000BF8F */  lw         $ra, 0x10($sp)
/* AAFA0 800BA7A0 00000000 */  nop
/* AAFA4 800BA7A4 0800E003 */  jr         $ra
/* AAFA8 800BA7A8 1800BD27 */   addiu     $sp, $sp, 0x18
