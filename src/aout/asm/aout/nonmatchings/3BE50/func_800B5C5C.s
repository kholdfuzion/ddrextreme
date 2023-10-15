.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B5C5C
/* A645C 800B5C5C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A6460 800B5C60 1400B1AF */  sw         $s1, 0x14($sp)
/* A6464 800B5C64 21880000 */  addu       $s1, $zero, $zero
/* A6468 800B5C68 1800B2AF */  sw         $s2, 0x18($sp)
/* A646C 800B5C6C 21908000 */  addu       $s2, $a0, $zero
/* A6470 800B5C70 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A6474 800B5C74 AE6C000C */  jal        CheckCallback
/* A6478 800B5C78 1000B0AF */   sw        $s0, 0x10($sp)
/* A647C 800B5C7C 0D004014 */  bnez       $v0, .L800B5CB4
/* A6480 800B5C80 1E80033C */   lui       $v1, 0x801e
/* A6484 800B5C84 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A6488 800B5C88 B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A648C 800B5C8C 00000000 */  nop
/* A6490 800B5C90 03004014 */  bnez       $v0, .L800B5CA0
/* A6494 800B5C94 00000000 */   nop
/* A6498 800B5C98 1D6E000C */  jal        FUN_8001b874
/* A649C 800B5C9C 00000000 */   nop
.L800B5CA0:
/* A64A0 800B5CA0 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A64A4 800B5CA4 00000000 */  nop
/* A64A8 800B5CA8 01004224 */  addiu      $v0, $v0, 1
/* A64AC 800B5CAC B00702A2 */  sb         $v0, 0x7b0($s0)
/* A64B0 800B5CB0 1E80033C */  lui        $v1, %hi(D_801E09F8)
.L800B5CB4:
/* A64B4 800B5CB4 F8096424 */  addiu      $a0, $v1, %lo(D_801E09F8)
/* A64B8 800B5CB8 E0018524 */  addiu      $a1, $a0, 0x1e0
/* A64BC 800B5CBC 2B108500 */  sltu       $v0, $a0, $a1
/* A64C0 800B5CC0 0E004010 */  beqz       $v0, .L800B5CFC
/* A64C4 800B5CC4 21406000 */   addu      $t0, $v1, $zero
/* A64C8 800B5CC8 2118A000 */  addu       $v1, $a1, $zero
.L800B5CCC:
/* A64CC 800B5CCC 00008290 */  lbu        $v0, ($a0)
/* A64D0 800B5CD0 00000000 */  nop
/* A64D4 800B5CD4 05004010 */  beqz       $v0, .L800B5CEC
/* A64D8 800B5CD8 00000000 */   nop
/* A64DC 800B5CDC 0C00828C */  lw         $v0, 0xc($a0)
/* A64E0 800B5CE0 00000000 */  nop
/* A64E4 800B5CE4 0B005210 */  beq        $v0, $s2, .L800B5D14
/* A64E8 800B5CE8 00000000 */   nop
.L800B5CEC:
/* A64EC 800B5CEC 14008424 */  addiu      $a0, $a0, 0x14
/* A64F0 800B5CF0 2B108300 */  sltu       $v0, $a0, $v1
/* A64F4 800B5CF4 F5FF4014 */  bnez       $v0, .L800B5CCC
/* A64F8 800B5CF8 00000000 */   nop
.L800B5CFC:
/* A64FC 800B5CFC FFFF0724 */  addiu      $a3, $zero, -1
/* A6500 800B5D00 FFFF0224 */  addiu      $v0, $zero, -1
.L800B5D04:
/* A6504 800B5D04 0600E214 */  bne        $a3, $v0, .L800B5D20
/* A6508 800B5D08 1E80053C */   lui       $a1, 0x801e
/* A650C 800B5D0C 55D70208 */  j          .L800B5D54
/* A6510 800B5D10 FFFF1124 */   addiu     $s1, $zero, -1
.L800B5D14:
/* A6514 800B5D14 03008790 */  lbu        $a3, 3($a0)
/* A6518 800B5D18 41D70208 */  j          .L800B5D04
/* A651C 800B5D1C FFFF0224 */   addiu     $v0, $zero, -1
.L800B5D20:
/* A6520 800B5D20 E809A624 */  addiu      $a2, $a1, 0x9e8
/* A6524 800B5D24 0180023C */  lui        $v0, %hi(D_8001727C)
/* A6528 800B5D28 7C724224 */  addiu      $v0, $v0, %lo(D_8001727C)
/* A652C 800B5D2C 80200700 */  sll        $a0, $a3, 2
/* A6530 800B5D30 21208200 */  addu       $a0, $a0, $v0
/* A6534 800B5D34 E809A38C */  lw         $v1, 0x9e8($a1)
/* A6538 800B5D38 0400C28C */  lw         $v0, 4($a2)
/* A653C 800B5D3C 0000858C */  lw         $a1, ($a0)
/* A6540 800B5D40 25186200 */  or         $v1, $v1, $v0
/* A6544 800B5D44 24186500 */  and        $v1, $v1, $a1
/* A6548 800B5D48 02006014 */  bnez       $v1, .L800B5D54
/* A654C 800B5D4C 00000000 */   nop
/* A6550 800B5D50 FEFF1124 */  addiu      $s1, $zero, -2
.L800B5D54:
/* A6554 800B5D54 48002106 */  bgez       $s1, .L800B5E78
/* A6558 800B5D58 1800E22C */   sltiu     $v0, $a3, 0x18
/* A655C 800B5D5C 1E80043C */  lui        $a0, %hi(D_801E0788)
/* A6560 800B5D60 88079024 */  addiu      $s0, $a0, %lo(D_801E0788)
/* A6564 800B5D64 1800028E */  lw         $v0, 0x18($s0)
/* A6568 800B5D68 00000000 */  nop
/* A656C 800B5D6C 11005214 */  bne        $v0, $s2, .L800B5DB4
/* A6570 800B5D70 1E80033C */   lui       $v1, 0x801e
/* A6574 800B5D74 88078390 */  lbu        $v1, 0x788($a0)
/* A6578 800B5D78 00000000 */  nop
/* A657C 800B5D7C 0C006010 */  beqz       $v1, .L800B5DB0
/* A6580 800B5D80 02000224 */   addiu     $v0, $zero, 2
/* A6584 800B5D84 09006214 */  bne        $v1, $v0, .L800B5DAC
/* A6588 800B5D88 03000224 */   addiu     $v0, $zero, 3
/* A658C 800B5D8C 1C00028E */  lw         $v0, 0x1c($s0)
/* A6590 800B5D90 880780A0 */  sb         $zero, 0x788($a0)
/* A6594 800B5D94 1000448C */  lw         $a0, 0x10($v0)
/* A6598 800B5D98 28D1020C */  jal        FUN_800b44a0
/* A659C 800B5D9C 00000000 */   nop
/* A65A0 800B5DA0 1C00028E */  lw         $v0, 0x1c($s0)
/* A65A4 800B5DA4 6CD70208 */  j          .L800B5DB0
/* A65A8 800B5DA8 000040A4 */   sh        $zero, ($v0)
.L800B5DAC:
/* A65AC 800B5DAC 880782A0 */  sb         $v0, 0x788($a0)
.L800B5DB0:
/* A65B0 800B5DB0 1E80033C */  lui        $v1, %hi(D_801E09E0)
.L800B5DB4:
/* A65B4 800B5DB4 1E80043C */  lui        $a0, %hi(D_801E09E4)
/* A65B8 800B5DB8 E009658C */  lw         $a1, %lo(D_801E09E0)($v1)
/* A65BC 800B5DBC E409828C */  lw         $v0, %lo(D_801E09E4)($a0)
/* A65C0 800B5DC0 00000000 */  nop
/* A65C4 800B5DC4 1C00A210 */  beq        $a1, $v0, .L800B5E38
/* A65C8 800B5DC8 21280000 */   addu      $a1, $zero, $zero
/* A65CC 800B5DCC 1E80023C */  lui        $v0, %hi(D_801E0BD8)
/* A65D0 800B5DD0 D80B4324 */  addiu      $v1, $v0, %lo(D_801E0BD8)
/* A65D4 800B5DD4 0C006424 */  addiu      $a0, $v1, 0xc
.L800B5DD8:
/* A65D8 800B5DD8 0000828C */  lw         $v0, ($a0)
/* A65DC 800B5DDC 00000000 */  nop
/* A65E0 800B5DE0 10005214 */  bne        $v0, $s2, .L800B5E24
/* A65E4 800B5DE4 01000224 */   addiu     $v0, $zero, 1
/* A65E8 800B5DE8 03007190 */  lbu        $s1, 3($v1)
/* A65EC 800B5DEC 00000000 */  nop
/* A65F0 800B5DF0 0C002216 */  bne        $s1, $v0, .L800B5E24
/* A65F4 800B5DF4 00000000 */   nop
/* A65F8 800B5DF8 AE6C000C */  jal        CheckCallback
/* A65FC 800B5DFC 030060A0 */   sb        $zero, 3($v1)
/* A6600 800B5E00 3F004014 */  bnez       $v0, .L800B5F00
/* A6604 800B5E04 21100000 */   addu      $v0, $zero, $zero
/* A6608 800B5E08 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A660C 800B5E0C B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A6610 800B5E10 00000000 */  nop
/* A6614 800B5E14 35005114 */  bne        $v0, $s1, .L800B5EEC
/* A6618 800B5E18 00000000 */   nop
/* A661C 800B5E1C B9D70208 */  j          .L800B5EE4
/* A6620 800B5E20 00000000 */   nop
.L800B5E24:
/* A6624 800B5E24 10006324 */  addiu      $v1, $v1, 0x10
/* A6628 800B5E28 0100A524 */  addiu      $a1, $a1, 1
/* A662C 800B5E2C 3000A228 */  slti       $v0, $a1, 0x30
/* A6630 800B5E30 E9FF4014 */  bnez       $v0, .L800B5DD8
/* A6634 800B5E34 10008424 */   addiu     $a0, $a0, 0x10
.L800B5E38:
/* A6638 800B5E38 AE6C000C */  jal        CheckCallback
/* A663C 800B5E3C 00000000 */   nop
/* A6640 800B5E40 2F004014 */  bnez       $v0, .L800B5F00
/* A6644 800B5E44 FFFF0224 */   addiu     $v0, $zero, -1
/* A6648 800B5E48 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A664C 800B5E4C B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A6650 800B5E50 01000224 */  addiu      $v0, $zero, 1
/* A6654 800B5E54 03006214 */  bne        $v1, $v0, .L800B5E64
/* A6658 800B5E58 00000000 */   nop
/* A665C 800B5E5C 216E000C */  jal        FUN_8001b884
/* A6660 800B5E60 00000000 */   nop
.L800B5E64:
/* A6664 800B5E64 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A6668 800B5E68 00000000 */  nop
/* A666C 800B5E6C FFFF4224 */  addiu      $v0, $v0, -1
/* A6670 800B5E70 A0D70208 */  j          .L800B5E80
/* A6674 800B5E74 B00702A2 */   sb        $v0, 0x7b0($s0)
.L800B5E78:
/* A6678 800B5E78 03004014 */  bnez       $v0, .L800B5E88
/* A667C 800B5E7C 80300700 */   sll       $a2, $a3, 2
.L800B5E80:
/* A6680 800B5E80 C0D70208 */  j          .L800B5F00
/* A6684 800B5E84 FFFF0224 */   addiu     $v0, $zero, -1
.L800B5E88:
/* A6688 800B5E88 2120C700 */  addu       $a0, $a2, $a3
/* A668C 800B5E8C 80200400 */  sll        $a0, $a0, 2
/* A6690 800B5E90 F8090225 */  addiu      $v0, $t0, 0x9f8
/* A6694 800B5E94 21208200 */  addu       $a0, $a0, $v0
/* A6698 800B5E98 1E80053C */  lui        $a1, %hi(D_801E09E8)
/* A669C 800B5E9C E809A524 */  addiu      $a1, $a1, %lo(D_801E09E8)
/* A66A0 800B5EA0 0180023C */  lui        $v0, %hi(D_8001727C)
/* A66A4 800B5EA4 7C724224 */  addiu      $v0, $v0, %lo(D_8001727C)
/* A66A8 800B5EA8 2130C200 */  addu       $a2, $a2, $v0
/* A66AC 800B5EAC 0800A38C */  lw         $v1, 8($a1)
/* A66B0 800B5EB0 0000C78C */  lw         $a3, ($a2)
/* A66B4 800B5EB4 02000224 */  addiu      $v0, $zero, 2
/* A66B8 800B5EB8 000082A0 */  sb         $v0, ($a0)
/* A66BC 800B5EBC 25186700 */  or         $v1, $v1, $a3
/* A66C0 800B5EC0 AE6C000C */  jal        CheckCallback
/* A66C4 800B5EC4 0800A3AC */   sw        $v1, 8($a1)
/* A66C8 800B5EC8 0D004014 */  bnez       $v0, .L800B5F00
/* A66CC 800B5ECC 21100000 */   addu      $v0, $zero, $zero
/* A66D0 800B5ED0 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A66D4 800B5ED4 B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A66D8 800B5ED8 01000224 */  addiu      $v0, $zero, 1
/* A66DC 800B5EDC 03006214 */  bne        $v1, $v0, .L800B5EEC
/* A66E0 800B5EE0 00000000 */   nop
.L800B5EE4:
/* A66E4 800B5EE4 216E000C */  jal        FUN_8001b884
/* A66E8 800B5EE8 00000000 */   nop
.L800B5EEC:
/* A66EC 800B5EEC B0070292 */  lbu        $v0, 0x7b0($s0)
/* A66F0 800B5EF0 00000000 */  nop
/* A66F4 800B5EF4 FFFF4224 */  addiu      $v0, $v0, -1
/* A66F8 800B5EF8 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A66FC 800B5EFC 21100000 */  addu       $v0, $zero, $zero
.L800B5F00:
/* A6700 800B5F00 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A6704 800B5F04 1800B28F */  lw         $s2, 0x18($sp)
/* A6708 800B5F08 1400B18F */  lw         $s1, 0x14($sp)
/* A670C 800B5F0C 1000B08F */  lw         $s0, 0x10($sp)
/* A6710 800B5F10 0800E003 */  jr         $ra
/* A6714 800B5F14 2000BD27 */   addiu     $sp, $sp, 0x20
