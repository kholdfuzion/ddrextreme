.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetGraphDebug
/* 8958 80018158 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 895C 8001815C 0D80033C */  lui        $v1, %hi(D_800D2B9A)
/* 8960 80018160 9A2B6324 */  addiu      $v1, $v1, %lo(D_800D2B9A)
/* 8964 80018164 1400BFAF */  sw         $ra, 0x14($sp)
/* 8968 80018168 1000B0AF */  sw         $s0, 0x10($sp)
/* 896C 8001816C 00007090 */  lbu        $s0, ($v1)
/* 8970 80018170 000064A0 */  sb         $a0, ($v1)
/* 8974 80018174 FF008430 */  andi       $a0, $a0, 0xff
/* 8978 80018178 0A008010 */  beqz       $a0, .L800181A4
/* 897C 8001817C 21100002 */   addu      $v0, $s0, $zero
/* 8980 80018180 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8984 80018184 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 8988 80018188 00006590 */  lbu        $a1, ($v1)
/* 898C 8001818C FEFF6690 */  lbu        $a2, -2($v1)
/* 8990 80018190 01006790 */  lbu        $a3, 1($v1)
/* 8994 80018194 0180043C */  lui        $a0, %hi(D_8001010C)
/* 8998 80018198 09F84000 */  jalr       $v0
/* 899C 8001819C 0C018424 */   addiu     $a0, $a0, %lo(D_8001010C)
/* 89A0 800181A0 21100002 */  addu       $v0, $s0, $zero
.L800181A4:
/* 89A4 800181A4 1400BF8F */  lw         $ra, 0x14($sp)
/* 89A8 800181A8 1000B08F */  lw         $s0, 0x10($sp)
/* 89AC 800181AC 0800E003 */  jr         $ra
/* 89B0 800181B0 1800BD27 */   addiu     $sp, $sp, 0x18
