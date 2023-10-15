.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006C37C
/* 5CB7C 8006C37C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CB80 8006C380 A89D468C */  lw         $a2, %lo(D_80129DA8)($v0)
/* 5CB84 8006C384 01000324 */  addiu      $v1, $zero, 1
/* 5CB88 8006C388 1A80073C */  lui        $a3, %hi(D_801A7800)
/* 5CB8C 8006C38C 0078E724 */  addiu      $a3, $a3, %lo(D_801A7800)
/* 5CB90 8006C390 23186600 */  subu       $v1, $v1, $a2
/* 5CB94 8006C394 80290300 */  sll        $a1, $v1, 6
/* 5CB98 8006C398 2128A300 */  addu       $a1, $a1, $v1
/* 5CB9C 8006C39C 80280500 */  sll        $a1, $a1, 2
/* 5CBA0 8006C3A0 2328A300 */  subu       $a1, $a1, $v1
/* 5CBA4 8006C3A4 C0280500 */  sll        $a1, $a1, 3
/* 5CBA8 8006C3A8 2128A300 */  addu       $a1, $a1, $v1
/* 5CBAC 8006C3AC C0280500 */  sll        $a1, $a1, 3
/* 5CBB0 8006C3B0 40180400 */  sll        $v1, $a0, 1
/* 5CBB4 8006C3B4 21186400 */  addu       $v1, $v1, $a0
/* 5CBB8 8006C3B8 80180300 */  sll        $v1, $v1, 2
/* 5CBBC 8006C3BC 23186400 */  subu       $v1, $v1, $a0
/* 5CBC0 8006C3C0 80180300 */  sll        $v1, $v1, 2
/* 5CBC4 8006C3C4 23186400 */  subu       $v1, $v1, $a0
/* 5CBC8 8006C3C8 80180300 */  sll        $v1, $v1, 2
/* 5CBCC 8006C3CC 21186400 */  addu       $v1, $v1, $a0
/* 5CBD0 8006C3D0 80180300 */  sll        $v1, $v1, 2
/* 5CBD4 8006C3D4 23186400 */  subu       $v1, $v1, $a0
/* 5CBD8 8006C3D8 80180300 */  sll        $v1, $v1, 2
/* 5CBDC 8006C3DC 2128A300 */  addu       $a1, $a1, $v1
/* 5CBE0 8006C3E0 2128A700 */  addu       $a1, $a1, $a3
/* 5CBE4 8006C3E4 80110600 */  sll        $v0, $a2, 6
/* 5CBE8 8006C3E8 21104600 */  addu       $v0, $v0, $a2
/* 5CBEC 8006C3EC 80100200 */  sll        $v0, $v0, 2
/* 5CBF0 8006C3F0 23104600 */  subu       $v0, $v0, $a2
/* 5CBF4 8006C3F4 C0100200 */  sll        $v0, $v0, 3
/* 5CBF8 8006C3F8 21104600 */  addu       $v0, $v0, $a2
/* 5CBFC 8006C3FC C0100200 */  sll        $v0, $v0, 3
/* 5CC00 8006C400 21104300 */  addu       $v0, $v0, $v1
/* 5CC04 8006C404 21104700 */  addu       $v0, $v0, $a3
/* 5CC08 8006C408 C00A4324 */  addiu      $v1, $v0, 0xac0
.L8006C40C:
/* 5CC0C 8006C40C 0000448C */  lw         $a0, ($v0)
/* 5CC10 8006C410 0400468C */  lw         $a2, 4($v0)
/* 5CC14 8006C414 0800478C */  lw         $a3, 8($v0)
/* 5CC18 8006C418 0C00488C */  lw         $t0, 0xc($v0)
/* 5CC1C 8006C41C 0000A4AC */  sw         $a0, ($a1)
/* 5CC20 8006C420 0400A6AC */  sw         $a2, 4($a1)
/* 5CC24 8006C424 0800A7AC */  sw         $a3, 8($a1)
/* 5CC28 8006C428 0C00A8AC */  sw         $t0, 0xc($a1)
/* 5CC2C 8006C42C 10004224 */  addiu      $v0, $v0, 0x10
/* 5CC30 8006C430 F6FF4314 */  bne        $v0, $v1, .L8006C40C
/* 5CC34 8006C434 1000A524 */   addiu     $a1, $a1, 0x10
/* 5CC38 8006C438 0000438C */  lw         $v1, ($v0)
/* 5CC3C 8006C43C 0400448C */  lw         $a0, 4($v0)
/* 5CC40 8006C440 0800468C */  lw         $a2, 8($v0)
/* 5CC44 8006C444 0000A3AC */  sw         $v1, ($a1)
/* 5CC48 8006C448 0400A4AC */  sw         $a0, 4($a1)
/* 5CC4C 8006C44C 0800E003 */  jr         $ra
/* 5CC50 8006C450 0800A6AC */   sw        $a2, 8($a1)
