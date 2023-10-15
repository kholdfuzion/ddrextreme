.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb790
/* BBF90 800CB790 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BBF94 800CB794 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BBF98 800CB798 21988000 */  addu       $s3, $a0, $zero
/* BBF9C 800CB79C 1400B1AF */  sw         $s1, 0x14($sp)
/* BBFA0 800CB7A0 21880000 */  addu       $s1, $zero, $zero
/* BBFA4 800CB7A4 01000424 */  addiu      $a0, $zero, 1
/* BBFA8 800CB7A8 2000BFAF */  sw         $ra, 0x20($sp)
/* BBFAC 800CB7AC 1800B2AF */  sw         $s2, 0x18($sp)
/* BBFB0 800CB7B0 CD6B000C */  jal        VSync
/* BBFB4 800CB7B4 1000B0AF */   sw        $s0, 0x10($sp)
/* BBFB8 800CB7B8 21904000 */  addu       $s2, $v0, $zero
.L800CB7BC:
/* BBFBC 800CB7BC CD6B000C */  jal        VSync
/* BBFC0 800CB7C0 01000424 */   addiu     $a0, $zero, 1
/* BBFC4 800CB7C4 DE2A030C */  jal        FUN_800cab78
/* BBFC8 800CB7C8 21804000 */   addu      $s0, $v0, $zero
/* BBFCC 800CB7CC 442B030C */  jal        FUN_800cad10
/* BBFD0 800CB7D0 FF006432 */   andi      $a0, $s3, 0xff
/* BBFD4 800CB7D4 0C004010 */  beqz       $v0, .L800CB808
/* BBFD8 800CB7D8 23101202 */   subu      $v0, $s0, $s2
/* BBFDC 800CB7DC FFFF4230 */  andi       $v0, $v0, 0xffff
/* BBFE0 800CB7E0 A500422C */  sltiu      $v0, $v0, 0xa5
/* BBFE4 800CB7E4 03004014 */  bnez       $v0, .L800CB7F4
/* BBFE8 800CB7E8 21100000 */   addu      $v0, $zero, $zero
/* BBFEC 800CB7EC 022E0308 */  j          .L800CB808
/* BBFF0 800CB7F0 FFFF1124 */   addiu     $s1, $zero, -1
.L800CB7F4:
/* BBFF4 800CB7F4 FFFF4224 */  addiu      $v0, $v0, -1
.L800CB7F8:
/* BBFF8 800CB7F8 FFFF4104 */  bgez       $v0, .L800CB7F8
/* BBFFC 800CB7FC FFFF4224 */   addiu     $v0, $v0, -1
/* BC000 800CB800 EF2D0308 */  j          .L800CB7BC
/* BC004 800CB804 00000000 */   nop
.L800CB808:
/* BC008 800CB808 21102002 */  addu       $v0, $s1, $zero
/* BC00C 800CB80C 2000BF8F */  lw         $ra, 0x20($sp)
/* BC010 800CB810 1C00B38F */  lw         $s3, 0x1c($sp)
/* BC014 800CB814 1800B28F */  lw         $s2, 0x18($sp)
/* BC018 800CB818 1400B18F */  lw         $s1, 0x14($sp)
/* BC01C 800CB81C 1000B08F */  lw         $s0, 0x10($sp)
/* BC020 800CB820 0800E003 */  jr         $ra
/* BC024 800CB824 2800BD27 */   addiu     $sp, $sp, 0x28
