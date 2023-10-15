.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba470
/* AAC70 800BA470 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* AAC74 800BA474 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AAC78 800BA478 21980000 */  addu       $s3, $zero, $zero
/* AAC7C 800BA47C 2800B6AF */  sw         $s6, 0x28($sp)
/* AAC80 800BA480 21B0C000 */  addu       $s6, $a2, $zero
/* AAC84 800BA484 2000B4AF */  sw         $s4, 0x20($sp)
/* AAC88 800BA488 21A0A000 */  addu       $s4, $a1, $zero
/* AAC8C 800BA48C 1000B0AF */  sw         $s0, 0x10($sp)
/* AAC90 800BA490 2180E000 */  addu       $s0, $a3, $zero
/* AAC94 800BA494 3000BFAF */  sw         $ra, 0x30($sp)
/* AAC98 800BA498 2C00B7AF */  sw         $s7, 0x2c($sp)
/* AAC9C 800BA49C 2400B5AF */  sw         $s5, 0x24($sp)
/* AACA0 800BA4A0 1800B2AF */  sw         $s2, 0x18($sp)
/* AACA4 800BA4A4 1400B1AF */  sw         $s1, 0x14($sp)
/* AACA8 800BA4A8 0000C0AE */  sw         $zero, ($s6)
/* AACAC 800BA4AC 6500801A */  blez       $s4, .L800BA644
/* AACB0 800BA4B0 01000224 */   addiu     $v0, $zero, 1
/* AACB4 800BA4B4 1F00822A */  slti       $v0, $s4, 0x1f
/* AACB8 800BA4B8 62004010 */  beqz       $v0, .L800BA644
/* AACBC 800BA4BC 21100000 */   addu      $v0, $zero, $zero
/* AACC0 800BA4C0 3E008014 */  bnez       $a0, .L800BA5BC
/* AACC4 800BA4C4 01001224 */   addiu     $s2, $zero, 1
/* AACC8 800BA4C8 1C000224 */  addiu      $v0, $zero, 0x1c
/* AACCC 800BA4CC 0F008216 */  bne        $s4, $v0, .L800BA50C
/* AACD0 800BA4D0 1D000224 */   addiu     $v0, $zero, 0x1d
/* AACD4 800BA4D4 02001324 */  addiu      $s3, $zero, 2
/* AACD8 800BA4D8 0180043C */  lui        $a0, %hi(D_800174F8)
/* AACDC 800BA4DC 0FA2020C */  jal        FUN_800a883c
/* AACE0 800BA4E0 F8748424 */   addiu     $a0, $a0, %lo(D_800174F8)
/* AACE4 800BA4E4 0180043C */  lui        $a0, %hi(D_80017500)
/* AACE8 800BA4E8 00758424 */  addiu      $a0, $a0, %lo(D_80017500)
/* AACEC 800BA4EC 08004384 */  lh         $v1, 8($v0)
/* AACF0 800BA4F0 1580173C */  lui        $s7, 0x8015
/* AACF4 800BA4F4 0FA2020C */  jal        FUN_800a883c
/* AACF8 800BA4F8 000003AE */   sw        $v1, ($s0)
/* AACFC 800BA4FC 08004384 */  lh         $v1, 8($v0)
/* AAD00 800BA500 1B001524 */  addiu      $s5, $zero, 0x1b
/* AAD04 800BA504 8CE90208 */  j          .L800BA630
/* AAD08 800BA508 040003AE */   sw        $v1, 4($s0)
.L800BA50C:
/* AAD0C 800BA50C 14008216 */  bne        $s4, $v0, .L800BA560
/* AAD10 800BA510 21880000 */   addu      $s1, $zero, $zero
/* AAD14 800BA514 03001324 */  addiu      $s3, $zero, 3
/* AAD18 800BA518 0180043C */  lui        $a0, %hi(D_80017508)
/* AAD1C 800BA51C 0FA2020C */  jal        FUN_800a883c
/* AAD20 800BA520 08758424 */   addiu     $a0, $a0, %lo(D_80017508)
/* AAD24 800BA524 0180043C */  lui        $a0, %hi(D_80017510)
/* AAD28 800BA528 10758424 */  addiu      $a0, $a0, %lo(D_80017510)
/* AAD2C 800BA52C 08004384 */  lh         $v1, 8($v0)
/* AAD30 800BA530 1580173C */  lui        $s7, 0x8015
/* AAD34 800BA534 0FA2020C */  jal        FUN_800a883c
/* AAD38 800BA538 000003AE */   sw        $v1, ($s0)
/* AAD3C 800BA53C 0180043C */  lui        $a0, %hi(D_80017518)
/* AAD40 800BA540 08004384 */  lh         $v1, 8($v0)
/* AAD44 800BA544 18758424 */  addiu      $a0, $a0, %lo(D_80017518)
/* AAD48 800BA548 0FA2020C */  jal        FUN_800a883c
/* AAD4C 800BA54C 040003AE */   sw        $v1, 4($s0)
/* AAD50 800BA550 08004384 */  lh         $v1, 8($v0)
/* AAD54 800BA554 1C001524 */  addiu      $s5, $zero, 0x1c
/* AAD58 800BA558 8CE90208 */  j          .L800BA630
/* AAD5C 800BA55C 080003AE */   sw        $v1, 8($s0)
.L800BA560:
/* AAD60 800BA560 1580173C */  lui        $s7, 0x8015
/* AAD64 800BA564 FFFF9526 */  addiu      $s5, $s4, -1
.L800BA568:
/* AAD68 800BA568 1BA2020C */  jal        FUN_800a886c
/* AAD6C 800BA56C 21202002 */   addu      $a0, $s1, $zero
/* AAD70 800BA570 21184000 */  addu       $v1, $v0, $zero
/* AAD74 800BA574 0B006010 */  beqz       $v1, .L800BA5A4
/* AAD78 800BA578 00000000 */   nop
/* AAD7C 800BA57C 18006294 */  lhu        $v0, 0x18($v1)
/* AAD80 800BA580 00000000 */  nop
/* AAD84 800BA584 07005414 */  bne        $v0, $s4, .L800BA5A4
/* AAD88 800BA588 0300622A */   slti      $v0, $s3, 3
/* AAD8C 800BA58C 05004010 */  beqz       $v0, .L800BA5A4
/* AAD90 800BA590 00000000 */   nop
/* AAD94 800BA594 08006284 */  lh         $v0, 8($v1)
/* AAD98 800BA598 01007326 */  addiu      $s3, $s3, 1
/* AAD9C 800BA59C 000002AE */  sw         $v0, ($s0)
/* AADA0 800BA5A0 04001026 */  addiu      $s0, $s0, 4
.L800BA5A4:
/* AADA4 800BA5A4 01003126 */  addiu      $s1, $s1, 1
/* AADA8 800BA5A8 F900222A */  slti       $v0, $s1, 0xf9
/* AADAC 800BA5AC EEFF4014 */  bnez       $v0, .L800BA568
/* AADB0 800BA5B0 01000224 */   addiu     $v0, $zero, 1
/* AADB4 800BA5B4 8EE90208 */  j          .L800BA638
/* AADB8 800BA5B8 0000D3AE */   sw        $s3, ($s6)
.L800BA5BC:
/* AADBC 800BA5BC 06009210 */  beq        $a0, $s2, .L800BA5D8
/* AADC0 800BA5C0 01000324 */   addiu     $v1, $zero, 1
/* AADC4 800BA5C4 02000224 */  addiu      $v0, $zero, 2
/* AADC8 800BA5C8 06008214 */  bne        $a0, $v0, .L800BA5E4
/* AADCC 800BA5CC 21886000 */   addu      $s1, $v1, $zero
/* AADD0 800BA5D0 79E90208 */  j          .L800BA5E4
/* AADD4 800BA5D4 20001224 */   addiu     $s2, $zero, 0x20
.L800BA5D8:
/* AADD8 800BA5D8 20000324 */  addiu      $v1, $zero, 0x20
/* AADDC 800BA5DC 40001224 */  addiu      $s2, $zero, 0x40
/* AADE0 800BA5E0 21886000 */  addu       $s1, $v1, $zero
.L800BA5E4:
/* AADE4 800BA5E4 1580173C */  lui        $s7, 0x8015
/* AADE8 800BA5E8 2A103202 */  slt        $v0, $s1, $s2
/* AADEC 800BA5EC 10004010 */  beqz       $v0, .L800BA630
/* AADF0 800BA5F0 FFFF9526 */   addiu     $s5, $s4, -1
/* AADF4 800BA5F4 80101300 */  sll        $v0, $s3, 2
/* AADF8 800BA5F8 21805000 */  addu       $s0, $v0, $s0
.L800BA5FC:
/* AADFC 800BA5FC 0D8B020C */  jal        FUN_800a2c34
/* AAE00 800BA600 21202002 */   addu      $a0, $s1, $zero
/* AAE04 800BA604 06005414 */  bne        $v0, $s4, .L800BA620
/* AAE08 800BA608 0300622A */   slti      $v0, $s3, 3
/* AAE0C 800BA60C 04004010 */  beqz       $v0, .L800BA620
/* AAE10 800BA610 00000000 */   nop
/* AAE14 800BA614 000011AE */  sw         $s1, ($s0)
/* AAE18 800BA618 04001026 */  addiu      $s0, $s0, 4
/* AAE1C 800BA61C 01007326 */  addiu      $s3, $s3, 1
.L800BA620:
/* AAE20 800BA620 01003126 */  addiu      $s1, $s1, 1
/* AAE24 800BA624 2A103202 */  slt        $v0, $s1, $s2
/* AAE28 800BA628 F4FF4014 */  bnez       $v0, .L800BA5FC
/* AAE2C 800BA62C 00000000 */   nop
.L800BA630:
/* AAE30 800BA630 01000224 */  addiu      $v0, $zero, 1
/* AAE34 800BA634 0000D3AE */  sw         $s3, ($s6)
.L800BA638:
/* AAE38 800BA638 9CBAE38E */  lw         $v1, -0x4564($s7)
/* AAE3C 800BA63C 0410A202 */  sllv       $v0, $v0, $s5
/* AAE40 800BA640 24104300 */  and        $v0, $v0, $v1
.L800BA644:
/* AAE44 800BA644 3000BF8F */  lw         $ra, 0x30($sp)
/* AAE48 800BA648 2C00B78F */  lw         $s7, 0x2c($sp)
/* AAE4C 800BA64C 2800B68F */  lw         $s6, 0x28($sp)
/* AAE50 800BA650 2400B58F */  lw         $s5, 0x24($sp)
/* AAE54 800BA654 2000B48F */  lw         $s4, 0x20($sp)
/* AAE58 800BA658 1C00B38F */  lw         $s3, 0x1c($sp)
/* AAE5C 800BA65C 1800B28F */  lw         $s2, 0x18($sp)
/* AAE60 800BA660 1400B18F */  lw         $s1, 0x14($sp)
/* AAE64 800BA664 1000B08F */  lw         $s0, 0x10($sp)
/* AAE68 800BA668 0800E003 */  jr         $ra
/* AAE6C 800BA66C 3800BD27 */   addiu     $sp, $sp, 0x38
