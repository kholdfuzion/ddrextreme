.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_201C
/* A800 8001A000 FFFFA624 */  addiu      $a2, $a1, -1
/* A804 8001A004 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* A808 8001A008 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* A80C 8001A00C 0004023C */  lui        $v0, 0x400
/* A810 8001A010 0900A010 */  beqz       $a1, .L8001A038
/* A814 8001A014 000062AC */   sw        $v0, ($v1)
/* A818 8001A018 FFFF0524 */  addiu      $a1, $zero, -1
.L8001A01C:
/* A81C 8001A01C 0000838C */  lw         $v1, ($a0)
/* A820 8001A020 04008424 */  addiu      $a0, $a0, 4
/* A824 8001A024 0D80023C */  lui        $v0, %hi(D_800D2C9C)
/* A828 8001A028 9C2C428C */  lw         $v0, %lo(D_800D2C9C)($v0)
/* A82C 8001A02C FFFFC624 */  addiu      $a2, $a2, -1
/* A830 8001A030 FAFFC514 */  bne        $a2, $a1, .L8001A01C
/* A834 8001A034 000043AC */   sw        $v1, ($v0)
.L8001A038:
/* A838 8001A038 0800E003 */  jr         $ra
/* A83C 8001A03C 21100000 */   addu      $v0, $zero, $zero
