.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9d64
/* BA564 800C9D64 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BA568 800C9D68 2000B4AF */  sw         $s4, 0x20($sp)
/* BA56C 800C9D6C 4000B48F */  lw         $s4, 0x40($sp)
/* BA570 800C9D70 1800B2AF */  sw         $s2, 0x18($sp)
/* BA574 800C9D74 21908000 */  addu       $s2, $a0, $zero
/* BA578 800C9D78 2400B5AF */  sw         $s5, 0x24($sp)
/* BA57C 800C9D7C 21A8A000 */  addu       $s5, $a1, $zero
/* BA580 800C9D80 1000B0AF */  sw         $s0, 0x10($sp)
/* BA584 800C9D84 2180C000 */  addu       $s0, $a2, $zero
/* BA588 800C9D88 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA58C 800C9D8C 1400B1AF */  sw         $s1, 0x14($sp)
/* BA590 800C9D90 4400B18F */  lw         $s1, 0x44($sp)
/* BA594 800C9D94 2800BFAF */  sw         $ra, 0x28($sp)
/* BA598 800C9D98 A509030C */  jal        FUN_800c2694
/* BA59C 800C9D9C 2198E000 */   addu      $s3, $a3, $zero
/* BA5A0 800C9DA0 21204002 */  addu       $a0, $s2, $zero
/* BA5A4 800C9DA4 08000224 */  addiu      $v0, $zero, 8
/* BA5A8 800C9DA8 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA5AC 800C9DAC 74000224 */  addiu      $v0, $zero, 0x74
/* BA5B0 800C9DB0 C0811000 */  sll        $s0, $s0, 7
/* BA5B4 800C9DB4 2128A002 */  addu       $a1, $s5, $zero
/* BA5B8 800C9DB8 21300000 */  addu       $a2, $zero, $zero
/* BA5BC 800C9DBC 0C00838C */  lw         $v1, 0xc($a0)
/* BA5C0 800C9DC0 09000724 */  addiu      $a3, $zero, 9
/* BA5C4 800C9DC4 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BA5C8 800C9DC8 000062A0 */  sb         $v0, ($v1)
/* BA5CC 800C9DCC 03121300 */  sra        $v0, $s3, 8
/* BA5D0 800C9DD0 7F004230 */  andi       $v0, $v0, 0x7f
/* BA5D4 800C9DD4 25105000 */  or         $v0, $v0, $s0
/* BA5D8 800C9DD8 010062A0 */  sb         $v0, 1($v1)
/* BA5DC 800C9DDC 03141100 */  sra        $v0, $s1, 0x10
/* BA5E0 800C9DE0 030062A0 */  sb         $v0, 3($v1)
/* BA5E4 800C9DE4 03121100 */  sra        $v0, $s1, 8
/* BA5E8 800C9DE8 040062A0 */  sb         $v0, 4($v1)
/* BA5EC 800C9DEC 03121400 */  sra        $v0, $s4, 8
/* BA5F0 800C9DF0 020073A0 */  sb         $s3, 2($v1)
/* BA5F4 800C9DF4 050071A0 */  sb         $s1, 5($v1)
/* BA5F8 800C9DF8 060062A0 */  sb         $v0, 6($v1)
/* BA5FC 800C9DFC B209030C */  jal        FUN_800c26c8
/* BA600 800C9E00 070074A0 */   sb        $s4, 7($v1)
/* BA604 800C9E04 2800BF8F */  lw         $ra, 0x28($sp)
/* BA608 800C9E08 2400B58F */  lw         $s5, 0x24($sp)
/* BA60C 800C9E0C 2000B48F */  lw         $s4, 0x20($sp)
/* BA610 800C9E10 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA614 800C9E14 1800B28F */  lw         $s2, 0x18($sp)
/* BA618 800C9E18 1400B18F */  lw         $s1, 0x14($sp)
/* BA61C 800C9E1C 1000B08F */  lw         $s0, 0x10($sp)
/* BA620 800C9E20 0800E003 */  jr         $ra
/* BA624 800C9E24 3000BD27 */   addiu     $sp, $sp, 0x30
