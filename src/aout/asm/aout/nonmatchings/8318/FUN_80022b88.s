.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022b88
/* 13388 80022B88 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1338C 80022B8C 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 13390 80022B90 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 13394 80022B94 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 13398 80022B98 21000224 */  addiu      $v0, $zero, 0x21
/* 1339C 80022B9C 1000BFAF */  sw         $ra, 0x10($sp)
/* 133A0 80022BA0 D455010C */  jal        FUN_80055750
/* 133A4 80022BA4 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 133A8 80022BA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 133AC 80022BAC 00000000 */  nop
/* 133B0 80022BB0 0800E003 */  jr         $ra
/* 133B4 80022BB4 1800BD27 */   addiu     $sp, $sp, 0x18
