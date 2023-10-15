.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ca98
/* 1D298 8002CA98 1580023C */  lui        $v0, %hi(D_8014C1F0)
/* 1D29C 8002CA9C F0C14384 */  lh         $v1, %lo(D_8014C1F0)($v0)
/* 1D2A0 8002CAA0 00000000 */  nop
/* 1D2A4 8002CAA4 0C006010 */  beqz       $v1, .L8002CAD8
/* 1D2A8 8002CAA8 21108000 */   addu      $v0, $a0, $zero
/* 1D2AC 8002CAAC 1580043C */  lui        $a0, %hi(D_8014ABE8)
/* 1D2B0 8002CAB0 E8AB8424 */  addiu      $a0, $a0, %lo(D_8014ABE8)
/* 1D2B4 8002CAB4 80180200 */  sll        $v1, $v0, 2
/* 1D2B8 8002CAB8 0F80053C */  lui        $a1, %hi(D_800F0014)
/* 1D2BC 8002CABC 0E80073C */  lui        $a3, %hi(D_800D8D38)
/* 1D2C0 8002CAC0 21186400 */  addu       $v1, $v1, $a0
/* 1D2C4 8002CAC4 388DE28C */  lw         $v0, %lo(D_800D8D38)($a3)
/* 1D2C8 8002CAC8 1400A68C */  lw         $a2, %lo(D_800F0014)($a1)
/* 1D2CC 8002CACC 08004234 */  ori        $v0, $v0, 8
/* 1D2D0 8002CAD0 000066AC */  sw         $a2, ($v1)
/* 1D2D4 8002CAD4 388DE2AC */  sw         $v0, -0x72c8($a3)
.L8002CAD8:
/* 1D2D8 8002CAD8 0800E003 */  jr         $ra
/* 1D2DC 8002CADC 00000000 */   nop
