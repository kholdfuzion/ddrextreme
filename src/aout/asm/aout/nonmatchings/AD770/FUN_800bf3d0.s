.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf3d0
/* AFBD0 800BF3D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AFBD4 800BF3D4 2000BFAF */  sw         $ra, 0x20($sp)
/* AFBD8 800BF3D8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AFBDC 800BF3DC 1800B2AF */  sw         $s2, 0x18($sp)
/* AFBE0 800BF3E0 1400B1AF */  sw         $s1, 0x14($sp)
/* AFBE4 800BF3E4 1000B0AF */  sw         $s0, 0x10($sp)
/* AFBE8 800BF3E8 1F80023C */  lui        $v0, %hi(D_801F7088)
/* AFBEC 800BF3EC 8870428C */  lw         $v0, %lo(D_801F7088)($v0)
/* AFBF0 800BF3F0 00000000 */  nop
/* AFBF4 800BF3F4 1C004010 */  beqz       $v0, .L800BF468
/* AFBF8 800BF3F8 FFFF0224 */   addiu     $v0, $zero, -1
/* AFBFC 800BF3FC 0000B38C */  lw         $s3, ($a1)
/* AFC00 800BF400 0400B18C */  lw         $s1, 4($a1)
/* AFC04 800BF404 00000000 */  nop
/* AFC08 800BF408 1600201A */  blez       $s1, .L800BF464
/* AFC0C 800BF40C 21900000 */   addu      $s2, $zero, $zero
/* AFC10 800BF410 0004222A */  slti       $v0, $s1, 0x400
.L800BF414:
/* AFC14 800BF414 05004010 */  beqz       $v0, .L800BF42C
/* AFC18 800BF418 01002226 */   addiu     $v0, $s1, 1
/* AFC1C 800BF41C C21F0200 */  srl        $v1, $v0, 0x1f
/* AFC20 800BF420 21104300 */  addu       $v0, $v0, $v1
/* AFC24 800BF424 0CFD0208 */  j          .L800BF430
/* AFC28 800BF428 43800200 */   sra       $s0, $v0, 1
.L800BF42C:
/* AFC2C 800BF42C 00021024 */  addiu      $s0, $zero, 0x200
.L800BF430:
/* AFC30 800BF430 C2271200 */  srl        $a0, $s2, 0x1f
/* AFC34 800BF434 21204402 */  addu       $a0, $s2, $a0
/* AFC38 800BF438 43200400 */  sra        $a0, $a0, 1
/* AFC3C 800BF43C 40200400 */  sll        $a0, $a0, 1
/* AFC40 800BF440 21206402 */  addu       $a0, $s3, $a0
/* AFC44 800BF444 52FD020C */  jal        FUN_800bf548
/* AFC48 800BF448 21280002 */   addu      $a1, $s0, $zero
/* AFC4C 800BF44C 40801000 */  sll        $s0, $s0, 1
/* AFC50 800BF450 21905002 */  addu       $s2, $s2, $s0
/* AFC54 800BF454 4A70000C */  jal        FUN_8001c128
/* AFC58 800BF458 23883002 */   subu      $s1, $s1, $s0
/* AFC5C 800BF45C EDFF201E */  bgtz       $s1, .L800BF414
/* AFC60 800BF460 0004222A */   slti      $v0, $s1, 0x400
.L800BF464:
/* AFC64 800BF464 21100000 */  addu       $v0, $zero, $zero
.L800BF468:
/* AFC68 800BF468 2000BF8F */  lw         $ra, 0x20($sp)
/* AFC6C 800BF46C 1C00B38F */  lw         $s3, 0x1c($sp)
/* AFC70 800BF470 1800B28F */  lw         $s2, 0x18($sp)
/* AFC74 800BF474 1400B18F */  lw         $s1, 0x14($sp)
/* AFC78 800BF478 1000B08F */  lw         $s0, 0x10($sp)
/* AFC7C 800BF47C 0800E003 */  jr         $ra
/* AFC80 800BF480 2800BD27 */   addiu     $sp, $sp, 0x28
