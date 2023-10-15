.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a598
/* 3AD98 8004A598 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AD9C 8004A59C 1780043C */  lui        $a0, %hi(D_8016ED70)
/* 3ADA0 8004A5A0 70ED80AC */  sw         $zero, %lo(D_8016ED70)($a0)
/* 3ADA4 8004A5A4 70ED8424 */  addiu      $a0, $a0, -0x1290
/* 3ADA8 8004A5A8 88130224 */  addiu      $v0, $zero, 0x1388
/* 3ADAC 8004A5AC 1000BFAF */  sw         $ra, 0x10($sp)
/* 3ADB0 8004A5B0 040080AC */  sw         $zero, 4($a0)
/* 3ADB4 8004A5B4 080082AC */  sw         $v0, 8($a0)
/* 3ADB8 8004A5B8 0C0080AC */  sw         $zero, 0xc($a0)
/* 3ADBC 8004A5BC 100080AC */  sw         $zero, 0x10($a0)
/* 3ADC0 8004A5C0 140080AC */  sw         $zero, 0x14($a0)
/* 3ADC4 8004A5C4 180080AC */  sw         $zero, 0x18($a0)
/* 3ADC8 8004A5C8 D429010C */  jal        GsSetRefView2
/* 3ADCC 8004A5CC 1C0080AC */   sw        $zero, 0x1c($a0)
/* 3ADD0 8004A5D0 1000BF8F */  lw         $ra, 0x10($sp)
/* 3ADD4 8004A5D4 00000000 */  nop
/* 3ADD8 8004A5D8 0800E003 */  jr         $ra
/* 3ADDC 8004A5DC 1800BD27 */   addiu     $sp, $sp, 0x18
