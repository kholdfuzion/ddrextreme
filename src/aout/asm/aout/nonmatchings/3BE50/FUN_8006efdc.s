.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006efdc
/* 5F7DC 8006EFDC 01000324 */  addiu      $v1, $zero, 1
/* 5F7E0 8006EFE0 1B80023C */  lui        $v0, %hi(D_801AF990)
/* 5F7E4 8006EFE4 90F94224 */  addiu      $v0, $v0, %lo(D_801AF990)
/* 5F7E8 8006EFE8 04004224 */  addiu      $v0, $v0, 4
.L8006EFEC:
/* 5F7EC 8006EFEC 000040AC */  sw         $zero, ($v0)
/* 5F7F0 8006EFF0 FFFF6324 */  addiu      $v1, $v1, -1
/* 5F7F4 8006EFF4 FDFF6104 */  bgez       $v1, .L8006EFEC
/* 5F7F8 8006EFF8 FCFF4224 */   addiu     $v0, $v0, -4
/* 5F7FC 8006EFFC 0800E003 */  jr         $ra
/* 5F800 8006F000 00000000 */   nop
