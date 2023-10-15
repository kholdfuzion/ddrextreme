.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b8d44
/* A9544 800B8D44 0F80023C */  lui        $v0, %hi(D_800EC828)
/* A9548 800B8D48 28C8428C */  lw         $v0, %lo(D_800EC828)($v0)
/* A954C 800B8D4C 00000000 */  nop
/* A9550 800B8D50 03008210 */  beq        $a0, $v0, .L800B8D60
/* A9554 800B8D54 00000000 */   nop
/* A9558 800B8D58 0F80013C */  lui        $at, %hi(D_800EC828)
/* A955C 800B8D5C 28C824AC */  sw         $a0, %lo(D_800EC828)($at)
.L800B8D60:
/* A9560 800B8D60 0800E003 */  jr         $ra
/* A9564 800B8D64 00000000 */   nop
/* A9568 800B8D68 00000000 */  nop
/* A956C 800B8D6C 00000000 */  nop
/* A9570 800B8D70 00000000 */  nop
