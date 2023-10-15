.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab4f0
/* 9BCF0 800AB4F0 FFFF0224 */  addiu      $v0, $zero, -1
/* 9BCF4 800AB4F4 05008210 */  beq        $a0, $v0, .L800AB50C
/* 9BCF8 800AB4F8 00190400 */   sll       $v1, $a0, 4
/* 9BCFC 800AB4FC 1C80023C */  lui        $v0, %hi(D_801BFE88)
/* 9BD00 800AB500 88FE4224 */  addiu      $v0, $v0, %lo(D_801BFE88)
/* 9BD04 800AB504 0800E003 */  jr         $ra
/* 9BD08 800AB508 21106200 */   addu      $v0, $v1, $v0
.L800AB50C:
/* 9BD0C 800AB50C 0180023C */  lui        $v0, %hi(D_80016D78)
/* 9BD10 800AB510 0800E003 */  jr         $ra
/* 9BD14 800AB514 786D4224 */   addiu     $v0, $v0, %lo(D_80016D78)
