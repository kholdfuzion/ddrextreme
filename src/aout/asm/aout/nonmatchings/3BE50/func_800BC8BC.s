.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC8BC
/* AD0BC 800BC8BC 0F80063C */  lui        $a2, %hi(D_800ED0B8)
/* AD0C0 800BC8C0 B8D0C68C */  lw         $a2, %lo(D_800ED0B8)($a2)
/* AD0C4 800BC8C4 8000033C */  lui        $v1, 0x80
/* AD0C8 800BC8C8 0000C28C */  lw         $v0, ($a2)
/* AD0CC 800BC8CC 00000000 */  nop
/* AD0D0 800BC8D0 25104300 */  or         $v0, $v0, $v1
/* AD0D4 800BC8D4 0000C2AC */  sw         $v0, ($a2)
/* AD0D8 800BC8D8 0F80023C */  lui        $v0, %hi(D_800ED0AC)
/* AD0DC 800BC8DC ACD0428C */  lw         $v0, %lo(D_800ED0AC)($v0)
/* AD0E0 800BC8E0 0011033C */  lui        $v1, 0x1100
/* AD0E4 800BC8E4 000044AC */  sw         $a0, ($v0)
/* AD0E8 800BC8E8 0F80023C */  lui        $v0, %hi(D_800ED0B0)
/* AD0EC 800BC8EC B0D0428C */  lw         $v0, %lo(D_800ED0B0)($v0)
/* AD0F0 800BC8F0 01006334 */  ori        $v1, $v1, 1
/* AD0F4 800BC8F4 000045AC */  sw         $a1, ($v0)
/* AD0F8 800BC8F8 0F80023C */  lui        $v0, %hi(D_800ED0B4)
/* AD0FC 800BC8FC B4D0428C */  lw         $v0, %lo(D_800ED0B4)($v0)
/* AD100 800BC900 0800E003 */  jr         $ra
/* AD104 800BC904 000043AC */   sw        $v1, ($v0)
