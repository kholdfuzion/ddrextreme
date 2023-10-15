.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb44c
/* BBC4C 800CB44C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BBC50 800CB450 1400BFAF */  sw         $ra, 0x14($sp)
/* BBC54 800CB454 7A30030C */  jal        FUN_800cc1e8
/* BBC58 800CB458 1000B0AF */   sw        $s0, 0x10($sp)
/* BBC5C 800CB45C 0F80103C */  lui        $s0, %hi(D_800EE6F4)
/* BBC60 800CB460 04004014 */  bnez       $v0, .L800CB474
/* BBC64 800CB464 F4E602AE */   sw        $v0, %lo(D_800EE6F4)($s0)
/* BBC68 800CB468 802C030C */  jal        FUN_800cb200
/* BBC6C 800CB46C 00000000 */   nop
/* BBC70 800CB470 F4E602AE */  sw         $v0, -0x190c($s0)
.L800CB474:
/* BBC74 800CB474 F4E6028E */  lw         $v0, -0x190c($s0)
/* BBC78 800CB478 1400BF8F */  lw         $ra, 0x14($sp)
/* BBC7C 800CB47C 1000B08F */  lw         $s0, 0x10($sp)
/* BBC80 800CB480 0800E003 */  jr         $ra
/* BBC84 800CB484 1800BD27 */   addiu     $sp, $sp, 0x18
