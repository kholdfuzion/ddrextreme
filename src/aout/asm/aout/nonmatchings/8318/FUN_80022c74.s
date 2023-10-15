.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022c74
/* 13474 80022C74 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 13478 80022C78 2000438C */  lw         $v1, %lo(D_800F0020)($v0)
/* 1347C 80022C7C 00000000 */  nop
/* 13480 80022C80 2D016328 */  slti       $v1, $v1, 0x12d
/* 13484 80022C84 02006010 */  beqz       $v1, .L80022C90
/* 13488 80022C88 01000224 */   addiu     $v0, $zero, 1
/* 1348C 80022C8C 04000224 */  addiu      $v0, $zero, 4
.L80022C90:
/* 13490 80022C90 0800E003 */  jr         $ra
/* 13494 80022C94 00000000 */   nop
