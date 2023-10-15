.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800745fc
/* 64DFC 800745FC 1B80033C */  lui        $v1, %hi(D_801B0C98)
/* 64E00 80074600 980C6324 */  addiu      $v1, $v1, %lo(D_801B0C98)
/* 64E04 80074604 80100400 */  sll        $v0, $a0, 2
/* 64E08 80074608 21104400 */  addu       $v0, $v0, $a0
/* 64E0C 8007460C 80100200 */  sll        $v0, $v0, 2
/* 64E10 80074610 21204300 */  addu       $a0, $v0, $v1
/* 64E14 80074614 21286200 */  addu       $a1, $v1, $v0
/* 64E18 80074618 000080AC */  sw         $zero, ($a0)
/* 64E1C 8007461C 2120A000 */  addu       $a0, $a1, $zero
/* 64E20 80074620 21188000 */  addu       $v1, $a0, $zero
/* 64E24 80074624 21100000 */  addu       $v0, $zero, $zero
/* 64E28 80074628 0800A0AC */  sw         $zero, 8($a1)
/* 64E2C 8007462C 0C0080AC */  sw         $zero, 0xc($a0)
/* 64E30 80074630 0800E003 */  jr         $ra
/* 64E34 80074634 100060AC */   sw        $zero, 0x10($v1)
