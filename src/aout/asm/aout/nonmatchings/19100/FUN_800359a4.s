.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800359a4
/* 261A4 800359A4 21388000 */  addu       $a3, $a0, $zero
/* 261A8 800359A8 0300E230 */  andi       $v0, $a3, 3
/* 261AC 800359AC 12004014 */  bnez       $v0, .L800359F8
/* 261B0 800359B0 0300A230 */   andi      $v0, $a1, 3
/* 261B4 800359B4 10004014 */  bnez       $v0, .L800359F8
/* 261B8 800359B8 0300C230 */   andi      $v0, $a2, 3
/* 261BC 800359BC 0E004014 */  bnez       $v0, .L800359F8
/* 261C0 800359C0 83100600 */   sra       $v0, $a2, 2
/* 261C4 800359C4 FFFF4624 */  addiu      $a2, $v0, -1
/* 261C8 800359C8 0900C004 */  bltz       $a2, .L800359F0
/* 261CC 800359CC 80100600 */   sll       $v0, $a2, 2
/* 261D0 800359D0 21204700 */  addu       $a0, $v0, $a3
/* 261D4 800359D4 21184500 */  addu       $v1, $v0, $a1
.L800359D8:
/* 261D8 800359D8 0000628C */  lw         $v0, ($v1)
/* 261DC 800359DC FCFF6324 */  addiu      $v1, $v1, -4
/* 261E0 800359E0 FFFFC624 */  addiu      $a2, $a2, -1
/* 261E4 800359E4 000082AC */  sw         $v0, ($a0)
/* 261E8 800359E8 FBFFC104 */  bgez       $a2, .L800359D8
/* 261EC 800359EC FCFF8424 */   addiu     $a0, $a0, -4
.L800359F0:
/* 261F0 800359F0 0800E003 */  jr         $ra
/* 261F4 800359F4 00000000 */   nop
.L800359F8:
/* 261F8 800359F8 FFFFC624 */  addiu      $a2, $a2, -1
/* 261FC 800359FC 0700C004 */  bltz       $a2, .L80035A1C
/* 26200 80035A00 00000000 */   nop
.L80035A04:
/* 26204 80035A04 2110E600 */  addu       $v0, $a3, $a2
/* 26208 80035A08 2118A600 */  addu       $v1, $a1, $a2
/* 2620C 80035A0C 00006490 */  lbu        $a0, ($v1)
/* 26210 80035A10 FFFFC624 */  addiu      $a2, $a2, -1
/* 26214 80035A14 FBFFC104 */  bgez       $a2, .L80035A04
/* 26218 80035A18 000044A0 */   sb        $a0, ($v0)
.L80035A1C:
/* 2621C 80035A1C 0800E003 */  jr         $ra
/* 26220 80035A20 00000000 */   nop
