.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_001_OBJ_520
/* 11F28 80021728 1380023C */  lui        $v0, %hi(D_80128FF0)
/* 11F2C 8002172C F08F4224 */  addiu      $v0, $v0, %lo(D_80128FF0)
/* 11F30 80021730 1380053C */  lui        $a1, %hi(D_801290AC)
/* 11F34 80021734 AC90A584 */  lh         $a1, %lo(D_801290AC)($a1)
/* 11F38 80021738 1000E48C */  lw         $a0, 0x10($a3)
/* 11F3C 8002173C 00290500 */  sll        $a1, $a1, 4
/* 11F40 80021740 D685000C */  jal        AddPrim
/* 11F44 80021744 2128A200 */   addu      $a1, $a1, $v0
/* 11F48 80021748 1000BF8F */  lw         $ra, 0x10($sp)
/* 11F4C 8002174C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 11F50 80021750 0800E003 */  jr         $ra
/* 11F54 80021754 00000000 */   nop
