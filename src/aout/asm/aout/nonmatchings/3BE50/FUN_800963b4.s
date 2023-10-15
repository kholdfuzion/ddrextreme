.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800963b4
/* 86BB4 800963B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 86BB8 800963B8 1000BFAF */  sw         $ra, 0x10($sp)
/* 86BBC 800963BC 5753020C */  jal        FUN_80094d5c
/* 86BC0 800963C0 00000000 */   nop
/* 86BC4 800963C4 0F80033C */  lui        $v1, %hi(D_800EBF44)
/* 86BC8 800963C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 86BCC 800963CC FFFF0224 */  addiu      $v0, $zero, -1
/* 86BD0 800963D0 44BF62AC */  sw         $v0, %lo(D_800EBF44)($v1)
/* 86BD4 800963D4 21100000 */  addu       $v0, $zero, $zero
/* 86BD8 800963D8 0800E003 */  jr         $ra
/* 86BDC 800963DC 1800BD27 */   addiu     $sp, $sp, 0x18
