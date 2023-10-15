.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b7824
/* A8024 800B7824 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A8028 800B7828 0F80033C */  lui        $v1, %hi(D_800EC7E0)
/* A802C 800B782C E0C7638C */  lw         $v1, %lo(D_800EC7E0)($v1)
/* A8030 800B7830 01000224 */  addiu      $v0, $zero, 1
/* A8034 800B7834 14006214 */  bne        $v1, $v0, .L800B7888
/* A8038 800B7838 1000BFAF */   sw        $ra, 0x10($sp)
/* A803C 800B783C 0F80013C */  lui        $at, %hi(D_800EC7E0)
/* A8040 800B7840 1D6E000C */  jal        FUN_8001b874
/* A8044 800B7844 E0C720AC */   sw        $zero, %lo(D_800EC7E0)($at)
/* A8048 800B7848 21200000 */  addu       $a0, $zero, $zero
/* A804C 800B784C 0F80013C */  lui        $at, %hi(D_800EC828)
/* A8050 800B7850 28C820AC */  sw         $zero, %lo(D_800EC828)($at)
/* A8054 800B7854 0F80013C */  lui        $at, %hi(D_800EC82C)
/* A8058 800B7858 FDDD020C */  jal        _SpuDataCallback
/* A805C 800B785C 2CC820AC */   sw        $zero, %lo(D_800EC82C)($at)
/* A8060 800B7860 0F80043C */  lui        $a0, %hi(D_800EC778)
/* A8064 800B7864 78C7848C */  lw         $a0, %lo(D_800EC778)($a0)
/* A8068 800B7868 4BC8020C */  jal        CloseEvent
/* A806C 800B786C 00000000 */   nop
/* A8070 800B7870 0F80043C */  lui        $a0, %hi(D_800EC778)
/* A8074 800B7874 78C7848C */  lw         $a0, %lo(D_800EC778)($a0)
/* A8078 800B7878 29DE020C */  jal        DisableEvent
/* A807C 800B787C 00000000 */   nop
/* A8080 800B7880 216E000C */  jal        FUN_8001b884
/* A8084 800B7884 00000000 */   nop
.L800B7888:
/* A8088 800B7888 1000BF8F */  lw         $ra, 0x10($sp)
/* A808C 800B788C 1800BD27 */  addiu      $sp, $sp, 0x18
/* A8090 800B7890 0800E003 */  jr         $ra
/* A8094 800B7894 00000000 */   nop
/* A8098 800B7898 00000000 */  nop
/* A809C 800B789C 00000000 */  nop
/* A80A0 800B78A0 00000000 */  nop
