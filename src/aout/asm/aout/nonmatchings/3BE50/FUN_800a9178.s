.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9178
/* 99978 800A9178 01000324 */  addiu      $v1, $zero, 1
/* 9997C 800A917C 1C80023C */  lui        $v0, %hi(D_801BFBB0)
/* 99980 800A9180 B0FB4224 */  addiu      $v0, $v0, %lo(D_801BFBB0)
/* 99984 800A9184 04004224 */  addiu      $v0, $v0, 4
.L800A9188:
/* 99988 800A9188 000040AC */  sw         $zero, ($v0)
/* 9998C 800A918C FFFF6324 */  addiu      $v1, $v1, -1
/* 99990 800A9190 FDFF6104 */  bgez       $v1, .L800A9188
/* 99994 800A9194 FCFF4224 */   addiu     $v0, $v0, -4
/* 99998 800A9198 0800E003 */  jr         $ra
/* 9999C 800A919C 00000000 */   nop
