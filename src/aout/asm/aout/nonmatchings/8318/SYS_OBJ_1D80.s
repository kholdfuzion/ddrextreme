.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1D80
/* A564 80019D64 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A568 80019D68 1400B1AF */  sw         $s1, 0x14($sp)
/* A56C 80019D6C 21888000 */  addu       $s1, $a0, $zero
/* A570 80019D70 1800B2AF */  sw         $s2, 0x18($sp)
/* A574 80019D74 2190A000 */  addu       $s2, $a1, $zero
/* A578 80019D78 2400BFAF */  sw         $ra, 0x24($sp)
/* A57C 80019D7C 2000B4AF */  sw         $s4, 0x20($sp)
/* A580 80019D80 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A584 80019D84 196A000C */  jal        SYS_OBJ_2880
/* A588 80019D88 1000B0AF */   sw        $s0, 0x10($sp)
/* A58C 80019D8C 04002586 */  lh         $a1, 4($s1)
/* A590 80019D90 04002396 */  lhu        $v1, 4($s1)
/* A594 80019D94 0A00A004 */  bltz       $a1, .L80019DC0
/* A598 80019D98 21206000 */   addu      $a0, $v1, $zero
/* A59C 80019D9C 0D80023C */  lui        $v0, %hi(D_800D2B9C)
/* A5A0 80019DA0 9C2B4284 */  lh         $v0, %lo(D_800D2B9C)($v0)
/* A5A4 80019DA4 0D80033C */  lui        $v1, %hi(D_800D2B9C)
/* A5A8 80019DA8 9C2B6394 */  lhu        $v1, %lo(D_800D2B9C)($v1)
/* A5AC 80019DAC 2A104500 */  slt        $v0, $v0, $a1
/* A5B0 80019DB0 04004010 */  beqz       $v0, SYS_OBJ_1DE0
/* A5B4 80019DB4 00000000 */   nop
/* A5B8 80019DB8 71670008 */  j          SYS_OBJ_1DE0
/* A5BC 80019DBC 21206000 */   addu      $a0, $v1, $zero
.L80019DC0:
/* A5C0 80019DC0 21200000 */  addu       $a0, $zero, $zero
