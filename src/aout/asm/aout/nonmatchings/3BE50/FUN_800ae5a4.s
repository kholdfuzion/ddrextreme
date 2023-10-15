.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae5a4
/* 9EDA4 800AE5A4 1C80033C */  lui        $v1, %hi(D_801C4658)
/* 9EDA8 800AE5A8 58466324 */  addiu      $v1, $v1, %lo(D_801C4658)
/* 9EDAC 800AE5AC 40200400 */  sll        $a0, $a0, 1
/* 9EDB0 800AE5B0 04288500 */  sllv       $a1, $a1, $a0
/* 9EDB4 800AE5B4 0A006290 */  lbu        $v0, 0xa($v1)
/* 9EDB8 800AE5B8 27280500 */  nor        $a1, $zero, $a1
/* 9EDBC 800AE5BC 24104500 */  and        $v0, $v0, $a1
/* 9EDC0 800AE5C0 0800E003 */  jr         $ra
/* 9EDC4 800AE5C4 0A0062A0 */   sb        $v0, 0xa($v1)
