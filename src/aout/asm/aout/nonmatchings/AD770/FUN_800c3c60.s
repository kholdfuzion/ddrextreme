.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3c60
/* B4460 800C3C60 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B4464 800C3C64 1000BFAF */  sw         $ra, 0x10($sp)
/* B4468 800C3C68 2120A000 */  addu       $a0, $a1, $zero
/* B446C 800C3C6C 21480000 */  addu       $t1, $zero, $zero
/* B4470 800C3C70 1F80023C */  lui        $v0, %hi(D_801F72F8)
/* B4474 800C3C74 F8724224 */  addiu      $v0, $v0, %lo(D_801F72F8)
/* B4478 800C3C78 51004824 */  addiu      $t0, $v0, 0x51
/* B447C 800C3C7C 21382001 */  addu       $a3, $t1, $zero
/* B4480 800C3C80 21282001 */  addu       $a1, $t1, $zero
/* B4484 800C3C84 01000A24 */  addiu      $t2, $zero, 1
.L800C3C88:
/* B4488 800C3C88 0700A230 */  andi       $v0, $a1, 7
/* B448C 800C3C8C 04004014 */  bnez       $v0, .L800C3CA0
/* B4490 800C3C90 0100E230 */   andi      $v0, $a3, 1
/* B4494 800C3C94 00000791 */  lbu        $a3, ($t0)
/* B4498 800C3C98 01000825 */  addiu      $t0, $t0, 1
/* B449C 800C3C9C 0100E230 */  andi       $v0, $a3, 1
.L800C3CA0:
/* B44A0 800C3CA0 0F004010 */  beqz       $v0, .L800C3CE0
/* B44A4 800C3CA4 00000000 */   nop
/* B44A8 800C3CA8 1A00A600 */  div        $zero, $a1, $a2
/* B44AC 800C3CAC 0200C014 */  bnez       $a2, .L800C3CB8
/* B44B0 800C3CB0 00000000 */   nop
/* B44B4 800C3CB4 0D000700 */  break      7
.L800C3CB8:
/* B44B8 800C3CB8 FFFF0124 */   addiu     $at, $zero, -1
/* B44BC 800C3CBC 0400C114 */  bne        $a2, $at, .L800C3CD0
/* B44C0 800C3CC0 0080013C */   lui       $at, 0x8000
/* B44C4 800C3CC4 0200A114 */  bne        $a1, $at, .L800C3CD0
/* B44C8 800C3CC8 00000000 */   nop
/* B44CC 800C3CCC 0D000600 */  break      6
.L800C3CD0:
/* B44D0 800C3CD0 10100000 */   mfhi      $v0
/* B44D4 800C3CD4 00000000 */  nop
/* B44D8 800C3CD8 04104A00 */  sllv       $v0, $t2, $v0
/* B44DC 800C3CDC 26482201 */  xor        $t1, $t1, $v0
.L800C3CE0:
/* B44E0 800C3CE0 0100A524 */  addiu      $a1, $a1, 1
/* B44E4 800C3CE4 3000A228 */  slti       $v0, $a1, 0x30
/* B44E8 800C3CE8 E7FF4014 */  bnez       $v0, .L800C3C88
/* B44EC 800C3CEC 43380700 */   sra       $a3, $a3, 1
/* B44F0 800C3CF0 04008524 */  addiu      $a1, $a0, 4
/* B44F4 800C3CF4 2138A000 */  addu       $a3, $a1, $zero
/* B44F8 800C3CF8 21300000 */  addu       $a2, $zero, $zero
/* B44FC 800C3CFC 2118C000 */  addu       $v1, $a2, $zero
/* B4500 800C3D00 82000224 */  addiu      $v0, $zero, 0x82
/* B4504 800C3D04 040082A0 */  sb         $v0, 4($a0)
/* B4508 800C3D08 03120900 */  sra        $v0, $t1, 8
/* B450C 800C3D0C 0100A2A0 */  sb         $v0, 1($a1)
/* B4510 800C3D10 0200A9A0 */  sb         $t1, 2($a1)
/* B4514 800C3D14 0700A0A0 */  sb         $zero, 7($a1)
/* B4518 800C3D18 0600A0A0 */  sb         $zero, 6($a1)
/* B451C 800C3D1C 0500A0A0 */  sb         $zero, 5($a1)
/* B4520 800C3D20 0400A0A0 */  sb         $zero, 4($a1)
/* B4524 800C3D24 0300A0A0 */  sb         $zero, 3($a1)
/* B4528 800C3D28 2110E300 */  addu       $v0, $a3, $v1
.L800C3D2C:
/* B452C 800C3D2C 00004290 */  lbu        $v0, ($v0)
/* B4530 800C3D30 01006324 */  addiu      $v1, $v1, 1
/* B4534 800C3D34 2130C200 */  addu       $a2, $a2, $v0
/* B4538 800C3D38 08006228 */  slti       $v0, $v1, 8
/* B453C 800C3D3C FBFF4014 */  bnez       $v0, .L800C3D2C
/* B4540 800C3D40 2110E300 */   addu      $v0, $a3, $v1
/* B4544 800C3D44 27100600 */  nor        $v0, $zero, $a2
/* B4548 800C3D48 0700A2A0 */  sb         $v0, 7($a1)
/* B454C 800C3D4C 04008224 */  addiu      $v0, $a0, 4
/* B4550 800C3D50 0180053C */  lui        $a1, %hi(D_80017830)
/* B4554 800C3D54 14008424 */  addiu      $a0, $a0, 0x14
/* B4558 800C3D58 01004690 */  lbu        $a2, 1($v0)
/* B455C 800C3D5C 02004790 */  lbu        $a3, 2($v0)
/* B4560 800C3D60 8E81000C */  jal        sprintf
/* B4564 800C3D64 3078A524 */   addiu     $a1, $a1, %lo(D_80017830)
/* B4568 800C3D68 1000BF8F */  lw         $ra, 0x10($sp)
/* B456C 800C3D6C 21100000 */  addu       $v0, $zero, $zero
/* B4570 800C3D70 0800E003 */  jr         $ra
/* B4574 800C3D74 1800BD27 */   addiu     $sp, $sp, 0x18
