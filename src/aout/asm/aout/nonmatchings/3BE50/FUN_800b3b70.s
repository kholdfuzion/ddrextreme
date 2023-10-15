.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b3b70
/* A4370 800B3B70 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* A4374 800B3B74 1800B0AF */  sw         $s0, 0x18($sp)
/* A4378 800B3B78 FFFF9030 */  andi       $s0, $a0, 0xffff
/* A437C 800B3B7C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A4380 800B3B80 FF00B130 */  andi       $s1, $a1, 0xff
/* A4384 800B3B84 00800234 */  ori        $v0, $zero, 0x8000
/* A4388 800B3B88 3C00BFAF */  sw         $ra, 0x3c($sp)
/* A438C 800B3B8C 3800BEAF */  sw         $fp, 0x38($sp)
/* A4390 800B3B90 3400B7AF */  sw         $s7, 0x34($sp)
/* A4394 800B3B94 3000B6AF */  sw         $s6, 0x30($sp)
/* A4398 800B3B98 2C00B5AF */  sw         $s5, 0x2c($sp)
/* A439C 800B3B9C 2800B4AF */  sw         $s4, 0x28($sp)
/* A43A0 800B3BA0 2400B3AF */  sw         $s3, 0x24($sp)
/* A43A4 800B3BA4 7A000216 */  bne        $s0, $v0, .L800B3D90
/* A43A8 800B3BA8 2000B2AF */   sw        $s2, 0x20($sp)
/* A43AC 800B3BAC 1E80023C */  lui        $v0, %hi(D_801E09F8)
/* A43B0 800B3BB0 F8094524 */  addiu      $a1, $v0, %lo(D_801E09F8)
/* A43B4 800B3BB4 1E80073C */  lui        $a3, 0x801e
/* A43B8 800B3BB8 1E80153C */  lui        $s5, 0x801e
/* A43BC 800B3BBC E001A424 */  addiu      $a0, $a1, 0x1e0
/* A43C0 800B3BC0 2B10A400 */  sltu       $v0, $a1, $a0
/* A43C4 800B3BC4 1F004010 */  beqz       $v0, .L800B3C44
/* A43C8 800B3BC8 1E80143C */   lui       $s4, 0x801e
/* A43CC 800B3BCC 1E80023C */  lui        $v0, %hi(D_801E09E8)
/* A43D0 800B3BD0 E8094624 */  addiu      $a2, $v0, %lo(D_801E09E8)
/* A43D4 800B3BD4 0180033C */  lui        $v1, %hi(D_8001727C)
/* A43D8 800B3BD8 7C726A24 */  addiu      $t2, $v1, %lo(D_8001727C)
/* A43DC 800B3BDC 02000924 */  addiu      $t1, $zero, 2
/* A43E0 800B3BE0 21408000 */  addu       $t0, $a0, $zero
.L800B3BE4:
/* A43E4 800B3BE4 0000A290 */  lbu        $v0, ($a1)
/* A43E8 800B3BE8 00000000 */  nop
/* A43EC 800B3BEC 11004010 */  beqz       $v0, .L800B3C34
/* A43F0 800B3BF0 00000000 */   nop
/* A43F4 800B3BF4 1000A38C */  lw         $v1, 0x10($a1)
/* A43F8 800B3BF8 00000000 */  nop
/* A43FC 800B3BFC 14006290 */  lbu        $v0, 0x14($v1)
/* A4400 800B3C00 00000000 */  nop
/* A4404 800B3C04 2B105100 */  sltu       $v0, $v0, $s1
/* A4408 800B3C08 0A004014 */  bnez       $v0, .L800B3C34
/* A440C 800B3C0C 00000000 */   nop
/* A4410 800B3C10 0300A290 */  lbu        $v0, 3($a1)
/* A4414 800B3C14 0800C38C */  lw         $v1, 8($a2)
/* A4418 800B3C18 80100200 */  sll        $v0, $v0, 2
/* A441C 800B3C1C 21104A00 */  addu       $v0, $v0, $t2
/* A4420 800B3C20 0000448C */  lw         $a0, ($v0)
/* A4424 800B3C24 00000000 */  nop
/* A4428 800B3C28 25186400 */  or         $v1, $v1, $a0
/* A442C 800B3C2C 0800C3AC */  sw         $v1, 8($a2)
/* A4430 800B3C30 0000A9A0 */  sb         $t1, ($a1)
.L800B3C34:
/* A4434 800B3C34 1400A524 */  addiu      $a1, $a1, 0x14
/* A4438 800B3C38 2B10A800 */  sltu       $v0, $a1, $t0
/* A443C 800B3C3C E9FF4014 */  bnez       $v0, .L800B3BE4
/* A4440 800B3C40 00000000 */   nop
.L800B3C44:
/* A4444 800B3C44 8807E490 */  lbu        $a0, 0x788($a3)
/* A4448 800B3C48 00000000 */  nop
/* A444C 800B3C4C 12008010 */  beqz       $a0, .L800B3C98
/* A4450 800B3C50 8807F024 */   addiu     $s0, $a3, 0x788
/* A4454 800B3C54 1C00038E */  lw         $v1, 0x1c($s0)
/* A4458 800B3C58 00000000 */  nop
/* A445C 800B3C5C 14006290 */  lbu        $v0, 0x14($v1)
/* A4460 800B3C60 00000000 */  nop
/* A4464 800B3C64 2B105100 */  sltu       $v0, $v0, $s1
/* A4468 800B3C68 0B004014 */  bnez       $v0, .L800B3C98
/* A446C 800B3C6C 02000224 */   addiu     $v0, $zero, 2
/* A4470 800B3C70 08008214 */  bne        $a0, $v0, .L800B3C94
/* A4474 800B3C74 03000224 */   addiu     $v0, $zero, 3
/* A4478 800B3C78 8807E0A0 */  sb         $zero, 0x788($a3)
/* A447C 800B3C7C 1000648C */  lw         $a0, 0x10($v1)
/* A4480 800B3C80 28D1020C */  jal        FUN_800b44a0
/* A4484 800B3C84 00000000 */   nop
/* A4488 800B3C88 1C00028E */  lw         $v0, 0x1c($s0)
/* A448C 800B3C8C 26CF0208 */  j          .L800B3C98
/* A4490 800B3C90 000040A4 */   sh        $zero, ($v0)
.L800B3C94:
/* A4494 800B3C94 8807E2A0 */  sb         $v0, 0x788($a3)
.L800B3C98:
/* A4498 800B3C98 E009838E */  lw         $v1, 0x9e0($s4)
/* A449C 800B3C9C E409A28E */  lw         $v0, 0x9e4($s5)
/* A44A0 800B3CA0 00000000 */  nop
/* A44A4 800B3CA4 95006210 */  beq        $v1, $v0, .L800B3EFC
/* A44A8 800B3CA8 21900000 */   addu      $s2, $zero, $zero
/* A44AC 800B3CAC 21988002 */  addu       $s3, $s4, $zero
/* A44B0 800B3CB0 1E80023C */  lui        $v0, %hi(D_801E0BD8)
/* A44B4 800B3CB4 D80B5724 */  addiu      $s7, $v0, %lo(D_801E0BD8)
/* A44B8 800B3CB8 1E80033C */  lui        $v1, %hi(D_801E07E0)
/* A44BC 800B3CBC E0077624 */  addiu      $s6, $v1, %lo(D_801E07E0)
.L800B3CC0:
/* A44C0 800B3CC0 E009658E */  lw         $a1, 0x9e0($s3)
/* A44C4 800B3CC4 00000000 */  nop
/* A44C8 800B3CC8 00190500 */  sll        $v1, $a1, 4
/* A44CC 800B3CCC 0100A524 */  addiu      $a1, $a1, 1
/* A44D0 800B3CD0 3000A22C */  sltiu      $v0, $a1, 0x30
/* A44D4 800B3CD4 02004014 */  bnez       $v0, .L800B3CE0
/* A44D8 800B3CD8 21807700 */   addu      $s0, $v1, $s7
/* A44DC 800B3CDC 21280000 */  addu       $a1, $zero, $zero
.L800B3CE0:
/* A44E0 800B3CE0 07000292 */  lbu        $v0, 7($s0)
/* A44E4 800B3CE4 00000000 */  nop
/* A44E8 800B3CE8 40110200 */  sll        $v0, $v0, 5
/* A44EC 800B3CEC 21385600 */  addu       $a3, $v0, $s6
/* A44F0 800B3CF0 1C00E38C */  lw         $v1, 0x1c($a3)
/* A44F4 800B3CF4 E00985AE */  sw         $a1, 0x9e0($s4)
/* A44F8 800B3CF8 15006010 */  beqz       $v1, .L800B3D50
/* A44FC 800B3CFC 1000A527 */   addiu     $a1, $sp, 0x10
/* A4500 800B3D00 04000296 */  lhu        $v0, 4($s0)
/* A4504 800B3D04 0800E48C */  lw         $a0, 8($a3)
/* A4508 800B3D08 40300200 */  sll        $a2, $v0, 1
/* A450C 800B3D0C 2130C200 */  addu       $a2, $a2, $v0
/* A4510 800B3D10 80300600 */  sll        $a2, $a2, 2
/* A4514 800B3D14 1000E28C */  lw         $v0, 0x10($a3)
/* A4518 800B3D18 01000724 */  addiu      $a3, $zero, 1
/* A451C 800B3D1C 8DDA020C */  jal        FUN_800b6a34
/* A4520 800B3D20 21304600 */   addu      $a2, $v0, $a2
/* A4524 800B3D24 1000A293 */  lbu        $v0, 0x10($sp)
/* A4528 800B3D28 00000000 */  nop
/* A452C 800B3D2C 2B105100 */  sltu       $v0, $v0, $s1
/* A4530 800B3D30 07004010 */  beqz       $v0, .L800B3D50
/* A4534 800B3D34 00000000 */   nop
/* A4538 800B3D38 0CCC020C */  jal        FUN_800b3030
/* A453C 800B3D3C 21200002 */   addu      $a0, $s0, $zero
/* A4540 800B3D40 FFFF0324 */  addiu      $v1, $zero, -1
/* A4544 800B3D44 02004310 */  beq        $v0, $v1, .L800B3D50
/* A4548 800B3D48 00000000 */   nop
/* A454C 800B3D4C 01005226 */  addiu      $s2, $s2, 1
.L800B3D50:
/* A4550 800B3D50 E409A38E */  lw         $v1, 0x9e4($s5)
/* A4554 800B3D54 E009628E */  lw         $v0, 0x9e0($s3)
/* A4558 800B3D58 00000000 */  nop
/* A455C 800B3D5C 23186200 */  subu       $v1, $v1, $v0
/* A4560 800B3D60 02006104 */  bgez       $v1, .L800B3D6C
/* A4564 800B3D64 00000000 */   nop
/* A4568 800B3D68 30006324 */  addiu      $v1, $v1, 0x30
.L800B3D6C:
/* A456C 800B3D6C 63004312 */  beq        $s2, $v1, .L800B3EFC
/* A4570 800B3D70 00000000 */   nop
/* A4574 800B3D74 E009838E */  lw         $v1, 0x9e0($s4)
/* A4578 800B3D78 E409A28E */  lw         $v0, 0x9e4($s5)
/* A457C 800B3D7C 00000000 */  nop
/* A4580 800B3D80 CFFF6214 */  bne        $v1, $v0, .L800B3CC0
/* A4584 800B3D84 00000000 */   nop
/* A4588 800B3D88 BFCF0208 */  j          .L800B3EFC
/* A458C 800B3D8C 00000000 */   nop
.L800B3D90:
/* A4590 800B3D90 1E80023C */  lui        $v0, %hi(D_801E09F8)
/* A4594 800B3D94 F8094524 */  addiu      $a1, $v0, %lo(D_801E09F8)
/* A4598 800B3D98 E001A424 */  addiu      $a0, $a1, 0x1e0
/* A459C 800B3D9C 2B10A400 */  sltu       $v0, $a1, $a0
/* A45A0 800B3DA0 22004010 */  beqz       $v0, .L800B3E2C
/* A45A4 800B3DA4 1E80073C */   lui       $a3, 0x801e
/* A45A8 800B3DA8 1E80023C */  lui        $v0, %hi(D_801E09E8)
/* A45AC 800B3DAC E8094624 */  addiu      $a2, $v0, %lo(D_801E09E8)
/* A45B0 800B3DB0 0180033C */  lui        $v1, %hi(D_8001727C)
/* A45B4 800B3DB4 7C726A24 */  addiu      $t2, $v1, %lo(D_8001727C)
/* A45B8 800B3DB8 02000924 */  addiu      $t1, $zero, 2
/* A45BC 800B3DBC 21408000 */  addu       $t0, $a0, $zero
.L800B3DC0:
/* A45C0 800B3DC0 0000A290 */  lbu        $v0, ($a1)
/* A45C4 800B3DC4 00000000 */  nop
/* A45C8 800B3DC8 14004010 */  beqz       $v0, .L800B3E1C
/* A45CC 800B3DCC 00000000 */   nop
/* A45D0 800B3DD0 1000A38C */  lw         $v1, 0x10($a1)
/* A45D4 800B3DD4 00000000 */  nop
/* A45D8 800B3DD8 02006294 */  lhu        $v0, 2($v1)
/* A45DC 800B3DDC 00000000 */  nop
/* A45E0 800B3DE0 0E005014 */  bne        $v0, $s0, .L800B3E1C
/* A45E4 800B3DE4 00000000 */   nop
/* A45E8 800B3DE8 06006284 */  lh         $v0, 6($v1)
/* A45EC 800B3DEC 00000000 */  nop
/* A45F0 800B3DF0 0A005114 */  bne        $v0, $s1, .L800B3E1C
/* A45F4 800B3DF4 00000000 */   nop
/* A45F8 800B3DF8 0300A290 */  lbu        $v0, 3($a1)
/* A45FC 800B3DFC 0800C38C */  lw         $v1, 8($a2)
/* A4600 800B3E00 80100200 */  sll        $v0, $v0, 2
/* A4604 800B3E04 21104A00 */  addu       $v0, $v0, $t2
/* A4608 800B3E08 0000448C */  lw         $a0, ($v0)
/* A460C 800B3E0C 00000000 */  nop
/* A4610 800B3E10 25186400 */  or         $v1, $v1, $a0
/* A4614 800B3E14 0800C3AC */  sw         $v1, 8($a2)
/* A4618 800B3E18 0000A9A0 */  sb         $t1, ($a1)
.L800B3E1C:
/* A461C 800B3E1C 1400A524 */  addiu      $a1, $a1, 0x14
/* A4620 800B3E20 2B10A800 */  sltu       $v0, $a1, $t0
/* A4624 800B3E24 E6FF4014 */  bnez       $v0, .L800B3DC0
/* A4628 800B3E28 00000000 */   nop
.L800B3E2C:
/* A462C 800B3E2C 8807F224 */  addiu      $s2, $a3, 0x788
/* A4630 800B3E30 1C00448E */  lw         $a0, 0x1c($s2)
/* A4634 800B3E34 00000000 */  nop
/* A4638 800B3E38 02008294 */  lhu        $v0, 2($a0)
/* A463C 800B3E3C 00000000 */  nop
/* A4640 800B3E40 2E005014 */  bne        $v0, $s0, .L800B3EFC
/* A4644 800B3E44 00000000 */   nop
/* A4648 800B3E48 06008284 */  lh         $v0, 6($a0)
/* A464C 800B3E4C 00000000 */  nop
/* A4650 800B3E50 2A005114 */  bne        $v0, $s1, .L800B3EFC
/* A4654 800B3E54 00000000 */   nop
/* A4658 800B3E58 8807E390 */  lbu        $v1, 0x788($a3)
/* A465C 800B3E5C 00000000 */  nop
/* A4660 800B3E60 0B006010 */  beqz       $v1, .L800B3E90
/* A4664 800B3E64 02000224 */   addiu     $v0, $zero, 2
/* A4668 800B3E68 08006214 */  bne        $v1, $v0, .L800B3E8C
/* A466C 800B3E6C 03000224 */   addiu     $v0, $zero, 3
/* A4670 800B3E70 8807E0A0 */  sb         $zero, 0x788($a3)
/* A4674 800B3E74 1000848C */  lw         $a0, 0x10($a0)
/* A4678 800B3E78 28D1020C */  jal        FUN_800b44a0
/* A467C 800B3E7C 00000000 */   nop
/* A4680 800B3E80 1C00428E */  lw         $v0, 0x1c($s2)
/* A4684 800B3E84 A4CF0208 */  j          .L800B3E90
/* A4688 800B3E88 000040A4 */   sh        $zero, ($v0)
.L800B3E8C:
/* A468C 800B3E8C 8807E2A0 */  sb         $v0, 0x788($a3)
.L800B3E90:
/* A4690 800B3E90 1E80023C */  lui        $v0, %hi(D_801E09E0)
/* A4694 800B3E94 1E80033C */  lui        $v1, %hi(D_801E09E4)
/* A4698 800B3E98 E009448C */  lw         $a0, %lo(D_801E09E0)($v0)
/* A469C 800B3E9C E409628C */  lw         $v0, %lo(D_801E09E4)($v1)
/* A46A0 800B3EA0 00000000 */  nop
/* A46A4 800B3EA4 15008210 */  beq        $a0, $v0, .L800B3EFC
/* A46A8 800B3EA8 21A86000 */   addu      $s5, $v1, $zero
/* A46AC 800B3EAC 2130A002 */  addu       $a2, $s5, $zero
/* A46B0 800B3EB0 1E80023C */  lui        $v0, %hi(D_801E0BD8)
/* A46B4 800B3EB4 D80B4524 */  addiu      $a1, $v0, %lo(D_801E0BD8)
/* A46B8 800B3EB8 00190400 */  sll        $v1, $a0, 4
/* A46BC 800B3EBC 21186500 */  addu       $v1, $v1, $a1
.L800B3EC0:
/* A46C0 800B3EC0 04006294 */  lhu        $v0, 4($v1)
/* A46C4 800B3EC4 00000000 */  nop
/* A46C8 800B3EC8 02005014 */  bne        $v0, $s0, .L800B3ED4
/* A46CC 800B3ECC 00000000 */   nop
/* A46D0 800B3ED0 030060A0 */  sb         $zero, 3($v1)
.L800B3ED4:
/* A46D4 800B3ED4 01008424 */  addiu      $a0, $a0, 1
/* A46D8 800B3ED8 3000822C */  sltiu      $v0, $a0, 0x30
/* A46DC 800B3EDC 03004014 */  bnez       $v0, .L800B3EEC
/* A46E0 800B3EE0 10006324 */   addiu     $v1, $v1, 0x10
/* A46E4 800B3EE4 2118A000 */  addu       $v1, $a1, $zero
/* A46E8 800B3EE8 21200000 */  addu       $a0, $zero, $zero
.L800B3EEC:
/* A46EC 800B3EEC E409C28C */  lw         $v0, 0x9e4($a2)
/* A46F0 800B3EF0 00000000 */  nop
/* A46F4 800B3EF4 F2FF8214 */  bne        $a0, $v0, .L800B3EC0
/* A46F8 800B3EF8 00000000 */   nop
.L800B3EFC:
/* A46FC 800B3EFC 3C00BF8F */  lw         $ra, 0x3c($sp)
/* A4700 800B3F00 3800BE8F */  lw         $fp, 0x38($sp)
/* A4704 800B3F04 3400B78F */  lw         $s7, 0x34($sp)
/* A4708 800B3F08 3000B68F */  lw         $s6, 0x30($sp)
/* A470C 800B3F0C 2C00B58F */  lw         $s5, 0x2c($sp)
/* A4710 800B3F10 2800B48F */  lw         $s4, 0x28($sp)
/* A4714 800B3F14 2400B38F */  lw         $s3, 0x24($sp)
/* A4718 800B3F18 2000B28F */  lw         $s2, 0x20($sp)
/* A471C 800B3F1C 1C00B18F */  lw         $s1, 0x1c($sp)
/* A4720 800B3F20 1800B08F */  lw         $s0, 0x18($sp)
/* A4724 800B3F24 0800E003 */  jr         $ra
/* A4728 800B3F28 4000BD27 */   addiu     $sp, $sp, 0x40
