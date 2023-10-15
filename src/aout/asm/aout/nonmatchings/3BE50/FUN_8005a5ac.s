.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005a5ac
/* 4ADAC 8005A5AC 2150A000 */  addu       $t2, $a1, $zero
/* 4ADB0 8005A5B0 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4ADB4 8005A5B4 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4ADB8 8005A5B8 80100400 */  sll        $v0, $a0, 2
/* 4ADBC 8005A5BC 21104400 */  addu       $v0, $v0, $a0
/* 4ADC0 8005A5C0 C0100200 */  sll        $v0, $v0, 3
/* 4ADC4 8005A5C4 21104400 */  addu       $v0, $v0, $a0
/* 4ADC8 8005A5C8 C0100200 */  sll        $v0, $v0, 3
/* 4ADCC 8005A5CC 23104400 */  subu       $v0, $v0, $a0
/* 4ADD0 8005A5D0 80100200 */  sll        $v0, $v0, 2
/* 4ADD4 8005A5D4 21104400 */  addu       $v0, $v0, $a0
/* 4ADD8 8005A5D8 C0100200 */  sll        $v0, $v0, 3
/* 4ADDC 8005A5DC FFFFC624 */  addiu      $a2, $a2, -1
/* 4ADE0 8005A5E0 00FFEB30 */  andi       $t3, $a3, 0xff00
/* 4ADE4 8005A5E4 FF00E730 */  andi       $a3, $a3, 0xff
/* 4ADE8 8005A5E8 1800A98F */  lw         $t1, 0x18($sp)
/* 4ADEC 8005A5EC 1C00AE8F */  lw         $t6, 0x1c($sp)
/* 4ADF0 8005A5F0 40280300 */  sll        $a1, $v1, 1
/* 4ADF4 8005A5F4 2128A300 */  addu       $a1, $a1, $v1
/* 4ADF8 8005A5F8 C0280500 */  sll        $a1, $a1, 3
/* 4ADFC 8005A5FC 2328A300 */  subu       $a1, $a1, $v1
/* 4AE00 8005A600 C0290500 */  sll        $a1, $a1, 7
/* 4AE04 8005A604 2128A300 */  addu       $a1, $a1, $v1
/* 4AE08 8005A608 80280500 */  sll        $a1, $a1, 2
/* 4AE0C 8005A60C 2128A300 */  addu       $a1, $a1, $v1
/* 4AE10 8005A610 C0280500 */  sll        $a1, $a1, 3
/* 4AE14 8005A614 1780033C */  lui        $v1, %hi(D_80172958)
/* 4AE18 8005A618 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4AE1C 8005A61C 21104300 */  addu       $v0, $v0, $v1
/* 4AE20 8005A620 2128A200 */  addu       $a1, $a1, $v0
/* 4AE24 8005A624 A000A824 */  addiu      $t0, $a1, 0xa0
/* 4AE28 8005A628 02000224 */  addiu      $v0, $zero, 2
/* 4AE2C 8005A62C 23104900 */  subu       $v0, $v0, $t1
/* 4AE30 8005A630 07104600 */  srav       $v0, $a2, $v0
/* 4AE34 8005A634 C0FF4F30 */  andi       $t7, $v0, 0xffc0
/* 4AE38 8005A638 FF000224 */  addiu      $v0, $zero, 0xff
/* 4AE3C 8005A63C 07102201 */  srav       $v0, $v0, $t1
/* 4AE40 8005A640 2430C200 */  and        $a2, $a2, $v0
/* 4AE44 8005A644 1000A38F */  lw         $v1, 0x10($sp)
/* 4AE48 8005A648 1400A28F */  lw         $v0, 0x14($sp)
/* 4AE4C 8005A64C 2160C300 */  addu       $t4, $a2, $v1
/* 4AE50 8005A650 0800C005 */  bltz       $t6, .L8005A674
/* 4AE54 8005A654 2168E200 */   addu      $t5, $a3, $v0
/* 4AE58 8005A658 80200A00 */  sll        $a0, $t2, 2
/* 4AE5C 8005A65C 21188A00 */  addu       $v1, $a0, $t2
/* 4AE60 8005A660 C0180300 */  sll        $v1, $v1, 3
/* 4AE64 8005A664 21186800 */  addu       $v1, $v1, $t0
/* 4AE68 8005A668 07006290 */  lbu        $v0, 7($v1)
/* 4AE6C 8005A66C A4690108 */  j          .L8005A690
/* 4AE70 8005A670 02004234 */   ori       $v0, $v0, 2
.L8005A674:
/* 4AE74 8005A674 80200A00 */  sll        $a0, $t2, 2
/* 4AE78 8005A678 21188A00 */  addu       $v1, $a0, $t2
/* 4AE7C 8005A67C C0180300 */  sll        $v1, $v1, 3
/* 4AE80 8005A680 21186800 */  addu       $v1, $v1, $t0
/* 4AE84 8005A684 07006290 */  lbu        $v0, 7($v1)
/* 4AE88 8005A688 00000000 */  nop
/* 4AE8C 8005A68C FD004230 */  andi       $v0, $v0, 0xfd
.L8005A690:
/* 4AE90 8005A690 070062A0 */  sb         $v0, 7($v1)
/* 4AE94 8005A694 21288A00 */  addu       $a1, $a0, $t2
/* 4AE98 8005A698 C0280500 */  sll        $a1, $a1, 3
/* 4AE9C 8005A69C 2128A800 */  addu       $a1, $a1, $t0
/* 4AEA0 8005A6A0 03002431 */  andi       $a0, $t1, 3
/* 4AEA4 8005A6A4 C0210400 */  sll        $a0, $a0, 7
/* 4AEA8 8005A6A8 0300C231 */  andi       $v0, $t6, 3
/* 4AEAC 8005A6AC 40110200 */  sll        $v0, $v0, 5
/* 4AEB0 8005A6B0 25208200 */  or         $a0, $a0, $v0
/* 4AEB4 8005A6B4 00016331 */  andi       $v1, $t3, 0x100
/* 4AEB8 8005A6B8 03190300 */  sra        $v1, $v1, 4
/* 4AEBC 8005A6BC 25208300 */  or         $a0, $a0, $v1
/* 4AEC0 8005A6C0 FF03E231 */  andi       $v0, $t7, 0x3ff
/* 4AEC4 8005A6C4 83110200 */  sra        $v0, $v0, 6
/* 4AEC8 8005A6C8 25208200 */  or         $a0, $a0, $v0
/* 4AECC 8005A6CC 00026331 */  andi       $v1, $t3, 0x200
/* 4AED0 8005A6D0 80180300 */  sll        $v1, $v1, 2
/* 4AED4 8005A6D4 25208300 */  or         $a0, $a0, $v1
/* 4AED8 8005A6D8 1600A4A4 */  sh         $a0, 0x16($a1)
/* 4AEDC 8005A6DC 0C00ACA0 */  sb         $t4, 0xc($a1)
/* 4AEE0 8005A6E0 0D00A7A0 */  sb         $a3, 0xd($a1)
/* 4AEE4 8005A6E4 1400A6A0 */  sb         $a2, 0x14($a1)
/* 4AEE8 8005A6E8 1500A7A0 */  sb         $a3, 0x15($a1)
/* 4AEEC 8005A6EC 1C00ACA0 */  sb         $t4, 0x1c($a1)
/* 4AEF0 8005A6F0 1D00ADA0 */  sb         $t5, 0x1d($a1)
/* 4AEF4 8005A6F4 2400A6A0 */  sb         $a2, 0x24($a1)
/* 4AEF8 8005A6F8 0800E003 */  jr         $ra
/* 4AEFC 8005A6FC 2500ADA0 */   sb        $t5, 0x25($a1)
