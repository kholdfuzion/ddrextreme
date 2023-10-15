.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6e0c
/* 9760C 800A6E0C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97610 800A6E10 1B80023C */  lui        $v0, %hi(D_801B2F50)
/* 97614 800A6E14 502F428C */  lw         $v0, %lo(D_801B2F50)($v0)
/* 97618 800A6E18 21288000 */  addu       $a1, $a0, $zero
/* 9761C 800A6E1C 04004010 */  beqz       $v0, .L800A6E30
/* 97620 800A6E20 1000BFAF */   sw        $ra, 0x10($sp)
/* 97624 800A6E24 21204000 */  addu       $a0, $v0, $zero
/* 97628 800A6E28 929B020C */  jal        FUN_800a6e48
/* 9762C 800A6E2C 8000A524 */   addiu     $a1, $a1, 0x80
.L800A6E30:
/* 97630 800A6E30 1000BF8F */  lw         $ra, 0x10($sp)
/* 97634 800A6E34 00000000 */  nop
/* 97638 800A6E38 0800E003 */  jr         $ra
/* 9763C 800A6E3C 1800BD27 */   addiu     $sp, $sp, 0x18
