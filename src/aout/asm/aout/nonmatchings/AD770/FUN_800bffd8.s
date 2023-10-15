.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bffd8
/* B07D8 800BFFD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B07DC 800BFFDC 1400BFAF */  sw         $ra, 0x14($sp)
/* B07E0 800BFFE0 FE02030C */  jal        FUN_800c0bf8
/* B07E4 800BFFE4 1000B0AF */   sw        $s0, 0x10($sp)
/* B07E8 800BFFE8 01004230 */  andi       $v0, $v0, 1
/* B07EC 800BFFEC 05004014 */  bnez       $v0, .L800C0004
/* B07F0 800BFFF0 00000000 */   nop
/* B07F4 800BFFF4 E8FF020C */  jal        FUN_800bffa0
/* B07F8 800BFFF8 00000000 */   nop
/* B07FC 800BFFFC 08000308 */  j          .L800C0020
/* B0800 800C0000 00000000 */   nop
.L800C0004:
/* B0804 800C0004 1D6E000C */  jal        FUN_8001b874
/* B0808 800C0008 00000000 */   nop
/* B080C 800C000C E8FF020C */  jal        FUN_800bffa0
/* B0810 800C0010 00000000 */   nop
/* B0814 800C0014 216E000C */  jal        FUN_8001b884
/* B0818 800C0018 21804000 */   addu      $s0, $v0, $zero
/* B081C 800C001C 21100002 */  addu       $v0, $s0, $zero
.L800C0020:
/* B0820 800C0020 1400BF8F */  lw         $ra, 0x14($sp)
/* B0824 800C0024 1000B08F */  lw         $s0, 0x10($sp)
/* B0828 800C0028 0800E003 */  jr         $ra
/* B082C 800C002C 1800BD27 */   addiu     $sp, $sp, 0x18
