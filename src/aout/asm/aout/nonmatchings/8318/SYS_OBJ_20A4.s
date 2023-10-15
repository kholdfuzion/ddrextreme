.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_20A4
/* A888 8001A088 0010023C */  lui        $v0, 0x1000
/* A88C 8001A08C 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* A890 8001A090 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* A894 8001A094 25208200 */  or         $a0, $a0, $v0
/* A898 8001A098 000064AC */  sw         $a0, ($v1)
/* A89C 8001A09C 0D80023C */  lui        $v0, %hi(D_800D2C9C)
/* A8A0 8001A0A0 9C2C428C */  lw         $v0, %lo(D_800D2C9C)($v0)
/* A8A4 8001A0A4 FF00033C */  lui        $v1, 0xff
/* A8A8 8001A0A8 0000428C */  lw         $v0, ($v0)
/* A8AC 8001A0AC FFFF6334 */  ori        $v1, $v1, 0xffff
/* A8B0 8001A0B0 0800E003 */  jr         $ra
/* A8B4 8001A0B4 24104300 */   and       $v0, $v0, $v1
