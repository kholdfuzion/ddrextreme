.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC870
/* AD070 800BC870 0F80063C */  lui        $a2, %hi(D_800ED0B8)
/* AD074 800BC874 B8D0C68C */  lw         $a2, %lo(D_800ED0B8)($a2)
/* AD078 800BC878 8000033C */  lui        $v1, 0x80
/* AD07C 800BC87C 0000C28C */  lw         $v0, ($a2)
/* AD080 800BC880 00000000 */  nop
/* AD084 800BC884 25104300 */  or         $v0, $v0, $v1
/* AD088 800BC888 0000C2AC */  sw         $v0, ($a2)
/* AD08C 800BC88C 0F80023C */  lui        $v0, %hi(D_800ED0AC)
/* AD090 800BC890 ACD0428C */  lw         $v0, %lo(D_800ED0AC)($v0)
/* AD094 800BC894 0F80033C */  lui        $v1, 0x800f
/* AD098 800BC898 000044AC */  sw         $a0, ($v0)
/* AD09C 800BC89C 0F80023C */  lui        $v0, %hi(D_800ED0B0)
/* AD0A0 800BC8A0 B0D0428C */  lw         $v0, %lo(D_800ED0B0)($v0)
/* AD0A4 800BC8A4 00000000 */  nop
/* AD0A8 800BC8A8 000045AC */  sw         $a1, ($v0)
/* AD0AC 800BC8AC B4D0638C */  lw         $v1, -0x2f4c($v1)
/* AD0B0 800BC8B0 0011023C */  lui        $v0, 0x1100
/* AD0B4 800BC8B4 0800E003 */  jr         $ra
/* AD0B8 800BC8B8 000062AC */   sw        $v0, ($v1)
