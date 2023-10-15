.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80028924
/* 19124 80028924 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 19128 80028928 1400B1AF */  sw         $s1, 0x14($sp)
/* 1912C 8002892C 0F80113C */  lui        $s1, %hi(D_800EFFAC)
/* 19130 80028930 1000B0AF */  sw         $s0, 0x10($sp)
/* 19134 80028934 ACFF3026 */  addiu      $s0, $s1, %lo(D_800EFFAC)
/* 19138 80028938 1800BFAF */  sw         $ra, 0x18($sp)
/* 1913C 8002893C 5DA2000C */  jal        FUN_80028974
/* 19140 80028940 21200002 */   addu      $a0, $s0, $zero
/* 19144 80028944 04000326 */  addiu      $v1, $s0, 4
/* 19148 80028948 ACFF228E */  lw         $v0, -0x54($s1)
/* 1914C 8002894C 1800BF8F */  lw         $ra, 0x18($sp)
/* 19150 80028950 1400B18F */  lw         $s1, 0x14($sp)
/* 19154 80028954 40110200 */  sll        $v0, $v0, 5
/* 19158 80028958 21104300 */  addu       $v0, $v0, $v1
/* 1915C 8002895C FCFF02AE */  sw         $v0, -4($s0)
/* 19160 80028960 1000B08F */  lw         $s0, 0x10($sp)
/* 19164 80028964 0800E003 */  jr         $ra
/* 19168 80028968 2000BD27 */   addiu     $sp, $sp, 0x20
