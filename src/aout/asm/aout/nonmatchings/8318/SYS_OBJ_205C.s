.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_205C
/* A840 8001A040 0004033C */  lui        $v1, 0x400
/* A844 8001A044 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A848 8001A048 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A84C 8001A04C 02006334 */  ori        $v1, $v1, 2
/* A850 8001A050 000043AC */  sw         $v1, ($v0)
/* A854 8001A054 0D80023C */  lui        $v0, %hi(D_800D2CA4)
/* A858 8001A058 A42C428C */  lw         $v0, %lo(D_800D2CA4)($v0)
/* A85C 8001A05C 00000000 */  nop
/* A860 8001A060 000044AC */  sw         $a0, ($v0)
/* A864 8001A064 0D80023C */  lui        $v0, %hi(D_800D2CA8)
/* A868 8001A068 A82C428C */  lw         $v0, %lo(D_800D2CA8)($v0)
/* A86C 8001A06C 0001033C */  lui        $v1, 0x100
/* A870 8001A070 000040AC */  sw         $zero, ($v0)
/* A874 8001A074 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* A878 8001A078 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* A87C 8001A07C 01046334 */  ori        $v1, $v1, 0x401
/* A880 8001A080 0800E003 */  jr         $ra
/* A884 8001A084 000043AC */   sw        $v1, ($v0)
