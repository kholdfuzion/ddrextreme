.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c65b8
/* B6DB8 800C65B8 1F80023C */  lui        $v0, %hi(D_801F7430)
/* B6DBC 800C65BC 3074428C */  lw         $v0, %lo(D_801F7430)($v0)
/* B6DC0 800C65C0 0800E003 */  jr         $ra
/* B6DC4 800C65C4 00000000 */   nop
