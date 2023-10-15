.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1250
/* B1A50 800C1250 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1A54 800C1254 1400BFAF */  sw         $ra, 0x14($sp)
/* B1A58 800C1258 1000B0AF */  sw         $s0, 0x10($sp)
/* B1A5C 800C125C 05FE020C */  jal        FUN_800bf814
/* B1A60 800C1260 21808000 */   addu      $s0, $a0, $zero
/* B1A64 800C1264 21184000 */  addu       $v1, $v0, $zero
/* B1A68 800C1268 1F80023C */  lui        $v0, %hi(D_801F7098)
/* B1A6C 800C126C 98704424 */  addiu      $a0, $v0, %lo(D_801F7098)
/* B1A70 800C1270 01008290 */  lbu        $v0, 1($a0)
/* B1A74 800C1274 00000000 */  nop
/* B1A78 800C1278 02004310 */  beq        $v0, $v1, .L800C1284
/* B1A7C 800C127C 00000000 */   nop
/* B1A80 800C1280 010083A0 */  sb         $v1, 1($a0)
.L800C1284:
/* B1A84 800C1284 040003AE */  sw         $v1, 4($s0)
/* B1A88 800C1288 21100000 */  addu       $v0, $zero, $zero
/* B1A8C 800C128C 1400BF8F */  lw         $ra, 0x14($sp)
/* B1A90 800C1290 1000B08F */  lw         $s0, 0x10($sp)
/* B1A94 800C1294 0800E003 */  jr         $ra
/* B1A98 800C1298 1800BD27 */   addiu     $sp, $sp, 0x18
