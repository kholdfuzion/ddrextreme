.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_43C
/* BDA0 8001B5A0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BDA4 8001B5A4 1400B1AF */  sw         $s1, 0x14($sp)
/* BDA8 8001B5A8 21888000 */  addu       $s1, $a0, $zero
/* BDAC 8001B5AC 1800B2AF */  sw         $s2, 0x18($sp)
/* BDB0 8001B5B0 2190A000 */  addu       $s2, $a1, $zero
/* BDB4 8001B5B4 0D80053C */  lui        $a1, %hi(D_800D2D64)
/* BDB8 8001B5B8 642DA524 */  addiu      $a1, $a1, %lo(D_800D2D64)
/* BDBC 8001B5BC 80101100 */  sll        $v0, $s1, 2
/* BDC0 8001B5C0 21204500 */  addu       $a0, $v0, $a1
/* BDC4 8001B5C4 2400BFAF */  sw         $ra, 0x24($sp)
/* BDC8 8001B5C8 2000B4AF */  sw         $s4, 0x20($sp)
/* BDCC 8001B5CC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BDD0 8001B5D0 1000B0AF */  sw         $s0, 0x10($sp)
/* BDD4 8001B5D4 0000948C */  lw         $s4, ($a0)
/* BDD8 8001B5D8 00000000 */  nop
/* BDDC 8001B5DC 3A005412 */  beq        $s2, $s4, .L8001B6C8
/* BDE0 8001B5E0 21108002 */   addu      $v0, $s4, $zero
/* BDE4 8001B5E4 FCFFA294 */  lhu        $v0, -4($a1)
/* BDE8 8001B5E8 00000000 */  nop
/* BDEC 8001B5EC 35004010 */  beqz       $v0, .L8001B6C4
/* BDF0 8001B5F0 FCFFA624 */   addiu     $a2, $a1, -4
/* BDF4 8001B5F4 0D80023C */  lui        $v0, %hi(D_800D3DF0)
/* BDF8 8001B5F8 F03D428C */  lw         $v0, %lo(D_800D3DF0)($v0)
/* BDFC 8001B5FC 00000000 */  nop
/* BE00 8001B600 00004394 */  lhu        $v1, ($v0)
/* BE04 8001B604 000040A4 */  sh         $zero, ($v0)
/* BE08 8001B608 09004012 */  beqz       $s2, .L8001B630
/* BE0C 8001B60C FFFF7330 */   andi      $s3, $v1, 0xffff
/* BE10 8001B610 01000324 */  addiu      $v1, $zero, 1
/* BE14 8001B614 04182302 */  sllv       $v1, $v1, $s1
/* BE18 8001B618 000092AC */  sw         $s2, ($a0)
/* BE1C 8001B61C 3000C294 */  lhu        $v0, 0x30($a2)
/* BE20 8001B620 25986302 */  or         $s3, $s3, $v1
/* BE24 8001B624 25104300 */  or         $v0, $v0, $v1
/* BE28 8001B628 946D0008 */  j          INTR_OBJ_4EC
/* BE2C 8001B62C 3000C2A4 */   sh        $v0, 0x30($a2)
.L8001B630:
/* BE30 8001B630 01000224 */  addiu      $v0, $zero, 1
/* BE34 8001B634 04102202 */  sllv       $v0, $v0, $s1
/* BE38 8001B638 27100200 */  nor        $v0, $zero, $v0
/* BE3C 8001B63C 000080AC */  sw         $zero, ($a0)
/* BE40 8001B640 2C00A394 */  lhu        $v1, 0x2c($a1)
/* BE44 8001B644 24986202 */  and        $s3, $s3, $v0
/* BE48 8001B648 24186200 */  and        $v1, $v1, $v0
/* BE4C 8001B64C 2C00A3A4 */  sh         $v1, 0x2c($a1)
