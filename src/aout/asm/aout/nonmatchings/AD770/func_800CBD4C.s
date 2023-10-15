.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBD4C
/* BC54C 800CBD4C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BC550 800CBD50 1400B1AF */  sw         $s1, 0x14($sp)
/* BC554 800CBD54 21888000 */  addu       $s1, $a0, $zero
/* BC558 800CBD58 80000424 */  addiu      $a0, $zero, 0x80
/* BC55C 800CBD5C 1800BFAF */  sw         $ra, 0x18($sp)
/* BC560 800CBD60 E42D030C */  jal        FUN_800cb790
/* BC564 800CBD64 1000B0AF */   sw        $s0, 0x10($sp)
/* BC568 800CBD68 19004014 */  bnez       $v0, .L800CBDD0
/* BC56C 800CBD6C FFFF0424 */   addiu     $a0, $zero, -1
/* BC570 800CBD70 442B030C */  jal        FUN_800cad10
/* BC574 800CBD74 70000424 */   addiu     $a0, $zero, 0x70
/* BC578 800CBD78 15004014 */  bnez       $v0, .L800CBDD0
/* BC57C 800CBD7C FEFF0424 */   addiu     $a0, $zero, -2
/* BC580 800CBD80 21800000 */  addu       $s0, $zero, $zero
.L800CBD84:
/* BC584 800CBD84 00002492 */  lbu        $a0, ($s1)
/* BC588 800CBD88 442B030C */  jal        FUN_800cad10
/* BC58C 800CBD8C 01003126 */   addiu     $s1, $s1, 1
/* BC590 800CBD90 0E004014 */  bnez       $v0, .L800CBDCC
/* BC594 800CBD94 01001026 */   addiu     $s0, $s0, 1
/* BC598 800CBD98 0800022A */  slti       $v0, $s0, 8
/* BC59C 800CBD9C F9FF4014 */  bnez       $v0, .L800CBD84
/* BC5A0 800CBDA0 00000000 */   nop
/* BC5A4 800CBDA4 E42D030C */  jal        FUN_800cb790
/* BC5A8 800CBDA8 C0000424 */   addiu     $a0, $zero, 0xc0
/* BC5AC 800CBDAC 08004014 */  bnez       $v0, .L800CBDD0
/* BC5B0 800CBDB0 FDFF0424 */   addiu     $a0, $zero, -3
/* BC5B4 800CBDB4 162B030C */  jal        FUN_800cac58
/* BC5B8 800CBDB8 00000000 */   nop
/* BC5BC 800CBDBC B32D030C */  jal        FUN_800cb6cc
/* BC5C0 800CBDC0 04000424 */   addiu     $a0, $zero, 4
/* BC5C4 800CBDC4 762F0308 */  j          .L800CBDD8
/* BC5C8 800CBDC8 21100000 */   addu      $v0, $zero, $zero
.L800CBDCC:
/* BC5CC 800CBDCC FEFF0424 */  addiu      $a0, $zero, -2
.L800CBDD0:
/* BC5D0 800CBDD0 D32D030C */  jal        FUN_800cb74c
/* BC5D4 800CBDD4 00000000 */   nop
.L800CBDD8:
/* BC5D8 800CBDD8 1800BF8F */  lw         $ra, 0x18($sp)
/* BC5DC 800CBDDC 1400B18F */  lw         $s1, 0x14($sp)
/* BC5E0 800CBDE0 1000B08F */  lw         $s0, 0x10($sp)
/* BC5E4 800CBDE4 0800E003 */  jr         $ra
/* BC5E8 800CBDE8 2000BD27 */   addiu     $sp, $sp, 0x20
