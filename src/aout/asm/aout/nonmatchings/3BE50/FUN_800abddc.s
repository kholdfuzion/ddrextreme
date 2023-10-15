.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abddc
/* 9C5DC 800ABDDC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9C5E0 800ABDE0 1400B1AF */  sw         $s1, 0x14($sp)
/* 9C5E4 800ABDE4 21888000 */  addu       $s1, $a0, $zero
/* 9C5E8 800ABDE8 1800BFAF */  sw         $ra, 0x18($sp)
/* 9C5EC 800ABDEC 7A19030C */  jal        FUN_800c65e8
/* 9C5F0 800ABDF0 1000B0AF */   sw        $s0, 0x10($sp)
/* 9C5F4 800ABDF4 21804000 */  addu       $s0, $v0, $zero
/* 9C5F8 800ABDF8 FEFF0224 */  addiu      $v0, $zero, -2
/* 9C5FC 800ABDFC 06000212 */  beq        $s0, $v0, .L800ABE18
/* 9C600 800ABE00 01000224 */   addiu     $v0, $zero, 1
/* 9C604 800ABE04 6618030C */  jal        FUN_800c6198
/* 9C608 800ABE08 21202002 */   addu      $a0, $s1, $zero
/* 9C60C 800ABE0C 02000106 */  bgez       $s0, .L800ABE18
/* 9C610 800ABE10 21100000 */   addu      $v0, $zero, $zero
/* 9C614 800ABE14 FFFF0224 */  addiu      $v0, $zero, -1
.L800ABE18:
/* 9C618 800ABE18 1800BF8F */  lw         $ra, 0x18($sp)
/* 9C61C 800ABE1C 1400B18F */  lw         $s1, 0x14($sp)
/* 9C620 800ABE20 1000B08F */  lw         $s0, 0x10($sp)
/* 9C624 800ABE24 0800E003 */  jr         $ra
/* 9C628 800ABE28 2000BD27 */   addiu     $sp, $sp, 0x20
