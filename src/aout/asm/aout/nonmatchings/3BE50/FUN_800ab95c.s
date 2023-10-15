.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab95c
/* 9C15C 800AB95C FFFF0224 */  addiu      $v0, $zero, -1
/* 9C160 800AB960 07008210 */  beq        $a0, $v0, .L800AB980
/* 9C164 800AB964 40180400 */   sll       $v1, $a0, 1
/* 9C168 800AB968 21186400 */  addu       $v1, $v1, $a0
/* 9C16C 800AB96C C0180300 */  sll        $v1, $v1, 3
/* 9C170 800AB970 1C80023C */  lui        $v0, %hi(D_801BFBB8)
/* 9C174 800AB974 B8FB4224 */  addiu      $v0, $v0, %lo(D_801BFBB8)
/* 9C178 800AB978 0800E003 */  jr         $ra
/* 9C17C 800AB97C 21106200 */   addu      $v0, $v1, $v0
.L800AB980:
/* 9C180 800AB980 0180023C */  lui        $v0, %hi(D_80016D78)
/* 9C184 800AB984 0800E003 */  jr         $ra
/* 9C188 800AB988 786D4224 */   addiu     $v0, $v0, %lo(D_80016D78)
