.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_4B4
/* 8C98 80018498 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8C9C 8001849C 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 8CA0 800184A0 00000000 */  nop
/* 8CA4 800184A4 09F84000 */  jalr       $v0
/* 8CA8 800184A8 21280001 */   addu      $a1, $t0, $zero
