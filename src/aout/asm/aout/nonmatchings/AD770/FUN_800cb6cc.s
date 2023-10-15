.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb6cc
/* BBECC 800CB6CC F8FFBD27 */  addiu      $sp, $sp, -8
/* BBED0 800CB6D0 6A1F023C */  lui        $v0, 0x1f6a
/* BBED4 800CB6D4 000044A4 */  sh         $a0, ($v0)
/* BBED8 800CB6D8 00004394 */  lhu        $v1, ($v0)
/* BBEDC 800CB6DC 2080023C */  lui        $v0, %hi(D_801FBCA0)
/* BBEE0 800CB6E0 A0BC44A4 */  sh         $a0, %lo(D_801FBCA0)($v0)
/* BBEE4 800CB6E4 0000A3A7 */  sh         $v1, ($sp)
/* BBEE8 800CB6E8 0800E003 */  jr         $ra
/* BBEEC 800CB6EC 0800BD27 */   addiu     $sp, $sp, 8
