.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2880
/* B064 8001A864 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B068 8001A868 1000BFAF */  sw         $ra, 0x10($sp)
/* B06C 8001A86C CD6B000C */  jal        VSync
/* B070 8001A870 FFFF0424 */   addiu     $a0, $zero, -1
/* B074 8001A874 F0004224 */  addiu      $v0, $v0, 0xf0
/* B078 8001A878 0D80013C */  lui        $at, %hi(D_800D2CD4)
/* B07C 8001A87C D42C22AC */  sw         $v0, %lo(D_800D2CD4)($at)
/* B080 8001A880 0D80013C */  lui        $at, %hi(D_800D2CD8)
/* B084 8001A884 D82C20AC */  sw         $zero, %lo(D_800D2CD8)($at)
/* B088 8001A888 1000BF8F */  lw         $ra, 0x10($sp)
/* B08C 8001A88C 1800BD27 */  addiu      $sp, $sp, 0x18
/* B090 8001A890 0800E003 */  jr         $ra
/* B094 8001A894 00000000 */   nop
