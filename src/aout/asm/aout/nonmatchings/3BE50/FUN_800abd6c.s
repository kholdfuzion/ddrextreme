.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abd6c
/* 9C56C 800ABD6C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9C570 800ABD70 1000B0AF */  sw         $s0, 0x10($sp)
/* 9C574 800ABD74 21800000 */  addu       $s0, $zero, $zero
/* 9C578 800ABD78 1400B1AF */  sw         $s1, 0x14($sp)
/* 9C57C 800ABD7C 21888000 */  addu       $s1, $a0, $zero
/* 9C580 800ABD80 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9C584 800ABD84 03002106 */  bgez       $s1, .L800ABD94
/* 9C588 800ABD88 1800B2AF */   sw        $s2, 0x18($sp)
/* 9C58C 800ABD8C 71AF0208 */  j          .L800ABDC4
/* 9C590 800ABD90 FFFF0224 */   addiu     $v0, $zero, -1
.L800ABD94:
/* 9C594 800ABD94 6DAF0208 */  j          .L800ABDB4
/* 9C598 800ABD98 01001224 */   addiu     $s2, $zero, 1
.L800ABD9C:
/* 9C59C 800ABD9C FF0F0232 */  andi       $v0, $s0, 0xfff
/* 9C5A0 800ABDA0 03004014 */  bnez       $v0, .L800ABDB0
/* 9C5A4 800ABDA4 00000000 */   nop
/* 9C5A8 800ABDA8 7CAA000C */  jal        vsync_8002a9f0
/* 9C5AC 800ABDAC 00000000 */   nop
.L800ABDB0:
/* 9C5B0 800ABDB0 01001026 */  addiu      $s0, $s0, 1
.L800ABDB4:
/* 9C5B4 800ABDB4 77AF020C */  jal        FUN_800abddc
/* 9C5B8 800ABDB8 21202002 */   addu      $a0, $s1, $zero
/* 9C5BC 800ABDBC F7FF5210 */  beq        $v0, $s2, .L800ABD9C
/* 9C5C0 800ABDC0 00000000 */   nop
.L800ABDC4:
/* 9C5C4 800ABDC4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9C5C8 800ABDC8 1800B28F */  lw         $s2, 0x18($sp)
/* 9C5CC 800ABDCC 1400B18F */  lw         $s1, 0x14($sp)
/* 9C5D0 800ABDD0 1000B08F */  lw         $s0, 0x10($sp)
/* 9C5D4 800ABDD4 0800E003 */  jr         $ra
/* 9C5D8 800ABDD8 2000BD27 */   addiu     $sp, $sp, 0x20
