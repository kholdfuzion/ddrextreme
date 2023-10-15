.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd080
/* BD880 800CD080 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BD884 800CD084 1400BFAF */  sw         $ra, 0x14($sp)
/* BD888 800CD088 8135030C */  jal        FUN_800cd604
/* BD88C 800CD08C 1000B0AF */   sw        $s0, 0x10($sp)
/* BD890 800CD090 09004014 */  bnez       $v0, .L800CD0B8
/* BD894 800CD094 9BFF1024 */   addiu     $s0, $zero, -0x65
.L800CD098:
/* BD898 800CD098 9135030C */  jal        FUN_800cd644
/* BD89C 800CD09C 00000000 */   nop
/* BD8A0 800CD0A0 05005014 */  bne        $v0, $s0, .L800CD0B8
/* BD8A4 800CD0A4 00000000 */   nop
/* BD8A8 800CD0A8 2532030C */  jal        FUN_800cc894
/* BD8AC 800CD0AC 00000000 */   nop
/* BD8B0 800CD0B0 26340308 */  j          .L800CD098
/* BD8B4 800CD0B4 00000000 */   nop
.L800CD0B8:
/* BD8B8 800CD0B8 1400BF8F */  lw         $ra, 0x14($sp)
/* BD8BC 800CD0BC 1000B08F */  lw         $s0, 0x10($sp)
/* BD8C0 800CD0C0 0800E003 */  jr         $ra
/* BD8C4 800CD0C4 1800BD27 */   addiu     $sp, $sp, 0x18
