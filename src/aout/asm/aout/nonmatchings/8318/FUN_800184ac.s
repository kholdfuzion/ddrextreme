.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800184ac
/* 8CAC 800184AC 00000586 */  lh         $a1, ($s0)
/* 8CB0 800184B0 02000686 */  lh         $a2, 2($s0)
/* 8CB4 800184B4 04000786 */  lh         $a3, 4($s0)
/* 8CB8 800184B8 06000386 */  lh         $v1, 6($s0)
/* 8CBC 800184BC 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8CC0 800184C0 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 8CC4 800184C4 0180043C */  lui        $a0, %hi(D_8001019C)
/* 8CC8 800184C8 9C018424 */  addiu      $a0, $a0, %lo(D_8001019C)
/* 8CCC 800184CC 09F84000 */  jalr       $v0
/* 8CD0 800184D0 1000A3AF */   sw        $v1, 0x10($sp)
