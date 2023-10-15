.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_FgetRXXa
/* A7EA8 800B76A8 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7EAC 800B76AC F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A7EB0 800B76B0 40200400 */  sll        $a0, $a0, 1
/* A7EB4 800B76B4 21208200 */  addu       $a0, $a0, $v0
/* A7EB8 800B76B8 FFFF0224 */  addiu      $v0, $zero, -1
/* A7EBC 800B76BC 00008494 */  lhu        $a0, ($a0)
/* A7EC0 800B76C0 0500A210 */  beq        $a1, $v0, .L800B76D8
/* A7EC4 800B76C4 00000000 */   nop
/* A7EC8 800B76C8 0F80023C */  lui        $v0, %hi(D_800EC818)
/* A7ECC 800B76CC 18C8428C */  lw         $v0, %lo(D_800EC818)($v0)
/* A7ED0 800B76D0 B7DD0208 */  j          SPU_OBJ_A28
/* A7ED4 800B76D4 04104400 */   sllv      $v0, $a0, $v0
.L800B76D8:
/* A7ED8 800B76D8 21108000 */  addu       $v0, $a0, $zero
