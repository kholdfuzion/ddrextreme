.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BCA28
/* AD228 800BCA28 0F80083C */  lui        $t0, %hi(D_800ED0B8)
/* AD22C 800BCA2C B8D0088D */  lw         $t0, %lo(D_800ED0B8)($t0)
/* AD230 800BCA30 8000033C */  lui        $v1, 0x80
/* AD234 800BCA34 0000028D */  lw         $v0, ($t0)
/* AD238 800BCA38 0700C630 */  andi       $a2, $a2, 7
/* AD23C 800BCA3C 25104300 */  or         $v0, $v0, $v1
/* AD240 800BCA40 000002AD */  sw         $v0, ($t0)
/* AD244 800BCA44 0F80023C */  lui        $v0, %hi(D_800ED0AC)
/* AD248 800BCA48 ACD0428C */  lw         $v0, %lo(D_800ED0AC)($v0)
/* AD24C 800BCA4C 00340600 */  sll        $a2, $a2, 0x10
/* AD250 800BCA50 000044AC */  sw         $a0, ($v0)
/* AD254 800BCA54 0F80023C */  lui        $v0, %hi(D_800ED0B0)
/* AD258 800BCA58 B0D0428C */  lw         $v0, %lo(D_800ED0B0)($v0)
/* AD25C 800BCA5C 0700E730 */  andi       $a3, $a3, 7
/* AD260 800BCA60 000045AC */  sw         $a1, ($v0)
/* AD264 800BCA64 0011023C */  lui        $v0, 0x1100
/* AD268 800BCA68 2530C200 */  or         $a2, $a2, $v0
/* AD26C 800BCA6C 0F80023C */  lui        $v0, %hi(D_800ED0B4)
/* AD270 800BCA70 003D0700 */  sll        $a3, $a3, 0x14
/* AD274 800BCA74 B4D0428C */  lw         $v0, %lo(D_800ED0B4)($v0)
/* AD278 800BCA78 2538E600 */  or         $a3, $a3, $a2
/* AD27C 800BCA7C 0101E734 */  ori        $a3, $a3, 0x101
/* AD280 800BCA80 0800E003 */  jr         $ra
/* AD284 800BCA84 000047AC */   sw        $a3, ($v0)
/* AD288 800BCA88 00000000 */  nop
/* AD28C 800BCA8C 00000000 */  nop
/* AD290 800BCA90 00000000 */  nop
