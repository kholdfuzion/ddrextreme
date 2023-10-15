.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3b14
/* B4314 800C3B14 1F80023C */  lui        $v0, %hi(D_801F73E4)
/* B4318 800C3B18 FFFF0324 */  addiu      $v1, $zero, -1
/* B431C 800C3B1C E47343AC */  sw         $v1, %lo(D_801F73E4)($v0)
/* B4320 800C3B20 E4734224 */  addiu      $v0, $v0, 0x73e4
/* B4324 800C3B24 040040AC */  sw         $zero, 4($v0)
/* B4328 800C3B28 080040AC */  sw         $zero, 8($v0)
/* B432C 800C3B2C 0C0040AC */  sw         $zero, 0xc($v0)
/* B4330 800C3B30 0800E003 */  jr         $ra
/* B4334 800C3B34 100040AC */   sw        $zero, 0x10($v0)
