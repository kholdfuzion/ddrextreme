.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsSetLightMode
/* 3AE50 8004A650 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AE54 8004A654 21288000 */  addu       $a1, $a0, $zero
/* 3AE58 8004A658 01000224 */  addiu      $v0, $zero, 1
/* 3AE5C 8004A65C 1100A210 */  beq        $a1, $v0, .L8004A6A4
/* 3AE60 8004A660 1000BFAF */   sw        $ra, 0x10($sp)
/* 3AE64 8004A664 0200A228 */  slti       $v0, $a1, 2
/* 3AE68 8004A668 05004010 */  beqz       $v0, .L8004A680
/* 3AE6C 8004A66C 02000224 */   addiu     $v0, $zero, 2
/* 3AE70 8004A670 0900A010 */  beqz       $a1, .L8004A698
/* 3AE74 8004A674 00000000 */   nop
/* 3AE78 8004A678 AC290108 */  j          GS_108_OBJ_60
/* 3AE7C 8004A67C 00000000 */   nop
.L8004A680:
/* 3AE80 8004A680 0800A210 */  beq        $a1, $v0, .L8004A6A4
/* 3AE84 8004A684 03000224 */   addiu     $v0, $zero, 3
/* 3AE88 8004A688 0600A210 */  beq        $a1, $v0, .L8004A6A4
/* 3AE8C 8004A68C 00000000 */   nop
/* 3AE90 8004A690 AC290108 */  j          GS_108_OBJ_60
/* 3AE94 8004A694 00000000 */   nop
.L8004A698:
/* 3AE98 8004A698 1380013C */  lui        $at, %hi(D_801290BC)
/* 3AE9C 8004A69C AF290108 */  j          GS_108_OBJ_6C
/* 3AEA0 8004A6A0 BC9020AC */   sw        $zero, %lo(D_801290BC)($at)
.L8004A6A4:
/* 3AEA4 8004A6A4 1380013C */  lui        $at, %hi(D_801290BC)
/* 3AEA8 8004A6A8 AF290108 */  j          GS_108_OBJ_6C
/* 3AEAC 8004A6AC BC9025AC */   sw        $a1, %lo(D_801290BC)($at)
