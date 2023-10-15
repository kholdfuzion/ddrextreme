.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006B764
/* 5BF64 8006B764 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5BF68 8006B768 2118C000 */  addu       $v1, $a2, $zero
/* 5BF6C 8006B76C 5800A28F */  lw         $v0, 0x58($sp)
/* 5BF70 8006B770 5C00A88F */  lw         $t0, 0x5c($sp)
/* 5BF74 8006B774 6000A98F */  lw         $t1, 0x60($sp)
/* 5BF78 8006B778 6400A68F */  lw         $a2, 0x64($sp)
/* 5BF7C 8006B77C 1800A7AF */  sw         $a3, 0x18($sp)
/* 5BF80 8006B780 4001E724 */  addiu      $a3, $a3, 0x140
/* 5BF84 8006B784 2C00A7AF */  sw         $a3, 0x2c($sp)
/* 5BF88 8006B788 21386000 */  addu       $a3, $v1, $zero
/* 5BF8C 8006B78C 4000BFAF */  sw         $ra, 0x40($sp)
/* 5BF90 8006B790 1000A3AF */  sw         $v1, 0x10($sp)
/* 5BF94 8006B794 1400A3AF */  sw         $v1, 0x14($sp)
/* 5BF98 8006B798 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5BF9C 8006B79C F0004224 */  addiu      $v0, $v0, 0xf0
/* 5BFA0 8006B7A0 2800A6AF */  sw         $a2, 0x28($sp)
/* 5BFA4 8006B7A4 FFFF0624 */  addiu      $a2, $zero, -1
/* 5BFA8 8006B7A8 2000A8AF */  sw         $t0, 0x20($sp)
/* 5BFAC 8006B7AC 2400A9AF */  sw         $t1, 0x24($sp)
/* 5BFB0 8006B7B0 3000A2AF */  sw         $v0, 0x30($sp)
/* 5BFB4 8006B7B4 3400A8AF */  sw         $t0, 0x34($sp)
/* 5BFB8 8006B7B8 1FAC010C */  jal        FUN_8006b07c
/* 5BFBC 8006B7BC 3800A9AF */   sw        $t1, 0x38($sp)
/* 5BFC0 8006B7C0 4000BF8F */  lw         $ra, 0x40($sp)
/* 5BFC4 8006B7C4 00000000 */  nop
/* 5BFC8 8006B7C8 0800E003 */  jr         $ra
/* 5BFCC 8006B7CC 4800BD27 */   addiu     $sp, $sp, 0x48
