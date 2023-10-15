.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800756d8
/* 65ED8 800756D8 1B80023C */  lui        $v0, %hi(D_801B0E4C)
/* 65EDC 800756DC 4C0E438C */  lw         $v1, %lo(D_801B0E4C)($v0)
/* 65EE0 800756E0 80200400 */  sll        $a0, $a0, 2
/* 65EE4 800756E4 21106400 */  addu       $v0, $v1, $a0
/* 65EE8 800756E8 21184000 */  addu       $v1, $v0, $zero
/* 65EEC 800756EC 000040AC */  sw         $zero, ($v0)
/* 65EF0 800756F0 0800E003 */  jr         $ra
/* 65EF4 800756F4 080060AC */   sw        $zero, 8($v1)
