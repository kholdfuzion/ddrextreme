.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd690
/* BDE90 800CD690 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BDE94 800CD694 2080023C */  lui        $v0, %hi(D_801FBCB0)
/* BDE98 800CD698 B0BC448C */  lw         $a0, %lo(D_801FBCB0)($v0)
/* BDE9C 800CD69C 21180000 */  addu       $v1, $zero, $zero
/* BDEA0 800CD6A0 1800B0AF */  sw         $s0, 0x18($sp)
/* BDEA4 800CD6A4 B0BC5024 */  addiu      $s0, $v0, -0x4350
/* BDEA8 800CD6A8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BDEAC 800CD6AC 1E008010 */  beqz       $a0, .L800CD728
/* BDEB0 800CD6B0 FEFF0224 */   addiu     $v0, $zero, -2
/* BDEB4 800CD6B4 01000224 */  addiu      $v0, $zero, 1
/* BDEB8 800CD6B8 1B008214 */  bne        $a0, $v0, .L800CD728
/* BDEBC 800CD6BC 21106000 */   addu      $v0, $v1, $zero
.L800CD6C0:
/* BDEC0 800CD6C0 CD6B000C */  jal        VSync
/* BDEC4 800CD6C4 FFFF0424 */   addiu     $a0, $zero, -1
/* BDEC8 800CD6C8 0400038E */  lw         $v1, 4($s0)
/* BDECC 800CD6CC 00000000 */  nop
/* BDED0 800CD6D0 23104300 */  subu       $v0, $v0, $v1
/* BDED4 800CD6D4 3C004228 */  slti       $v0, $v0, 0x3c
/* BDED8 800CD6D8 05004010 */  beqz       $v0, .L800CD6F0
/* BDEDC 800CD6DC 02000224 */   addiu     $v0, $zero, 2
/* BDEE0 800CD6E0 4A70000C */  jal        FUN_8001c128
/* BDEE4 800CD6E4 00000000 */   nop
/* BDEE8 800CD6E8 B0350308 */  j          .L800CD6C0
/* BDEEC 800CD6EC 00000000 */   nop
.L800CD6F0:
/* BDEF0 800CD6F0 000002AE */  sw         $v0, ($s0)
/* BDEF4 800CD6F4 21800000 */  addu       $s0, $zero, $zero
/* BDEF8 800CD6F8 1000A427 */  addiu      $a0, $sp, 0x10
.L800CD6FC:
/* BDEFC 800CD6FC 21280000 */  addu       $a1, $zero, $zero
/* BDF00 800CD700 21308000 */  addu       $a2, $a0, $zero
/* BDF04 800CD704 0031030C */  jal        FUN_800cc400
/* BDF08 800CD708 08000724 */   addiu     $a3, $zero, 8
/* BDF0C 800CD70C 21184000 */  addu       $v1, $v0, $zero
/* BDF10 800CD710 04006010 */  beqz       $v1, .L800CD724
/* BDF14 800CD714 01001026 */   addiu     $s0, $s0, 1
/* BDF18 800CD718 0300022A */  slti       $v0, $s0, 3
/* BDF1C 800CD71C F7FF4014 */  bnez       $v0, .L800CD6FC
/* BDF20 800CD720 1000A427 */   addiu     $a0, $sp, 0x10
.L800CD724:
/* BDF24 800CD724 21106000 */  addu       $v0, $v1, $zero
.L800CD728:
/* BDF28 800CD728 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BDF2C 800CD72C 1800B08F */  lw         $s0, 0x18($sp)
/* BDF30 800CD730 0800E003 */  jr         $ra
/* BDF34 800CD734 2000BD27 */   addiu     $sp, $sp, 0x20
