.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2744
/* AF28 8001A728 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AF2C 8001A72C 1400BFAF */  sw         $ra, 0x14($sp)
/* AF30 8001A730 2A008014 */  bnez       $a0, .L8001A7DC
/* AF34 8001A734 1000B0AF */   sw        $s0, 0x10($sp)
/* AF38 8001A738 196A000C */  jal        SYS_OBJ_2880
/* AF3C 8001A73C 00000000 */   nop
/* AF40 8001A740 D8690008 */  j          SYS_OBJ_277C
/* AF44 8001A744 00000000 */   nop
