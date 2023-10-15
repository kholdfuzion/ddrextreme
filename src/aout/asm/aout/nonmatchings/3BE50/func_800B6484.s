.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B6484
/* A6C84 800B6484 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* A6C88 800B6488 5000BFAF */  sw         $ra, 0x50($sp)
/* A6C8C 800B648C 21480000 */  addu       $t1, $zero, $zero
/* A6C90 800B6490 1E80023C */  lui        $v0, %hi(D_801E09F8)
/* A6C94 800B6494 F8094624 */  addiu      $a2, $v0, %lo(D_801E09F8)
/* A6C98 800B6498 21388000 */  addu       $a3, $a0, $zero
/* A6C9C 800B649C 002E0500 */  sll        $a1, $a1, 0x18
/* A6CA0 800B64A0 03460500 */  sra        $t0, $a1, 0x18
/* A6CA4 800B64A4 E001C424 */  addiu      $a0, $a2, 0x1e0
/* A6CA8 800B64A8 2B18C400 */  sltu       $v1, $a2, $a0
/* A6CAC 800B64AC 0E006010 */  beqz       $v1, .L800B64E8
/* A6CB0 800B64B0 21284000 */   addu      $a1, $v0, $zero
/* A6CB4 800B64B4 21188000 */  addu       $v1, $a0, $zero
.L800B64B8:
/* A6CB8 800B64B8 0000C290 */  lbu        $v0, ($a2)
/* A6CBC 800B64BC 00000000 */  nop
/* A6CC0 800B64C0 05004010 */  beqz       $v0, .L800B64D8
/* A6CC4 800B64C4 00000000 */   nop
/* A6CC8 800B64C8 0C00C28C */  lw         $v0, 0xc($a2)
/* A6CCC 800B64CC 00000000 */  nop
/* A6CD0 800B64D0 32004710 */  beq        $v0, $a3, .L800B659C
/* A6CD4 800B64D4 00000000 */   nop
.L800B64D8:
/* A6CD8 800B64D8 1400C624 */  addiu      $a2, $a2, 0x14
/* A6CDC 800B64DC 2B10C300 */  sltu       $v0, $a2, $v1
/* A6CE0 800B64E0 F5FF4014 */  bnez       $v0, .L800B64B8
/* A6CE4 800B64E4 00000000 */   nop
.L800B64E8:
/* A6CE8 800B64E8 FFFF0324 */  addiu      $v1, $zero, -1
/* A6CEC 800B64EC FFFF0224 */  addiu      $v0, $zero, -1
.L800B64F0:
/* A6CF0 800B64F0 02006214 */  bne        $v1, $v0, .L800B64FC
/* A6CF4 800B64F4 00000000 */   nop
/* A6CF8 800B64F8 FFFF0924 */  addiu      $t1, $zero, -1
.L800B64FC:
/* A6CFC 800B64FC 2A002215 */  bne        $t1, $v0, .L800B65A8
/* A6D00 800B6500 1800622C */   sltiu     $v0, $v1, 0x18
/* A6D04 800B6504 1E80023C */  lui        $v0, %hi(D_801E0788)
/* A6D08 800B6508 88074424 */  addiu      $a0, $v0, %lo(D_801E0788)
/* A6D0C 800B650C 02008390 */  lbu        $v1, 2($a0)
/* A6D10 800B6510 00000000 */  nop
/* A6D14 800B6514 06006014 */  bnez       $v1, .L800B6530
/* A6D18 800B6518 1E80033C */   lui       $v1, 0x801e
/* A6D1C 800B651C 1800828C */  lw         $v0, 0x18($a0)
/* A6D20 800B6520 00000000 */  nop
/* A6D24 800B6524 02004714 */  bne        $v0, $a3, .L800B6530
/* A6D28 800B6528 00000000 */   nop
/* A6D2C 800B652C 050088A0 */  sb         $t0, 5($a0)
.L800B6530:
/* A6D30 800B6530 1E80043C */  lui        $a0, %hi(D_801E09E4)
/* A6D34 800B6534 E009658C */  lw         $a1, 0x9e0($v1)
/* A6D38 800B6538 E409828C */  lw         $v0, %lo(D_801E09E4)($a0)
/* A6D3C 800B653C 00000000 */  nop
/* A6D40 800B6540 2300A210 */  beq        $a1, $v0, .L800B65D0
/* A6D44 800B6544 21280000 */   addu      $a1, $zero, $zero
/* A6D48 800B6548 01000624 */  addiu      $a2, $zero, 1
/* A6D4C 800B654C 1E80023C */  lui        $v0, %hi(D_801E0BD8)
/* A6D50 800B6550 D80B4424 */  addiu      $a0, $v0, %lo(D_801E0BD8)
.L800B6554:
/* A6D54 800B6554 0C00828C */  lw         $v0, 0xc($a0)
/* A6D58 800B6558 00000000 */  nop
/* A6D5C 800B655C 09004714 */  bne        $v0, $a3, .L800B6584
/* A6D60 800B6560 21188000 */   addu      $v1, $a0, $zero
/* A6D64 800B6564 03006290 */  lbu        $v0, 3($v1)
/* A6D68 800B6568 00000000 */  nop
/* A6D6C 800B656C 05004614 */  bne        $v0, $a2, .L800B6584
/* A6D70 800B6570 00000000 */   nop
/* A6D74 800B6574 00006290 */  lbu        $v0, ($v1)
/* A6D78 800B6578 00000000 */  nop
/* A6D7C 800B657C 16004010 */  beqz       $v0, .L800B65D8
/* A6D80 800B6580 00000000 */   nop
.L800B6584:
/* A6D84 800B6584 0100A524 */  addiu      $a1, $a1, 1
/* A6D88 800B6588 3000A228 */  slti       $v0, $a1, 0x30
/* A6D8C 800B658C F1FF4014 */  bnez       $v0, .L800B6554
/* A6D90 800B6590 10008424 */   addiu     $a0, $a0, 0x10
/* A6D94 800B6594 A5D90208 */  j          .L800B6694
/* A6D98 800B6598 FFFF0224 */   addiu     $v0, $zero, -1
.L800B659C:
/* A6D9C 800B659C 0300C390 */  lbu        $v1, 3($a2)
/* A6DA0 800B65A0 3CD90208 */  j          .L800B64F0
/* A6DA4 800B65A4 FFFF0224 */   addiu     $v0, $zero, -1
.L800B65A8:
/* A6DA8 800B65A8 09004010 */  beqz       $v0, .L800B65D0
/* A6DAC 800B65AC 80480300 */   sll       $t1, $v1, 2
/* A6DB0 800B65B0 21102301 */  addu       $v0, $t1, $v1
/* A6DB4 800B65B4 80100200 */  sll        $v0, $v0, 2
/* A6DB8 800B65B8 F809A324 */  addiu      $v1, $a1, 0x9f8
/* A6DBC 800B65BC 21384300 */  addu       $a3, $v0, $v1
/* A6DC0 800B65C0 0000E490 */  lbu        $a0, ($a3)
/* A6DC4 800B65C4 00000000 */  nop
/* A6DC8 800B65C8 05008014 */  bnez       $a0, .L800B65E0
/* A6DCC 800B65CC 0281033C */   lui       $v1, 0x8102
.L800B65D0:
/* A6DD0 800B65D0 A5D90208 */  j          .L800B6694
/* A6DD4 800B65D4 FFFF0224 */   addiu     $v0, $zero, -1
.L800B65D8:
/* A6DD8 800B65D8 A4D90208 */  j          .L800B6690
/* A6DDC 800B65DC 060088A0 */   sb        $t0, 6($a0)
.L800B65E0:
/* A6DE0 800B65E0 0600E484 */  lh         $a0, 6($a3)
/* A6DE4 800B65E4 00000000 */  nop
/* A6DE8 800B65E8 18008800 */  mult       $a0, $t0
/* A6DEC 800B65EC 12200000 */  mflo       $a0
/* A6DF0 800B65F0 09046334 */  ori        $v1, $v1, 0x409
/* A6DF4 800B65F4 00000000 */  nop
/* A6DF8 800B65F8 18008300 */  mult       $a0, $v1
/* A6DFC 800B65FC 0180063C */  lui        $a2, %hi(D_8001717C)
/* A6E00 800B6600 7C71C624 */  addiu      $a2, $a2, %lo(D_8001717C)
/* A6E04 800B6604 0100E590 */  lbu        $a1, 1($a3)
/* A6E08 800B6608 80000224 */  addiu      $v0, $zero, 0x80
/* A6E0C 800B660C 23104500 */  subu       $v0, $v0, $a1
/* A6E10 800B6610 40100200 */  sll        $v0, $v0, 1
/* A6E14 800B6614 21104600 */  addu       $v0, $v0, $a2
/* A6E18 800B6618 00004594 */  lhu        $a1, ($v0)
/* A6E1C 800B661C 10180000 */  mfhi       $v1
/* A6E20 800B6620 21186400 */  addu       $v1, $v1, $a0
/* A6E24 800B6624 83190300 */  sra        $v1, $v1, 6
/* A6E28 800B6628 C3270400 */  sra        $a0, $a0, 0x1f
/* A6E2C 800B662C 23186400 */  subu       $v1, $v1, $a0
/* A6E30 800B6630 18006500 */  mult       $v1, $a1
/* A6E34 800B6634 0100E290 */  lbu        $v0, 1($a3)
/* A6E38 800B6638 00000000 */  nop
/* A6E3C 800B663C 40100200 */  sll        $v0, $v0, 1
/* A6E40 800B6640 21104600 */  addu       $v0, $v0, $a2
/* A6E44 800B6644 12280000 */  mflo       $a1
/* A6E48 800B6648 00004494 */  lhu        $a0, ($v0)
/* A6E4C 800B664C 00000000 */  nop
/* A6E50 800B6650 18006400 */  mult       $v1, $a0
/* A6E54 800B6654 0180023C */  lui        $v0, %hi(D_8001727C)
/* A6E58 800B6658 7C724224 */  addiu      $v0, $v0, %lo(D_8001727C)
/* A6E5C 800B665C 21102201 */  addu       $v0, $t1, $v0
/* A6E60 800B6660 0000468C */  lw         $a2, ($v0)
/* A6E64 800B6664 00000000 */  nop
/* A6E68 800B6668 1000A6AF */  sw         $a2, 0x10($sp)
/* A6E6C 800B666C 03000424 */  addiu      $a0, $zero, 3
/* A6E70 800B6670 032A0500 */  sra        $a1, $a1, 8
/* A6E74 800B6674 1400A4AF */  sw         $a0, 0x14($sp)
/* A6E78 800B6678 1000A427 */  addiu      $a0, $sp, 0x10
/* A6E7C 800B667C 1800A5A7 */  sh         $a1, 0x18($sp)
/* A6E80 800B6680 12180000 */  mflo       $v1
/* A6E84 800B6684 031A0300 */  sra        $v1, $v1, 8
/* A6E88 800B6688 B5E3020C */  jal        SpuSetVoiceAttr
/* A6E8C 800B668C 1A00A3A7 */   sh        $v1, 0x1a($sp)
.L800B6690:
/* A6E90 800B6690 21100000 */  addu       $v0, $zero, $zero
.L800B6694:
/* A6E94 800B6694 5000BF8F */  lw         $ra, 0x50($sp)
/* A6E98 800B6698 00000000 */  nop
/* A6E9C 800B669C 0800E003 */  jr         $ra
/* A6EA0 800B66A0 5800BD27 */   addiu     $sp, $sp, 0x58
