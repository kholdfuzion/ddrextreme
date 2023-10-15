.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ccd10
/* BD510 800CCD10 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD514 800CCD14 1800BFAF */  sw         $ra, 0x18($sp)
/* BD518 800CCD18 78F0020C */  jal        FUN_800bc1e0
/* BD51C 800CCD1C 01000424 */   addiu     $a0, $zero, 1
/* BD520 800CCD20 21180000 */  addu       $v1, $zero, $zero
/* BD524 800CCD24 401F043C */  lui        $a0, 0x1f40
/* BD528 800CCD28 1000A0AF */  sw         $zero, 0x10($sp)
/* BD52C 800CCD2C 1000A28F */  lw         $v0, 0x10($sp)
.L800CCD30:
/* BD530 800CCD30 06008294 */  lhu        $v0, 6($a0)
/* BD534 800CCD34 01006324 */  addiu      $v1, $v1, 1
/* BD538 800CCD38 3C006228 */  slti       $v0, $v1, 0x3c
/* BD53C 800CCD3C FCFF4014 */  bnez       $v0, .L800CCD30
/* BD540 800CCD40 21280000 */   addu      $a1, $zero, $zero
/* BD544 800CCD44 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BD548 800CCD48 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BD54C 800CCD4C 6A1F023C */  lui        $v0, 0x1f6a
/* BD550 800CCD50 02006334 */  ori        $v1, $v1, 2
/* BD554 800CCD54 000043A4 */  sh         $v1, ($v0)
/* BD558 800CCD58 1000A0AF */  sw         $zero, 0x10($sp)
/* BD55C 800CCD5C 1000A28F */  lw         $v0, 0x10($sp)
/* BD560 800CCD60 401F063C */  lui        $a2, 0x1f40
/* BD564 800CCD64 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CCD68:
/* BD568 800CCD68 0600C294 */  lhu        $v0, 6($a2)
/* BD56C 800CCD6C 0100A524 */  addiu      $a1, $a1, 1
/* BD570 800CCD70 3C00A228 */  slti       $v0, $a1, 0x3c
/* BD574 800CCD74 FCFF4014 */  bnez       $v0, .L800CCD68
/* BD578 800CCD78 2080043C */   lui       $a0, %hi(D_801FBD08)
/* BD57C 800CCD7C 21280000 */  addu       $a1, $zero, $zero
/* BD580 800CCD80 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BD584 800CCD84 6A1F023C */  lui        $v0, 0x1f6a
/* BD588 800CCD88 FDFF6330 */  andi       $v1, $v1, 0xfffd
/* BD58C 800CCD8C 000043A4 */  sh         $v1, ($v0)
/* BD590 800CCD90 1000A0AF */  sw         $zero, 0x10($sp)
/* BD594 800CCD94 1000A28F */  lw         $v0, 0x10($sp)
/* BD598 800CCD98 401F063C */  lui        $a2, 0x1f40
/* BD59C 800CCD9C 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CCDA0:
/* BD5A0 800CCDA0 0600C294 */  lhu        $v0, 6($a2)
/* BD5A4 800CCDA4 0100A524 */  addiu      $a1, $a1, 1
/* BD5A8 800CCDA8 3C00A228 */  slti       $v0, $a1, 0x3c
/* BD5AC 800CCDAC FCFF4014 */  bnez       $v0, .L800CCDA0
/* BD5B0 800CCDB0 00000000 */   nop
/* BD5B4 800CCDB4 78F0020C */  jal        FUN_800bc1e0
/* BD5B8 800CCDB8 21200000 */   addu      $a0, $zero, $zero
/* BD5BC 800CCDBC 21180000 */  addu       $v1, $zero, $zero
/* BD5C0 800CCDC0 401F043C */  lui        $a0, 0x1f40
/* BD5C4 800CCDC4 1000A0AF */  sw         $zero, 0x10($sp)
/* BD5C8 800CCDC8 1000A28F */  lw         $v0, 0x10($sp)
.L800CCDCC:
/* BD5CC 800CCDCC 06008294 */  lhu        $v0, 6($a0)
/* BD5D0 800CCDD0 01006324 */  addiu      $v1, $v1, 1
/* BD5D4 800CCDD4 3C006228 */  slti       $v0, $v1, 0x3c
/* BD5D8 800CCDD8 FCFF4014 */  bnez       $v0, .L800CCDCC
/* BD5DC 800CCDDC 00000000 */   nop
/* BD5E0 800CCDE0 1800BF8F */  lw         $ra, 0x18($sp)
/* BD5E4 800CCDE4 00000000 */  nop
/* BD5E8 800CCDE8 0800E003 */  jr         $ra
/* BD5EC 800CCDEC 2000BD27 */   addiu     $sp, $sp, 0x20
