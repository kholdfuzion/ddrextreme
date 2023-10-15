.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_Fr
/* A7D5C 800B755C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A7D60 800B7560 1400B1AF */  sw         $s1, 0x14($sp)
/* A7D64 800B7564 21888000 */  addu       $s1, $a0, $zero
/* A7D68 800B7568 1000B0AF */  sw         $s0, 0x10($sp)
/* A7D6C 800B756C 2180A000 */  addu       $s0, $a1, $zero
/* A7D70 800B7570 0F80023C */  lui        $v0, %hi(D_800EC808)
/* A7D74 800B7574 08C84294 */  lhu        $v0, %lo(D_800EC808)($v0)
/* A7D78 800B7578 0F80053C */  lui        $a1, %hi(D_800EC818)
/* A7D7C 800B757C 18C8A58C */  lw         $a1, %lo(D_800EC818)($a1)
/* A7D80 800B7580 02000424 */  addiu      $a0, $zero, 2
/* A7D84 800B7584 1800BFAF */  sw         $ra, 0x18($sp)
/* A7D88 800B7588 96DC020C */  jal        _spu_t
/* A7D8C 800B758C 0428A200 */   sllv      $a1, $v0, $a1
/* A7D90 800B7590 96DC020C */  jal        _spu_t
/* A7D94 800B7594 21200000 */   addu      $a0, $zero, $zero
/* A7D98 800B7598 03000424 */  addiu      $a0, $zero, 3
/* A7D9C 800B759C 21282002 */  addu       $a1, $s1, $zero
/* A7DA0 800B75A0 96DC020C */  jal        _spu_t
/* A7DA4 800B75A4 21300002 */   addu      $a2, $s0, $zero
/* A7DA8 800B75A8 21100002 */  addu       $v0, $s0, $zero
/* A7DAC 800B75AC 1800BF8F */  lw         $ra, 0x18($sp)
/* A7DB0 800B75B0 1400B18F */  lw         $s1, 0x14($sp)
/* A7DB4 800B75B4 1000B08F */  lw         $s0, 0x10($sp)
/* A7DB8 800B75B8 0800E003 */  jr         $ra
/* A7DBC 800B75BC 2000BD27 */   addiu     $sp, $sp, 0x20
