.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002316c
/* 1396C 8002316C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13970 80023170 1000BFAF */  sw         $ra, 0x10($sp)
/* 13974 80023174 4E8D020C */  jal        FUN_800a3538
/* 13978 80023178 00000000 */   nop
/* 1397C 8002317C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 13980 80023180 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 13984 80023184 0100033C */  lui        $v1, 1
/* 13988 80023188 8A0040A0 */  sb         $zero, 0x8a($v0)
/* 1398C 8002318C 21104300 */  addu       $v0, $v0, $v1
/* 13990 80023190 EDC1020C */  jal        FUN_800b07b4
/* 13994 80023194 064340A0 */   sb        $zero, 0x4306($v0)
/* 13998 80023198 1000BF8F */  lw         $ra, 0x10($sp)
/* 1399C 8002319C 00000000 */  nop
/* 139A0 800231A0 0800E003 */  jr         $ra
/* 139A4 800231A4 1800BD27 */   addiu     $sp, $sp, 0x18
