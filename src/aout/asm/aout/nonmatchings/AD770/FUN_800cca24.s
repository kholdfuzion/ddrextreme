.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cca24
/* BD224 800CCA24 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD228 800CCA28 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BD22C 800CCA2C 21280000 */  addu       $a1, $zero, $zero
/* BD230 800CCA30 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BD234 800CCA34 6A1F023C */  lui        $v0, 0x1f6a
/* BD238 800CCA38 FBFF6330 */  andi       $v1, $v1, 0xfffb
/* BD23C 800CCA3C 000043A4 */  sh         $v1, ($v0)
/* BD240 800CCA40 1000A0AF */  sw         $zero, 0x10($sp)
/* BD244 800CCA44 1000A28F */  lw         $v0, 0x10($sp)
/* BD248 800CCA48 401F063C */  lui        $a2, 0x1f40
/* BD24C 800CCA4C 1800BFAF */  sw         $ra, 0x18($sp)
/* BD250 800CCA50 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CCA54:
/* BD254 800CCA54 0600C294 */  lhu        $v0, 6($a2)
/* BD258 800CCA58 0100A524 */  addiu      $a1, $a1, 1
/* BD25C 800CCA5C 3C00A228 */  slti       $v0, $a1, 0x3c
/* BD260 800CCA60 FCFF4014 */  bnez       $v0, .L800CCA54
/* BD264 800CCA64 01000424 */   addiu     $a0, $zero, 1
/* BD268 800CCA68 5C34030C */  jal        FUN_800cd170
/* BD26C 800CCA6C 21280000 */   addu      $a1, $zero, $zero
/* BD270 800CCA70 1A004014 */  bnez       $v0, .L800CCADC
/* BD274 800CCA74 FFFF0224 */   addiu     $v0, $zero, -1
/* BD278 800CCA78 78F0020C */  jal        FUN_800bc1e0
/* BD27C 800CCA7C 01000424 */   addiu     $a0, $zero, 1
/* BD280 800CCA80 21180000 */  addu       $v1, $zero, $zero
/* BD284 800CCA84 401F043C */  lui        $a0, 0x1f40
/* BD288 800CCA88 1000A0AF */  sw         $zero, 0x10($sp)
/* BD28C 800CCA8C 1000A28F */  lw         $v0, 0x10($sp)
.L800CCA90:
/* BD290 800CCA90 06008294 */  lhu        $v0, 6($a0)
/* BD294 800CCA94 01006324 */  addiu      $v1, $v1, 1
/* BD298 800CCA98 3C006228 */  slti       $v0, $v1, 0x3c
/* BD29C 800CCA9C FCFF4014 */  bnez       $v0, .L800CCA90
/* BD2A0 800CCAA0 21280000 */   addu      $a1, $zero, $zero
/* BD2A4 800CCAA4 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BD2A8 800CCAA8 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BD2AC 800CCAAC 6A1F023C */  lui        $v0, 0x1f6a
/* BD2B0 800CCAB0 FDFF6330 */  andi       $v1, $v1, 0xfffd
/* BD2B4 800CCAB4 000043A4 */  sh         $v1, ($v0)
/* BD2B8 800CCAB8 1000A0AF */  sw         $zero, 0x10($sp)
/* BD2BC 800CCABC 1000A28F */  lw         $v0, 0x10($sp)
/* BD2C0 800CCAC0 401F063C */  lui        $a2, 0x1f40
/* BD2C4 800CCAC4 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CCAC8:
/* BD2C8 800CCAC8 0600C294 */  lhu        $v0, 6($a2)
/* BD2CC 800CCACC 0100A524 */  addiu      $a1, $a1, 1
/* BD2D0 800CCAD0 3C00A228 */  slti       $v0, $a1, 0x3c
/* BD2D4 800CCAD4 FCFF4014 */  bnez       $v0, .L800CCAC8
/* BD2D8 800CCAD8 21100000 */   addu      $v0, $zero, $zero
.L800CCADC:
/* BD2DC 800CCADC 1800BF8F */  lw         $ra, 0x18($sp)
/* BD2E0 800CCAE0 00000000 */  nop
/* BD2E4 800CCAE4 0800E003 */  jr         $ra
/* BD2E8 800CCAE8 2000BD27 */   addiu     $sp, $sp, 0x20
