.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001dda0
/* E5A0 8001DDA0 80FFBD27 */  addiu      $sp, $sp, -0x80
/* E5A4 8001DDA4 7400B1AF */  sw         $s1, 0x74($sp)
/* E5A8 8001DDA8 2188A000 */  addu       $s1, $a1, $zero
/* E5AC 8001DDAC 21288000 */  addu       $a1, $a0, $zero
/* E5B0 8001DDB0 7C00BFAF */  sw         $ra, 0x7c($sp)
/* E5B4 8001DDB4 7800B2AF */  sw         $s2, 0x78($sp)
/* E5B8 8001DDB8 7000B0AF */  sw         $s0, 0x70($sp)
/* E5BC 8001DDBC 04002296 */  lhu        $v0, 4($s1)
/* E5C0 8001DDC0 0C002386 */  lh         $v1, 0xc($s1)
/* E5C4 8001DDC4 00240200 */  sll        $a0, $v0, 0x10
/* E5C8 8001DDC8 01000224 */  addiu      $v0, $zero, 1
/* E5CC 8001DDCC 03006214 */  bne        $v1, $v0, .L8001DDDC
/* E5D0 8001DDD0 03940400 */   sra       $s2, $a0, 0x10
/* E5D4 8001DDD4 43140400 */  sra        $v0, $a0, 0x11
/* E5D8 8001DDD8 040022A6 */  sh         $v0, 4($s1)
.L8001DDDC:
/* E5DC 8001DDDC 3000A427 */  addiu      $a0, $sp, 0x30
/* E5E0 8001DDE0 057C000C */  jal        strcpy
/* E5E4 8001DDE4 1000B027 */   addiu     $s0, $sp, 0x10
/* E5E8 8001DDE8 3000A427 */  addiu      $a0, $sp, 0x30
/* E5EC 8001DDEC 2380053C */  lui        $a1, 0x8023
/* E5F0 8001DDF0 DDB3000C */  jal        decodefile_8002cf74
/* E5F4 8001DDF4 0080A534 */   ori       $a1, $a1, 0x8000
/* E5F8 8001DDF8 2380043C */  lui        $a0, 0x8023
/* E5FC 8001DDFC 04808434 */  ori        $a0, $a0, 0x8004
/* E600 8001DE00 197C000C */  jal        GsGetTimInfo
/* E604 8001DE04 21280002 */   addu      $a1, $s0, $zero
/* E608 8001DE08 08000296 */  lhu        $v0, 8($s0)
/* E60C 8001DE0C 0A000396 */  lhu        $v1, 0xa($s0)
/* E610 8001DE10 00000000 */  nop
/* E614 8001DE14 18004300 */  mult       $v0, $v1
/* E618 8001DE18 0200043C */  lui        $a0, 2
/* E61C 8001DE1C 12100000 */  mflo       $v0
/* E620 8001DE20 40100200 */  sll        $v0, $v0, 1
/* E624 8001DE24 2C014224 */  addiu      $v0, $v0, 0x12c
/* E628 8001DE28 2B104400 */  sltu       $v0, $v0, $a0
/* E62C 8001DE2C 0F004014 */  bnez       $v0, .L8001DE6C
/* E630 8001DE30 3000A427 */   addiu     $a0, $sp, 0x30
/* E634 8001DE34 0E000524 */  addiu      $a1, $zero, 0xe
/* E638 8001DE38 01000424 */  addiu      $a0, $zero, 1
/* E63C 8001DE3C 0100033C */  lui        $v1, 1
/* E640 8001DE40 BC426334 */  ori        $v1, $v1, 0x42bc
/* E644 8001DE44 0F80023C */  lui        $v0, %hi(D_800F0028)
/* E648 8001DE48 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* E64C 8001DE4C 21104300 */  addu       $v0, $v0, $v1
/* E650 8001DE50 FEFF033C */  lui        $v1, 0xfffe
/* E654 8001DE54 84BD6334 */  ori        $v1, $v1, 0xbd84
.L8001DE58:
/* E658 8001DE58 000045A0 */  sb         $a1, ($v0)
/* E65C 8001DE5C FFFF8424 */  addiu      $a0, $a0, -1
/* E660 8001DE60 FDFF8104 */  bgez       $a0, .L8001DE58
/* E664 8001DE64 21104300 */   addu      $v0, $v0, $v1
/* E668 8001DE68 3000A427 */  addiu      $a0, $sp, 0x30
.L8001DE6C:
/* E66C 8001DE6C 0C00068E */  lw         $a2, 0xc($s0)
/* E670 8001DE70 04002296 */  lhu        $v0, 4($s1)
/* E674 8001DE74 06002396 */  lhu        $v1, 6($s1)
/* E678 8001DE78 08000796 */  lhu        $a3, 8($s0)
/* E67C 8001DE7C 0A000896 */  lhu        $t0, 0xa($s0)
/* E680 8001DE80 16002996 */  lhu        $t1, 0x16($s1)
/* E684 8001DE84 18002A96 */  lhu        $t2, 0x18($s1)
/* E688 8001DE88 14000B96 */  lhu        $t3, 0x14($s0)
/* E68C 8001DE8C 16000C96 */  lhu        $t4, 0x16($s0)
/* E690 8001DE90 21282002 */  addu       $a1, $s1, $zero
/* E694 8001DE94 3000A2A7 */  sh         $v0, 0x30($sp)
/* E698 8001DE98 3200A3A7 */  sh         $v1, 0x32($sp)
/* E69C 8001DE9C 3400A7A7 */  sh         $a3, 0x34($sp)
/* E6A0 8001DEA0 3600A8A7 */  sh         $t0, 0x36($sp)
/* E6A4 8001DEA4 3800A9A7 */  sh         $t1, 0x38($sp)
/* E6A8 8001DEA8 3A00AAA7 */  sh         $t2, 0x3a($sp)
/* E6AC 8001DEAC 3C00ABA7 */  sh         $t3, 0x3c($sp)
/* E6B0 8001DEB0 AF73000C */  jal        FUN_8001cebc
/* E6B4 8001DEB4 3E00ACA7 */   sh        $t4, 0x3e($sp)
/* E6B8 8001DEB8 3800A427 */  addiu      $a0, $sp, 0x38
/* E6BC 8001DEBC 1800068E */  lw         $a2, 0x18($s0)
/* E6C0 8001DEC0 2774000C */  jal        FUN_8001d09c
/* E6C4 8001DEC4 21282002 */   addu      $a1, $s1, $zero
/* E6C8 8001DEC8 D860000C */  jal        DrawSync
/* E6CC 8001DECC 21200000 */   addu      $a0, $zero, $zero
/* E6D0 8001DED0 7C00BF8F */  lw         $ra, 0x7c($sp)
/* E6D4 8001DED4 040032A6 */  sh         $s2, 4($s1)
/* E6D8 8001DED8 7800B28F */  lw         $s2, 0x78($sp)
/* E6DC 8001DEDC 01000324 */  addiu      $v1, $zero, 1
/* E6E0 8001DEE0 140023A6 */  sh         $v1, 0x14($s1)
/* E6E4 8001DEE4 7400B18F */  lw         $s1, 0x74($sp)
/* E6E8 8001DEE8 7000B08F */  lw         $s0, 0x70($sp)
/* E6EC 8001DEEC 21100000 */  addu       $v0, $zero, $zero
/* E6F0 8001DEF0 0800E003 */  jr         $ra
/* E6F4 8001DEF4 8000BD27 */   addiu     $sp, $sp, 0x80
