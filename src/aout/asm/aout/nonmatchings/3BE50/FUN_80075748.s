.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80075748
/* 65F48 80075748 1B80033C */  lui        $v1, %hi(D_801B0E4C)
/* 65F4C 8007574C 1B80023C */  lui        $v0, %hi(D_801B0E38)
/* 65F50 80075750 380E4224 */  addiu      $v0, $v0, %lo(D_801B0E38)
/* 65F54 80075754 4C0E62AC */  sw         $v0, %lo(D_801B0E4C)($v1)
/* 65F58 80075758 01000424 */  addiu      $a0, $zero, 1
.L8007575C:
/* 65F5C 8007575C 000040AC */  sw         $zero, ($v0)
/* 65F60 80075760 080040AC */  sw         $zero, 8($v0)
/* 65F64 80075764 FFFF8424 */  addiu      $a0, $a0, -1
/* 65F68 80075768 FCFF8104 */  bgez       $a0, .L8007575C
/* 65F6C 8007576C 04004224 */   addiu     $v0, $v0, 4
/* 65F70 80075770 4C0E628C */  lw         $v0, 0xe4c($v1)
/* 65F74 80075774 0800E003 */  jr         $ra
/* 65F78 80075778 100040AC */   sw        $zero, 0x10($v0)
