.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6db0
/* 975B0 800A6DB0 21280000 */  addu       $a1, $zero, $zero
/* 975B4 800A6DB4 1B80023C */  lui        $v0, %hi(D_801B2F50)
/* 975B8 800A6DB8 0000838C */  lw         $v1, ($a0)
/* 975BC 800A6DBC 21304000 */  addu       $a2, $v0, $zero
/* 975C0 800A6DC0 769B0208 */  j          .L800A6DD8
/* 975C4 800A6DC4 502F40AC */   sw        $zero, %lo(D_801B2F50)($v0)
.L800A6DC8:
/* 975C8 800A6DC8 0000828C */  lw         $v0, ($a0)
/* 975CC 800A6DCC 00000000 */  nop
/* 975D0 800A6DD0 21208200 */  addu       $a0, $a0, $v0
/* 975D4 800A6DD4 0000838C */  lw         $v1, ($a0)
.L800A6DD8:
/* 975D8 800A6DD8 00000000 */  nop
/* 975DC 800A6DDC 06006010 */  beqz       $v1, .L800A6DF8
/* 975E0 800A6DE0 04000224 */   addiu     $v0, $zero, 4
/* 975E4 800A6DE4 04008394 */  lhu        $v1, 4($a0)
/* 975E8 800A6DE8 00000000 */  nop
/* 975EC 800A6DEC F6FF6214 */  bne        $v1, $v0, .L800A6DC8
/* 975F0 800A6DF0 00000000 */   nop
/* 975F4 800A6DF4 21288000 */  addu       $a1, $a0, $zero
.L800A6DF8:
/* 975F8 800A6DF8 0200A010 */  beqz       $a1, .L800A6E04
/* 975FC 800A6DFC 0800A224 */   addiu     $v0, $a1, 8
/* 97600 800A6E00 502FC2AC */  sw         $v0, 0x2f50($a2)
.L800A6E04:
/* 97604 800A6E04 0800E003 */  jr         $ra
/* 97608 800A6E08 00000000 */   nop
