.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800756c0
/* 65EC0 800756C0 1B80023C */  lui        $v0, %hi(D_801B0E4C)
/* 65EC4 800756C4 4C0E438C */  lw         $v1, %lo(D_801B0E4C)($v0)
/* 65EC8 800756C8 80200400 */  sll        $a0, $a0, 2
/* 65ECC 800756CC 21186400 */  addu       $v1, $v1, $a0
/* 65ED0 800756D0 0800E003 */  jr         $ra
/* 65ED4 800756D4 000065AC */   sw        $a1, ($v1)
