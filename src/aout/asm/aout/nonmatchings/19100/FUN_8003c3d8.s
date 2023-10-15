.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c3d8
/* 2CBD8 8003C3D8 80100700 */  sll        $v0, $a3, 2
/* 2CBDC 8003C3DC 21104700 */  addu       $v0, $v0, $a3
/* 2CBE0 8003C3E0 80100200 */  sll        $v0, $v0, 2
/* 2CBE4 8003C3E4 23104700 */  subu       $v0, $v0, $a3
/* 2CBE8 8003C3E8 80400200 */  sll        $t0, $v0, 2
/* 2CBEC 8003C3EC 1580033C */  lui        $v1, %hi(D_80156E38)
/* 2CBF0 8003C3F0 386E6924 */  addiu      $t1, $v1, %lo(D_80156E38)
/* 2CBF4 8003C3F4 20002A25 */  addiu      $t2, $t1, 0x20
/* 2CBF8 8003C3F8 0E80023C */  lui        $v0, %hi(D_800D90E0)
/* 2CBFC 8003C3FC E0904224 */  addiu      $v0, $v0, %lo(D_800D90E0)
/* 2CC00 8003C400 00310600 */  sll        $a2, $a2, 4
/* 2CC04 8003C404 2130C200 */  addu       $a2, $a2, $v0
/* 2CC08 8003C408 03000724 */  addiu      $a3, $zero, 3
.L8003C40C:
/* 2CC0C 8003C40C 0000C28C */  lw         $v0, ($a2)
/* 2CC10 8003C410 00000000 */  nop
/* 2CC14 8003C414 80100200 */  sll        $v0, $v0, 2
/* 2CC18 8003C418 21104800 */  addu       $v0, $v0, $t0
/* 2CC1C 8003C41C 21104900 */  addu       $v0, $v0, $t1
/* 2CC20 8003C420 0000438C */  lw         $v1, ($v0)
/* 2CC24 8003C424 FFFFE724 */  addiu      $a3, $a3, -1
/* 2CC28 8003C428 000083AC */  sw         $v1, ($a0)
/* 2CC2C 8003C42C 0000C28C */  lw         $v0, ($a2)
/* 2CC30 8003C430 04008424 */  addiu      $a0, $a0, 4
/* 2CC34 8003C434 80100200 */  sll        $v0, $v0, 2
/* 2CC38 8003C438 21104800 */  addu       $v0, $v0, $t0
/* 2CC3C 8003C43C 21104A00 */  addu       $v0, $v0, $t2
/* 2CC40 8003C440 0000438C */  lw         $v1, ($v0)
/* 2CC44 8003C444 0400C624 */  addiu      $a2, $a2, 4
/* 2CC48 8003C448 0000A3AC */  sw         $v1, ($a1)
/* 2CC4C 8003C44C EFFFE104 */  bgez       $a3, .L8003C40C
/* 2CC50 8003C450 0400A524 */   addiu     $a1, $a1, 4
/* 2CC54 8003C454 0800E003 */  jr         $ra
/* 2CC58 8003C458 00000000 */   nop
