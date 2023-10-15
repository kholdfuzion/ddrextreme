.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2bb0
/* B33B0 800C2BB0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B33B4 800C2BB4 1000B0AF */  sw         $s0, 0x10($sp)
/* B33B8 800C2BB8 21808000 */  addu       $s0, $a0, $zero
/* B33BC 800C2BBC 3E29043C */  lui        $a0, 0x293e
/* B33C0 800C2BC0 41598434 */  ori        $a0, $a0, 0x5941
/* B33C4 800C2BC4 40101000 */  sll        $v0, $s0, 1
/* B33C8 800C2BC8 21105000 */  addu       $v0, $v0, $s0
/* B33CC 800C2BCC 80190200 */  sll        $v1, $v0, 6
/* B33D0 800C2BD0 21104300 */  addu       $v0, $v0, $v1
/* B33D4 800C2BD4 80100200 */  sll        $v0, $v0, 2
/* B33D8 800C2BD8 21105000 */  addu       $v0, $v0, $s0
/* B33DC 800C2BDC 80100200 */  sll        $v0, $v0, 2
/* B33E0 800C2BE0 21105000 */  addu       $v0, $v0, $s0
/* B33E4 800C2BE4 40110200 */  sll        $v0, $v0, 5
/* B33E8 800C2BE8 18004400 */  mult       $v0, $a0
/* B33EC 800C2BEC 01000424 */  addiu      $a0, $zero, 1
/* B33F0 800C2BF0 C3170200 */  sra        $v0, $v0, 0x1f
/* B33F4 800C2BF4 2000BFAF */  sw         $ra, 0x20($sp)
/* B33F8 800C2BF8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B33FC 800C2BFC 1800B2AF */  sw         $s2, 0x18($sp)
/* B3400 800C2C00 1400B1AF */  sw         $s1, 0x14($sp)
/* B3404 800C2C04 10280000 */  mfhi       $a1
/* B3408 800C2C08 831A0500 */  sra        $v1, $a1, 0xa
/* B340C 800C2C0C CD6B000C */  jal        VSync
/* B3410 800C2C10 23806200 */   subu      $s0, $v1, $v0
/* B3414 800C2C14 21884000 */  addu       $s1, $v0, $zero
/* B3418 800C2C18 21984000 */  addu       $s3, $v0, $zero
/* B341C 800C2C1C FFFF1232 */  andi       $s2, $s0, 0xffff
.L800C2C20:
/* B3420 800C2C20 CD6B000C */  jal        VSync
/* B3424 800C2C24 01000424 */   addiu     $a0, $zero, 1
/* B3428 800C2C28 21804000 */  addu       $s0, $v0, $zero
/* B342C 800C2C2C 23101302 */  subu       $v0, $s0, $s3
/* B3430 800C2C30 FFFF4230 */  andi       $v0, $v0, 0xffff
/* B3434 800C2C34 2B105200 */  sltu       $v0, $v0, $s2
/* B3438 800C2C38 09004010 */  beqz       $v0, .L800C2C60
/* B343C 800C2C3C 23101102 */   subu      $v0, $s0, $s1
/* B3440 800C2C40 FFFF4230 */  andi       $v0, $v0, 0xffff
/* B3444 800C2C44 0601422C */  sltiu      $v0, $v0, 0x106
/* B3448 800C2C48 F5FF4014 */  bnez       $v0, .L800C2C20
/* B344C 800C2C4C 00000000 */   nop
/* B3450 800C2C50 23F0020C */  jal        FUN_800bc08c
/* B3454 800C2C54 21880002 */   addu      $s1, $s0, $zero
/* B3458 800C2C58 080B0308 */  j          .L800C2C20
/* B345C 800C2C5C 00000000 */   nop
.L800C2C60:
/* B3460 800C2C60 2000BF8F */  lw         $ra, 0x20($sp)
/* B3464 800C2C64 1C00B38F */  lw         $s3, 0x1c($sp)
/* B3468 800C2C68 1800B28F */  lw         $s2, 0x18($sp)
/* B346C 800C2C6C 1400B18F */  lw         $s1, 0x14($sp)
/* B3470 800C2C70 1000B08F */  lw         $s0, 0x10($sp)
/* B3474 800C2C74 0800E003 */  jr         $ra
/* B3478 800C2C78 2800BD27 */   addiu     $sp, $sp, 0x28
