.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800beb08
/* AF308 800BEB08 0F80023C */  lui        $v0, %hi(D_800EE1C4)
/* AF30C 800BEB0C 0F80033C */  lui        $v1, %hi(D_800EE1FC)
/* AF310 800BEB10 FCE1638C */  lw         $v1, %lo(D_800EE1FC)($v1)
/* AF314 800BEB14 00000000 */  nop
/* AF318 800BEB18 08006014 */  bnez       $v1, .L800BEB3C
/* AF31C 800BEB1C C4E14524 */   addiu     $a1, $v0, %lo(D_800EE1C4)
/* AF320 800BEB20 0800E003 */  jr         $ra
/* AF324 800BEB24 FFFF0224 */   addiu     $v0, $zero, -1
.L800BEB28:
/* AF328 800BEB28 0800E003 */  jr         $ra
/* AF32C 800BEB2C 01000224 */   addiu     $v0, $zero, 1
.L800BEB30:
/* AF330 800BEB30 FDFFA410 */  beq        $a1, $a0, .L800BEB28
/* AF334 800BEB34 00000000 */   nop
/* AF338 800BEB38 0C00A58C */  lw         $a1, 0xc($a1)
.L800BEB3C:
/* AF33C 800BEB3C 00000000 */  nop
/* AF340 800BEB40 0C00A28C */  lw         $v0, 0xc($a1)
/* AF344 800BEB44 00000000 */  nop
/* AF348 800BEB48 F9FF4014 */  bnez       $v0, .L800BEB30
/* AF34C 800BEB4C 00000000 */   nop
/* AF350 800BEB50 0C00A4AC */  sw         $a0, 0xc($a1)
/* AF354 800BEB54 0000828C */  lw         $v0, ($a0)
/* AF358 800BEB58 00000000 */  nop
/* AF35C 800BEB5C 04004014 */  bnez       $v0, .L800BEB70
/* AF360 800BEB60 0C0080AC */   sw        $zero, 0xc($a0)
/* AF364 800BEB64 0F80023C */  lui        $v0, %hi(D_800EE1C0)
/* AF368 800BEB68 C0E14224 */  addiu      $v0, $v0, %lo(D_800EE1C0)
/* AF36C 800BEB6C 000082AC */  sw         $v0, ($a0)
.L800BEB70:
/* AF370 800BEB70 0400828C */  lw         $v0, 4($a0)
/* AF374 800BEB74 00000000 */  nop
/* AF378 800BEB78 03004014 */  bnez       $v0, .L800BEB88
/* AF37C 800BEB7C 0F80023C */   lui       $v0, %hi(D_800EE1C0)
/* AF380 800BEB80 C0E14224 */  addiu      $v0, $v0, %lo(D_800EE1C0)
/* AF384 800BEB84 040082AC */  sw         $v0, 4($a0)
.L800BEB88:
/* AF388 800BEB88 0800E003 */  jr         $ra
/* AF38C 800BEB8C 21100000 */   addu      $v0, $zero, $zero
