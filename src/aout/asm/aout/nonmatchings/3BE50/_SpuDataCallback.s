.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _SpuDataCallback
/* A7FF4 800B77F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7FF8 800B77F8 1000BFAF */  sw         $ra, 0x10($sp)
/* A7FFC 800B77FC 21288000 */  addu       $a1, $a0, $zero
/* A8000 800B7800 716C000C */  jal        DMACallback
/* A8004 800B7804 04000424 */   addiu     $a0, $zero, 4
/* A8008 800B7808 1000BF8F */  lw         $ra, 0x10($sp)
/* A800C 800B780C 1800BD27 */  addiu      $sp, $sp, 0x18
/* A8010 800B7810 0800E003 */  jr         $ra
/* A8014 800B7814 00000000 */   nop
/* A8018 800B7818 00000000 */  nop
/* A801C 800B781C 00000000 */  nop
/* A8020 800B7820 00000000 */  nop
