.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a0e4
/* 3A8E4 8004A0E4 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 3A8E8 8004A0E8 1380033C */  lui        $v1, %hi(D_801280F1)
/* 3A8EC 8004A0EC 2000478C */  lw         $a3, %lo(D_800F0020)($v0)
/* 3A8F0 8004A0F0 F1806590 */  lbu        $a1, %lo(D_801280F1)($v1)
/* 3A8F4 8004A0F4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3A8F8 8004A0F8 2800BFAF */  sw         $ra, 0x28($sp)
/* 3A8FC 8004A0FC ECFFE424 */  addiu      $a0, $a3, -0x14
/* 3A900 8004A100 40100400 */  sll        $v0, $a0, 1
/* 3A904 8004A104 21104400 */  addu       $v0, $v0, $a0
/* 3A908 8004A108 40300200 */  sll        $a2, $v0, 1
/* 3A90C 8004A10C C0180500 */  sll        $v1, $a1, 3
/* 3A910 8004A110 23186500 */  subu       $v1, $v1, $a1
/* 3A914 8004A114 80180300 */  sll        $v1, $v1, 2
/* 3A918 8004A118 1380023C */  lui        $v0, %hi(D_801282E0)
/* 3A91C 8004A11C E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 3A920 8004A120 79008428 */  slti       $a0, $a0, 0x79
/* 3A924 8004A124 06008014 */  bnez       $a0, .L8004A140
/* 3A928 8004A128 21286200 */   addu      $a1, $v1, $v0
/* 3A92C 8004A12C 74FFE224 */  addiu      $v0, $a3, -0x8c
/* 3A930 8004A130 80180200 */  sll        $v1, $v0, 2
/* 3A934 8004A134 21186200 */  addu       $v1, $v1, $v0
/* 3A938 8004A138 80000424 */  addiu      $a0, $zero, 0x80
/* 3A93C 8004A13C 23308300 */  subu       $a2, $a0, $v1
.L8004A140:
/* 3A940 8004A140 0300C104 */  bgez       $a2, .L8004A150
/* 3A944 8004A144 8100C228 */   slti      $v0, $a2, 0x81
/* 3A948 8004A148 21300000 */  addu       $a2, $zero, $zero
/* 3A94C 8004A14C 8100C228 */  slti       $v0, $a2, 0x81
.L8004A150:
/* 3A950 8004A150 02004014 */  bnez       $v0, .L8004A15C
/* 3A954 8004A154 10FF0224 */   addiu     $v0, $zero, -0xf0
/* 3A958 8004A158 80000624 */  addiu      $a2, $zero, 0x80
.L8004A15C:
/* 3A95C 8004A15C 1000A2AF */  sw         $v0, 0x10($sp)
/* 3A960 8004A160 80020224 */  addiu      $v0, $zero, 0x280
/* 3A964 8004A164 E0010324 */  addiu      $v1, $zero, 0x1e0
/* 3A968 8004A168 21200000 */  addu       $a0, $zero, $zero
/* 3A96C 8004A16C 1400A5AF */  sw         $a1, 0x14($sp)
/* 3A970 8004A170 FF000524 */  addiu      $a1, $zero, 0xff
/* 3A974 8004A174 C0FE0724 */  addiu      $a3, $zero, -0x140
/* 3A978 8004A178 1800A0AF */  sw         $zero, 0x18($sp)
/* 3A97C 8004A17C 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 3A980 8004A180 2000A2AF */  sw         $v0, 0x20($sp)
/* 3A984 8004A184 3DAD010C */  jal        FUN_8006b4f4
/* 3A988 8004A188 2400A3AF */   sw        $v1, 0x24($sp)
/* 3A98C 8004A18C 2800BF8F */  lw         $ra, 0x28($sp)
/* 3A990 8004A190 00000000 */  nop
/* 3A994 8004A194 0800E003 */  jr         $ra
/* 3A998 8004A198 3000BD27 */   addiu     $sp, $sp, 0x30
