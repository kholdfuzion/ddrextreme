.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_60C
/* 63F50 80073750 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63F54 80073754 21288000 */  addu       $a1, $a0, $zero
/* 63F58 80073758 0180043C */  lui        $a0, %hi(D_800148A8)
/* 63F5C 8007375C A8488424 */  addiu      $a0, $a0, %lo(D_800148A8)
/* 63F60 80073760 1000BFAF */  sw         $ra, 0x10($sp)
/* 63F64 80073764 755F000C */  jal        FUN_80017dd4
/* 63F68 80073768 00000000 */   nop
/* 63F6C 8007376C 0E80033C */  lui        $v1, %hi(D_800DB124)
/* 63F70 80073770 24B1638C */  lw         $v1, %lo(D_800DB124)($v1)
/* 63F74 80073774 0080023C */  lui        $v0, 0x8000
/* 63F78 80073778 000062AC */  sw         $v0, ($v1)
/* 63F7C 8007377C 0E80023C */  lui        $v0, %hi(D_800DB0F8)
/* 63F80 80073780 F8B0428C */  lw         $v0, %lo(D_800DB0F8)($v0)
/* 63F84 80073784 00000000 */  nop
/* 63F88 80073788 000040AC */  sw         $zero, ($v0)
/* 63F8C 8007378C 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63F90 80073790 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63F94 80073794 00000000 */  nop
/* 63F98 80073798 000040AC */  sw         $zero, ($v0)
/* 63F9C 8007379C 21100000 */  addu       $v0, $zero, $zero
/* 63FA0 800737A0 0E80033C */  lui        $v1, %hi(D_800DB104)
/* 63FA4 800737A4 04B1638C */  lw         $v1, %lo(D_800DB104)($v1)
/* 63FA8 800737A8 0E80043C */  lui        $a0, %hi(D_800DB124)
/* 63FAC 800737AC 24B1848C */  lw         $a0, %lo(D_800DB124)($a0)
/* 63FB0 800737B0 0000638C */  lw         $v1, ($v1)
/* 63FB4 800737B4 0060033C */  lui        $v1, 0x6000
/* 63FB8 800737B8 000083AC */  sw         $v1, ($a0)
/* 63FBC 800737BC 1000BF8F */  lw         $ra, 0x10($sp)
/* 63FC0 800737C0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63FC4 800737C4 0800E003 */  jr         $ra
/* 63FC8 800737C8 00000000 */   nop
/* 63FCC 800737CC 00000000 */  nop
/* 63FD0 800737D0 00000000 */  nop
