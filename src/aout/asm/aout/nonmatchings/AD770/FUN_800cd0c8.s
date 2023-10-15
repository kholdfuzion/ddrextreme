.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd0c8
/* BD8C8 800CD0C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD8CC 800CD0CC 1800BFAF */  sw         $ra, 0x18($sp)
/* BD8D0 800CD0D0 78F0020C */  jal        FUN_800bc1e0
/* BD8D4 800CD0D4 01000424 */   addiu     $a0, $zero, 1
/* BD8D8 800CD0D8 21180000 */  addu       $v1, $zero, $zero
/* BD8DC 800CD0DC 401F043C */  lui        $a0, 0x1f40
/* BD8E0 800CD0E0 1000A0AF */  sw         $zero, 0x10($sp)
/* BD8E4 800CD0E4 1000A28F */  lw         $v0, 0x10($sp)
.L800CD0E8:
/* BD8E8 800CD0E8 06008294 */  lhu        $v0, 6($a0)
/* BD8EC 800CD0EC 01006324 */  addiu      $v1, $v1, 1
/* BD8F0 800CD0F0 3C006228 */  slti       $v0, $v1, 0x3c
/* BD8F4 800CD0F4 FCFF4014 */  bnez       $v0, .L800CD0E8
/* BD8F8 800CD0F8 21280000 */   addu      $a1, $zero, $zero
/* BD8FC 800CD0FC 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BD900 800CD100 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BD904 800CD104 6A1F023C */  lui        $v0, 0x1f6a
/* BD908 800CD108 02006334 */  ori        $v1, $v1, 2
/* BD90C 800CD10C 000043A4 */  sh         $v1, ($v0)
/* BD910 800CD110 1000A0AF */  sw         $zero, 0x10($sp)
/* BD914 800CD114 1000A28F */  lw         $v0, 0x10($sp)
/* BD918 800CD118 401F063C */  lui        $a2, 0x1f40
/* BD91C 800CD11C 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CD120:
/* BD920 800CD120 0600C294 */  lhu        $v0, 6($a2)
/* BD924 800CD124 0100A524 */  addiu      $a1, $a1, 1
/* BD928 800CD128 3C00A228 */  slti       $v0, $a1, 0x3c
/* BD92C 800CD12C FCFF4014 */  bnez       $v0, .L800CD120
/* BD930 800CD130 00000000 */   nop
/* BD934 800CD134 78F0020C */  jal        FUN_800bc1e0
/* BD938 800CD138 21200000 */   addu      $a0, $zero, $zero
/* BD93C 800CD13C 21180000 */  addu       $v1, $zero, $zero
/* BD940 800CD140 401F043C */  lui        $a0, 0x1f40
/* BD944 800CD144 1000A0AF */  sw         $zero, 0x10($sp)
/* BD948 800CD148 1000A28F */  lw         $v0, 0x10($sp)
.L800CD14C:
/* BD94C 800CD14C 06008294 */  lhu        $v0, 6($a0)
/* BD950 800CD150 01006324 */  addiu      $v1, $v1, 1
/* BD954 800CD154 3C006228 */  slti       $v0, $v1, 0x3c
/* BD958 800CD158 FCFF4014 */  bnez       $v0, .L800CD14C
/* BD95C 800CD15C 00000000 */   nop
/* BD960 800CD160 1800BF8F */  lw         $ra, 0x18($sp)
/* BD964 800CD164 00000000 */  nop
/* BD968 800CD168 0800E003 */  jr         $ra
/* BD96C 800CD16C 2000BD27 */   addiu     $sp, $sp, 0x20
