.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel PRNT_RTCINIT_800b2614
/* A2E14 800B2614 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A2E18 800B2618 21200000 */  addu       $a0, $zero, $zero
/* A2E1C 800B261C 50000524 */  addiu      $a1, $zero, 0x50
/* A2E20 800B2620 70000624 */  addiu      $a2, $zero, 0x70
/* A2E24 800B2624 00100724 */  addiu      $a3, $zero, 0x1000
/* A2E28 800B2628 1800B0AF */  sw         $s0, 0x18($sp)
/* A2E2C 800B262C 00101024 */  addiu      $s0, $zero, 0x1000
/* A2E30 800B2630 0180023C */  lui        $v0, %hi(D_80017100)
/* A2E34 800B2634 00714224 */  addiu      $v0, $v0, %lo(D_80017100)
/* A2E38 800B2638 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A2E3C 800B263C 1000B0AF */  sw         $s0, 0x10($sp)
/* A2E40 800B2640 C2C8020C */  jal        InfoString_800b2308
/* A2E44 800B2644 1400A2AF */   sw        $v0, 0x14($sp)
/* A2E48 800B2648 21200000 */  addu       $a0, $zero, $zero
/* A2E4C 800B264C 34000524 */  addiu      $a1, $zero, 0x34
/* A2E50 800B2650 80000624 */  addiu      $a2, $zero, 0x80
/* A2E54 800B2654 00100724 */  addiu      $a3, $zero, 0x1000
/* A2E58 800B2658 0180023C */  lui        $v0, %hi(D_80017118)
/* A2E5C 800B265C 18714224 */  addiu      $v0, $v0, %lo(D_80017118)
/* A2E60 800B2660 1000B0AF */  sw         $s0, 0x10($sp)
/* A2E64 800B2664 C2C8020C */  jal        InfoString_800b2308
/* A2E68 800B2668 1400A2AF */   sw        $v0, 0x14($sp)
/* A2E6C 800B266C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A2E70 800B2670 1800B08F */  lw         $s0, 0x18($sp)
/* A2E74 800B2674 0800E003 */  jr         $ra
/* A2E78 800B2678 2000BD27 */   addiu     $sp, $sp, 0x20
