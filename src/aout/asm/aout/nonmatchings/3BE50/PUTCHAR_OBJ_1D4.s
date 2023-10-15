.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel PUTCHAR_OBJ_1D4
/* AC4E0 800BBCE0 0F80063C */  lui        $a2, %hi(D_800ED090)
/* AC4E4 800BBCE4 90D0C68C */  lw         $a2, %lo(D_800ED090)($a2)
/* AC4E8 800BBCE8 00000000 */  nop
/* AC4EC 800BBCEC 2000C228 */  slti       $v0, $a2, 0x20
/* AC4F0 800BBCF0 07004014 */  bnez       $v0, .L800BBD10
/* AC4F4 800BBCF4 00000000 */   nop
/* AC4F8 800BBCF8 1E80053C */  lui        $a1, %hi(D_801E1778)
/* AC4FC 800BBCFC 7817A524 */  addiu      $a1, $a1, %lo(D_801E1778)
/* AC500 800BBD00 5BEF020C */  jal        write
/* AC504 800BBD04 01000424 */   addiu     $a0, $zero, 1
/* AC508 800BBD08 0F80013C */  lui        $at, %hi(D_800ED090)
/* AC50C 800BBD0C 90D020AC */  sw         $zero, %lo(D_800ED090)($at)
.L800BBD10:
/* AC510 800BBD10 0F80023C */  lui        $v0, %hi(D_800ED090)
/* AC514 800BBD14 90D0428C */  lw         $v0, %lo(D_800ED090)($v0)
/* AC518 800BBD18 1E80013C */  lui        $at, %hi(D_801E1778)
/* AC51C 800BBD1C 21082200 */  addu       $at, $at, $v0
/* AC520 800BBD20 781730A0 */  sb         $s0, %lo(D_801E1778)($at)
/* AC524 800BBD24 01004224 */  addiu      $v0, $v0, 1
/* AC528 800BBD28 0F80013C */  lui        $at, %hi(D_800ED090)
/* AC52C 800BBD2C 90D022AC */  sw         $v0, %lo(D_800ED090)($at)
.L800BBD30:
/* AC530 800BBD30 0F80063C */  lui        $a2, %hi(D_800ED090)
/* AC534 800BBD34 90D0C68C */  lw         $a2, %lo(D_800ED090)($a2)
/* AC538 800BBD38 00000000 */  nop
/* AC53C 800BBD3C 0700C018 */  blez       $a2, .L800BBD5C
/* AC540 800BBD40 00000000 */   nop
/* AC544 800BBD44 1E80053C */  lui        $a1, %hi(D_801E1778)
/* AC548 800BBD48 7817A524 */  addiu      $a1, $a1, %lo(D_801E1778)
/* AC54C 800BBD4C 5BEF020C */  jal        write
/* AC550 800BBD50 01000424 */   addiu     $a0, $zero, 1
/* AC554 800BBD54 0F80013C */  lui        $at, %hi(D_800ED090)
/* AC558 800BBD58 90D020AC */  sw         $zero, %lo(D_800ED090)($at)
.L800BBD5C:
/* AC55C 800BBD5C 1400BF8F */  lw         $ra, 0x14($sp)
/* AC560 800BBD60 1000B08F */  lw         $s0, 0x10($sp)
/* AC564 800BBD64 0800E003 */  jr         $ra
/* AC568 800BBD68 1800BD27 */   addiu     $sp, $sp, 0x18
