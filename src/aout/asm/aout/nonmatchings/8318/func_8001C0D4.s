.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001C0D4
/* C8D4 8001C0D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C8D8 8001C0D8 1000BFAF */  sw         $ra, 0x10($sp)
/* C8DC 8001C0DC 09C8020C */  jal        FUN_800b2024
/* C8E0 8001C0E0 00000000 */   nop
/* C8E4 8001C0E4 0180043C */  lui        $a0, %hi(D_80010370)
/* C8E8 8001C0E8 70038424 */  addiu      $a0, $a0, %lo(D_80010370)
/* C8EC 8001C0EC 21284000 */  addu       $a1, $v0, $zero
/* C8F0 8001C0F0 58AA000C */  jal        error_8002a960
/* C8F4 8001C0F4 FFFF0624 */   addiu     $a2, $zero, -1
/* C8F8 8001C0F8 1000BF8F */  lw         $ra, 0x10($sp)
/* C8FC 8001C0FC 21100000 */  addu       $v0, $zero, $zero
/* C900 8001C100 0800E003 */  jr         $ra
/* C904 8001C104 1800BD27 */   addiu     $sp, $sp, 0x18
