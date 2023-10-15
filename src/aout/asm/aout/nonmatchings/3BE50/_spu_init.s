.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_init
/* A74B4 800B6CB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A74B8 800B6CB8 1000B0AF */  sw         $s0, 0x10($sp)
/* A74BC 800B6CBC 21808000 */  addu       $s0, $a0, $zero
/* A74C0 800B6CC0 0F80043C */  lui        $a0, %hi(D_800EC800)
/* A74C4 800B6CC4 00C8848C */  lw         $a0, %lo(D_800EC800)($a0)
/* A74C8 800B6CC8 1800BFAF */  sw         $ra, 0x18($sp)
/* A74CC 800B6CCC 1400B1AF */  sw         $s1, 0x14($sp)
/* A74D0 800B6CD0 0000828C */  lw         $v0, ($a0)
/* A74D4 800B6CD4 0B00033C */  lui        $v1, 0xb
/* A74D8 800B6CD8 25104300 */  or         $v0, $v0, $v1
/* A74DC 800B6CDC 000082AC */  sw         $v0, ($a0)
/* A74E0 800B6CE0 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A74E4 800B6CE4 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A74E8 800B6CE8 0F80013C */  lui        $at, %hi(D_800EC80C)
/* A74EC 800B6CEC 0CC820AC */  sw         $zero, %lo(D_800EC80C)($at)
/* A74F0 800B6CF0 0F80013C */  lui        $at, %hi(D_800EC810)
/* A74F4 800B6CF4 10C820AC */  sw         $zero, %lo(D_800EC810)($at)
/* A74F8 800B6CF8 0F80013C */  lui        $at, %hi(D_800EC808)
/* A74FC 800B6CFC 08C820A4 */  sh         $zero, %lo(D_800EC808)($at)
/* A7500 800B6D00 800140A4 */  sh         $zero, 0x180($v0)
/* A7504 800B6D04 820140A4 */  sh         $zero, 0x182($v0)
/* A7508 800B6D08 E3DD020C */  jal        _spu_Fw1ts
/* A750C 800B6D0C AA0140A4 */   sh        $zero, 0x1aa($v0)
/* A7510 800B6D10 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7514 800B6D14 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A7518 800B6D18 00000000 */  nop
/* A751C 800B6D1C 800140A4 */  sh         $zero, 0x180($v0)
/* A7520 800B6D20 820140A4 */  sh         $zero, 0x182($v0)
/* A7524 800B6D24 AE014294 */  lhu        $v0, 0x1ae($v0)
/* A7528 800B6D28 00000000 */  nop
/* A752C 800B6D2C FF074230 */  andi       $v0, $v0, 0x7ff
/* A7530 800B6D30 14004010 */  beqz       $v0, .L800B6D84
/* A7534 800B6D34 21180000 */   addu      $v1, $zero, $zero
/* A7538 800B6D38 01006324 */  addiu      $v1, $v1, 1
.L800B6D3C:
/* A753C 800B6D3C 010F622C */  sltiu      $v0, $v1, 0xf01
/* A7540 800B6D40 08004014 */  bnez       $v0, .L800B6D64
/* A7544 800B6D44 00000000 */   nop
/* A7548 800B6D48 0180043C */  lui        $a0, %hi(D_80017310)
/* A754C 800B6D4C 10738424 */  addiu      $a0, $a0, %lo(D_80017310)
/* A7550 800B6D50 0180053C */  lui        $a1, %hi(D_80017320)
/* A7554 800B6D54 755F000C */  jal        FUN_80017dd4
/* A7558 800B6D58 2073A524 */   addiu     $a1, $a1, %lo(D_80017320)
/* A755C 800B6D5C 62DB0208 */  j          SPU_OBJ_D4
/* A7560 800B6D60 21200000 */   addu      $a0, $zero, $zero
.L800B6D64:
/* A7564 800B6D64 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7568 800B6D68 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A756C 800B6D6C 00000000 */  nop
/* A7570 800B6D70 AE014294 */  lhu        $v0, 0x1ae($v0)
/* A7574 800B6D74 00000000 */  nop
/* A7578 800B6D78 FF074230 */  andi       $v0, $v0, 0x7ff
/* A757C 800B6D7C EFFF4014 */  bnez       $v0, .L800B6D3C
/* A7580 800B6D80 01006324 */   addiu     $v1, $v1, 1
.L800B6D84:
/* A7584 800B6D84 21200000 */  addu       $a0, $zero, $zero
