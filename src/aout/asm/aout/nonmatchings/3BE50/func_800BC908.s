.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC908
/* AD108 800BC908 0F80083C */  lui        $t0, %hi(D_800ED0B8)
/* AD10C 800BC90C B8D0088D */  lw         $t0, %lo(D_800ED0B8)($t0)
/* AD110 800BC910 8000033C */  lui        $v1, 0x80
/* AD114 800BC914 0000028D */  lw         $v0, ($t0)
/* AD118 800BC918 0700C630 */  andi       $a2, $a2, 7
/* AD11C 800BC91C 25104300 */  or         $v0, $v0, $v1
/* AD120 800BC920 000002AD */  sw         $v0, ($t0)
/* AD124 800BC924 0F80023C */  lui        $v0, %hi(D_800ED0AC)
/* AD128 800BC928 ACD0428C */  lw         $v0, %lo(D_800ED0AC)($v0)
/* AD12C 800BC92C 00340600 */  sll        $a2, $a2, 0x10
/* AD130 800BC930 000044AC */  sw         $a0, ($v0)
/* AD134 800BC934 0F80023C */  lui        $v0, %hi(D_800ED0B0)
/* AD138 800BC938 B0D0428C */  lw         $v0, %lo(D_800ED0B0)($v0)
/* AD13C 800BC93C 0700E730 */  andi       $a3, $a3, 7
/* AD140 800BC940 000045AC */  sw         $a1, ($v0)
/* AD144 800BC944 0001023C */  lui        $v0, 0x100
/* AD148 800BC948 2530C200 */  or         $a2, $a2, $v0
/* AD14C 800BC94C 0F80023C */  lui        $v0, %hi(D_800ED0B4)
/* AD150 800BC950 003D0700 */  sll        $a3, $a3, 0x14
/* AD154 800BC954 B4D0428C */  lw         $v0, %lo(D_800ED0B4)($v0)
/* AD158 800BC958 2538E600 */  or         $a3, $a3, $a2
/* AD15C 800BC95C 0001E734 */  ori        $a3, $a3, 0x100
/* AD160 800BC960 0800E003 */  jr         $ra
/* AD164 800BC964 000047AC */   sw        $a3, ($v0)
