.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80067a74
/* 58274 80067A74 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 58278 80067A78 28006524 */  addiu      $a1, $v1, %lo(D_800F0028)
/* 5827C 80067A7C 80100400 */  sll        $v0, $a0, 2
/* 58280 80067A80 21104400 */  addu       $v0, $v0, $a0
/* 58284 80067A84 C0190200 */  sll        $v1, $v0, 7
/* 58288 80067A88 21104300 */  addu       $v0, $v0, $v1
/* 5828C 80067A8C 40110200 */  sll        $v0, $v0, 5
/* 58290 80067A90 23104400 */  subu       $v0, $v0, $a0
/* 58294 80067A94 80200200 */  sll        $a0, $v0, 2
/* 58298 80067A98 21188500 */  addu       $v1, $a0, $a1
/* 5829C 80067A9C 8A006390 */  lbu        $v1, 0x8a($v1)
/* 582A0 80067AA0 07000224 */  addiu      $v0, $zero, 7
/* 582A4 80067AA4 04006210 */  beq        $v1, $v0, .L80067AB8
/* 582A8 80067AA8 FFFF0624 */   addiu     $a2, $zero, -1
/* 582AC 80067AAC 02006010 */  beqz       $v1, .L80067AB8
/* 582B0 80067AB0 2110A400 */   addu      $v0, $a1, $a0
/* 582B4 80067AB4 7000468C */  lw         $a2, 0x70($v0)
.L80067AB8:
/* 582B8 80067AB8 0800E003 */  jr         $ra
/* 582BC 80067ABC 2110C000 */   addu      $v0, $a2, $zero
