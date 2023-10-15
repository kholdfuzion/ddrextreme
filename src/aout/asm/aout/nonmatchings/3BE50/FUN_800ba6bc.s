.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba6bc
/* AAEBC 800BA6BC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* AAEC0 800BA6C0 1000A427 */  addiu      $a0, $sp, 0x10
/* AAEC4 800BA6C4 3C00BFAF */  sw         $ra, 0x3c($sp)
/* AAEC8 800BA6C8 8CF0020C */  jal        FUN_800bc230
/* AAECC 800BA6CC 3800B0AF */   sw        $s0, 0x38($sp)
/* AAED0 800BA6D0 2400A38F */  lw         $v1, 0x24($sp)
/* AAED4 800BA6D4 00000000 */  nop
/* AAED8 800BA6D8 6C076324 */  addiu      $v1, $v1, 0x76c
/* AAEDC 800BA6DC D0076228 */  slti       $v0, $v1, 0x7d0
/* AAEE0 800BA6E0 12004014 */  bnez       $v0, .L800BA72C
/* AAEE4 800BA6E4 FFFF1024 */   addiu     $s0, $zero, -1
/* AAEE8 800BA6E8 00240300 */  sll        $a0, $v1, 0x10
/* AAEEC 800BA6EC 2000A587 */  lh         $a1, 0x20($sp)
/* AAEF0 800BA6F0 1C00A687 */  lh         $a2, 0x1c($sp)
/* AAEF4 800BA6F4 44B2000C */  jal        FUN_8002c910
/* AAEF8 800BA6F8 03240400 */   sra       $a0, $a0, 0x10
/* AAEFC 800BA6FC 40180200 */  sll        $v1, $v0, 1
/* AAF00 800BA700 21186200 */  addu       $v1, $v1, $v0
/* AAF04 800BA704 00210300 */  sll        $a0, $v1, 4
/* AAF08 800BA708 23208300 */  subu       $a0, $a0, $v1
/* AAF0C 800BA70C 40210400 */  sll        $a0, $a0, 5
/* AAF10 800BA710 1800A58F */  lw         $a1, 0x18($sp)
/* AAF14 800BA714 1400A38F */  lw         $v1, 0x14($sp)
/* AAF18 800BA718 00110500 */  sll        $v0, $a1, 4
/* AAF1C 800BA71C 23104500 */  subu       $v0, $v0, $a1
/* AAF20 800BA720 80100200 */  sll        $v0, $v0, 2
/* AAF24 800BA724 21208200 */  addu       $a0, $a0, $v0
/* AAF28 800BA728 21808300 */  addu       $s0, $a0, $v1
.L800BA72C:
/* AAF2C 800BA72C 21100002 */  addu       $v0, $s0, $zero
/* AAF30 800BA730 3C00BF8F */  lw         $ra, 0x3c($sp)
/* AAF34 800BA734 3800B08F */  lw         $s0, 0x38($sp)
/* AAF38 800BA738 0800E003 */  jr         $ra
/* AAF3C 800BA73C 4000BD27 */   addiu     $sp, $sp, 0x40
