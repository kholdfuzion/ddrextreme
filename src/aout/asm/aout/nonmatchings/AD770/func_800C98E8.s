.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C98E8
/* BA0E8 800C98E8 8100822C */  sltiu      $v0, $a0, 0x81
/* BA0EC 800C98EC 04004010 */  beqz       $v0, .L800C9900
/* BA0F0 800C98F0 FFFF0324 */   addiu     $v1, $zero, -1
/* BA0F4 800C98F4 2080023C */  lui        $v0, %hi(D_801FB890)
/* BA0F8 800C98F8 90B844AC */  sw         $a0, %lo(D_801FB890)($v0)
/* BA0FC 800C98FC 21180000 */  addu       $v1, $zero, $zero
.L800C9900:
/* BA100 800C9900 0800E003 */  jr         $ra
/* BA104 800C9904 21106000 */   addu      $v0, $v1, $zero
