.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9ca0
/* BA4A0 800C9CA0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BA4A4 800C9CA4 2000B4AF */  sw         $s4, 0x20($sp)
/* BA4A8 800C9CA8 4000B48F */  lw         $s4, 0x40($sp)
/* BA4AC 800C9CAC 1800B2AF */  sw         $s2, 0x18($sp)
/* BA4B0 800C9CB0 21908000 */  addu       $s2, $a0, $zero
/* BA4B4 800C9CB4 2400B5AF */  sw         $s5, 0x24($sp)
/* BA4B8 800C9CB8 21A8A000 */  addu       $s5, $a1, $zero
/* BA4BC 800C9CBC 1400B1AF */  sw         $s1, 0x14($sp)
/* BA4C0 800C9CC0 2188C000 */  addu       $s1, $a2, $zero
/* BA4C4 800C9CC4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA4C8 800C9CC8 1000B0AF */  sw         $s0, 0x10($sp)
/* BA4CC 800C9CCC 4400B08F */  lw         $s0, 0x44($sp)
/* BA4D0 800C9CD0 2800BFAF */  sw         $ra, 0x28($sp)
/* BA4D4 800C9CD4 A509030C */  jal        FUN_800c2694
/* BA4D8 800C9CD8 2198E000 */   addu      $s3, $a3, $zero
/* BA4DC 800C9CDC 21204002 */  addu       $a0, $s2, $zero
/* BA4E0 800C9CE0 08000224 */  addiu      $v0, $zero, 8
/* BA4E4 800C9CE4 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA4E8 800C9CE8 75000224 */  addiu      $v0, $zero, 0x75
/* BA4EC 800C9CEC C0891100 */  sll        $s1, $s1, 7
/* BA4F0 800C9CF0 2128A002 */  addu       $a1, $s5, $zero
/* BA4F4 800C9CF4 21300000 */  addu       $a2, $zero, $zero
/* BA4F8 800C9CF8 0C00838C */  lw         $v1, 0xc($a0)
/* BA4FC 800C9CFC 09000724 */  addiu      $a3, $zero, 9
/* BA500 800C9D00 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA504 800C9D04 000062A0 */  sb         $v0, ($v1)
/* BA508 800C9D08 03141000 */  sra        $v0, $s0, 0x10
/* BA50C 800C9D0C 010062A0 */  sb         $v0, 1($v1)
/* BA510 800C9D10 03121000 */  sra        $v0, $s0, 8
/* BA514 800C9D14 020062A0 */  sb         $v0, 2($v1)
/* BA518 800C9D18 03121300 */  sra        $v0, $s3, 8
/* BA51C 800C9D1C 7F004230 */  andi       $v0, $v0, 0x7f
/* BA520 800C9D20 25105100 */  or         $v0, $v0, $s1
/* BA524 800C9D24 040062A0 */  sb         $v0, 4($v1)
/* BA528 800C9D28 03121400 */  sra        $v0, $s4, 8
/* BA52C 800C9D2C 030070A0 */  sb         $s0, 3($v1)
/* BA530 800C9D30 050073A0 */  sb         $s3, 5($v1)
/* BA534 800C9D34 060062A0 */  sb         $v0, 6($v1)
/* BA538 800C9D38 B209030C */  jal        FUN_800c26c8
/* BA53C 800C9D3C 070074A0 */   sb        $s4, 7($v1)
/* BA540 800C9D40 2800BF8F */  lw         $ra, 0x28($sp)
/* BA544 800C9D44 2400B58F */  lw         $s5, 0x24($sp)
/* BA548 800C9D48 2000B48F */  lw         $s4, 0x20($sp)
/* BA54C 800C9D4C 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA550 800C9D50 1800B28F */  lw         $s2, 0x18($sp)
/* BA554 800C9D54 1400B18F */  lw         $s1, 0x14($sp)
/* BA558 800C9D58 1000B08F */  lw         $s0, 0x10($sp)
/* BA55C 800C9D5C 0800E003 */  jr         $ra
/* BA560 800C9D60 3000BD27 */   addiu     $sp, $sp, 0x30
