.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel toupper
/* 1F754 8002EF54 21188000 */  addu       $v1, $a0, $zero
/* 1F758 8002EF58 FF006230 */  andi       $v0, $v1, 0xff
/* 1F75C 8002EF5C 0E80013C */  lui        $at, %hi(D_800D8C0D)
/* 1F760 8002EF60 21082200 */  addu       $at, $at, $v0
/* 1F764 8002EF64 0D8C2290 */  lbu        $v0, %lo(D_800D8C0D)($at)
/* 1F768 8002EF68 00000000 */  nop
/* 1F76C 8002EF6C 02004230 */  andi       $v0, $v0, 2
/* 1F770 8002EF70 02004010 */  beqz       $v0, .L8002EF7C
/* 1F774 8002EF74 00000000 */   nop
/* 1F778 8002EF78 E0FF8324 */  addiu      $v1, $a0, -0x20
.L8002EF7C:
/* 1F77C 8002EF7C 00160300 */  sll        $v0, $v1, 0x18
/* 1F780 8002EF80 0800E003 */  jr         $ra
/* 1F784 8002EF84 03160200 */   sra       $v0, $v0, 0x18
/* 1F788 8002EF88 00000000 */  nop
/* 1F78C 8002EF8C 00000000 */  nop
/* 1F790 8002EF90 00000000 */  nop
