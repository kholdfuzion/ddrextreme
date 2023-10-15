.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e8e0
/* 6F0E0 8007E8E0 0F80023C */  lui        $v0, %hi(D_800F0014)
/* 6F0E4 8007E8E4 1400428C */  lw         $v0, %lo(D_800F0014)($v0)
/* 6F0E8 8007E8E8 1B80043C */  lui        $a0, %hi(D_801B0E58)
/* 6F0EC 8007E8EC 3F004330 */  andi       $v1, $v0, 0x3f
/* 6F0F0 8007E8F0 23104300 */  subu       $v0, $v0, $v1
/* 6F0F4 8007E8F4 0800E003 */  jr         $ra
/* 6F0F8 8007E8F8 580E82AC */   sw        $v0, %lo(D_801B0E58)($a0)
