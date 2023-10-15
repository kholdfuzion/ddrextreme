.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuStart
/* A743C 800B6C3C 0F80023C */  lui        $v0, %hi(D_800EC7E0)
/* A7440 800B6C40 E0C7428C */  lw         $v0, %lo(D_800EC7E0)($v0)
/* A7444 800B6C44 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7448 800B6C48 14004014 */  bnez       $v0, .L800B6C9C
/* A744C 800B6C4C 1000BFAF */   sw        $ra, 0x10($sp)
/* A7450 800B6C50 01000224 */  addiu      $v0, $zero, 1
/* A7454 800B6C54 0F80013C */  lui        $at, %hi(D_800EC7E0)
/* A7458 800B6C58 1D6E000C */  jal        FUN_8001b874
/* A745C 800B6C5C E0C722AC */   sw        $v0, %lo(D_800EC7E0)($at)
/* A7460 800B6C60 0B80043C */  lui        $a0, %hi(_spu_FiDMA)
/* A7464 800B6C64 FDDD020C */  jal        _SpuDataCallback
/* A7468 800B6C68 F4708424 */   addiu     $a0, $a0, %lo(_spu_FiDMA)
/* A746C 800B6C6C 00F0043C */  lui        $a0, 0xf000
/* A7470 800B6C70 09008434 */  ori        $a0, $a0, 9
/* A7474 800B6C74 20000524 */  addiu      $a1, $zero, 0x20
/* A7478 800B6C78 00200624 */  addiu      $a2, $zero, 0x2000
/* A747C 800B6C7C 2DBB000C */  jal        OpenEvent
/* A7480 800B6C80 21380000 */   addu      $a3, $zero, $zero
/* A7484 800B6C84 21204000 */  addu       $a0, $v0, $zero
/* A7488 800B6C88 0F80013C */  lui        $at, %hi(D_800EC778)
/* A748C 800B6C8C 31BB000C */  jal        EnableEvent
/* A7490 800B6C90 78C724AC */   sw        $a0, %lo(D_800EC778)($at)
/* A7494 800B6C94 216E000C */  jal        FUN_8001b884
/* A7498 800B6C98 00000000 */   nop
.L800B6C9C:
/* A749C 800B6C9C 1000BF8F */  lw         $ra, 0x10($sp)
/* A74A0 800B6CA0 1800BD27 */  addiu      $sp, $sp, 0x18
/* A74A4 800B6CA4 0800E003 */  jr         $ra
/* A74A8 800B6CA8 00000000 */   nop
/* A74AC 800B6CAC 00000000 */  nop
/* A74B0 800B6CB0 00000000 */  nop
