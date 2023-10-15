.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80020438
/* 10C38 80020438 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10C3C 8002043C 0F80033C */  lui        $v1, 0x800f
/* 10C40 80020440 01000224 */  addiu      $v0, $zero, 1
/* 10C44 80020444 1000B0AF */  sw         $s0, 0x10($sp)
/* 10C48 80020448 21808000 */  addu       $s0, $a0, $zero
/* 10C4C 8002044C 1400BFAF */  sw         $ra, 0x14($sp)
/* 10C50 80020450 D39B020C */  jal        FUN_800a6f4c
/* 10C54 80020454 250062A0 */   sb        $v0, 0x25($v1)
/* 10C58 80020458 0E80023C */  lui        $v0, %hi(D_800D88D0)
/* 10C5C 8002045C 0000058E */  lw         $a1, ($s0)
/* 10C60 80020460 D0884224 */  addiu      $v0, $v0, %lo(D_800D88D0)
/* 10C64 80020464 80180500 */  sll        $v1, $a1, 2
/* 10C68 80020468 21104300 */  addu       $v0, $v0, $v1
/* 10C6C 8002046C 1800438C */  lw         $v1, 0x18($v0)
/* 10C70 80020470 00000000 */  nop
/* 10C74 80020474 09F86000 */  jalr       $v1
/* 10C78 80020478 21200002 */   addu      $a0, $s0, $zero
/* 10C7C 8002047C 0F80023C */  lui        $v0, %hi(D_800F003B)
/* 10C80 80020480 1380033C */  lui        $v1, %hi(D_80129DA8)
/* 10C84 80020484 A89D6324 */  addiu      $v1, $v1, %lo(D_80129DA8)
/* 10C88 80020488 0FFF0424 */  addiu      $a0, $zero, -0xf1
/* 10C8C 8002048C 3B0040A0 */  sb         $zero, %lo(D_800F003B)($v0)
/* 10C90 80020490 B40D628C */  lw         $v0, 0xdb4($v1)
/* 10C94 80020494 1400BF8F */  lw         $ra, 0x14($sp)
/* 10C98 80020498 1000B08F */  lw         $s0, 0x10($sp)
/* 10C9C 8002049C 24104400 */  and        $v0, $v0, $a0
/* 10CA0 800204A0 B40D62AC */  sw         $v0, 0xdb4($v1)
/* 10CA4 800204A4 0800E003 */  jr         $ra
/* 10CA8 800204A8 1800BD27 */   addiu     $sp, $sp, 0x18
