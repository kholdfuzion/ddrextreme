.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_Fw
/* A7CD8 800B74D8 0F80023C */  lui        $v0, %hi(D_800EC80C)
/* A7CDC 800B74DC 0CC8428C */  lw         $v0, %lo(D_800EC80C)($v0)
/* A7CE0 800B74E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A7CE4 800B74E4 1400B1AF */  sw         $s1, 0x14($sp)
/* A7CE8 800B74E8 21888000 */  addu       $s1, $a0, $zero
/* A7CEC 800B74EC 1000B0AF */  sw         $s0, 0x10($sp)
/* A7CF0 800B74F0 2180A000 */  addu       $s0, $a1, $zero
/* A7CF4 800B74F4 10004014 */  bnez       $v0, .L800B7538
/* A7CF8 800B74F8 1800BFAF */   sw        $ra, 0x18($sp)
/* A7CFC 800B74FC 0F80023C */  lui        $v0, %hi(D_800EC808)
/* A7D00 800B7500 08C84294 */  lhu        $v0, %lo(D_800EC808)($v0)
/* A7D04 800B7504 0F80053C */  lui        $a1, %hi(D_800EC818)
/* A7D08 800B7508 18C8A58C */  lw         $a1, %lo(D_800EC818)($a1)
/* A7D0C 800B750C 02000424 */  addiu      $a0, $zero, 2
/* A7D10 800B7510 96DC020C */  jal        _spu_t
/* A7D14 800B7514 0428A200 */   sllv      $a1, $v0, $a1
/* A7D18 800B7518 96DC020C */  jal        _spu_t
/* A7D1C 800B751C 01000424 */   addiu     $a0, $zero, 1
/* A7D20 800B7520 03000424 */  addiu      $a0, $zero, 3
/* A7D24 800B7524 21282002 */  addu       $a1, $s1, $zero
/* A7D28 800B7528 96DC020C */  jal        _spu_t
/* A7D2C 800B752C 21300002 */   addu      $a2, $s0, $zero
/* A7D30 800B7530 52DD0208 */  j          SPU_OBJ_894
/* A7D34 800B7534 21100002 */   addu      $v0, $s0, $zero
.L800B7538:
/* A7D38 800B7538 21202002 */  addu       $a0, $s1, $zero
/* A7D3C 800B753C CDDB020C */  jal        SPU_OBJ_280
/* A7D40 800B7540 21280002 */   addu      $a1, $s0, $zero
/* A7D44 800B7544 21100002 */  addu       $v0, $s0, $zero
