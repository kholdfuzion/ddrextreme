.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_410
/* BD74 8001B574 0D80013C */  lui        $at, %hi(D_800D2D62)
/* BD78 8001B578 116E000C */  jal        ReturnFromException
/* BD7C 8001B57C 622D20A4 */   sh        $zero, %lo(D_800D2D62)($at)
/* BD80 8001B580 2400BF8F */  lw         $ra, 0x24($sp)
/* BD84 8001B584 2000B48F */  lw         $s4, 0x20($sp)
/* BD88 8001B588 1C00B38F */  lw         $s3, 0x1c($sp)
/* BD8C 8001B58C 1800B28F */  lw         $s2, 0x18($sp)
/* BD90 8001B590 1400B18F */  lw         $s1, 0x14($sp)
/* BD94 8001B594 1000B08F */  lw         $s0, 0x10($sp)
/* BD98 8001B598 0800E003 */  jr         $ra
/* BD9C 8001B59C 2800BD27 */   addiu     $sp, $sp, 0x28
