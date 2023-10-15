.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b8a4
/* 4C0A4 8005B8A4 09000224 */  addiu      $v0, $zero, 9
/* 4C0A8 8005B8A8 030082A0 */  sb         $v0, 3($a0)
/* 4C0AC 8005B8AC 2C000224 */  addiu      $v0, $zero, 0x2c
/* 4C0B0 8005B8B0 0800E003 */  jr         $ra
/* 4C0B4 8005B8B4 070082A0 */   sb        $v0, 7($a0)
/* 4C0B8 8005B8B8 00000000 */  nop
/* 4C0BC 8005B8BC 00000000 */  nop
/* 4C0C0 8005B8C0 00000000 */  nop
