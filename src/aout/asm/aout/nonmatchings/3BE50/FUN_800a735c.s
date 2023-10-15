.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a735c
/* 97B5C 800A735C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97B60 800A7360 1000B0AF */  sw         $s0, 0x10($sp)
/* 97B64 800A7364 21808000 */  addu       $s0, $a0, $zero
/* 97B68 800A7368 01000226 */  addiu      $v0, $s0, 1
/* 97B6C 800A736C 0200422C */  sltiu      $v0, $v0, 2
/* 97B70 800A7370 05004010 */  beqz       $v0, .L800A7388
/* 97B74 800A7374 1400BFAF */   sw        $ra, 0x14($sp)
/* 97B78 800A7378 949A020C */  jal        FUN_800a6a50
/* 97B7C 800A737C 08000424 */   addiu     $a0, $zero, 8
/* 97B80 800A7380 949A020C */  jal        FUN_800a6a50
/* 97B84 800A7384 09000424 */   addiu     $a0, $zero, 9
.L800A7388:
/* 97B88 800A7388 01000224 */  addiu      $v0, $zero, 1
/* 97B8C 800A738C 03000212 */  beq        $s0, $v0, .L800A739C
/* 97B90 800A7390 FFFF0224 */   addiu     $v0, $zero, -1
/* 97B94 800A7394 05000216 */  bne        $s0, $v0, .L800A73AC
/* 97B98 800A7398 00000000 */   nop
.L800A739C:
/* 97B9C 800A739C 949A020C */  jal        FUN_800a6a50
/* 97BA0 800A73A0 0B000424 */   addiu     $a0, $zero, 0xb
/* 97BA4 800A73A4 949A020C */  jal        FUN_800a6a50
/* 97BA8 800A73A8 0C000424 */   addiu     $a0, $zero, 0xc
.L800A73AC:
/* 97BAC 800A73AC 1400BF8F */  lw         $ra, 0x14($sp)
/* 97BB0 800A73B0 1000B08F */  lw         $s0, 0x10($sp)
/* 97BB4 800A73B4 0800E003 */  jr         $ra
/* 97BB8 800A73B8 1800BD27 */   addiu     $sp, $sp, 0x18
