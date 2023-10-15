.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsInitGraph2
/* 11B98 80021398 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 11B9C 8002139C 1380023C */  lui        $v0, %hi(D_8012903C)
/* 11BA0 800213A0 3C904224 */  addiu      $v0, $v0, %lo(D_8012903C)
/* 11BA4 800213A4 2800A897 */  lhu        $t0, 0x28($sp)
/* 11BA8 800213A8 1380033C */  lui        $v1, %hi(D_8012908C)
/* 11BAC 800213AC 8C906324 */  addiu      $v1, $v1, %lo(D_8012908C)
/* 11BB0 800213B0 1000BFAF */  sw         $ra, 0x10($sp)
/* 11BB4 800213B4 000040A4 */  sh         $zero, ($v0)
/* 11BB8 800213B8 020047A0 */  sb         $a3, 2($v0)
/* 11BBC 800213BC 030040A0 */  sb         $zero, 3($v0)
/* 11BC0 800213C0 040040A0 */  sb         $zero, 4($v0)
/* 11BC4 800213C4 0100C230 */  andi       $v0, $a2, 1
/* 11BC8 800213C8 0400C630 */  andi       $a2, $a2, 4
/* 11BCC 800213CC 000064A4 */  sh         $a0, ($v1)
/* 11BD0 800213D0 FFFF8430 */  andi       $a0, $a0, 0xffff
/* 11BD4 800213D4 020065A4 */  sh         $a1, 2($v1)
/* 11BD8 800213D8 FFFFA530 */  andi       $a1, $a1, 0xffff
/* 11BDC 800213DC 0C0062A0 */  sb         $v0, 0xc($v1)
/* 11BE0 800213E0 1380013C */  lui        $at, %hi(D_801290AE)
/* 11BE4 800213E4 AE9026A4 */  sh         $a2, %lo(D_801290AE)($at)
/* 11BE8 800213E8 0085000C */  jal        GS_001_OBJ_1F8
/* 11BEC 800213EC 0D0068A0 */   sb        $t0, 0xd($v1)
/* 11BF0 800213F0 1000BF8F */  lw         $ra, 0x10($sp)
/* 11BF4 800213F4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 11BF8 800213F8 0800E003 */  jr         $ra
/* 11BFC 800213FC 00000000 */   nop
