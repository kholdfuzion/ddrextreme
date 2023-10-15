.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsInitGraph
/* 11A08 80021208 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 11A0C 8002120C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 11A10 80021210 FFFF9130 */  andi       $s1, $a0, 0xffff
/* 11A14 80021214 21202002 */  addu       $a0, $s1, $zero
/* 11A18 80021218 1800B0AF */  sw         $s0, 0x18($sp)
/* 11A1C 8002121C FFFFB030 */  andi       $s0, $a1, 0xffff
/* 11A20 80021220 21280002 */  addu       $a1, $s0, $zero
/* 11A24 80021224 FFFFC630 */  andi       $a2, $a2, 0xffff
/* 11A28 80021228 3800A297 */  lhu        $v0, 0x38($sp)
/* 11A2C 8002122C FFFFE730 */  andi       $a3, $a3, 0xffff
/* 11A30 80021230 2000BFAF */  sw         $ra, 0x20($sp)
/* 11A34 80021234 9F84000C */  jal        GS_001_OBJ_74
/* 11A38 80021238 1000A2AF */   sw        $v0, 0x10($sp)
/* 11A3C 8002123C C687000C */  jal        gte_init
/* 11A40 80021240 00000000 */   nop
/* 11A44 80021244 21202002 */  addu       $a0, $s1, $zero
/* 11A48 80021248 1380013C */  lui        $at, %hi(D_801290AC)
/* 11A4C 8002124C AC9020A4 */  sh         $zero, %lo(D_801290AC)($at)
/* 11A50 80021250 0085000C */  jal        GS_001_OBJ_1F8
/* 11A54 80021254 21280002 */   addu      $a1, $s0, $zero
/* 11A58 80021258 2A86000C */  jal        GsSetDrawBuffClip
/* 11A5C 8002125C 00000000 */   nop
/* 11A60 80021260 E685000C */  jal        GsSetDrawBuffOffset
/* 11A64 80021264 00000000 */   nop
/* 11A68 80021268 2000BF8F */  lw         $ra, 0x20($sp)
/* 11A6C 8002126C 1C00B18F */  lw         $s1, 0x1c($sp)
/* 11A70 80021270 1800B08F */  lw         $s0, 0x18($sp)
/* 11A74 80021274 0800E003 */  jr         $ra
/* 11A78 80021278 2800BD27 */   addiu     $sp, $sp, 0x28
