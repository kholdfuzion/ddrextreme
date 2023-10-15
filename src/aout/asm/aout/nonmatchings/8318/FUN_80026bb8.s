.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80026bb8
/* 173B8 80026BB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 173BC 80026BBC 1000B0AF */  sw         $s0, 0x10($sp)
/* 173C0 80026BC0 1400BFAF */  sw         $ra, 0x14($sp)
/* 173C4 80026BC4 36A6020C */  jal        FUN_800a98d8
/* 173C8 80026BC8 21808000 */   addu      $s0, $a0, $zero
/* 173CC 80026BCC 0F80033C */  lui        $v1, %hi(D_800F0020)
/* 173D0 80026BD0 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 173D4 80026BD4 15000224 */  addiu      $v0, $zero, 0x15
/* 173D8 80026BD8 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 173DC 80026BDC A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 173E0 80026BE0 200060AC */  sw         $zero, %lo(D_800F0020)($v1)
/* 173E4 80026BE4 2800A2A4 */  sh         $v0, %lo(D_800F0028)($a1)
/* 173E8 80026BE8 B40D828C */  lw         $v0, 0xdb4($a0)
/* 173EC 80026BEC 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 173F0 80026BF0 24104300 */  and        $v0, $v0, $v1
/* 173F4 80026BF4 20004234 */  ori        $v0, $v0, 0x20
/* 173F8 80026BF8 B40D82AC */  sw         $v0, 0xdb4($a0)
/* 173FC 80026BFC DF65020C */  jal        FUN_8009977c
/* 17400 80026C00 08000426 */   addiu     $a0, $s0, 8
/* 17404 80026C04 1400BF8F */  lw         $ra, 0x14($sp)
/* 17408 80026C08 1000B08F */  lw         $s0, 0x10($sp)
/* 1740C 80026C0C 0800E003 */  jr         $ra
/* 17410 80026C10 1800BD27 */   addiu     $sp, $sp, 0x18
