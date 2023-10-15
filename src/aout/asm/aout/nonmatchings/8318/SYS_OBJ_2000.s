.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2000
/* A7E4 80019FE4 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A7E8 80019FE8 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A7EC 80019FEC 00000000 */  nop
/* A7F0 80019FF0 0800E003 */  jr         $ra
/* A7F4 80019FF4 000044AC */   sw        $a0, ($v0)
