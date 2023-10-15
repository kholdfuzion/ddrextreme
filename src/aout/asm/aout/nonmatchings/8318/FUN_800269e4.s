.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800269e4
/* 171E4 800269E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 171E8 800269E8 1000B0AF */  sw         $s0, 0x10($sp)
/* 171EC 800269EC 21808000 */  addu       $s0, $a0, $zero
/* 171F0 800269F0 01000424 */  addiu      $a0, $zero, 1
/* 171F4 800269F4 1380033C */  lui        $v1, %hi(D_80129DA8)
/* 171F8 800269F8 A89D6324 */  addiu      $v1, $v1, %lo(D_80129DA8)
/* 171FC 800269FC 1400BFAF */  sw         $ra, 0x14($sp)
/* 17200 80026A00 B40D628C */  lw         $v0, 0xdb4($v1)
/* 17204 80026A04 0FFF0524 */  addiu      $a1, $zero, -0xf1
/* 17208 80026A08 24104500 */  and        $v0, $v0, $a1
/* 1720C 80026A0C 5ACB020C */  jal        FUN_800b2d68
/* 17210 80026A10 B40D62AC */   sw        $v0, 0xdb4($v1)
/* 17214 80026A14 08000426 */  addiu      $a0, $s0, 8
/* 17218 80026A18 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 1721C 80026A1C 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 17220 80026A20 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 17224 80026A24 17000224 */  addiu      $v0, $zero, 0x17
/* 17228 80026A28 ECAA010C */  jal        FUN_8006abb0
/* 1722C 80026A2C 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 17230 80026A30 1400BF8F */  lw         $ra, 0x14($sp)
/* 17234 80026A34 1000B08F */  lw         $s0, 0x10($sp)
/* 17238 80026A38 0800E003 */  jr         $ra
/* 1723C 80026A3C 1800BD27 */   addiu     $sp, $sp, 0x18
