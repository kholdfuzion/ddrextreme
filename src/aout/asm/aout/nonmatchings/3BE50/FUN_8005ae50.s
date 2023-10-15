.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005ae50
/* 4B650 8005AE50 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4B654 8005AE54 1400B1AF */  sw         $s1, 0x14($sp)
/* 4B658 8005AE58 21888000 */  addu       $s1, $a0, $zero
/* 4B65C 8005AE5C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B660 8005AE60 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B664 8005AE64 80101100 */  sll        $v0, $s1, 2
/* 4B668 8005AE68 21105100 */  addu       $v0, $v0, $s1
/* 4B66C 8005AE6C C0100200 */  sll        $v0, $v0, 3
/* 4B670 8005AE70 21105100 */  addu       $v0, $v0, $s1
/* 4B674 8005AE74 C0100200 */  sll        $v0, $v0, 3
/* 4B678 8005AE78 23105100 */  subu       $v0, $v0, $s1
/* 4B67C 8005AE7C 80100200 */  sll        $v0, $v0, 2
/* 4B680 8005AE80 21105100 */  addu       $v0, $v0, $s1
/* 4B684 8005AE84 C0100200 */  sll        $v0, $v0, 3
/* 4B688 8005AE88 1800BFAF */  sw         $ra, 0x18($sp)
/* 4B68C 8005AE8C 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B690 8005AE90 40200300 */  sll        $a0, $v1, 1
/* 4B694 8005AE94 21208300 */  addu       $a0, $a0, $v1
/* 4B698 8005AE98 C0200400 */  sll        $a0, $a0, 3
/* 4B69C 8005AE9C 23208300 */  subu       $a0, $a0, $v1
/* 4B6A0 8005AEA0 C0210400 */  sll        $a0, $a0, 7
/* 4B6A4 8005AEA4 21208300 */  addu       $a0, $a0, $v1
/* 4B6A8 8005AEA8 80200400 */  sll        $a0, $a0, 2
/* 4B6AC 8005AEAC 21208300 */  addu       $a0, $a0, $v1
/* 4B6B0 8005AEB0 C0200400 */  sll        $a0, $a0, 3
/* 4B6B4 8005AEB4 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B6B8 8005AEB8 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B6BC 8005AEBC 21104300 */  addu       $v0, $v0, $v1
/* 4B6C0 8005AEC0 21208200 */  addu       $a0, $a0, $v0
/* 4B6C4 8005AEC4 A7288280 */  lb         $v0, 0x28a7($a0)
/* 4B6C8 8005AEC8 A7288390 */  lbu        $v1, 0x28a7($a0)
/* 4B6CC 8005AECC 18004510 */  beq        $v0, $a1, .L8005AF30
/* 4B6D0 8005AED0 00000000 */   nop
/* 4B6D4 8005AED4 0600A104 */  bgez       $a1, .L8005AEF0
/* 4B6D8 8005AED8 21800000 */   addu      $s0, $zero, $zero
/* 4B6DC 8005AEDC 10004004 */  bltz       $v0, .L8005AF20
/* 4B6E0 8005AEE0 27100300 */   nor       $v0, $zero, $v1
/* 4B6E4 8005AEE4 A72882A0 */  sb         $v0, 0x28a7($a0)
/* 4B6E8 8005AEE8 C86B0108 */  j          .L8005AF20
/* 4B6EC 8005AEEC 01001024 */   addiu     $s0, $zero, 1
.L8005AEF0:
/* 4B6F0 8005AEF0 02004104 */  bgez       $v0, .L8005AEFC
/* 4B6F4 8005AEF4 00000000 */   nop
/* 4B6F8 8005AEF8 01001024 */  addiu      $s0, $zero, 1
.L8005AEFC:
/* 4B6FC 8005AEFC 27100200 */  nor        $v0, $zero, $v0
/* 4B700 8005AF00 06004510 */  beq        $v0, $a1, .L8005AF1C
/* 4B704 8005AF04 00000000 */   nop
/* 4B708 8005AF08 A72885A0 */  sb         $a1, 0x28a7($a0)
/* 4B70C 8005AF0C D361010C */  jal        FUN_8005874c
/* 4B710 8005AF10 21202002 */   addu      $a0, $s1, $zero
/* 4B714 8005AF14 C86B0108 */  j          .L8005AF20
/* 4B718 8005AF18 00000000 */   nop
.L8005AF1C:
/* 4B71C 8005AF1C A72885A0 */  sb         $a1, 0x28a7($a0)
.L8005AF20:
/* 4B720 8005AF20 03000012 */  beqz       $s0, .L8005AF30
/* 4B724 8005AF24 00000000 */   nop
/* 4B728 8005AF28 A461010C */  jal        FUN_80058690
/* 4B72C 8005AF2C 21202002 */   addu      $a0, $s1, $zero
.L8005AF30:
/* 4B730 8005AF30 1800BF8F */  lw         $ra, 0x18($sp)
/* 4B734 8005AF34 1400B18F */  lw         $s1, 0x14($sp)
/* 4B738 8005AF38 1000B08F */  lw         $s0, 0x10($sp)
/* 4B73C 8005AF3C 0800E003 */  jr         $ra
/* 4B740 8005AF40 2000BD27 */   addiu     $sp, $sp, 0x20
