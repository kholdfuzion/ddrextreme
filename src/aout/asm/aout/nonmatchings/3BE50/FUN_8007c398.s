.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007c398
/* 6CB98 8007C398 04000224 */  addiu      $v0, $zero, 4
/* 6CB9C 8007C39C 0900C214 */  bne        $a2, $v0, .L8007C3C4
/* 6CBA0 8007C3A0 06000224 */   addiu     $v0, $zero, 6
/* 6CBA4 8007C3A4 0180033C */  lui        $v1, %hi(D_80015774)
/* 6CBA8 8007C3A8 74576324 */  addiu      $v1, $v1, %lo(D_80015774)
/* 6CBAC 8007C3AC C0100500 */  sll        $v0, $a1, 3
/* 6CBB0 8007C3B0 21108200 */  addu       $v0, $a0, $v0
/* 6CBB4 8007C3B4 21186200 */  addu       $v1, $v1, $v0
/* 6CBB8 8007C3B8 70006290 */  lbu        $v0, 0x70($v1)
/* 6CBBC 8007C3BC 0800E003 */  jr         $ra
/* 6CBC0 8007C3C0 00000000 */   nop
.L8007C3C4:
/* 6CBC4 8007C3C4 0900C214 */  bne        $a2, $v0, .L8007C3EC
/* 6CBC8 8007C3C8 03000324 */   addiu     $v1, $zero, 3
/* 6CBCC 8007C3CC 0180023C */  lui        $v0, %hi(D_80015774)
/* 6CBD0 8007C3D0 74574224 */  addiu      $v0, $v0, %lo(D_80015774)
/* 6CBD4 8007C3D4 C0180500 */  sll        $v1, $a1, 3
/* 6CBD8 8007C3D8 21188300 */  addu       $v1, $a0, $v1
/* 6CBDC 8007C3DC 21186200 */  addu       $v1, $v1, $v0
/* 6CBE0 8007C3E0 00006290 */  lbu        $v0, ($v1)
/* 6CBE4 8007C3E4 0800E003 */  jr         $ra
/* 6CBE8 8007C3E8 00000000 */   nop
.L8007C3EC:
/* 6CBEC 8007C3EC 0E00C314 */  bne        $a2, $v1, .L8007C428
/* 6CBF0 8007C3F0 08000224 */   addiu     $v0, $zero, 8
/* 6CBF4 8007C3F4 02008014 */  bnez       $a0, .L8007C400
/* 6CBF8 8007C3F8 00000000 */   nop
/* 6CBFC 8007C3FC 04000424 */  addiu      $a0, $zero, 4
.L8007C400:
/* 6CC00 8007C400 02008314 */  bne        $a0, $v1, .L8007C40C
/* 6CC04 8007C404 0180033C */   lui       $v1, %hi(D_80015774)
/* 6CC08 8007C408 06000424 */  addiu      $a0, $zero, 6
.L8007C40C:
/* 6CC0C 8007C40C 74576324 */  addiu      $v1, $v1, %lo(D_80015774)
/* 6CC10 8007C410 C0100500 */  sll        $v0, $a1, 3
/* 6CC14 8007C414 21108200 */  addu       $v0, $a0, $v0
/* 6CC18 8007C418 21186200 */  addu       $v1, $v1, $v0
/* 6CC1C 8007C41C E0006290 */  lbu        $v0, 0xe0($v1)
/* 6CC20 8007C420 0800E003 */  jr         $ra
/* 6CC24 8007C424 00000000 */   nop
.L8007C428:
/* 6CC28 8007C428 0700C214 */  bne        $a2, $v0, .L8007C448
/* 6CC2C 8007C42C 00000000 */   nop
/* 6CC30 8007C430 0300A314 */  bne        $a1, $v1, .L8007C440
/* 6CC34 8007C434 07000224 */   addiu     $v0, $zero, 7
/* 6CC38 8007C438 0800E003 */  jr         $ra
/* 6CC3C 8007C43C 23104400 */   subu      $v0, $v0, $a0
.L8007C440:
/* 6CC40 8007C440 0800E003 */  jr         $ra
/* 6CC44 8007C444 21108000 */   addu      $v0, $a0, $zero
.L8007C448:
/* 6CC48 8007C448 0800E003 */  jr         $ra
/* 6CC4C 8007C44C 21108000 */   addu      $v0, $a0, $zero
