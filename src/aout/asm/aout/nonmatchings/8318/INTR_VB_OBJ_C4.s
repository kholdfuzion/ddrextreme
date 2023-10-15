.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_VB_OBJ_C4
/* C1D8 8001B9D8 0D80023C */  lui        $v0, %hi(D_800D3E08)
/* C1DC 8001B9DC 083E4224 */  addiu      $v0, $v0, %lo(D_800D3E08)
/* C1E0 8001B9E0 80200400 */  sll        $a0, $a0, 2
/* C1E4 8001B9E4 21208200 */  addu       $a0, $a0, $v0
/* C1E8 8001B9E8 0000828C */  lw         $v0, ($a0)
/* C1EC 8001B9EC 00000000 */  nop
/* C1F0 8001B9F0 0200A210 */  beq        $a1, $v0, .L8001B9FC
/* C1F4 8001B9F4 00000000 */   nop
/* C1F8 8001B9F8 000085AC */  sw         $a1, ($a0)
.L8001B9FC:
/* C1FC 8001B9FC 0800E003 */  jr         $ra
/* C200 8001BA00 00000000 */   nop
