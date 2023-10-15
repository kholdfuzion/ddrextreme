.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be834
/* AF034 800BE834 F0F00234 */  ori        $v0, $zero, 0xf0f0
/* AF038 800BE838 000082A4 */  sh         $v0, ($a0)
/* AF03C 800BE83C 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AF040 800BE840 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AF044 800BE844 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AF048 800BE848 0800E003 */  jr         $ra
/* AF04C 800BE84C 00000000 */   nop
