.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae6bc
/* 9EEBC 800AE6BC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9EEC0 800AE6C0 1D80023C */  lui        $v0, %hi(D_801CC778)
/* 9EEC4 800AE6C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 9EEC8 800AE6C8 78C75124 */  addiu      $s1, $v0, %lo(D_801CC778)
/* 9EECC 800AE6CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 9EED0 800AE6D0 01001024 */  addiu      $s0, $zero, 1
/* 9EED4 800AE6D4 1800BFAF */  sw         $ra, 0x18($sp)
.L800AE6D8:
/* 9EED8 800AE6D8 21202002 */  addu       $a0, $s1, $zero
/* 9EEDC 800AE6DC 21280000 */  addu       $a1, $zero, $zero
/* 9EEE0 800AE6E0 F6A2000C */  jal        memset
/* 9EEE4 800AE6E4 E8000624 */   addiu     $a2, $zero, 0xe8
/* 9EEE8 800AE6E8 FFFF1026 */  addiu      $s0, $s0, -1
/* 9EEEC 800AE6EC FAFF0106 */  bgez       $s0, .L800AE6D8
/* 9EEF0 800AE6F0 E8003126 */   addiu     $s1, $s1, 0xe8
/* 9EEF4 800AE6F4 1800BF8F */  lw         $ra, 0x18($sp)
/* 9EEF8 800AE6F8 1400B18F */  lw         $s1, 0x14($sp)
/* 9EEFC 800AE6FC 1000B08F */  lw         $s0, 0x10($sp)
/* 9EF00 800AE700 0800E003 */  jr         $ra
/* 9EF04 800AE704 2000BD27 */   addiu     $sp, $sp, 0x20
