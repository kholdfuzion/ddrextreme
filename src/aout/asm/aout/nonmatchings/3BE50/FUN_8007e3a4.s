.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e3a4
/* 6EBA4 8007E3A4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6EBA8 8007E3A8 1380023C */  lui        $v0, %hi(D_80128153)
/* 6EBAC 8007E3AC 53814290 */  lbu        $v0, %lo(D_80128153)($v0)
/* 6EBB0 8007E3B0 5C00A88F */  lw         $t0, 0x5c($sp)
/* 6EBB4 8007E3B4 4000BFAF */  sw         $ra, 0x40($sp)
/* 6EBB8 8007E3B8 C0180200 */  sll        $v1, $v0, 3
/* 6EBBC 8007E3BC 23186200 */  subu       $v1, $v1, $v0
/* 6EBC0 8007E3C0 80180300 */  sll        $v1, $v1, 2
/* 6EBC4 8007E3C4 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6EBC8 8007E3C8 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6EBCC 8007E3CC 21186200 */  addu       $v1, $v1, $v0
/* 6EBD0 8007E3D0 5800A28F */  lw         $v0, 0x58($sp)
/* 6EBD4 8007E3D4 04006984 */  lh         $t1, 4($v1)
/* 6EBD8 8007E3D8 06006A84 */  lh         $t2, 6($v1)
/* 6EBDC 8007E3DC 1400A8AF */  sw         $t0, 0x14($sp)
/* 6EBE0 8007E3E0 1000A2AF */  sw         $v0, 0x10($sp)
/* 6EBE4 8007E3E4 40010224 */  addiu      $v0, $zero, 0x140
/* 6EBE8 8007E3E8 1800A2AF */  sw         $v0, 0x18($sp)
/* 6EBEC 8007E3EC 14000224 */  addiu      $v0, $zero, 0x14
/* 6EBF0 8007E3F0 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6EBF4 8007E3F4 0C006284 */  lh         $v0, 0xc($v1)
/* 6EBF8 8007E3F8 00000000 */  nop
/* 6EBFC 8007E3FC 2000A2AF */  sw         $v0, 0x20($sp)
/* 6EC00 8007E400 16006284 */  lh         $v0, 0x16($v1)
/* 6EC04 8007E404 00000000 */  nop
/* 6EC08 8007E408 2400A2AF */  sw         $v0, 0x24($sp)
/* 6EC0C 8007E40C 18006384 */  lh         $v1, 0x18($v1)
/* 6EC10 8007E410 FFFF0224 */  addiu      $v0, $zero, -1
/* 6EC14 8007E414 2C00A7AF */  sw         $a3, 0x2c($sp)
/* 6EC18 8007E418 3000A7AF */  sw         $a3, 0x30($sp)
/* 6EC1C 8007E41C 3400A7AF */  sw         $a3, 0x34($sp)
/* 6EC20 8007E420 80380600 */  sll        $a3, $a2, 2
/* 6EC24 8007E424 2138E600 */  addu       $a3, $a3, $a2
/* 6EC28 8007E428 80380700 */  sll        $a3, $a3, 2
/* 6EC2C 8007E42C 21302001 */  addu       $a2, $t1, $zero
/* 6EC30 8007E430 21384701 */  addu       $a3, $t2, $a3
/* 6EC34 8007E434 3800A2AF */  sw         $v0, 0x38($sp)
/* 6EC38 8007E438 14F9010C */  jal        FUN_8007e450
/* 6EC3C 8007E43C 2800A3AF */   sw        $v1, 0x28($sp)
/* 6EC40 8007E440 4000BF8F */  lw         $ra, 0x40($sp)
/* 6EC44 8007E444 00000000 */  nop
/* 6EC48 8007E448 0800E003 */  jr         $ra
/* 6EC4C 8007E44C 4800BD27 */   addiu     $sp, $sp, 0x48
