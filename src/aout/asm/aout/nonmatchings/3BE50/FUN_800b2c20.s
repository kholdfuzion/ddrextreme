.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2c20
/* A3420 800B2C20 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A3424 800B2C24 FF008430 */  andi       $a0, $a0, 0xff
/* A3428 800B2C28 1E80023C */  lui        $v0, %hi(D_801E0765)
/* A342C 800B2C2C 1000BFAF */  sw         $ra, 0x10($sp)
/* A3430 800B2C30 BDEF020C */  jal        FUN_800bbef4
/* A3434 800B2C34 650744A0 */   sb        $a0, %lo(D_801E0765)($v0)
/* A3438 800B2C38 1000BF8F */  lw         $ra, 0x10($sp)
/* A343C 800B2C3C 00000000 */  nop
/* A3440 800B2C40 0800E003 */  jr         $ra
/* A3444 800B2C44 1800BD27 */   addiu     $sp, $sp, 0x18
