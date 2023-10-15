.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GVA_OBJ_378
/* AA5CC 800B9DCC 280002AE */  sw         $v0, 0x28($s0)
/* AA5D0 800B9DD0 20008230 */  andi       $v0, $a0, 0x20
/* AA5D4 800B9DD4 02004014 */  bnez       $v0, .L800B9DE0
/* AA5D8 800B9DD8 07000224 */   addiu     $v0, $zero, 7
/* AA5DC 800B9DDC 03000224 */  addiu      $v0, $zero, 3
.L800B9DE0:
/* AA5E0 800B9DE0 2C0002AE */  sw         $v0, 0x2c($s0)
/* AA5E4 800B9DE4 02120500 */  srl        $v0, $a1, 8
/* AA5E8 800B9DE8 3F004230 */  andi       $v0, $v0, 0x3f
/* AA5EC 800B9DEC 300002A6 */  sh         $v0, 0x30($s0)
/* AA5F0 800B9DF0 F000A230 */  andi       $v0, $a1, 0xf0
/* AA5F4 800B9DF4 02110200 */  srl        $v0, $v0, 4
/* AA5F8 800B9DF8 320002A6 */  sh         $v0, 0x32($s0)
/* AA5FC 800B9DFC 82110400 */  srl        $v0, $a0, 6
/* AA600 800B9E00 7F004230 */  andi       $v0, $v0, 0x7f
/* AA604 800B9E04 340002A6 */  sh         $v0, 0x34($s0)
/* AA608 800B9E08 1F008230 */  andi       $v0, $a0, 0x1f
/* AA60C 800B9E0C 360002A6 */  sh         $v0, 0x36($s0)
/* AA610 800B9E10 0F00A230 */  andi       $v0, $a1, 0xf
/* AA614 800B9E14 380002A6 */  sh         $v0, 0x38($s0)
/* AA618 800B9E18 3A0005A6 */  sh         $a1, 0x3a($s0)
/* AA61C 800B9E1C 3C0004A6 */  sh         $a0, 0x3c($s0)
.L800B9E20:
/* AA620 800B9E20 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AA624 800B9E24 1800B28F */  lw         $s2, 0x18($sp)
/* AA628 800B9E28 1400B18F */  lw         $s1, 0x14($sp)
/* AA62C 800B9E2C 1000B08F */  lw         $s0, 0x10($sp)
/* AA630 800B9E30 0800E003 */  jr         $ra
/* AA634 800B9E34 2000BD27 */   addiu     $sp, $sp, 0x20
/* AA638 800B9E38 00000000 */  nop
/* AA63C 800B9E3C 00000000 */  nop
/* AA640 800B9E40 00000000 */  nop
