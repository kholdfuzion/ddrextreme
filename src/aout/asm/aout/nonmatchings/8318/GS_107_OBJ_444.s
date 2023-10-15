.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_107_OBJ_444
/* 125EC 80021DEC 1380053C */  lui        $a1, %hi(D_801290C8)
/* 125F0 80021DF0 C890A524 */  addiu      $a1, $a1, %lo(D_801290C8)
/* 125F4 80021DF4 1000A28F */  lw         $v0, 0x10($sp)
/* 125F8 80021DF8 1400A38F */  lw         $v1, 0x14($sp)
/* 125FC 80021DFC 1800A48F */  lw         $a0, 0x18($sp)
/* 12600 80021E00 0000A2AC */  sw         $v0, ($a1)
/* 12604 80021E04 0400A3AC */  sw         $v1, 4($a1)
/* 12608 80021E08 0800A4AC */  sw         $a0, 8($a1)
/* 1260C 80021E0C 1C00A28F */  lw         $v0, 0x1c($sp)
/* 12610 80021E10 2000A38F */  lw         $v1, 0x20($sp)
/* 12614 80021E14 2400A48F */  lw         $a0, 0x24($sp)
/* 12618 80021E18 0C00A2AC */  sw         $v0, 0xc($a1)
/* 1261C 80021E1C 1000A3AC */  sw         $v1, 0x10($a1)
/* 12620 80021E20 1400A4AC */  sw         $a0, 0x14($a1)
/* 12624 80021E24 2800A28F */  lw         $v0, 0x28($sp)
/* 12628 80021E28 2C00A38F */  lw         $v1, 0x2c($sp)
/* 1262C 80021E2C 1800A2AC */  sw         $v0, 0x18($a1)
/* 12630 80021E30 1C00A3AC */  sw         $v1, 0x1c($a1)
/* 12634 80021E34 9887000C */  jal        GS_107_OBJ_4B8
/* 12638 80021E38 3000A427 */   addiu     $a0, $sp, 0x30
/* 1263C 80021E3C 21100000 */  addu       $v0, $zero, $zero
.L80021E40:
/* 12640 80021E40 8C00BF8F */  lw         $ra, 0x8c($sp)
/* 12644 80021E44 8800B48F */  lw         $s4, 0x88($sp)
/* 12648 80021E48 8400B38F */  lw         $s3, 0x84($sp)
/* 1264C 80021E4C 8000B28F */  lw         $s2, 0x80($sp)
/* 12650 80021E50 7C00B18F */  lw         $s1, 0x7c($sp)
/* 12654 80021E54 7800B08F */  lw         $s0, 0x78($sp)
/* 12658 80021E58 0800E003 */  jr         $ra
/* 1265C 80021E5C 9000BD27 */   addiu     $sp, $sp, 0x90
