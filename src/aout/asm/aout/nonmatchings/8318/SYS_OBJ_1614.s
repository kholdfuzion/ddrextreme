.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1614
/* 9DF8 800195F8 FFFF0225 */  addiu      $v0, $t0, -1
/* 9DFC 800195FC 030022A2 */  sb         $v0, 3($s1)
/* 9E00 80019600 2000BF8F */  lw         $ra, 0x20($sp)
/* 9E04 80019604 1C00B18F */  lw         $s1, 0x1c($sp)
/* 9E08 80019608 1800B08F */  lw         $s0, 0x18($sp)
/* 9E0C 8001960C 0800E003 */  jr         $ra
/* 9E10 80019610 2800BD27 */   addiu     $sp, $sp, 0x28
