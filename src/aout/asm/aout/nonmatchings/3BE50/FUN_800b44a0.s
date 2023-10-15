.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b44a0
/* A4CA0 800B44A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A4CA4 800B44A4 FF0F8424 */  addiu      $a0, $a0, 0xfff
/* A4CA8 800B44A8 02230400 */  srl        $a0, $a0, 0xc
/* A4CAC 800B44AC 1E80033C */  lui        $v1, %hi(D_801E07D8)
/* A4CB0 800B44B0 D807658C */  lw         $a1, %lo(D_801E07D8)($v1)
/* A4CB4 800B44B4 0180023C */  lui        $v0, %hi(D_800172F0)
/* A4CB8 800B44B8 1800BFAF */  sw         $ra, 0x18($sp)
/* A4CBC 800B44BC 1400B1AF */  sw         $s1, 0x14($sp)
/* A4CC0 800B44C0 1000B0AF */  sw         $s0, 0x10($sp)
/* A4CC4 800B44C4 0200A394 */  lhu        $v1, 2($a1)
/* A4CC8 800B44C8 F0724224 */  addiu      $v0, $v0, %lo(D_800172F0)
/* A4CCC 800B44CC 21186200 */  addu       $v1, $v1, $v0
/* A4CD0 800B44D0 00007190 */  lbu        $s1, ($v1)
/* A4CD4 800B44D4 FF009030 */  andi       $s0, $a0, 0xff
/* A4CD8 800B44D8 2A101102 */  slt        $v0, $s0, $s1
/* A4CDC 800B44DC 05004014 */  bnez       $v0, .L800B44F4
/* A4CE0 800B44E0 00000000 */   nop
.L800B44E4:
/* A4CE4 800B44E4 B9DA020C */  jal        FUN_800b6ae4
/* A4CE8 800B44E8 00000000 */   nop
/* A4CEC 800B44EC A1D10208 */  j          .L800B4684
/* A4CF0 800B44F0 00000000 */   nop
.L800B44F4:
/* A4CF4 800B44F4 A5DA020C */  jal        FUN_800b6a94
/* A4CF8 800B44F8 00000000 */   nop
/* A4CFC 800B44FC 1E80033C */  lui        $v1, %hi(D_801E07B8)
/* A4D00 800B4500 B8076224 */  addiu      $v0, $v1, %lo(D_801E07B8)
/* A4D04 800B4504 0400458C */  lw         $a1, 4($v0)
/* A4D08 800B4508 21384000 */  addu       $a3, $v0, $zero
/* A4D0C 800B450C 21306000 */  addu       $a2, $v1, $zero
/* A4D10 800B4510 21406000 */  addu       $t0, $v1, $zero
.L800B4514:
/* A4D14 800B4514 0000A290 */  lbu        $v0, ($a1)
/* A4D18 800B4518 00000000 */  nop
/* A4D1C 800B451C 50005014 */  bne        $v0, $s0, .L800B4660
/* A4D20 800B4520 00000000 */   nop
/* A4D24 800B4524 0200A294 */  lhu        $v0, 2($a1)
/* A4D28 800B4528 00000000 */  nop
/* A4D2C 800B452C EDFF4010 */  beqz       $v0, .L800B44E4
/* A4D30 800B4530 00000000 */   nop
/* A4D34 800B4534 0800A48C */  lw         $a0, 8($a1)
/* A4D38 800B4538 00000000 */  nop
/* A4D3C 800B453C 02008294 */  lhu        $v0, 2($a0)
/* A4D40 800B4540 00000000 */  nop
/* A4D44 800B4544 16004014 */  bnez       $v0, .L800B45A0
/* A4D48 800B4548 00000000 */   nop
/* A4D4C 800B454C 0100A290 */  lbu        $v0, 1($a1)
/* A4D50 800B4550 01008390 */  lbu        $v1, 1($a0)
/* A4D54 800B4554 00000000 */  nop
/* A4D58 800B4558 21104300 */  addu       $v0, $v0, $v1
/* A4D5C 800B455C 0100A2A0 */  sb         $v0, 1($a1)
/* A4D60 800B4560 0800838C */  lw         $v1, 8($a0)
/* A4D64 800B4564 00000000 */  nop
/* A4D68 800B4568 0800A3AC */  sw         $v1, 8($a1)
/* A4D6C 800B456C 0800828C */  lw         $v0, 8($a0)
/* A4D70 800B4570 00000000 */  nop
/* A4D74 800B4574 040045AC */  sw         $a1, 4($v0)
/* A4D78 800B4578 000091A0 */  sb         $s1, ($a0)
/* A4D7C 800B457C 010080A0 */  sb         $zero, 1($a0)
/* A4D80 800B4580 080080AC */  sw         $zero, 8($a0)
/* A4D84 800B4584 0800E28C */  lw         $v0, 8($a3)
/* A4D88 800B4588 00000000 */  nop
/* A4D8C 800B458C 040082AC */  sw         $v0, 4($a0)
/* A4D90 800B4590 0800E38C */  lw         $v1, 8($a3)
/* A4D94 800B4594 00000000 */  nop
/* A4D98 800B4598 080064AC */  sw         $a0, 8($v1)
/* A4D9C 800B459C 0800E4AC */  sw         $a0, 8($a3)
.L800B45A0:
/* A4DA0 800B45A0 B807C624 */  addiu      $a2, $a2, 0x7b8
/* A4DA4 800B45A4 0400C28C */  lw         $v0, 4($a2)
/* A4DA8 800B45A8 00000000 */  nop
/* A4DAC 800B45AC 26004510 */  beq        $v0, $a1, .L800B4648
/* A4DB0 800B45B0 00000000 */   nop
/* A4DB4 800B45B4 0400A48C */  lw         $a0, 4($a1)
/* A4DB8 800B45B8 00000000 */  nop
/* A4DBC 800B45BC 02008294 */  lhu        $v0, 2($a0)
/* A4DC0 800B45C0 00000000 */  nop
/* A4DC4 800B45C4 20004014 */  bnez       $v0, .L800B4648
/* A4DC8 800B45C8 00000000 */   nop
/* A4DCC 800B45CC 0100A290 */  lbu        $v0, 1($a1)
/* A4DD0 800B45D0 01008390 */  lbu        $v1, 1($a0)
/* A4DD4 800B45D4 00000000 */  nop
/* A4DD8 800B45D8 21104300 */  addu       $v0, $v0, $v1
/* A4DDC 800B45DC 0100A2A0 */  sb         $v0, 1($a1)
/* A4DE0 800B45E0 00008390 */  lbu        $v1, ($a0)
/* A4DE4 800B45E4 00000000 */  nop
/* A4DE8 800B45E8 0000A3A0 */  sb         $v1, ($a1)
/* A4DEC 800B45EC 0400C28C */  lw         $v0, 4($a2)
/* A4DF0 800B45F0 00000000 */  nop
/* A4DF4 800B45F4 04008214 */  bne        $a0, $v0, .L800B4608
/* A4DF8 800B45F8 00000000 */   nop
/* A4DFC 800B45FC 0400C5AC */  sw         $a1, 4($a2)
/* A4E00 800B4600 88D10208 */  j          .L800B4620
/* A4E04 800B4604 0400A0AC */   sw        $zero, 4($a1)
.L800B4608:
/* A4E08 800B4608 0400828C */  lw         $v0, 4($a0)
/* A4E0C 800B460C 00000000 */  nop
/* A4E10 800B4610 080045AC */  sw         $a1, 8($v0)
/* A4E14 800B4614 0400838C */  lw         $v1, 4($a0)
/* A4E18 800B4618 00000000 */  nop
/* A4E1C 800B461C 0400A3AC */  sw         $v1, 4($a1)
.L800B4620:
/* A4E20 800B4620 000091A0 */  sb         $s1, ($a0)
/* A4E24 800B4624 010080A0 */  sb         $zero, 1($a0)
/* A4E28 800B4628 080080AC */  sw         $zero, 8($a0)
/* A4E2C 800B462C 0800E28C */  lw         $v0, 8($a3)
/* A4E30 800B4630 00000000 */  nop
/* A4E34 800B4634 040082AC */  sw         $v0, 4($a0)
/* A4E38 800B4638 0800E38C */  lw         $v1, 8($a3)
/* A4E3C 800B463C 00000000 */  nop
/* A4E40 800B4640 080064AC */  sw         $a0, 8($v1)
/* A4E44 800B4644 0800E4AC */  sw         $a0, 8($a3)
.L800B4648:
/* A4E48 800B4648 0200A0A4 */  sh         $zero, 2($a1)
/* A4E4C 800B464C B807028D */  lw         $v0, 0x7b8($t0)
/* A4E50 800B4650 00000000 */  nop
/* A4E54 800B4654 FFFF4224 */  addiu      $v0, $v0, -1
/* A4E58 800B4658 39D10208 */  j          .L800B44E4
/* A4E5C 800B465C B80702AD */   sw        $v0, 0x7b8($t0)
.L800B4660:
/* A4E60 800B4660 0800E28C */  lw         $v0, 8($a3)
/* A4E64 800B4664 00000000 */  nop
/* A4E68 800B4668 0400A210 */  beq        $a1, $v0, .L800B467C
/* A4E6C 800B466C 00000000 */   nop
/* A4E70 800B4670 0800A58C */  lw         $a1, 8($a1)
/* A4E74 800B4674 45D10208 */  j          .L800B4514
/* A4E78 800B4678 00000000 */   nop
.L800B467C:
/* A4E7C 800B467C B9DA020C */  jal        FUN_800b6ae4
/* A4E80 800B4680 00000000 */   nop
.L800B4684:
/* A4E84 800B4684 1800BF8F */  lw         $ra, 0x18($sp)
/* A4E88 800B4688 1400B18F */  lw         $s1, 0x14($sp)
/* A4E8C 800B468C 1000B08F */  lw         $s0, 0x10($sp)
/* A4E90 800B4690 0800E003 */  jr         $ra
/* A4E94 800B4694 2000BD27 */   addiu     $sp, $sp, 0x20
