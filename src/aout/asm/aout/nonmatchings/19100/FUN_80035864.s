.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80035864
/* 26064 80035864 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 26068 80035868 2000B4AF */  sw         $s4, 0x20($sp)
/* 2606C 8003586C 21A08000 */  addu       $s4, $a0, $zero
/* 26070 80035870 1000B0AF */  sw         $s0, 0x10($sp)
/* 26074 80035874 2180A000 */  addu       $s0, $a1, $zero
/* 26078 80035878 1E80023C */  lui        $v0, %hi(D_801E179A)
/* 2607C 8003587C 1800B2AF */  sw         $s2, 0x18($sp)
/* 26080 80035880 9A175294 */  lhu        $s2, %lo(D_801E179A)($v0)
/* 26084 80035884 82261000 */  srl        $a0, $s0, 0x1a
/* 26088 80035888 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 2608C 8003588C 2198C000 */  addu       $s3, $a2, $zero
/* 26090 80035890 2400BFAF */  sw         $ra, 0x24($sp)
/* 26094 80035894 1400B1AF */  sw         $s1, 0x14($sp)
/* 26098 80035898 02891200 */  srl        $s1, $s2, 4
/* 2609C 8003589C 03003132 */  andi       $s1, $s1, 3
/* 260A0 800358A0 57F0020C */  jal        FUN_800bc15c
/* 260A4 800358A4 0F005232 */   andi      $s2, $s2, 0xf
/* 260A8 800358A8 82251000 */  srl        $a0, $s0, 0x16
/* 260AC 800358AC 34F0020C */  jal        FUN_800bc0d0
/* 260B0 800358B0 0F008430 */   andi      $a0, $a0, 0xf
/* 260B4 800358B4 3F00023C */  lui        $v0, 0x3f
/* 260B8 800358B8 FFFF4234 */  ori        $v0, $v0, 0xffff
/* 260BC 800358BC 21208002 */  addu       $a0, $s4, $zero
/* 260C0 800358C0 24800202 */  and        $s0, $s0, $v0
/* 260C4 800358C4 001F053C */  lui        $a1, 0x1f00
/* 260C8 800358C8 25280502 */  or         $a1, $s0, $a1
/* 260CC 800358CC 69D6000C */  jal        FUN_800359a4
/* 260D0 800358D0 21306002 */   addu      $a2, $s3, $zero
/* 260D4 800358D4 57F0020C */  jal        FUN_800bc15c
/* 260D8 800358D8 21202002 */   addu      $a0, $s1, $zero
/* 260DC 800358DC 34F0020C */  jal        FUN_800bc0d0
/* 260E0 800358E0 21204002 */   addu      $a0, $s2, $zero
/* 260E4 800358E4 2400BF8F */  lw         $ra, 0x24($sp)
/* 260E8 800358E8 2000B48F */  lw         $s4, 0x20($sp)
/* 260EC 800358EC 1C00B38F */  lw         $s3, 0x1c($sp)
/* 260F0 800358F0 1800B28F */  lw         $s2, 0x18($sp)
/* 260F4 800358F4 1400B18F */  lw         $s1, 0x14($sp)
/* 260F8 800358F8 1000B08F */  lw         $s0, 0x10($sp)
/* 260FC 800358FC 0800E003 */  jr         $ra
/* 26100 80035900 2800BD27 */   addiu     $sp, $sp, 0x28
