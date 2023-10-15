.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc9c8
/* AD1C8 800BC9C8 0F80083C */  lui        $t0, %hi(D_800ED0B8)
/* AD1CC 800BC9CC B8D0088D */  lw         $t0, %lo(D_800ED0B8)($t0)
/* AD1D0 800BC9D0 8000033C */  lui        $v1, 0x80
/* AD1D4 800BC9D4 0000028D */  lw         $v0, ($t0)
/* AD1D8 800BC9D8 0700C630 */  andi       $a2, $a2, 7
/* AD1DC 800BC9DC 25104300 */  or         $v0, $v0, $v1
/* AD1E0 800BC9E0 000002AD */  sw         $v0, ($t0)
/* AD1E4 800BC9E4 0F80023C */  lui        $v0, %hi(D_800ED0AC)
/* AD1E8 800BC9E8 ACD0428C */  lw         $v0, %lo(D_800ED0AC)($v0)
/* AD1EC 800BC9EC 00340600 */  sll        $a2, $a2, 0x10
/* AD1F0 800BC9F0 000044AC */  sw         $a0, ($v0)
/* AD1F4 800BC9F4 0F80023C */  lui        $v0, %hi(D_800ED0B0)
/* AD1F8 800BC9F8 B0D0428C */  lw         $v0, %lo(D_800ED0B0)($v0)
/* AD1FC 800BC9FC 0700E730 */  andi       $a3, $a3, 7
/* AD200 800BCA00 000045AC */  sw         $a1, ($v0)
/* AD204 800BCA04 0011023C */  lui        $v0, 0x1100
/* AD208 800BCA08 2530C200 */  or         $a2, $a2, $v0
/* AD20C 800BCA0C 0F80023C */  lui        $v0, %hi(D_800ED0B4)
/* AD210 800BCA10 003D0700 */  sll        $a3, $a3, 0x14
/* AD214 800BCA14 B4D0428C */  lw         $v0, %lo(D_800ED0B4)($v0)
/* AD218 800BCA18 2538E600 */  or         $a3, $a3, $a2
/* AD21C 800BCA1C 0001E734 */  ori        $a3, $a3, 0x100
/* AD220 800BCA20 0800E003 */  jr         $ra
/* AD224 800BCA24 000047AC */   sw        $a3, ($v0)
