.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d884
/* 4E084 8005D884 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4E088 8005D888 1A80023C */  lui        $v0, %hi(D_801A09A8)
/* 4E08C 8005D88C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4E090 8005D890 3976010C */  jal        FUN_8005d8e4
/* 4E094 8005D894 A80940AC */   sw        $zero, %lo(D_801A09A8)($v0)
/* 4E098 8005D898 1000BF8F */  lw         $ra, 0x10($sp)
/* 4E09C 8005D89C 00000000 */  nop
/* 4E0A0 8005D8A0 0800E003 */  jr         $ra
/* 4E0A4 8005D8A4 1800BD27 */   addiu     $sp, $sp, 0x18
