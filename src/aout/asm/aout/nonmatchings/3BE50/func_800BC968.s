.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC968
/* AD168 800BC968 0F80083C */  lui        $t0, %hi(D_800ED0B8)
/* AD16C 800BC96C B8D0088D */  lw         $t0, %lo(D_800ED0B8)($t0)
/* AD170 800BC970 8000033C */  lui        $v1, 0x80
/* AD174 800BC974 0000028D */  lw         $v0, ($t0)
/* AD178 800BC978 0700C630 */  andi       $a2, $a2, 7
/* AD17C 800BC97C 25104300 */  or         $v0, $v0, $v1
/* AD180 800BC980 000002AD */  sw         $v0, ($t0)
/* AD184 800BC984 0F80023C */  lui        $v0, %hi(D_800ED0AC)
/* AD188 800BC988 ACD0428C */  lw         $v0, %lo(D_800ED0AC)($v0)
/* AD18C 800BC98C 00340600 */  sll        $a2, $a2, 0x10
/* AD190 800BC990 000044AC */  sw         $a0, ($v0)
/* AD194 800BC994 0F80023C */  lui        $v0, %hi(D_800ED0B0)
/* AD198 800BC998 B0D0428C */  lw         $v0, %lo(D_800ED0B0)($v0)
/* AD19C 800BC99C 0700E730 */  andi       $a3, $a3, 7
/* AD1A0 800BC9A0 000045AC */  sw         $a1, ($v0)
/* AD1A4 800BC9A4 0001023C */  lui        $v0, 0x100
/* AD1A8 800BC9A8 2530C200 */  or         $a2, $a2, $v0
/* AD1AC 800BC9AC 0F80023C */  lui        $v0, %hi(D_800ED0B4)
/* AD1B0 800BC9B0 003D0700 */  sll        $a3, $a3, 0x14
/* AD1B4 800BC9B4 B4D0428C */  lw         $v0, %lo(D_800ED0B4)($v0)
/* AD1B8 800BC9B8 2538E600 */  or         $a3, $a3, $a2
/* AD1BC 800BC9BC 0101E734 */  ori        $a3, $a3, 0x101
/* AD1C0 800BC9C0 0800E003 */  jr         $ra
/* AD1C4 800BC9C4 000047AC */   sw        $a3, ($v0)
