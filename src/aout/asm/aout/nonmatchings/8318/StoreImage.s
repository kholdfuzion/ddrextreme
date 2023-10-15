.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel StoreImage
/* 8E6C 8001866C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8E70 80018670 1000B0AF */  sw         $s0, 0x10($sp)
/* 8E74 80018674 21808000 */  addu       $s0, $a0, $zero
/* 8E78 80018678 1400B1AF */  sw         $s1, 0x14($sp)
/* 8E7C 8001867C 2188A000 */  addu       $s1, $a1, $zero
/* 8E80 80018680 0180043C */  lui        $a0, %hi(D_800101D8)
/* 8E84 80018684 D8018424 */  addiu      $a0, $a0, %lo(D_800101D8)
/* 8E88 80018688 1800BFAF */  sw         $ra, 0x18($sp)
/* 8E8C 8001868C F260000C */  jal        SYS_OBJ_3E4
/* 8E90 80018690 21280002 */   addu      $a1, $s0, $zero
/* 8E94 80018694 21280002 */  addu       $a1, $s0, $zero
/* 8E98 80018698 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* 8E9C 8001869C 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* 8EA0 800186A0 08000624 */  addiu      $a2, $zero, 8
/* 8EA4 800186A4 1C00448C */  lw         $a0, 0x1c($v0)
/* 8EA8 800186A8 0800428C */  lw         $v0, 8($v0)
/* 8EAC 800186AC 00000000 */  nop
/* 8EB0 800186B0 09F84000 */  jalr       $v0
/* 8EB4 800186B4 21382002 */   addu      $a3, $s1, $zero
/* 8EB8 800186B8 1800BF8F */  lw         $ra, 0x18($sp)
/* 8EBC 800186BC 1400B18F */  lw         $s1, 0x14($sp)
/* 8EC0 800186C0 1000B08F */  lw         $s0, 0x10($sp)
/* 8EC4 800186C4 0800E003 */  jr         $ra
/* 8EC8 800186C8 2000BD27 */   addiu     $sp, $sp, 0x20
